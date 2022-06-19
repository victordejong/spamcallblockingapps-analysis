package io.agora.rtc.audio;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.Surface;
import android.webkit.URLUtil;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.internal.Logging;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.ByteBuffer;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/MediaCodecAudioDecoder.class */
public class MediaCodecAudioDecoder {
    private static final int EXTRACTOR_TIMEOUT_MS = 60000;
    private static final int HTTP_REQUEST_TIMEOUT = 4000;
    private static final int MAX_DECODER_RETRY_COUNT = 300;
    private static final String PREFIX_ASSETS = "/assets/";
    private static final String PREFIX_DOCUMENT = "content://";
    private static final String TAG = "MediaCodec Audio Decoder";
    private ByteBuffer mDecodedRAWBuffer;
    private long mFileLength;
    private ByteBuffer[] mInputBuffers;
    private ByteBuffer[] mOutputBuffers;
    private Context mContext = null;
    private MediaCodec mMediaCodec = null;
    private MediaExtractorWrapper mExtractor = null;
    private MediaFormat mTrackFormat = null;
    private boolean mDecodedDataReady = false;
    private boolean eoInputStream = false;
    private boolean eoOutputStream = false;
    private int mSampleRate = 44100;
    private int mChannels = 2;
    private int mRetryCount = 0;
    private MediaCodec mAACDecoder = null;
    private ByteBuffer mAACOutputBuffer = ByteBuffer.allocateDirect(4096);

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper.class */
    public class MediaExtractorWrapper {
        private final Handler mHandler;
        private volatile boolean mPrepared;
        private final String threadName;
        private final MediaExtractor mMediaExtractor = new MediaExtractor();
        private final CountDownLatch countDownLatch = new CountDownLatch(1);

        public MediaExtractorWrapper() {
            MediaCodecAudioDecoder.this = r6;
            StringBuilder m8728C = C22128a.m8728C("MediaExtractor-");
            m8728C.append(new Random().nextInt());
            String sb = m8728C.toString();
            this.threadName = sb;
            HandlerThread handlerThread = new HandlerThread(sb);
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper());
        }

        public boolean setDataSource(final String str) throws InterruptedException {
            Logging.m3711d(MediaCodecAudioDecoder.TAG, "setDataSource()");
            final boolean startsWith = str.startsWith(MediaCodecAudioDecoder.PREFIX_ASSETS);
            final boolean startsWith2 = str.startsWith(MediaCodecAudioDecoder.PREFIX_DOCUMENT);
            this.mHandler.post(new Runnable() { // from class: io.agora.rtc.audio.MediaCodecAudioDecoder.MediaExtractorWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    StringBuilder m8728C = C22128a.m8728C("setDataSource in thread ");
                    m8728C.append(MediaExtractorWrapper.this.threadName);
                    Logging.m3711d(MediaCodecAudioDecoder.TAG, m8728C.toString());
                    try {
                        if (startsWith && MediaCodecAudioDecoder.this.mContext != null) {
                            AssetFileDescriptor openFd = MediaCodecAudioDecoder.this.mContext.getAssets().openFd(str.substring(8));
                            MediaExtractorWrapper.this.mMediaExtractor.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                        } else if (!startsWith2 || MediaCodecAudioDecoder.this.mContext == null) {
                            MediaExtractorWrapper.this.mMediaExtractor.setDataSource(str);
                        } else {
                            MediaExtractorWrapper.this.mMediaExtractor.setDataSource(MediaCodecAudioDecoder.this.mContext.getContentResolver().openFileDescriptor(Uri.parse(str), "r").getFileDescriptor());
                        }
                        MediaExtractorWrapper.this.mPrepared = true;
                    } catch (Exception e) {
                        Logging.m3704w(MediaCodecAudioDecoder.TAG, "setDataSource fail");
                        e.printStackTrace();
                    }
                    MediaExtractorWrapper.this.countDownLatch.countDown();
                }
            });
            this.countDownLatch.await(DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, TimeUnit.MILLISECONDS);
            return this.mPrepared;
        }

        public void advance() {
            checkPrepared();
            this.mMediaExtractor.advance();
        }

        public void checkPrepared() {
            if (this.mPrepared) {
                return;
            }
            throw new IllegalStateException("mMediaExtractor hasn't prepared");
        }

        public int getSampleFlags() {
            checkPrepared();
            return this.mMediaExtractor.getSampleFlags();
        }

        public long getSampleTime() {
            checkPrepared();
            return this.mMediaExtractor.getSampleTime();
        }

        public int getTrackCount() {
            checkPrepared();
            return this.mMediaExtractor.getTrackCount();
        }

        public MediaFormat getTrackFormat(int i) {
            checkPrepared();
            return this.mMediaExtractor.getTrackFormat(i);
        }

        public int readSampleData(ByteBuffer byteBuffer, int i) {
            checkPrepared();
            return this.mMediaExtractor.readSampleData(byteBuffer, i);
        }

        public void release() {
            Logging.m3711d(MediaCodecAudioDecoder.TAG, "release()");
            this.mHandler.post(new Runnable() { // from class: io.agora.rtc.audio.MediaCodecAudioDecoder.MediaExtractorWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaExtractorWrapper.this.mMediaExtractor != null) {
                        try {
                            MediaExtractorWrapper.this.mMediaExtractor.release();
                        } catch (AssertionError e) {
                            StringBuilder m8728C = C22128a.m8728C(" mMediaExtractor release exception: ");
                            m8728C.append(e.getMessage());
                            Logging.m3709e(MediaCodecAudioDecoder.TAG, m8728C.toString());
                        }
                    }
                    MediaExtractorWrapper.this.mHandler.getLooper().quit();
                    Logging.m3711d(MediaCodecAudioDecoder.TAG, "mediaExtractor released in thread " + MediaExtractorWrapper.this.threadName);
                }
            });
        }

        public void seekTo(long j, int i) {
            checkPrepared();
            this.mMediaExtractor.seekTo(j, i);
        }

        public void selectTrack(int i) {
            checkPrepared();
            this.mMediaExtractor.selectTrack(i);
        }

        public void unselectTrack(int i) {
            checkPrepared();
            this.mMediaExtractor.unselectTrack(i);
        }
    }

    private boolean checkInfoChange() {
        int i;
        boolean z;
        try {
            MediaFormat outputFormat = this.mMediaCodec.getOutputFormat();
            int integer = outputFormat.getInteger("sample-rate");
            if (integer == 22050) {
                i = 22000;
            } else {
                i = integer;
                if (integer == 11025) {
                    i = 11000;
                }
            }
            int integer2 = outputFormat.getInteger("channel-count");
            if (this.mSampleRate == i && this.mChannels == integer2) {
                z = false;
                this.mSampleRate = i;
                this.mChannels = integer2;
                return z;
            }
            z = true;
            this.mSampleRate = i;
            this.mChannels = integer2;
            return z;
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when checking file's new format");
            e.printStackTrace();
            return false;
        }
    }

    private void cloneByteBuffer(ByteBuffer byteBuffer) {
        try {
            ByteBuffer byteBuffer2 = this.mDecodedRAWBuffer;
            if (byteBuffer2 == null || byteBuffer2.limit() != byteBuffer.limit()) {
                ByteBuffer byteBuffer3 = this.mDecodedRAWBuffer;
                if (byteBuffer3 != null) {
                    byteBuffer3.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(byteBuffer.limit());
            }
            this.mDecodedRAWBuffer.position(0);
            this.mDecodedRAWBuffer.put(byteBuffer);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void cloneByteBufferByLength(ByteBuffer byteBuffer, int i) {
        try {
            ByteBuffer byteBuffer2 = this.mDecodedRAWBuffer;
            if (byteBuffer2 == null || byteBuffer2.capacity() < i) {
                ByteBuffer byteBuffer3 = this.mDecodedRAWBuffer;
                if (byteBuffer3 != null) {
                    byteBuffer3.clear();
                    this.mDecodedRAWBuffer = null;
                }
                this.mDecodedRAWBuffer = ByteBuffer.allocateDirect(i);
            }
            this.mDecodedRAWBuffer.position(0);
            byteBuffer.limit(i);
            this.mDecodedRAWBuffer.put(byteBuffer);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean createStreaming(int i, long j) {
        boolean z;
        try {
            int trackCount = this.mExtractor.getTrackCount();
            int i2 = i + 1;
            if (trackCount < i2) {
                return false;
            }
            for (int i3 = 0; i3 < trackCount; i3++) {
                this.mExtractor.unselectTrack(i3);
            }
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i4 >= trackCount) {
                    z = false;
                    break;
                }
                MediaFormat trackFormat = this.mExtractor.getTrackFormat(i4);
                this.mTrackFormat = trackFormat;
                int i7 = i6;
                if (trackFormat.getString("mime").contains("audio/")) {
                    i7 = i6 + 1;
                    if (i7 == i2) {
                        z = true;
                        break;
                    }
                }
                i4++;
                i5 = i7;
            }
            if (!z) {
                Logging.m3709e(TAG, "the selected audio track won't found");
                return false;
            }
            this.mExtractor.selectTrack(i4);
            setCurrentFilePosition(j);
            this.mChannels = this.mTrackFormat.getInteger("channel-count");
            int integer = this.mTrackFormat.getInteger("sample-rate");
            this.mSampleRate = integer;
            if (integer == 22050) {
                this.mSampleRate = 22000;
            } else if (integer == 11025) {
                this.mSampleRate = 11000;
            }
            this.mFileLength = this.mTrackFormat.getLong("durationUs");
            return true;
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when creating aac audio file decoder");
            e.printStackTrace();
            return false;
        }
    }

    public static String encodeUrl(String str) {
        Logging.m3711d(TAG, "encodedUrl()");
        try {
            URL url = new URL(str);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef()).toASCIIString();
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008b  */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean testNetworkUrlAvailable(java.lang.String r3) {
        /*
            java.lang.String r0 = "MediaCodec Audio Decoder"
            java.lang.String r1 = "testNetworkUrlAvailable encodedUrl"
            io.agora.rtc.internal.Logging.m3711d(r0, r1)
            r0 = 0
            r4 = r0
            r0 = 0
            r5 = r0
            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L6c
            r6 = r0
            r0 = r6
            r1 = r3
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L6c
            r0 = r6
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L6c
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L6c
            r6 = r0
            r0 = r6
            r3 = r0
            r0 = r6
            r1 = 4000(0xfa0, float:5.605E-42)
            r0.setConnectTimeout(r1)     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> L86
            r0 = r6
            r3 = r0
            r0 = r6
            r1 = 4000(0xfa0, float:5.605E-42)
            r0.setReadTimeout(r1)     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> L86
            r0 = r6
            r3 = r0
            r0 = r6
            int r0 = r0.getResponseCode()     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> L86
            r0 = r6
            r3 = r0
            r0 = r6
            int r0 = r0.getResponseCode()     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> L86
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L47
            r0 = 1
            r7 = r0
            goto L4a
        L47:
            r0 = 0
            r7 = r0
        L4a:
            r0 = r6
            r3 = r0
            r0 = r6
            java.io.InputStream r0 = r0.getInputStream()     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> L86
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L5b
            r0 = r6
            r3 = r0
            r0 = r5
            r0.close()     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> L86
        L5b:
            r0 = r6
            r0.disconnect()
            goto L83
        L62:
            r5 = move-exception
            goto L6f
        L66:
            r6 = move-exception
            r0 = r5
            r3 = r0
            goto L87
        L6c:
            r5 = move-exception
            r0 = 0
            r6 = r0
        L6f:
            r0 = r6
            r3 = r0
            r0 = r5
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L86
            r0 = r4
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L83
            r0 = r6
            r0.disconnect()
            r0 = r4
            r7 = r0
        L83:
            r0 = r7
            return r0
        L86:
            r6 = move-exception
        L87:
            r0 = r3
            if (r0 == 0) goto L8f
            r0 = r3
            r0.disconnect()
        L8f:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.audio.MediaCodecAudioDecoder.testNetworkUrlAvailable(java.lang.String):boolean");
    }

    public boolean checkAACSupported() {
        boolean z = false;
        try {
            MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
            int length = codecInfos.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                MediaCodecInfo mediaCodecInfo = codecInfos[i];
                if (!mediaCodecInfo.isEncoder() && mediaCodecInfo.getName().toLowerCase().contains("nvidia")) {
                    break;
                }
                i++;
            }
            return z;
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when checking aac codec availability");
            e.printStackTrace();
            return false;
        }
    }

    public boolean checkUrlEncoded(String str) {
        try {
            return !TextUtils.equals(str, URLDecoder.decode(str, StringConstant.UTF8));
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean createAACStreaming(int i) {
        try {
            this.mAACDecoder = MediaCodec.createDecoderByType("audio/mp4a-latm");
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i, 1);
            createAudioFormat.setInteger("sample-rate", i);
            createAudioFormat.setInteger("channel-count", 1);
            createAudioFormat.setByteBuffer("csd-0", ByteBuffer.wrap(new byte[]{18, -120}));
            this.mAACDecoder.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 0);
            MediaCodec mediaCodec = this.mAACDecoder;
            if (mediaCodec == null) {
                return true;
            }
            mediaCodec.start();
            return true;
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when creating aac decode stream");
            e.printStackTrace();
            return false;
        }
    }

    public boolean createStreaming(String str) {
        try {
            Logging.m3706i(TAG, "Try to decode audio file : " + str);
            this.mRetryCount = 0;
            if (TextUtils.isEmpty(str)) {
                Logging.m3704w(TAG, "Fail to open, empty url");
                return false;
            }
            if (URLUtil.isNetworkUrl(str)) {
                String encodeUrl = checkUrlEncoded(str) ? str : encodeUrl(str);
                if (encodeUrl == null || !testNetworkUrlAvailable(encodeUrl)) {
                    Logging.m3704w(TAG, "Fail to open, 404 for url");
                    return false;
                }
            }
            MediaExtractorWrapper mediaExtractorWrapper = new MediaExtractorWrapper();
            this.mExtractor = mediaExtractorWrapper;
            if (!mediaExtractorWrapper.setDataSource(str)) {
                Logging.m3704w(TAG, "Failed to setDataSource");
                releaseStreaming();
                return false;
            }
            int trackCount = this.mExtractor.getTrackCount();
            for (int i = 0; i < trackCount; i++) {
                this.mExtractor.unselectTrack(i);
            }
            int i2 = 0;
            while (true) {
                if (i2 >= trackCount) {
                    break;
                }
                MediaFormat trackFormat = this.mExtractor.getTrackFormat(i2);
                this.mTrackFormat = trackFormat;
                String string = trackFormat.getString("mime");
                this.mTrackFormat.setInteger("pcm-encoding", 2);
                if (string.contains("audio/")) {
                    this.mExtractor.selectTrack(i2);
                    MediaCodec createDecoderByType = MediaCodec.createDecoderByType(string);
                    this.mMediaCodec = createDecoderByType;
                    createDecoderByType.configure(this.mTrackFormat, (Surface) null, (MediaCrypto) null, 0);
                    break;
                }
                i2++;
            }
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.start();
            }
            this.mChannels = this.mTrackFormat.getInteger("channel-count");
            int integer = this.mTrackFormat.getInteger("sample-rate");
            this.mSampleRate = integer;
            if (integer == 22050) {
                this.mSampleRate = 22000;
            } else if (integer == 11025) {
                this.mSampleRate = 11000;
            }
            this.mFileLength = this.mTrackFormat.getLong("durationUs");
            return true;
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when creating aac audio file decoder");
            e.printStackTrace();
            return false;
        }
    }

    public int decodeAACFrame(byte[] bArr) {
        int i;
        Exception e;
        try {
            int dequeueInputBuffer = this.mAACDecoder.dequeueInputBuffer(200L);
            if (dequeueInputBuffer >= 0) {
                ByteBuffer inputBuffer = this.mAACDecoder.getInputBuffer(dequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mAACDecoder.queueInputBuffer(dequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int dequeueOutputBuffer = this.mAACDecoder.dequeueOutputBuffer(bufferInfo, 0L);
            i = 0;
            if (dequeueOutputBuffer != -3) {
                i = 0;
                if (dequeueOutputBuffer != -2) {
                    i = 0;
                    if (dequeueOutputBuffer != -1) {
                        i = 0;
                        if (dequeueOutputBuffer >= 0) {
                            ByteBuffer outputBuffer = this.mAACDecoder.getOutputBuffer(dequeueOutputBuffer);
                            i = bufferInfo.size;
                            try {
                                this.mAACOutputBuffer.position(0);
                                outputBuffer.limit(i);
                                this.mAACOutputBuffer.put(outputBuffer);
                                this.mAACDecoder.releaseOutputBuffer(dequeueOutputBuffer, false);
                            } catch (Exception e2) {
                                e = e2;
                                Logging.m3709e(TAG, "Error when decoding aac stream");
                                e.printStackTrace();
                                return i;
                            }
                        }
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            i = 0;
        }
        return i;
    }

    public boolean decodeFrame() {
        int dequeueInputBuffer;
        try {
            if (!this.eoInputStream && (dequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(0L)) >= 0) {
                int readSampleData = this.mExtractor.readSampleData(this.mMediaCodec.getInputBuffer(dequeueInputBuffer), 0);
                if (readSampleData <= 0) {
                    this.eoInputStream = true;
                    readSampleData = 0;
                }
                long sampleTime = this.mExtractor.getSampleTime();
                int sampleFlags = this.mExtractor.getSampleFlags();
                int i = sampleFlags;
                if (this.eoInputStream) {
                    i = sampleFlags | 4;
                }
                this.mMediaCodec.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, sampleTime, i);
                this.mExtractor.advance();
            }
            if (!this.eoOutputStream) {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                int dequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
                this.mDecodedDataReady = false;
                if (dequeueOutputBuffer != -3 && dequeueOutputBuffer != -2) {
                    if (dequeueOutputBuffer != -1) {
                        this.mRetryCount = 0;
                        if (dequeueOutputBuffer >= 0) {
                            if ((bufferInfo.flags & 4) == 4) {
                                this.eoOutputStream = true;
                            }
                            cloneByteBuffer(this.mMediaCodec.getOutputBuffer(dequeueOutputBuffer));
                            this.mMediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                            this.mDecodedDataReady = true;
                        }
                    } else {
                        int i2 = this.mRetryCount + 1;
                        this.mRetryCount = i2;
                        if (i2 >= MAX_DECODER_RETRY_COUNT) {
                            Logging.m3709e(TAG, "EAGAIN count=" + this.mRetryCount + " presentationTimeUs=" + bufferInfo.presentationTimeUs + " totalUs=" + this.mFileLength + " Force EOS");
                            this.eoOutputStream = true;
                        }
                    }
                }
            }
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when decoding audio file stream");
            e.printStackTrace();
        }
        return this.eoOutputStream;
    }

    public int getChannelCount() {
        return this.mChannels;
    }

    public long getCurrentFilePosition() {
        return this.mExtractor.getSampleTime();
    }

    public boolean getDecodeDataReadyFlag() {
        return this.mDecodedDataReady;
    }

    public long getFileLength() {
        return this.mFileLength;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int getTrackNum() {
        MediaExtractorWrapper mediaExtractorWrapper = this.mExtractor;
        int i = 0;
        if (mediaExtractorWrapper == null) {
            return 0;
        }
        int trackCount = mediaExtractorWrapper.getTrackCount();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= trackCount) {
                return i3;
            }
            int i4 = i3;
            if (this.mExtractor.getTrackFormat(i).getString("mime").contains("audio/")) {
                i4 = i3 + 1;
            }
            i++;
            i2 = i4;
        }
    }

    public void releaseAACStreaming() {
        try {
            MediaCodec mediaCodec = this.mAACDecoder;
            if (mediaCodec == null) {
                return;
            }
            mediaCodec.stop();
            this.mAACDecoder.release();
            this.mAACDecoder = null;
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when releasing aac decode stream");
            e.printStackTrace();
        }
    }

    public void releaseStreaming() {
        try {
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                try {
                    mediaCodec.stop();
                } catch (Exception e) {
                    Logging.m3708e(TAG, "Media decoder stop failed", e);
                }
                try {
                    this.mMediaCodec.release();
                } catch (Exception e2) {
                    Logging.m3708e(TAG, "Media decoder release failed", e2);
                }
                this.mMediaCodec = null;
            }
            MediaExtractorWrapper mediaExtractorWrapper = this.mExtractor;
            if (mediaExtractorWrapper != null) {
                mediaExtractorWrapper.release();
                this.mExtractor = null;
            }
        } catch (Exception e3) {
            Logging.m3709e(TAG, "Error when releasing audio file stream");
            e3.printStackTrace();
        }
        this.eoOutputStream = false;
        this.eoInputStream = false;
    }

    public void rewindStreaming() {
        try {
            this.mExtractor.seekTo(0L, 1);
            this.mMediaCodec.flush();
        } catch (Exception e) {
            Logging.m3709e(TAG, "Error when rewinding audio file stream");
            e.printStackTrace();
        }
        this.eoInputStream = false;
        this.eoOutputStream = false;
        this.mDecodedDataReady = false;
    }

    public boolean selectTrack(int i) {
        if (this.mExtractor == null) {
            return false;
        }
        return createStreaming(i, getCurrentFilePosition());
    }

    public void setCurrentFilePosition(long j) {
        this.mExtractor.seekTo(j, 2);
    }
}
