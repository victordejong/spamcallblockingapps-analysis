package androidx.media2.exoplayer.external.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.BaseRenderer;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.DrmSessionManager;
import androidx.media2.exoplayer.external.drm.FrameworkMediaCrypto;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.NalUnitUtil;
import androidx.media2.exoplayer.external.util.TimedValueQueue;
import androidx.media2.exoplayer.external.util.TraceUtil;
import androidx.media2.exoplayer.external.util.Util;
import androidx.media2.session.MediaSessionImplBase;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer.class */
public abstract class MediaCodecRenderer extends BaseRenderer {
    public static final byte[] ADAPTATION_WORKAROUND_BUFFER = Util.getBytesFromHexString("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    public static final int ADAPTATION_WORKAROUND_MODE_ALWAYS = 2;
    public static final int ADAPTATION_WORKAROUND_MODE_NEVER = 0;
    public static final int ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION = 1;
    public static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    public static final float CODEC_OPERATING_RATE_UNSET = -1.0f;
    public static final int DRAIN_ACTION_FLUSH = 1;
    public static final int DRAIN_ACTION_NONE = 0;
    public static final int DRAIN_ACTION_REINITIALIZE = 3;
    public static final int DRAIN_ACTION_UPDATE_DRM_SESSION = 2;
    public static final int DRAIN_STATE_NONE = 0;
    public static final int DRAIN_STATE_SIGNAL_END_OF_STREAM = 1;
    public static final int DRAIN_STATE_WAIT_END_OF_STREAM = 2;
    public static final int KEEP_CODEC_RESULT_NO = 0;
    public static final int KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION = 3;
    public static final int KEEP_CODEC_RESULT_YES_WITH_FLUSH = 1;
    public static final int KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION = 2;
    public static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    public static final int RECONFIGURATION_STATE_NONE = 0;
    public static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    public static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    public static final String TAG = "MediaCodecRenderer";
    public final float assumedMinimumCodecOperatingRate;
    @Nullable
    public ArrayDeque<MediaCodecInfo> availableCodecInfos;
    @Nullable
    public MediaCodec codec;
    public int codecAdaptationWorkaroundMode;
    @Nullable
    public DrmSession<FrameworkMediaCrypto> codecDrmSession;
    @Nullable
    public Format codecFormat;
    public long codecHotswapDeadlineMs;
    @Nullable
    public MediaCodecInfo codecInfo;
    public boolean codecNeedsAdaptationWorkaroundBuffer;
    public boolean codecNeedsDiscardToSpsWorkaround;
    public boolean codecNeedsEosFlushWorkaround;
    public boolean codecNeedsEosOutputExceptionWorkaround;
    public boolean codecNeedsEosPropagation;
    public boolean codecNeedsFlushWorkaround;
    public boolean codecNeedsMonoChannelCountWorkaround;
    public boolean codecNeedsReconfigureWorkaround;
    public boolean codecReceivedBuffers;
    public boolean codecReceivedEos;
    public boolean codecReconfigured;
    public DecoderCounters decoderCounters;
    @Nullable
    public final DrmSessionManager<FrameworkMediaCrypto> drmSessionManager;
    public final boolean enableDecoderFallback;
    public ByteBuffer[] inputBuffers;
    @Nullable
    public Format inputFormat;
    public int inputIndex;
    public boolean inputStreamEnded;
    public final MediaCodecSelector mediaCodecSelector;
    @Nullable
    public MediaCrypto mediaCrypto;
    public boolean mediaCryptoRequiresSecureDecoder;
    public ByteBuffer outputBuffer;
    public ByteBuffer[] outputBuffers;
    public Format outputFormat;
    public int outputIndex;
    public boolean outputStreamEnded;
    public final boolean playClearSamplesWithoutKeys;
    @Nullable
    public DecoderInitializationException preferredDecoderInitializationException;
    public boolean shouldSkipAdaptationWorkaroundOutputBuffer;
    public boolean shouldSkipOutputBuffer;
    @Nullable
    public DrmSession<FrameworkMediaCrypto> sourceDrmSession;
    public boolean waitingForFirstSampleInFormat;
    public boolean waitingForFirstSyncSample;
    public boolean waitingForKeys;
    public final DecoderInputBuffer buffer = new DecoderInputBuffer(0);
    public final DecoderInputBuffer flagsOnlyBuffer = DecoderInputBuffer.newFlagsOnlyInstance();
    public final FormatHolder formatHolder = new FormatHolder();
    public final TimedValueQueue<Format> formatQueue = new TimedValueQueue<>();
    public final ArrayList<Long> decodeOnlyPresentationTimestamps = new ArrayList<>();
    public final MediaCodec.BufferInfo outputBufferInfo = new MediaCodec.BufferInfo();
    public int codecReconfigurationState = 0;
    public int codecDrainState = 0;
    public int codecDrainAction = 0;
    public float codecOperatingRate = -1.0f;
    public float rendererOperatingRate = 1.0f;
    public long renderTimeLimitMs = C0463C.TIME_UNSET;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$AdaptationWorkaroundMode.class */
    public @interface AdaptationWorkaroundMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException.class */
    public static class DecoderInitializationException extends Exception {
        public static final int CUSTOM_ERROR_CODE_BASE = -50000;
        public static final int DECODER_QUERY_ERROR = -49998;
        public static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;
        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(androidx.media2.exoplayer.external.Format r10, java.lang.Throwable r11, boolean r12, int r13) {
            /*
                r9 = this;
                r0 = r10
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r14 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r14
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 36
                int r2 = r2 + r3
                r1.<init>(r2)
                r15 = r0
                r0 = r15
                java.lang.String r1 = "Decoder init failed: ["
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r1 = "], "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r14
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r15
                java.lang.String r1 = r1.toString()
                r2 = r11
                r3 = r10
                java.lang.String r3 = r3.sampleMimeType
                r4 = r12
                r5 = 0
                r6 = r13
                java.lang.String r6 = buildCustomDiagnosticInfo(r6)
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(androidx.media2.exoplayer.external.Format, java.lang.Throwable, boolean, int):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(androidx.media2.exoplayer.external.Format r10, java.lang.Throwable r11, boolean r12, java.lang.String r13) {
            /*
                r9 = this;
                r0 = r10
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r14 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r13
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 23
                int r2 = r2 + r3
                r3 = r14
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r15 = r0
                r0 = r15
                java.lang.String r1 = "Decoder init failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                r1 = r14
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r15
                java.lang.String r0 = r0.toString()
                r14 = r0
                r0 = r10
                java.lang.String r0 = r0.sampleMimeType
                r15 = r0
                int r0 = androidx.media2.exoplayer.external.util.Util.SDK_INT
                r1 = 21
                if (r0 < r1) goto L_0x0060
                r0 = r11
                java.lang.String r0 = getDiagnosticInfoV21(r0)
                r10 = r0
                goto L_0x0062
            L_0x0060:
                r0 = 0
                r10 = r0
            L_0x0062:
                r0 = r9
                r1 = r14
                r2 = r11
                r3 = r15
                r4 = r12
                r5 = r13
                r6 = r10
                r7 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(androidx.media2.exoplayer.external.Format, java.lang.Throwable, boolean, java.lang.String):void");
        }

        public DecoderInitializationException(String str, Throwable th, String str2, boolean z, @Nullable String str3, @Nullable String str4, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.decoderName = str3;
            this.diagnosticInfo = str4;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        public static String buildCustomDiagnosticInfo(int i) {
            String str = i < 0 ? "neg_" : "";
            int abs = Math.abs(i);
            StringBuilder sb = new StringBuilder(str.length() + 64);
            sb.append("com.google.android.exoplayer.MediaCodecTrackRenderer_");
            sb.append(str);
            sb.append(abs);
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.decoderName, this.diagnosticInfo, decoderInitializationException);
        }

        @TargetApi(21)
        public static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DrainAction.class */
    public @interface DrainAction {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DrainState.class */
    public @interface DrainState {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$KeepCodecResult.class */
    public @interface KeepCodecResult {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$ReconfigurationState.class */
    public @interface ReconfigurationState {
    }

    public MediaCodecRenderer(int i, MediaCodecSelector mediaCodecSelector, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, boolean z, boolean z2, float f) {
        super(i);
        this.mediaCodecSelector = (MediaCodecSelector) Assertions.checkNotNull(mediaCodecSelector);
        this.drmSessionManager = drmSessionManager;
        this.playClearSamplesWithoutKeys = z;
        this.enableDecoderFallback = z2;
        this.assumedMinimumCodecOperatingRate = f;
    }

    private int codecAdaptationWorkaroundMode(String str) {
        if (Util.SDK_INT <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (Util.MODEL.startsWith("SM-T585") || Util.MODEL.startsWith("SM-A510") || Util.MODEL.startsWith("SM-A520") || Util.MODEL.startsWith("SM-J700"))) {
            return 2;
        }
        if (Util.SDK_INT >= 24) {
            return 0;
        }
        if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
            return ("flounder".equals(Util.DEVICE) || "flounder_lte".equals(Util.DEVICE) || "grouper".equals(Util.DEVICE) || "tilapia".equals(Util.DEVICE)) ? 1 : 0;
        }
        return 0;
    }

    public static boolean codecNeedsDiscardToSpsWorkaround(String str, Format format) {
        return Util.SDK_INT < 21 && format.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    public static boolean codecNeedsEosFlushWorkaround(String str) {
        return (Util.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (Util.SDK_INT <= 19 && (("hb2000".equals(Util.DEVICE) || "stvm8".equals(Util.DEVICE)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
    }

    public static boolean codecNeedsEosOutputExceptionWorkaround(String str) {
        return Util.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str);
    }

    public static boolean codecNeedsEosPropagationWorkaround(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        return (Util.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str))) || ("Amazon".equals(Util.MANUFACTURER) && "AFTS".equals(Util.MODEL) && mediaCodecInfo.secure);
    }

    public static boolean codecNeedsFlushWorkaround(String str) {
        int i = Util.SDK_INT;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (Util.SDK_INT == 19 && Util.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    public static boolean codecNeedsMonoChannelCountWorkaround(String str, Format format) {
        boolean z = true;
        if (Util.SDK_INT > 18 || format.channelCount != 1 || !"OMX.MTK.AUDIO.DECODER.MP3".equals(str)) {
            z = false;
        }
        return z;
    }

    public static boolean codecNeedsReconfigureWorkaround(String str) {
        return Util.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private boolean deviceNeedsDrmKeysToConfigureCodecWorkaround() {
        return "Amazon".equals(Util.MANUFACTURER) && ("AFTM".equals(Util.MODEL) || "AFTB".equals(Util.MODEL));
    }

    private void drainAndFlushCodec() {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            this.codecDrainAction = 1;
        }
    }

    private void drainAndReinitializeCodec() throws ExoPlaybackException {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            this.codecDrainAction = 3;
            return;
        }
        reinitializeCodec();
    }

    private void drainAndUpdateCodecDrmSession() throws ExoPlaybackException {
        if (Util.SDK_INT < 23) {
            drainAndReinitializeCodec();
        } else if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            this.codecDrainAction = 2;
        } else {
            updateDrmSessionOrReinitializeCodecV23();
        }
    }

    private boolean drainOutputBuffer(long j, long j2) throws ExoPlaybackException {
        boolean z;
        int i;
        if (!hasOutputBuffer()) {
            if (!this.codecNeedsEosOutputExceptionWorkaround || !this.codecReceivedEos) {
                i = this.codec.dequeueOutputBuffer(this.outputBufferInfo, getDequeueOutputBufferTimeoutUs());
            } else {
                try {
                    i = this.codec.dequeueOutputBuffer(this.outputBufferInfo, getDequeueOutputBufferTimeoutUs());
                } catch (IllegalStateException e) {
                    processEndOfStream();
                    if (!this.outputStreamEnded) {
                        return false;
                    }
                    releaseCodec();
                    return false;
                }
            }
            if (i < 0) {
                if (i == -2) {
                    processOutputFormat();
                    return true;
                } else if (i == -3) {
                    processOutputBuffersChanged();
                    return true;
                } else if (!this.codecNeedsEosPropagation) {
                    return false;
                } else {
                    if (!this.inputStreamEnded && this.codecDrainState != 2) {
                        return false;
                    }
                    processEndOfStream();
                    return false;
                }
            } else if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
                this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
                this.codec.releaseOutputBuffer(i, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo = this.outputBufferInfo;
                if (bufferInfo.size != 0 || (bufferInfo.flags & 4) == 0) {
                    this.outputIndex = i;
                    this.outputBuffer = getOutputBuffer(i);
                    ByteBuffer byteBuffer = this.outputBuffer;
                    if (byteBuffer != null) {
                        byteBuffer.position(this.outputBufferInfo.offset);
                        ByteBuffer byteBuffer2 = this.outputBuffer;
                        MediaCodec.BufferInfo bufferInfo2 = this.outputBufferInfo;
                        byteBuffer2.limit(bufferInfo2.offset + bufferInfo2.size);
                    }
                    this.shouldSkipOutputBuffer = shouldSkipOutputBuffer(this.outputBufferInfo.presentationTimeUs);
                    updateOutputFormatForTime(this.outputBufferInfo.presentationTimeUs);
                } else {
                    processEndOfStream();
                    return false;
                }
            }
        }
        if (!this.codecNeedsEosOutputExceptionWorkaround || !this.codecReceivedEos) {
            MediaCodec mediaCodec = this.codec;
            ByteBuffer byteBuffer3 = this.outputBuffer;
            int i2 = this.outputIndex;
            MediaCodec.BufferInfo bufferInfo3 = this.outputBufferInfo;
            z = processOutputBuffer(j, j2, mediaCodec, byteBuffer3, i2, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.shouldSkipOutputBuffer, this.outputFormat);
        } else {
            try {
                z = processOutputBuffer(j, j2, this.codec, this.outputBuffer, this.outputIndex, this.outputBufferInfo.flags, this.outputBufferInfo.presentationTimeUs, this.shouldSkipOutputBuffer, this.outputFormat);
            } catch (IllegalStateException e2) {
                processEndOfStream();
                if (!this.outputStreamEnded) {
                    return false;
                }
                releaseCodec();
                return false;
            }
        }
        if (!z) {
            return false;
        }
        onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
        boolean z2 = (this.outputBufferInfo.flags & 4) != 0;
        resetOutputBuffer();
        if (!z2) {
            return true;
        }
        processEndOfStream();
        return false;
    }

    private boolean feedInputBuffer() throws ExoPlaybackException {
        int i;
        int i2;
        MediaCodec mediaCodec = this.codec;
        if (mediaCodec == null || this.codecDrainState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputIndex < 0) {
            this.inputIndex = mediaCodec.dequeueInputBuffer(0L);
            int i3 = this.inputIndex;
            if (i3 < 0) {
                return false;
            }
            this.buffer.data = getInputBuffer(i3);
            this.buffer.clear();
        }
        if (this.codecDrainState == 1) {
            if (!this.codecNeedsEosPropagation) {
                this.codecReceivedEos = true;
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                resetInputBuffer();
            }
            this.codecDrainState = 2;
            return false;
        } else if (this.codecNeedsAdaptationWorkaroundBuffer) {
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            this.buffer.data.put(ADAPTATION_WORKAROUND_BUFFER);
            this.codec.queueInputBuffer(this.inputIndex, 0, ADAPTATION_WORKAROUND_BUFFER.length, 0L, 0);
            resetInputBuffer();
            this.codecReceivedBuffers = true;
            return true;
        } else {
            if (this.waitingForKeys) {
                i = -4;
                i2 = 0;
            } else {
                if (this.codecReconfigurationState == 1) {
                    for (int i4 = 0; i4 < this.codecFormat.initializationData.size(); i4++) {
                        this.buffer.data.put(this.codecFormat.initializationData.get(i4));
                    }
                    this.codecReconfigurationState = 2;
                }
                i2 = this.buffer.data.position();
                i = readSource(this.formatHolder, this.buffer, false);
            }
            if (i == -3) {
                return false;
            }
            if (i == -5) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.clear();
                    this.codecReconfigurationState = 1;
                }
                onInputFormatChanged(this.formatHolder);
                return true;
            } else if (this.buffer.isEndOfStream()) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.clear();
                    this.codecReconfigurationState = 1;
                }
                this.inputStreamEnded = true;
                if (!this.codecReceivedBuffers) {
                    processEndOfStream();
                    return false;
                }
                try {
                    if (this.codecNeedsEosPropagation) {
                        return false;
                    }
                    this.codecReceivedEos = true;
                    this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                    resetInputBuffer();
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw ExoPlaybackException.createForRenderer(e, getIndex());
                }
            } else if (!this.waitingForFirstSyncSample || this.buffer.isKeyFrame()) {
                this.waitingForFirstSyncSample = false;
                boolean isEncrypted = this.buffer.isEncrypted();
                this.waitingForKeys = shouldWaitForKeys(isEncrypted);
                if (this.waitingForKeys) {
                    return false;
                }
                if (this.codecNeedsDiscardToSpsWorkaround && !isEncrypted) {
                    NalUnitUtil.discardToSps(this.buffer.data);
                    if (this.buffer.data.position() == 0) {
                        return true;
                    }
                    this.codecNeedsDiscardToSpsWorkaround = false;
                }
                try {
                    long j = this.buffer.timeUs;
                    if (this.buffer.isDecodeOnly()) {
                        this.decodeOnlyPresentationTimestamps.add(Long.valueOf(j));
                    }
                    if (this.waitingForFirstSampleInFormat) {
                        this.formatQueue.add(j, this.inputFormat);
                        this.waitingForFirstSampleInFormat = false;
                    }
                    this.buffer.flip();
                    onQueueInputBuffer(this.buffer);
                    if (isEncrypted) {
                        this.codec.queueSecureInputBuffer(this.inputIndex, 0, getFrameworkCryptoInfo(this.buffer, i2), j, 0);
                    } else {
                        this.codec.queueInputBuffer(this.inputIndex, 0, this.buffer.data.limit(), j, 0);
                    }
                    resetInputBuffer();
                    this.codecReceivedBuffers = true;
                    this.codecReconfigurationState = 0;
                    this.decoderCounters.inputBufferCount++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw ExoPlaybackException.createForRenderer(e2, getIndex());
                }
            } else {
                this.buffer.clear();
                if (this.codecReconfigurationState != 2) {
                    return true;
                }
                this.codecReconfigurationState = 1;
                return true;
            }
        }
    }

    private List<MediaCodecInfo> getAvailableCodecInfos(boolean z) throws MediaCodecUtil.DecoderQueryException {
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(this.mediaCodecSelector, this.inputFormat, z);
        List<MediaCodecInfo> list = decoderInfos;
        if (decoderInfos.isEmpty()) {
            list = decoderInfos;
            if (z) {
                List<MediaCodecInfo> decoderInfos2 = getDecoderInfos(this.mediaCodecSelector, this.inputFormat, false);
                list = decoderInfos2;
                if (!decoderInfos2.isEmpty()) {
                    String str = this.inputFormat.sampleMimeType;
                    String valueOf = String.valueOf(decoderInfos2);
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99 + String.valueOf(valueOf).length());
                    sb.append("Drm session requires secure decoder for ");
                    sb.append(str);
                    sb.append(", but no secure decoder available. Trying to proceed with ");
                    sb.append(valueOf);
                    sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                    Log.m37483w(TAG, sb.toString());
                    list = decoderInfos2;
                }
            }
        }
        return list;
    }

    private void getCodecBuffers(MediaCodec mediaCodec) {
        if (Util.SDK_INT < 21) {
            this.inputBuffers = mediaCodec.getInputBuffers();
            this.outputBuffers = mediaCodec.getOutputBuffers();
        }
    }

    public static MediaCodec.CryptoInfo getFrameworkCryptoInfo(DecoderInputBuffer decoderInputBuffer, int i) {
        MediaCodec.CryptoInfo frameworkCryptoInfo = decoderInputBuffer.cryptoInfo.getFrameworkCryptoInfo();
        if (i == 0) {
            return frameworkCryptoInfo;
        }
        if (frameworkCryptoInfo.numBytesOfClearData == null) {
            frameworkCryptoInfo.numBytesOfClearData = new int[1];
        }
        int[] iArr = frameworkCryptoInfo.numBytesOfClearData;
        iArr[0] = iArr[0] + i;
        return frameworkCryptoInfo;
    }

    private ByteBuffer getInputBuffer(int i) {
        return Util.SDK_INT >= 21 ? this.codec.getInputBuffer(i) : this.inputBuffers[i];
    }

    private ByteBuffer getOutputBuffer(int i) {
        return Util.SDK_INT >= 21 ? this.codec.getOutputBuffer(i) : this.outputBuffers[i];
    }

    private boolean hasOutputBuffer() {
        return this.outputIndex >= 0;
    }

    private void initCodec(MediaCodecInfo mediaCodecInfo, MediaCrypto mediaCrypto) throws Exception {
        String str = mediaCodecInfo.name;
        float codecOperatingRateV23 = Util.SDK_INT < 23 ? -1.0f : getCodecOperatingRateV23(this.rendererOperatingRate, this.inputFormat, getStreamFormats());
        float f = codecOperatingRateV23;
        if (codecOperatingRateV23 <= this.assumedMinimumCodecOperatingRate) {
            f = -1.0f;
        }
        MediaCodec mediaCodec = null;
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            String valueOf = String.valueOf(str);
            TraceUtil.beginSection(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            TraceUtil.endSection();
            TraceUtil.beginSection("configureCodec");
            configureCodec(mediaCodecInfo, createByCodecName, this.inputFormat, mediaCrypto, f);
            TraceUtil.endSection();
            TraceUtil.beginSection("startCodec");
            createByCodecName.start();
            TraceUtil.endSection();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            mediaCodec = createByCodecName;
            getCodecBuffers(createByCodecName);
            this.codec = createByCodecName;
            this.codecInfo = mediaCodecInfo;
            this.codecOperatingRate = f;
            this.codecFormat = this.inputFormat;
            this.codecAdaptationWorkaroundMode = codecAdaptationWorkaroundMode(str);
            this.codecNeedsReconfigureWorkaround = codecNeedsReconfigureWorkaround(str);
            this.codecNeedsDiscardToSpsWorkaround = codecNeedsDiscardToSpsWorkaround(str, this.codecFormat);
            this.codecNeedsFlushWorkaround = codecNeedsFlushWorkaround(str);
            this.codecNeedsEosFlushWorkaround = codecNeedsEosFlushWorkaround(str);
            this.codecNeedsEosOutputExceptionWorkaround = codecNeedsEosOutputExceptionWorkaround(str);
            this.codecNeedsMonoChannelCountWorkaround = codecNeedsMonoChannelCountWorkaround(str, this.codecFormat);
            this.codecNeedsEosPropagation = codecNeedsEosPropagationWorkaround(mediaCodecInfo) || getCodecNeedsEosPropagation();
            resetInputBuffer();
            resetOutputBuffer();
            this.codecHotswapDeadlineMs = getState() == 2 ? SystemClock.elapsedRealtime() + 1000 : C0463C.TIME_UNSET;
            this.codecReconfigured = false;
            this.codecReconfigurationState = 0;
            this.codecReceivedEos = false;
            this.codecReceivedBuffers = false;
            this.codecDrainState = 0;
            this.codecDrainAction = 0;
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
            this.shouldSkipOutputBuffer = false;
            this.waitingForFirstSyncSample = true;
            this.decoderCounters.decoderInitCount++;
            onCodecInitialized(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Exception e) {
            if (mediaCodec != null) {
                resetCodecBuffers();
                mediaCodec.release();
            }
            throw e;
        }
    }

    private void maybeInitCodecWithFallback(MediaCrypto mediaCrypto, boolean z) throws DecoderInitializationException {
        if (this.availableCodecInfos == null) {
            try {
                List<MediaCodecInfo> availableCodecInfos = getAvailableCodecInfos(z);
                this.availableCodecInfos = new ArrayDeque<>();
                if (this.enableDecoderFallback) {
                    this.availableCodecInfos.addAll(availableCodecInfos);
                } else if (!availableCodecInfos.isEmpty()) {
                    this.availableCodecInfos.add(availableCodecInfos.get(0));
                }
                this.preferredDecoderInitializationException = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(this.inputFormat, e, z, (int) DecoderInitializationException.DECODER_QUERY_ERROR);
            }
        }
        if (!this.availableCodecInfos.isEmpty()) {
            while (this.codec == null) {
                MediaCodecInfo peekFirst = this.availableCodecInfos.peekFirst();
                if (shouldInitCodec(peekFirst)) {
                    try {
                        initCodec(peekFirst, mediaCrypto);
                    } catch (Exception e2) {
                        String valueOf = String.valueOf(peekFirst);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to initialize decoder: ");
                        sb.append(valueOf);
                        Log.m37482w(TAG, sb.toString(), e2);
                        this.availableCodecInfos.removeFirst();
                        DecoderInitializationException decoderInitializationException = new DecoderInitializationException(this.inputFormat, e2, z, peekFirst.name);
                        DecoderInitializationException decoderInitializationException2 = this.preferredDecoderInitializationException;
                        if (decoderInitializationException2 == null) {
                            this.preferredDecoderInitializationException = decoderInitializationException;
                        } else {
                            this.preferredDecoderInitializationException = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                        }
                        if (this.availableCodecInfos.isEmpty()) {
                            throw this.preferredDecoderInitializationException;
                        }
                    }
                } else {
                    return;
                }
            }
            this.availableCodecInfos = null;
            return;
        }
        throw new DecoderInitializationException(this.inputFormat, (Throwable) null, z, (int) DecoderInitializationException.NO_SUITABLE_DECODER_ERROR);
    }

    private void processEndOfStream() throws ExoPlaybackException {
        int i = this.codecDrainAction;
        if (i == 1) {
            flushOrReinitializeCodec();
        } else if (i == 2) {
            updateDrmSessionOrReinitializeCodecV23();
        } else if (i != 3) {
            this.outputStreamEnded = true;
            renderToEndOfStream();
        } else {
            reinitializeCodec();
        }
    }

    private void processOutputBuffersChanged() {
        if (Util.SDK_INT < 21) {
            this.outputBuffers = this.codec.getOutputBuffers();
        }
    }

    private void processOutputFormat() throws ExoPlaybackException {
        MediaFormat outputFormat = this.codec.getOutputFormat();
        if (this.codecAdaptationWorkaroundMode != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (this.codecNeedsMonoChannelCountWorkaround) {
            outputFormat.setInteger("channel-count", 1);
        }
        onOutputFormatChanged(this.codec, outputFormat);
    }

    private boolean readToFlagsOnlyBuffer(boolean z) throws ExoPlaybackException {
        this.flagsOnlyBuffer.clear();
        int readSource = readSource(this.formatHolder, this.flagsOnlyBuffer, z);
        if (readSource == -5) {
            onInputFormatChanged(this.formatHolder);
            return true;
        } else if (readSource != -4 || !this.flagsOnlyBuffer.isEndOfStream()) {
            return false;
        } else {
            this.inputStreamEnded = true;
            processEndOfStream();
            return false;
        }
    }

    private void reinitializeCodec() throws ExoPlaybackException {
        releaseCodec();
        maybeInitCodec();
    }

    private void releaseDrmSessionIfUnused(@Nullable DrmSession<FrameworkMediaCrypto> drmSession) {
        if (drmSession != null && drmSession != this.sourceDrmSession && drmSession != this.codecDrmSession) {
            this.drmSessionManager.releaseSession(drmSession);
        }
    }

    private void resetCodecBuffers() {
        if (Util.SDK_INT < 21) {
            this.inputBuffers = null;
            this.outputBuffers = null;
        }
    }

    private void resetInputBuffer() {
        this.inputIndex = -1;
        this.buffer.data = null;
    }

    private void resetOutputBuffer() {
        this.outputIndex = -1;
        this.outputBuffer = null;
    }

    private void setCodecDrmSession(@Nullable DrmSession<FrameworkMediaCrypto> drmSession) {
        DrmSession<FrameworkMediaCrypto> drmSession2 = this.codecDrmSession;
        this.codecDrmSession = drmSession;
        releaseDrmSessionIfUnused(drmSession2);
    }

    private void setSourceDrmSession(@Nullable DrmSession<FrameworkMediaCrypto> drmSession) {
        DrmSession<FrameworkMediaCrypto> drmSession2 = this.sourceDrmSession;
        this.sourceDrmSession = drmSession;
        releaseDrmSessionIfUnused(drmSession2);
    }

    private boolean shouldContinueFeeding(long j) {
        return this.renderTimeLimitMs == C0463C.TIME_UNSET || SystemClock.elapsedRealtime() - j < this.renderTimeLimitMs;
    }

    private boolean shouldSkipOutputBuffer(long j) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i = 0; i < size; i++) {
            if (this.decodeOnlyPresentationTimestamps.get(i).longValue() == j) {
                this.decodeOnlyPresentationTimestamps.remove(i);
                return true;
            }
        }
        return false;
    }

    private boolean shouldWaitForKeys(boolean z) throws ExoPlaybackException {
        if (this.codecDrmSession == null) {
            return false;
        }
        if (!z && this.playClearSamplesWithoutKeys) {
            return false;
        }
        int state = this.codecDrmSession.getState();
        boolean z2 = true;
        if (state != 1) {
            if (state == 4) {
                z2 = false;
            }
            return z2;
        }
        throw ExoPlaybackException.createForRenderer(this.codecDrmSession.getError(), getIndex());
    }

    private void updateCodecOperatingRate() throws ExoPlaybackException {
        if (Util.SDK_INT >= 23) {
            float codecOperatingRateV23 = getCodecOperatingRateV23(this.rendererOperatingRate, this.codecFormat, getStreamFormats());
            float f = this.codecOperatingRate;
            if (f != codecOperatingRateV23) {
                if (codecOperatingRateV23 == -1.0f) {
                    drainAndReinitializeCodec();
                } else if (f != -1.0f || codecOperatingRateV23 > this.assumedMinimumCodecOperatingRate) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", codecOperatingRateV23);
                    this.codec.setParameters(bundle);
                    this.codecOperatingRate = codecOperatingRateV23;
                }
            }
        }
    }

    @TargetApi(23)
    private void updateDrmSessionOrReinitializeCodecV23() throws ExoPlaybackException {
        FrameworkMediaCrypto mediaCrypto = this.sourceDrmSession.getMediaCrypto();
        if (mediaCrypto == null) {
            reinitializeCodec();
        } else if (C0463C.PLAYREADY_UUID.equals(mediaCrypto.uuid)) {
            reinitializeCodec();
        } else if (!flushOrReinitializeCodec()) {
            try {
                this.mediaCrypto.setMediaDrmSession(mediaCrypto.sessionId);
                setCodecDrmSession(this.sourceDrmSession);
                this.codecDrainState = 0;
                this.codecDrainAction = 0;
            } catch (MediaCryptoException e) {
                throw ExoPlaybackException.createForRenderer(e, getIndex());
            }
        }
    }

    public int canKeepCodec(MediaCodec mediaCodec, MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        return 0;
    }

    public abstract void configureCodec(MediaCodecInfo mediaCodecInfo, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) throws MediaCodecUtil.DecoderQueryException;

    public void experimental_setRenderTimeLimitMs(long j) {
        this.renderTimeLimitMs = j;
    }

    public final boolean flushOrReinitializeCodec() throws ExoPlaybackException {
        boolean flushOrReleaseCodec = flushOrReleaseCodec();
        if (flushOrReleaseCodec) {
            maybeInitCodec();
        }
        return flushOrReleaseCodec;
    }

    public boolean flushOrReleaseCodec() {
        if (this.codec == null) {
            return false;
        }
        if (this.codecDrainAction == 3 || this.codecNeedsFlushWorkaround || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos)) {
            releaseCodec();
            return true;
        }
        this.codec.flush();
        resetInputBuffer();
        resetOutputBuffer();
        this.codecHotswapDeadlineMs = C0463C.TIME_UNSET;
        this.codecReceivedEos = false;
        this.codecReceivedBuffers = false;
        this.waitingForFirstSyncSample = true;
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        this.shouldSkipOutputBuffer = false;
        this.waitingForKeys = false;
        this.decodeOnlyPresentationTimestamps.clear();
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.codecReconfigurationState = this.codecReconfigured ? 1 : 0;
        return false;
    }

    public final MediaCodec getCodec() {
        return this.codec;
    }

    @Nullable
    public final MediaCodecInfo getCodecInfo() {
        return this.codecInfo;
    }

    public boolean getCodecNeedsEosPropagation() {
        return false;
    }

    public float getCodecOperatingRateV23(float f, Format format, Format[] formatArr) {
        return -1.0f;
    }

    public abstract List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    public long getDequeueOutputBufferTimeoutUs() {
        return 0L;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isReady() {
        return this.inputFormat != null && !this.waitingForKeys && (isSourceReady() || hasOutputBuffer() || (this.codecHotswapDeadlineMs != C0463C.TIME_UNSET && SystemClock.elapsedRealtime() < this.codecHotswapDeadlineMs));
    }

    public final void maybeInitCodec() throws ExoPlaybackException {
        if (this.codec == null && this.inputFormat != null) {
            setCodecDrmSession(this.sourceDrmSession);
            String str = this.inputFormat.sampleMimeType;
            DrmSession<FrameworkMediaCrypto> drmSession = this.codecDrmSession;
            if (drmSession != null) {
                if (this.mediaCrypto == null) {
                    FrameworkMediaCrypto mediaCrypto = drmSession.getMediaCrypto();
                    if (mediaCrypto != null) {
                        try {
                            this.mediaCrypto = new MediaCrypto(mediaCrypto.uuid, mediaCrypto.sessionId);
                            this.mediaCryptoRequiresSecureDecoder = !mediaCrypto.forceAllowInsecureDecoderComponents && this.mediaCrypto.requiresSecureDecoderComponent(str);
                        } catch (MediaCryptoException e) {
                            throw ExoPlaybackException.createForRenderer(e, getIndex());
                        }
                    } else if (this.codecDrmSession.getError() == null) {
                        return;
                    }
                }
                if (deviceNeedsDrmKeysToConfigureCodecWorkaround()) {
                    int state = this.codecDrmSession.getState();
                    if (state == 1) {
                        throw ExoPlaybackException.createForRenderer(this.codecDrmSession.getError(), getIndex());
                    } else if (state != 4) {
                        return;
                    }
                }
            }
            try {
                maybeInitCodecWithFallback(this.mediaCrypto, this.mediaCryptoRequiresSecureDecoder);
            } catch (DecoderInitializationException e2) {
                throw ExoPlaybackException.createForRenderer(e2, getIndex());
            }
        }
    }

    public void onCodecInitialized(String str, long j, long j2) {
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        if (this.sourceDrmSession == null && this.codecDrmSession == null) {
            flushOrReleaseCodec();
        } else {
            onReset();
        }
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onEnabled(boolean z) throws ExoPlaybackException {
        this.decoderCounters = new DecoderCounters();
    }

    public void onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        Format format = this.inputFormat;
        Format format2 = formatHolder.format;
        this.inputFormat = format2;
        this.waitingForFirstSampleInFormat = true;
        if (!Util.areEqual(format2.drmInitData, format == null ? null : format.drmInitData)) {
            if (format2.drmInitData != null) {
                DrmSessionManager<FrameworkMediaCrypto> drmSessionManager = this.drmSessionManager;
                if (drmSessionManager != null) {
                    DrmSession<FrameworkMediaCrypto> acquireSession = drmSessionManager.acquireSession(Looper.myLooper(), format2.drmInitData);
                    if (acquireSession == this.sourceDrmSession || acquireSession == this.codecDrmSession) {
                        this.drmSessionManager.releaseSession(acquireSession);
                    }
                    setSourceDrmSession(acquireSession);
                } else {
                    throw ExoPlaybackException.createForRenderer(new IllegalStateException("Media requires a DrmSessionManager"), getIndex());
                }
            } else {
                setSourceDrmSession(null);
            }
        }
        if (this.codec == null) {
            maybeInitCodec();
        } else if ((this.sourceDrmSession != null || this.codecDrmSession == null) && ((this.sourceDrmSession == null || this.codecDrmSession != null) && ((this.sourceDrmSession == null || this.codecInfo.secure) && (Util.SDK_INT >= 23 || this.sourceDrmSession == this.codecDrmSession)))) {
            int canKeepCodec = canKeepCodec(this.codec, this.codecInfo, this.codecFormat, format2);
            if (canKeepCodec == 0) {
                drainAndReinitializeCodec();
            } else if (canKeepCodec == 1) {
                this.codecFormat = format2;
                updateCodecOperatingRate();
                if (this.sourceDrmSession != this.codecDrmSession) {
                    drainAndUpdateCodecDrmSession();
                } else {
                    drainAndFlushCodec();
                }
            } else if (canKeepCodec != 2) {
                if (canKeepCodec == 3) {
                    this.codecFormat = format2;
                    updateCodecOperatingRate();
                    if (this.sourceDrmSession != this.codecDrmSession) {
                        drainAndUpdateCodecDrmSession();
                        return;
                    }
                    return;
                }
                throw new IllegalStateException();
            } else if (this.codecNeedsReconfigureWorkaround) {
                drainAndReinitializeCodec();
            } else {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                int i = this.codecAdaptationWorkaroundMode;
                boolean z = true;
                if (i != 2) {
                    if (i == 1) {
                        int i2 = format2.width;
                        Format format3 = this.codecFormat;
                        if (i2 == format3.width && format2.height == format3.height) {
                            z = true;
                        }
                    }
                    z = false;
                }
                this.codecNeedsAdaptationWorkaroundBuffer = z;
                this.codecFormat = format2;
                updateCodecOperatingRate();
                if (this.sourceDrmSession != this.codecDrmSession) {
                    drainAndUpdateCodecDrmSession();
                }
            }
        } else {
            drainAndReinitializeCodec();
        }
    }

    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        flushOrReinitializeCodec();
        this.formatQueue.clear();
    }

    public void onProcessedOutputBuffer(long j) {
    }

    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onReset() {
        try {
            releaseCodec();
        } finally {
            setSourceDrmSession(null);
        }
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onStarted() {
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onStopped() {
    }

    public abstract boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, Format format) throws ExoPlaybackException;

    public void releaseCodec() {
        this.availableCodecInfos = null;
        this.codecInfo = null;
        this.codecFormat = null;
        resetInputBuffer();
        resetOutputBuffer();
        resetCodecBuffers();
        this.waitingForKeys = false;
        this.codecHotswapDeadlineMs = C0463C.TIME_UNSET;
        this.decodeOnlyPresentationTimestamps.clear();
        try {
            if (this.codec != null) {
                this.decoderCounters.decoderReleaseCount++;
                this.codec.stop();
                this.codec.release();
            }
            this.codec = null;
            try {
                if (this.mediaCrypto != null) {
                    this.mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.codec = null;
            try {
                if (this.mediaCrypto != null) {
                    this.mediaCrypto.release();
                }
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            renderToEndOfStream();
        } else if (this.inputFormat != null || readToFlagsOnlyBuffer(true)) {
            maybeInitCodec();
            if (this.codec != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                TraceUtil.beginSection("drainAndFeed");
                do {
                } while (drainOutputBuffer(j, j2));
                while (feedInputBuffer() && shouldContinueFeeding(elapsedRealtime)) {
                }
                TraceUtil.endSection();
            } else {
                this.decoderCounters.skippedInputBufferCount += skipSource(j);
                readToFlagsOnlyBuffer(false);
            }
            this.decoderCounters.ensureUpdated();
        }
    }

    public void renderToEndOfStream() throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer, androidx.media2.exoplayer.external.Renderer
    public final void setOperatingRate(float f) throws ExoPlaybackException {
        this.rendererOperatingRate = f;
        if (this.codec != null && this.codecDrainAction != 3 && getState() != 0) {
            updateCodecOperatingRate();
        }
    }

    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.RendererCapabilities
    public final int supportsFormat(Format format) throws ExoPlaybackException {
        try {
            return supportsFormat(this.mediaCodecSelector, this.drmSessionManager, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw ExoPlaybackException.createForRenderer(e, getIndex());
        }
    }

    public abstract int supportsFormat(MediaCodecSelector mediaCodecSelector, DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, Format format) throws MediaCodecUtil.DecoderQueryException;

    @Override // androidx.media2.exoplayer.external.BaseRenderer, androidx.media2.exoplayer.external.RendererCapabilities
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    @Nullable
    public final Format updateOutputFormatForTime(long j) {
        Format pollFloor = this.formatQueue.pollFloor(j);
        if (pollFloor != null) {
            this.outputFormat = pollFloor;
        }
        return pollFloor;
    }
}
