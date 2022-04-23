package androidx.media2.exoplayer.external.audio;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.PlaybackParameters;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.audio.AudioTrackPositionTracker;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import gogolook.callgogolook2.gson.UserProfile;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {
    public static final int AC3_BUFFER_MULTIPLICATION_FACTOR = 2;
    public static final int BUFFER_MULTIPLICATION_FACTOR = 4;
    public static final int ERROR_BAD_VALUE = -2;
    public static final long MAX_BUFFER_DURATION_US = 750000;
    public static final long MIN_BUFFER_DURATION_US = 250000;
    public static final int MODE_STATIC = 0;
    public static final int MODE_STREAM = 1;
    public static final long PASSTHROUGH_BUFFER_DURATION_US = 250000;
    public static final int START_IN_SYNC = 1;
    public static final int START_NEED_SYNC = 2;
    public static final int START_NOT_SET = 0;
    public static final int STATE_INITIALIZED = 1;
    public static final String TAG = "AudioTrack";
    @SuppressLint({"InlinedApi"})
    public static final int WRITE_NON_BLOCKING = 1;
    public static boolean enablePreV21AudioSessionWorkaround = false;
    public static boolean failOnSpuriousAudioTimestamp = false;
    public AudioProcessor[] activeAudioProcessors;
    @Nullable
    public PlaybackParameters afterDrainPlaybackParameters;
    public AudioAttributes audioAttributes;
    @Nullable
    public final AudioCapabilities audioCapabilities;
    public final AudioProcessorChain audioProcessorChain;
    public int audioSessionId;
    public AudioTrack audioTrack;
    public final AudioTrackPositionTracker audioTrackPositionTracker;
    public AuxEffectInfo auxEffectInfo;
    @Nullable
    public ByteBuffer avSyncHeader;
    public int bytesUntilNextAvSync;
    public final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    public Configuration configuration;
    public int drainingAudioProcessorIndex;
    public final boolean enableConvertHighResIntPcmToFloat;
    public int framesPerEncodedSample;
    public boolean handledEndOfStream;
    @Nullable
    public ByteBuffer inputBuffer;
    @Nullable
    public AudioTrack keepSessionIdAudioTrack;
    public long lastFeedElapsedRealtimeMs;
    @Nullable
    public AudioSink.Listener listener;
    @Nullable
    public ByteBuffer outputBuffer;
    public ByteBuffer[] outputBuffers;
    @Nullable
    public Configuration pendingConfiguration;
    public PlaybackParameters playbackParameters;
    public final ArrayDeque<PlaybackParametersCheckpoint> playbackParametersCheckpoints;
    public long playbackParametersOffsetUs;
    public long playbackParametersPositionUs;
    public boolean playing;
    public byte[] preV21OutputBuffer;
    public int preV21OutputBufferOffset;
    public final ConditionVariable releasingConditionVariable;
    public int startMediaTimeState;
    public long startMediaTimeUs;
    public boolean stoppedAudioTrack;
    public long submittedEncodedFrames;
    public long submittedPcmBytes;
    public final AudioProcessor[] toFloatPcmAvailableAudioProcessors;
    public final AudioProcessor[] toIntPcmAvailableAudioProcessors;
    public final TrimmingAudioProcessor trimmingAudioProcessor;
    public boolean tunneling;
    public float volume;
    public long writtenEncodedFrames;
    public long writtenPcmBytes;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain.class */
    public interface AudioProcessorChain {
        PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters);

        AudioProcessor[] getAudioProcessors();

        long getMediaDuration(long j);

        long getSkippedOutputFrameCount();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration.class */
    public static final class Configuration {
        public final AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final boolean canApplyPlaybackParameters;
        public final int inputPcmFrameSize;
        public final int inputSampleRate;
        public final boolean isInputPcm;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;
        public final boolean processingEnabled;

        public Configuration(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AudioProcessor[] audioProcessorArr) {
            this.isInputPcm = z;
            this.inputPcmFrameSize = i;
            this.inputSampleRate = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.bufferSize = i7 == 0 ? getDefaultBufferSize() : i7;
            this.processingEnabled = z2;
            this.canApplyPlaybackParameters = z3;
            this.availableAudioProcessors = audioProcessorArr;
        }

        @TargetApi(21)
        private AudioTrack createAudioTrackV21(boolean z, AudioAttributes audioAttributes, int i) {
            AudioAttributes build = z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : audioAttributes.getAudioAttributesV21();
            AudioFormat build2 = new AudioFormat.Builder().setChannelMask(this.outputChannelConfig).setEncoding(this.outputEncoding).setSampleRate(this.outputSampleRate).build();
            int i2 = this.bufferSize;
            if (i == 0) {
                i = 0;
            }
            return new AudioTrack(build, build2, i2, 1, i);
        }

        private int getDefaultBufferSize() {
            if (this.isInputPcm) {
                int minBufferSize = AudioTrack.getMinBufferSize(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
                Assertions.checkState(minBufferSize != -2);
                return Util.constrainValue(minBufferSize * 4, ((int) durationUsToFrames(250000L)) * this.outputPcmFrameSize, (int) Math.max(minBufferSize, durationUsToFrames(DefaultAudioSink.MAX_BUFFER_DURATION_US) * this.outputPcmFrameSize));
            }
            int maximumEncodedRateBytesPerSecond = DefaultAudioSink.getMaximumEncodedRateBytesPerSecond(this.outputEncoding);
            int i = maximumEncodedRateBytesPerSecond;
            if (this.outputEncoding == 5) {
                i = maximumEncodedRateBytesPerSecond * 2;
            }
            return (int) ((i * 250000) / 1000000);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:14:0x006a). Please submit an issue!!! */
        public AudioTrack buildAudioTrack(boolean z, AudioAttributes audioAttributes, int i) throws AudioSink.InitializationException {
            AudioTrack audioTrack;
            if (Util.SDK_INT >= 21) {
                audioTrack = createAudioTrackV21(z, audioAttributes, i);
            } else {
                int streamTypeForAudioUsage = Util.getStreamTypeForAudioUsage(audioAttributes.usage);
                audioTrack = i == 0 ? new AudioTrack(streamTypeForAudioUsage, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1) : new AudioTrack(streamTypeForAudioUsage, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize);
        }

        public boolean canReuseAudioTrack(Configuration configuration) {
            return configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig;
        }

        public long durationUsToFrames(long j) {
            return (j * this.outputSampleRate) / 1000000;
        }

        public long framesToDurationUs(long j) {
            return (j * 1000000) / this.outputSampleRate;
        }

        public long inputFramesToDurationUs(long j) {
            return (j * 1000000) / this.inputSampleRate;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain.class */
    public static class DefaultAudioProcessorChain implements AudioProcessorChain {
        public final AudioProcessor[] audioProcessors;
        public final SilenceSkippingAudioProcessor silenceSkippingAudioProcessor = new SilenceSkippingAudioProcessor();
        public final SonicAudioProcessor sonicAudioProcessor = new SonicAudioProcessor();

        public DefaultAudioProcessorChain(AudioProcessor... audioProcessorArr) {
            this.audioProcessors = (AudioProcessor[]) Arrays.copyOf(audioProcessorArr, audioProcessorArr.length + 2);
            AudioProcessor[] audioProcessorArr2 = this.audioProcessors;
            audioProcessorArr2[audioProcessorArr.length] = this.silenceSkippingAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length + 1] = this.sonicAudioProcessor;
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AudioProcessorChain
        public PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters) {
            this.silenceSkippingAudioProcessor.setEnabled(playbackParameters.skipSilence);
            return new PlaybackParameters(this.sonicAudioProcessor.setSpeed(playbackParameters.speed), this.sonicAudioProcessor.setPitch(playbackParameters.pitch), playbackParameters.skipSilence);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AudioProcessorChain
        public AudioProcessor[] getAudioProcessors() {
            return this.audioProcessors;
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AudioProcessorChain
        public long getMediaDuration(long j) {
            return this.sonicAudioProcessor.scaleDurationForSpeedup(j);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.getSkippedFrames();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint.class */
    public static final class PlaybackParametersCheckpoint {
        public final long mediaTimeUs;
        public final PlaybackParameters playbackParameters;
        public final long positionUs;

        public PlaybackParametersCheckpoint(PlaybackParameters playbackParameters, long j, long j2) {
            this.playbackParameters = playbackParameters;
            this.mediaTimeUs = j;
            this.positionUs = j2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener.class */
    public final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        public PositionTrackerListener() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j) {
            StringBuilder sb = new StringBuilder(61);
            sb.append("Ignoring impossibly large audio latency: ");
            sb.append(j);
            Log.m37483w(DefaultAudioSink.TAG, sb.toString());
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j, long j2, long j3, long j4) {
            long submittedFrames = DefaultAudioSink.this.getSubmittedFrames();
            long writtenFrames = DefaultAudioSink.this.getWrittenFrames();
            StringBuilder sb = new StringBuilder(182);
            sb.append("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(j2);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(j3);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(j4);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(submittedFrames);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(writtenFrames);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                Log.m37483w(DefaultAudioSink.TAG, sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2);
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j, long j2, long j3, long j4) {
            long submittedFrames = DefaultAudioSink.this.getSubmittedFrames();
            long writtenFrames = DefaultAudioSink.this.getWrittenFrames();
            StringBuilder sb = new StringBuilder(180);
            sb.append("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(j2);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(j3);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(j4);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(submittedFrames);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(writtenFrames);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                Log.m37483w(DefaultAudioSink.TAG, sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2);
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioTrackPositionTracker.Listener
        public void onUnderrun(int i, long j) {
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onUnderrun(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.lastFeedElapsedRealtimeMs);
            }
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$StartMediaTimeState.class */
    public @interface StartMediaTimeState {
    }

    public DefaultAudioSink(@Nullable AudioCapabilities audioCapabilities, AudioProcessorChain audioProcessorChain, boolean z) {
        this.audioCapabilities = audioCapabilities;
        this.audioProcessorChain = (AudioProcessorChain) Assertions.checkNotNull(audioProcessorChain);
        this.enableConvertHighResIntPcmToFloat = z;
        this.releasingConditionVariable = new ConditionVariable(true);
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener());
        this.channelMappingAudioProcessor = new ChannelMappingAudioProcessor();
        this.trimmingAudioProcessor = new TrimmingAudioProcessor();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new ResamplingAudioProcessor(), this.channelMappingAudioProcessor, this.trimmingAudioProcessor);
        Collections.addAll(arrayList, audioProcessorChain.getAudioProcessors());
        this.toIntPcmAvailableAudioProcessors = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.toFloatPcmAvailableAudioProcessors = new AudioProcessor[]{new FloatResamplingAudioProcessor()};
        this.volume = 1.0f;
        this.startMediaTimeState = 0;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioSessionId = 0;
        this.auxEffectInfo = new AuxEffectInfo(0, 0.0f);
        this.playbackParameters = PlaybackParameters.DEFAULT;
        this.drainingAudioProcessorIndex = -1;
        this.activeAudioProcessors = new AudioProcessor[0];
        this.outputBuffers = new ByteBuffer[0];
        this.playbackParametersCheckpoints = new ArrayDeque<>();
    }

    public DefaultAudioSink(@Nullable AudioCapabilities audioCapabilities, AudioProcessor[] audioProcessorArr) {
        this(audioCapabilities, audioProcessorArr, false);
    }

    public DefaultAudioSink(@Nullable AudioCapabilities audioCapabilities, AudioProcessor[] audioProcessorArr, boolean z) {
        this(audioCapabilities, new DefaultAudioProcessorChain(audioProcessorArr), z);
    }

    private long applySkipping(long j) {
        return j + this.configuration.framesToDurationUs(this.audioProcessorChain.getSkippedOutputFrameCount());
    }

    private long applySpeedup(long j) {
        long mediaDurationForPlayoutDuration;
        long j2;
        PlaybackParametersCheckpoint playbackParametersCheckpoint = null;
        while (!this.playbackParametersCheckpoints.isEmpty() && j >= this.playbackParametersCheckpoints.getFirst().positionUs) {
            playbackParametersCheckpoint = this.playbackParametersCheckpoints.remove();
        }
        if (playbackParametersCheckpoint != null) {
            this.playbackParameters = playbackParametersCheckpoint.playbackParameters;
            this.playbackParametersPositionUs = playbackParametersCheckpoint.positionUs;
            this.playbackParametersOffsetUs = playbackParametersCheckpoint.mediaTimeUs - this.startMediaTimeUs;
        }
        if (this.playbackParameters.speed == 1.0f) {
            return (j + this.playbackParametersOffsetUs) - this.playbackParametersPositionUs;
        }
        if (this.playbackParametersCheckpoints.isEmpty()) {
            j2 = this.playbackParametersOffsetUs;
            mediaDurationForPlayoutDuration = this.audioProcessorChain.getMediaDuration(j - this.playbackParametersPositionUs);
        } else {
            j2 = this.playbackParametersOffsetUs;
            mediaDurationForPlayoutDuration = Util.getMediaDurationForPlayoutDuration(j - this.playbackParametersPositionUs, this.playbackParameters.speed);
        }
        return j2 + mediaDurationForPlayoutDuration;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:9:0x0022). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean drainAudioProcessorsToEndOfStream() throws androidx.media2.exoplayer.external.audio.AudioSink.WriteException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.drainingAudioProcessorIndex
            r1 = -1
            if (r0 != r1) goto L_0x0027
            r0 = r5
            androidx.media2.exoplayer.external.audio.DefaultAudioSink$Configuration r0 = r0.configuration
            boolean r0 = r0.processingEnabled
            if (r0 == 0) goto L_0x0017
            r0 = 0
            r6 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.activeAudioProcessors
            int r0 = r0.length
            r6 = r0
        L_0x001d:
            r0 = r5
            r1 = r6
            r0.drainingAudioProcessorIndex = r1
        L_0x0022:
            r0 = 1
            r6 = r0
            goto L_0x0029
        L_0x0027:
            r0 = 0
            r6 = r0
        L_0x0029:
            r0 = r5
            int r0 = r0.drainingAudioProcessorIndex
            r7 = r0
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.activeAudioProcessors
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0066
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0047
            r0 = r8
            r0.queueEndOfStream()
        L_0x0047:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.processBuffers(r1)
            r0 = r8
            boolean r0 = r0.isEnded()
            if (r0 != 0) goto L_0x0059
            r0 = 0
            return r0
        L_0x0059:
            r0 = r5
            r1 = r5
            int r1 = r1.drainingAudioProcessorIndex
            r2 = 1
            int r1 = r1 + r2
            r0.drainingAudioProcessorIndex = r1
            goto L_0x0022
        L_0x0066:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.outputBuffer
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0080
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.writeBuffer(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.outputBuffer
            if (r0 == 0) goto L_0x0080
            r0 = 0
            return r0
        L_0x0080:
            r0 = r5
            r1 = -1
            r0.drainingAudioProcessorIndex = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.drainAudioProcessorsToEndOfStream():boolean");
    }

    private void flushAudioProcessors() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.activeAudioProcessors;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.flush();
                this.outputBuffers[i] = audioProcessor.getOutput();
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
        if (r3 == 5) goto L_0x002d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getChannelConfig(int r3, boolean r4) {
        /*
            r0 = r3
            r5 = r0
            int r0 = androidx.media2.exoplayer.external.util.Util.SDK_INT
            r1 = 28
            if (r0 > r1) goto L_0x0030
            r0 = r3
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0030
            r0 = r3
            r1 = 7
            if (r0 != r1) goto L_0x001c
            r0 = 8
            r5 = r0
            goto L_0x0030
        L_0x001c:
            r0 = r3
            r1 = 3
            if (r0 == r1) goto L_0x002d
            r0 = r3
            r1 = 4
            if (r0 == r1) goto L_0x002d
            r0 = r3
            r5 = r0
            r0 = r3
            r1 = 5
            if (r0 != r1) goto L_0x0030
        L_0x002d:
            r0 = 6
            r5 = r0
        L_0x0030:
            r0 = r5
            r3 = r0
            int r0 = androidx.media2.exoplayer.external.util.Util.SDK_INT
            r1 = 26
            if (r0 > r1) goto L_0x0057
            r0 = r5
            r3 = r0
            java.lang.String r0 = "fugu"
            java.lang.String r1 = androidx.media2.exoplayer.external.util.Util.DEVICE
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0057
            r0 = r5
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0057
            r0 = r5
            r3 = r0
            r0 = r5
            r1 = 1
            if (r0 != r1) goto L_0x0057
            r0 = 2
            r3 = r0
        L_0x0057:
            r0 = r3
            int r0 = androidx.media2.exoplayer.external.util.Util.getAudioTrackChannelConfig(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.getChannelConfig(int, boolean):int");
    }

    public static int getFramesPerEncodedSample(int i, ByteBuffer byteBuffer) {
        if (i == 7 || i == 8) {
            return DtsUtil.parseDtsAudioSampleCount(byteBuffer);
        }
        if (i == 5) {
            return Ac3Util.getAc3SyncframeAudioSampleCount();
        }
        if (i == 6) {
            return Ac3Util.parseEAc3SyncframeAudioSampleCount(byteBuffer);
        }
        if (i == 17) {
            return Ac4Util.parseAc4SyncframeAudioSampleCount(byteBuffer);
        }
        if (i == 14) {
            int findTrueHdSyncframeOffset = Ac3Util.findTrueHdSyncframeOffset(byteBuffer);
            return findTrueHdSyncframeOffset == -1 ? 0 : Ac3Util.parseTrueHdSyncframeAudioSampleCount(byteBuffer, findTrueHdSyncframeOffset) * 16;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected audio encoding: ");
        sb.append(i);
        throw new IllegalStateException(sb.toString());
    }

    public static int getMaximumEncodedRateBytesPerSecond(int i) {
        if (i == 5) {
            return 80000;
        }
        if (i == 6) {
            return 768000;
        }
        if (i == 7) {
            return 192000;
        }
        if (i == 8) {
            return 2250000;
        }
        if (i == 14) {
            return 3062500;
        }
        if (i == 17) {
            return 336000;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getSubmittedFrames() {
        Configuration configuration = this.configuration;
        return configuration.isInputPcm ? this.submittedPcmBytes / configuration.inputPcmFrameSize : this.submittedEncodedFrames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getWrittenFrames() {
        Configuration configuration = this.configuration;
        return configuration.isInputPcm ? this.writtenPcmBytes / configuration.outputPcmFrameSize : this.writtenEncodedFrames;
    }

    private void initialize() throws AudioSink.InitializationException {
        this.releasingConditionVariable.block();
        this.audioTrack = ((Configuration) Assertions.checkNotNull(this.configuration)).buildAudioTrack(this.tunneling, this.audioAttributes, this.audioSessionId);
        int audioSessionId = this.audioTrack.getAudioSessionId();
        if (enablePreV21AudioSessionWorkaround && Util.SDK_INT < 21) {
            AudioTrack audioTrack = this.keepSessionIdAudioTrack;
            if (!(audioTrack == null || audioSessionId == audioTrack.getAudioSessionId())) {
                releaseKeepSessionIdAudioTrack();
            }
            if (this.keepSessionIdAudioTrack == null) {
                this.keepSessionIdAudioTrack = initializeKeepSessionIdAudioTrack(audioSessionId);
            }
        }
        if (this.audioSessionId != audioSessionId) {
            this.audioSessionId = audioSessionId;
            AudioSink.Listener listener = this.listener;
            if (listener != null) {
                listener.onAudioSessionId(audioSessionId);
            }
        }
        this.playbackParameters = this.configuration.canApplyPlaybackParameters ? this.audioProcessorChain.applyPlaybackParameters(this.playbackParameters) : PlaybackParameters.DEFAULT;
        setupAudioProcessors();
        AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
        AudioTrack audioTrack2 = this.audioTrack;
        Configuration configuration = this.configuration;
        audioTrackPositionTracker.setAudioTrack(audioTrack2, configuration.outputEncoding, configuration.outputPcmFrameSize, configuration.bufferSize);
        setVolumeInternal();
        int i = this.auxEffectInfo.effectId;
        if (i != 0) {
            this.audioTrack.attachAuxEffect(i);
            this.audioTrack.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
    }

    public static AudioTrack initializeKeepSessionIdAudioTrack(int i) {
        return new AudioTrack(3, Sonic.AMDF_FREQUENCY, 4, 2, 2, 0, i);
    }

    private boolean isInitialized() {
        return this.audioTrack != null;
    }

    private void playPendingData() {
        if (!this.stoppedAudioTrack) {
            this.stoppedAudioTrack = true;
            this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
            this.audioTrack.stop();
            this.bytesUntilNextAvSync = 0;
        }
    }

    private void processBuffers(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.activeAudioProcessors.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.outputBuffers[i - 1];
            } else {
                byteBuffer = this.inputBuffer;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.EMPTY_BUFFER;
                }
            }
            if (i == length) {
                writeBuffer(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.activeAudioProcessors[i];
                audioProcessor.queueInput(byteBuffer);
                ByteBuffer output = audioProcessor.getOutput();
                this.outputBuffers[i] = output;
                if (output.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    private void releaseKeepSessionIdAudioTrack() {
        final AudioTrack audioTrack = this.keepSessionIdAudioTrack;
        if (audioTrack != null) {
            this.keepSessionIdAudioTrack = null;
            new Thread(this) { // from class: androidx.media2.exoplayer.external.audio.DefaultAudioSink.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    audioTrack.release();
                }
            }.start();
        }
    }

    private void setVolumeInternal() {
        if (isInitialized()) {
            if (Util.SDK_INT >= 21) {
                setVolumeInternalV21(this.audioTrack, this.volume);
            } else {
                setVolumeInternalV3(this.audioTrack, this.volume);
            }
        }
    }

    @TargetApi(21)
    public static void setVolumeInternalV21(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    public static void setVolumeInternalV3(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private void setupAudioProcessors() {
        AudioProcessor[] audioProcessorArr = this.configuration.availableAudioProcessors;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.activeAudioProcessors = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.outputBuffers = new ByteBuffer[size];
        flushAudioProcessors();
    }

    private void writeBuffer(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.outputBuffer;
            boolean z = true;
            int i = 0;
            if (byteBuffer2 != null) {
                Assertions.checkArgument(byteBuffer2 == byteBuffer);
            } else {
                this.outputBuffer = byteBuffer;
                if (Util.SDK_INT < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.preV21OutputBuffer;
                    if (bArr == null || bArr.length < remaining) {
                        this.preV21OutputBuffer = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.preV21OutputBuffer, 0, remaining);
                    byteBuffer.position(position);
                    this.preV21OutputBufferOffset = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (Util.SDK_INT < 21) {
                int availableBufferSize = this.audioTrackPositionTracker.getAvailableBufferSize(this.writtenPcmBytes);
                if (availableBufferSize > 0) {
                    int write = this.audioTrack.write(this.preV21OutputBuffer, this.preV21OutputBufferOffset, Math.min(remaining2, availableBufferSize));
                    i = write;
                    if (write > 0) {
                        this.preV21OutputBufferOffset += write;
                        byteBuffer.position(byteBuffer.position() + write);
                        i = write;
                    }
                }
            } else if (this.tunneling) {
                if (j == C0463C.TIME_UNSET) {
                    z = false;
                }
                Assertions.checkState(z);
                i = writeNonBlockingWithAvSyncV21(this.audioTrack, byteBuffer, remaining2, j);
            } else {
                i = writeNonBlockingV21(this.audioTrack, byteBuffer, remaining2);
            }
            this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
            if (i >= 0) {
                if (this.configuration.isInputPcm) {
                    this.writtenPcmBytes += i;
                }
                if (i == remaining2) {
                    if (!this.configuration.isInputPcm) {
                        this.writtenEncodedFrames += this.framesPerEncodedSample;
                    }
                    this.outputBuffer = null;
                    return;
                }
                return;
            }
            throw new AudioSink.WriteException(i);
        }
    }

    @TargetApi(21)
    public static int writeNonBlockingV21(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    @TargetApi(21)
    private int writeNonBlockingWithAvSyncV21(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (this.avSyncHeader == null) {
            this.avSyncHeader = ByteBuffer.allocate(16);
            this.avSyncHeader.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, i);
            this.avSyncHeader.putLong(8, j * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = i;
        }
        int remaining = this.avSyncHeader.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.avSyncHeader, remaining, 1);
            if (write < 0) {
                this.bytesUntilNextAvSync = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int writeNonBlockingV21 = writeNonBlockingV21(audioTrack, byteBuffer, i);
        if (writeNonBlockingV21 < 0) {
            this.bytesUntilNextAvSync = 0;
            return writeNonBlockingV21;
        }
        this.bytesUntilNextAvSync -= writeNonBlockingV21;
        return writeNonBlockingV21;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void configure(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, int i6) throws AudioSink.ConfigurationException {
        int i7;
        boolean z;
        int i8;
        int i9;
        if (Util.SDK_INT < 21 && i2 == 8 && iArr == null) {
            int[] iArr2 = new int[6];
            int i10 = 0;
            while (true) {
                iArr = iArr2;
                if (i10 >= iArr2.length) {
                    break;
                }
                iArr2[i10] = i10;
                i10++;
            }
        }
        boolean isEncodingLinearPcm = Util.isEncodingLinearPcm(i);
        boolean z2 = isEncodingLinearPcm && i != 4;
        boolean z3 = this.enableConvertHighResIntPcmToFloat && supportsOutput(i2, 4) && Util.isEncodingHighResolutionIntegerPcm(i);
        AudioProcessor[] audioProcessorArr = z3 ? this.toFloatPcmAvailableAudioProcessors : this.toIntPcmAvailableAudioProcessors;
        if (z2) {
            this.trimmingAudioProcessor.setTrimFrameCount(i5, i6);
            this.channelMappingAudioProcessor.setChannelMap(iArr);
            int i11 = i3;
            int i12 = i2;
            i9 = i;
            boolean z4 = false;
            for (AudioProcessor audioProcessor : audioProcessorArr) {
                try {
                    z4 |= audioProcessor.configure(i11, i12, i9);
                    if (audioProcessor.isActive()) {
                        i12 = audioProcessor.getOutputChannelCount();
                        i11 = audioProcessor.getOutputSampleRateHz();
                        i9 = audioProcessor.getOutputEncoding();
                    }
                } catch (AudioProcessor.UnhandledFormatException e) {
                    throw new AudioSink.ConfigurationException(e);
                }
            }
            z = z4;
            i7 = i12;
            i8 = i11;
        } else {
            i8 = i3;
            i7 = i2;
            i9 = i;
            z = false;
        }
        int channelConfig = getChannelConfig(i7, isEncodingLinearPcm);
        if (channelConfig != 0) {
            Configuration configuration = new Configuration(isEncodingLinearPcm, isEncodingLinearPcm ? Util.getPcmFrameSize(i, i2) : -1, i3, isEncodingLinearPcm ? Util.getPcmFrameSize(i9, i7) : -1, i8, channelConfig, i9, i4, z2, z2 && !z3, audioProcessorArr);
            boolean z5 = true;
            if (!z) {
                z5 = this.pendingConfiguration != null;
            }
            if (!isInitialized() || (configuration.canReuseAudioTrack(this.configuration) && !z5)) {
                this.configuration = configuration;
            } else {
                this.pendingConfiguration = configuration;
            }
        } else {
            StringBuilder sb = new StringBuilder(38);
            sb.append("Unsupported channel count: ");
            sb.append(i7);
            throw new AudioSink.ConfigurationException(sb.toString());
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            this.audioSessionId = 0;
            flush();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void enableTunnelingV21(int i) {
        Assertions.checkState(Util.SDK_INT >= 21);
        if (!this.tunneling || this.audioSessionId != i) {
            this.tunneling = true;
            this.audioSessionId = i;
            flush();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void flush() {
        if (isInitialized()) {
            this.submittedPcmBytes = 0L;
            this.submittedEncodedFrames = 0L;
            this.writtenPcmBytes = 0L;
            this.writtenEncodedFrames = 0L;
            this.framesPerEncodedSample = 0;
            PlaybackParameters playbackParameters = this.afterDrainPlaybackParameters;
            if (playbackParameters != null) {
                this.playbackParameters = playbackParameters;
                this.afterDrainPlaybackParameters = null;
            } else if (!this.playbackParametersCheckpoints.isEmpty()) {
                this.playbackParameters = this.playbackParametersCheckpoints.getLast().playbackParameters;
            }
            this.playbackParametersCheckpoints.clear();
            this.playbackParametersOffsetUs = 0L;
            this.playbackParametersPositionUs = 0L;
            this.trimmingAudioProcessor.resetTrimmedFrameCount();
            flushAudioProcessors();
            this.inputBuffer = null;
            this.outputBuffer = null;
            this.stoppedAudioTrack = false;
            this.handledEndOfStream = false;
            this.drainingAudioProcessorIndex = -1;
            this.avSyncHeader = null;
            this.bytesUntilNextAvSync = 0;
            this.startMediaTimeState = 0;
            if (this.audioTrackPositionTracker.isPlaying()) {
                this.audioTrack.pause();
            }
            final AudioTrack audioTrack = this.audioTrack;
            this.audioTrack = null;
            Configuration configuration = this.pendingConfiguration;
            if (configuration != null) {
                this.configuration = configuration;
                this.pendingConfiguration = null;
            }
            this.audioTrackPositionTracker.reset();
            this.releasingConditionVariable.close();
            new Thread() { // from class: androidx.media2.exoplayer.external.audio.DefaultAudioSink.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.releasingConditionVariable.open();
                    }
                }
            }.start();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public long getCurrentPositionUs(boolean z) {
        if (!isInitialized() || this.startMediaTimeState == 0) {
            return Long.MIN_VALUE;
        }
        return this.startMediaTimeUs + applySkipping(applySpeedup(Math.min(this.audioTrackPositionTracker.getCurrentPositionUs(z), this.configuration.framesToDurationUs(getWrittenFrames()))));
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public boolean handleBuffer(ByteBuffer byteBuffer, long j) throws AudioSink.InitializationException, AudioSink.WriteException {
        String str;
        ByteBuffer byteBuffer2 = this.inputBuffer;
        Assertions.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.pendingConfiguration != null) {
            if (!drainAudioProcessorsToEndOfStream()) {
                return false;
            }
            if (!this.pendingConfiguration.canReuseAudioTrack(this.configuration)) {
                playPendingData();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            } else {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
            }
            this.playbackParameters = this.configuration.canApplyPlaybackParameters ? this.audioProcessorChain.applyPlaybackParameters(this.playbackParameters) : PlaybackParameters.DEFAULT;
            setupAudioProcessors();
        }
        if (!isInitialized()) {
            initialize();
            if (this.playing) {
                play();
            }
        }
        if (!this.audioTrackPositionTracker.mayHandleBuffer(getWrittenFrames())) {
            return false;
        }
        if (this.inputBuffer != null) {
            str = TAG;
        } else if (!byteBuffer.hasRemaining()) {
            return true;
        } else {
            Configuration configuration = this.configuration;
            if (!configuration.isInputPcm && this.framesPerEncodedSample == 0) {
                this.framesPerEncodedSample = getFramesPerEncodedSample(configuration.outputEncoding, byteBuffer);
                if (this.framesPerEncodedSample == 0) {
                    return true;
                }
            }
            if (this.afterDrainPlaybackParameters != null) {
                if (!drainAudioProcessorsToEndOfStream()) {
                    return false;
                }
                PlaybackParameters playbackParameters = this.afterDrainPlaybackParameters;
                this.afterDrainPlaybackParameters = null;
                this.playbackParametersCheckpoints.add(new PlaybackParametersCheckpoint(this.audioProcessorChain.applyPlaybackParameters(playbackParameters), Math.max(0L, j), this.configuration.framesToDurationUs(getWrittenFrames())));
                setupAudioProcessors();
            }
            if (this.startMediaTimeState == 0) {
                this.startMediaTimeUs = Math.max(0L, j);
                this.startMediaTimeState = 1;
            } else {
                long inputFramesToDurationUs = this.startMediaTimeUs + this.configuration.inputFramesToDurationUs(getSubmittedFrames() - this.trimmingAudioProcessor.getTrimmedFrameCount());
                if (this.startMediaTimeState == 1 && Math.abs(inputFramesToDurationUs - j) > 200000) {
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Discontinuity detected [expected ");
                    sb.append(inputFramesToDurationUs);
                    sb.append(", got ");
                    sb.append(j);
                    sb.append("]");
                    Log.m37487e(TAG, sb.toString());
                    this.startMediaTimeState = 2;
                }
                if (this.startMediaTimeState == 2) {
                    long j2 = j - inputFramesToDurationUs;
                    this.startMediaTimeUs += j2;
                    this.startMediaTimeState = 1;
                    AudioSink.Listener listener = this.listener;
                    if (!(listener == null || j2 == 0)) {
                        listener.onPositionDiscontinuity();
                    }
                }
            }
            str = TAG;
            if (this.configuration.isInputPcm) {
                this.submittedPcmBytes += byteBuffer.remaining();
            } else {
                this.submittedEncodedFrames += this.framesPerEncodedSample;
            }
            this.inputBuffer = byteBuffer;
        }
        if (this.configuration.processingEnabled) {
            processBuffers(j);
        } else {
            writeBuffer(this.inputBuffer, j);
        }
        if (!this.inputBuffer.hasRemaining()) {
            this.inputBuffer = null;
            return true;
        } else if (!this.audioTrackPositionTracker.isStalled(getWrittenFrames())) {
            return false;
        } else {
            Log.m37483w(str, "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void handleDiscontinuity() {
        if (this.startMediaTimeState == 1) {
            this.startMediaTimeState = 2;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public boolean hasPendingData() {
        return isInitialized() && this.audioTrackPositionTracker.hasPendingData(getWrittenFrames());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public boolean isEnded() {
        return !isInitialized() || (this.handledEndOfStream && !hasPendingData());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void pause() {
        this.playing = false;
        if (isInitialized() && this.audioTrackPositionTracker.pause()) {
            this.audioTrack.pause();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void play() {
        this.playing = true;
        if (isInitialized()) {
            this.audioTrackPositionTracker.start();
            this.audioTrack.play();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (!this.handledEndOfStream && isInitialized() && drainAudioProcessorsToEndOfStream()) {
            playPendingData();
            this.handledEndOfStream = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void reset() {
        flush();
        releaseKeepSessionIdAudioTrack();
        for (AudioProcessor audioProcessor : this.toIntPcmAvailableAudioProcessors) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.toFloatPcmAvailableAudioProcessors) {
            audioProcessor2.reset();
        }
        this.audioSessionId = 0;
        this.playing = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (!this.audioAttributes.equals(audioAttributes)) {
            this.audioAttributes = audioAttributes;
            if (!this.tunneling) {
                flush();
                this.audioSessionId = 0;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void setAudioSessionId(int i) {
        if (this.audioSessionId != i) {
            this.audioSessionId = i;
            flush();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        if (!this.auxEffectInfo.equals(auxEffectInfo)) {
            int i = auxEffectInfo.effectId;
            float f = auxEffectInfo.sendLevel;
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack != null) {
                if (this.auxEffectInfo.effectId != i) {
                    audioTrack.attachAuxEffect(i);
                }
                if (i != 0) {
                    this.audioTrack.setAuxEffectSendLevel(f);
                }
            }
            this.auxEffectInfo = auxEffectInfo;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void setListener(AudioSink.Listener listener) {
        this.listener = listener;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters) {
        Configuration configuration = this.configuration;
        if (configuration == null || configuration.canApplyPlaybackParameters) {
            PlaybackParameters playbackParameters2 = this.afterDrainPlaybackParameters;
            if (playbackParameters2 == null) {
                playbackParameters2 = !this.playbackParametersCheckpoints.isEmpty() ? this.playbackParametersCheckpoints.getLast().playbackParameters : this.playbackParameters;
            }
            if (!playbackParameters.equals(playbackParameters2)) {
                if (isInitialized()) {
                    this.afterDrainPlaybackParameters = playbackParameters;
                } else {
                    this.playbackParameters = this.audioProcessorChain.applyPlaybackParameters(playbackParameters);
                }
            }
            return this.playbackParameters;
        }
        this.playbackParameters = PlaybackParameters.DEFAULT;
        return this.playbackParameters;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void setVolume(float f) {
        if (this.volume != f) {
            this.volume = f;
            setVolumeInternal();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public boolean supportsOutput(int i, int i2) {
        boolean z;
        if (Util.isEncodingLinearPcm(i2)) {
            boolean z2 = true;
            if (i2 == 4) {
                z2 = Util.SDK_INT >= 21;
            }
            return z2;
        }
        AudioCapabilities audioCapabilities = this.audioCapabilities;
        if (audioCapabilities != null && audioCapabilities.supportsEncoding(i2)) {
            z = true;
            if (i != -1) {
                if (i <= this.audioCapabilities.getMaxChannelCount()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }
}
