package io.agora.rtc.audio;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import io.agora.rtc.internal.Logging;
import java.io.BufferedOutputStream;
import java.io.File;
import java.nio.ByteBuffer;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/MediaCodecAudioEncoder.class */
public class MediaCodecAudioEncoder {
    private ByteBuffer[] mAACInputBuffers;
    private ByteBuffer[] mAACOutputBuffers;
    private ByteBuffer[] mInputBuffers;
    private ByteBuffer[] mOutputBuffers;
    private MediaCodec mMediaCodec = null;
    private MediaFormat mTrackFormat = null;
    private String mCodecString = null;
    private File outputFile = null;
    private BufferedOutputStream outputStream = null;
    private MediaCodec mAACEncoder = null;
    private MediaFormat mAACFormat = null;
    private ByteBuffer mAACEncodedBuffer = ByteBuffer.allocateDirect(1024);
    private String TAG = "MediaCodec Audio Encoder";

    private void addADTStoPacket(byte[] bArr, int i) {
        bArr[0] = (byte) (-1);
        bArr[1] = (byte) (-7);
        bArr[2] = (byte) 84;
        bArr[3] = (byte) (64 + (i >> 11));
        bArr[4] = (byte) ((i & 2047) >> 3);
        bArr[5] = (byte) (((i & 7) << 5) + 31);
        bArr[6] = (byte) (-4);
    }

    private void touch(File file) {
        try {
            if (file.exists()) {
                return;
            }
            file.createNewFile();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean createAACStreaming(int i, int i2, int i3) {
        try {
            String str = this.TAG;
            Logging.m3706i(str, "Encoding aac with fs = " + i + ", bitrate = " + i3);
            this.mAACEncoder = MediaCodec.createEncoderByType("audio/mp4a-latm");
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", i, i2);
            this.mAACFormat = createAudioFormat;
            createAudioFormat.setInteger("aac-profile", 2);
            this.mAACFormat.setInteger("sample-rate", i);
            this.mAACFormat.setInteger("channel-count", i2);
            this.mAACFormat.setInteger("bitrate", i3);
            this.mAACEncoder.configure(this.mAACFormat, (Surface) null, (MediaCrypto) null, 1);
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec == null) {
                return true;
            }
            mediaCodec.start();
            return true;
        } catch (Exception e) {
            Logging.m3709e(this.TAG, "Error when creating aac encode stream");
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:48|2|3|(2:8|(15:10|(2:12|(1:14)(1:15))|16|24|25|(1:27)|28|29|46|30|31|34|35|36|(2:38|49)(2:39|(2:41|42)(1:50)))(1:17))|18|(1:20)(2:21|(1:23))|24|25|(0)|28|29|46|30|31|34|35|36|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x019e, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x019f, code lost:
        r7.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0159 A[Catch: Exception -> 0x021d, TRY_ENTER, TryCatch #1 {Exception -> 0x021d, blocks: (B:2:0x0000, B:5:0x0067, B:8:0x0074, B:16:0x0095, B:20:0x00e6, B:23:0x0118, B:25:0x0141, B:27:0x0159, B:28:0x015e, B:29:0x0161, B:30:0x0175, B:33:0x019f, B:35:0x01a4, B:38:0x01ae, B:41:0x01e0, B:31:0x0178), top: B:48:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01ae A[Catch: Exception -> 0x021d, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x021d, blocks: (B:2:0x0000, B:5:0x0067, B:8:0x0074, B:16:0x0095, B:20:0x00e6, B:23:0x0118, B:25:0x0141, B:27:0x0159, B:28:0x015e, B:29:0x0161, B:30:0x0175, B:33:0x019f, B:35:0x01a4, B:38:0x01ae, B:41:0x01e0, B:31:0x0178), top: B:48:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean createStreaming(java.lang.String r7, int r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.audio.MediaCodecAudioEncoder.createStreaming(java.lang.String, int, int, int):boolean");
    }

    public int encodeAACFrame(byte[] bArr) {
        Exception e;
        int i = 0;
        try {
            int dequeueInputBuffer = this.mAACEncoder.dequeueInputBuffer(2000L);
            if (dequeueInputBuffer != -1) {
                ByteBuffer inputBuffer = this.mAACEncoder.getInputBuffer(dequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mAACEncoder.queueInputBuffer(dequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int dequeueOutputBuffer = this.mAACEncoder.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer >= 0) {
                int i2 = bufferInfo.size;
                ByteBuffer outputBuffer = this.mAACEncoder.getOutputBuffer(dequeueOutputBuffer);
                i = (bufferInfo.flags & 2) == 2 ? 0 : bufferInfo.size;
                try {
                    outputBuffer.position(bufferInfo.offset);
                    outputBuffer.limit(bufferInfo.offset + i2);
                    this.mAACEncodedBuffer.position(0);
                    this.mAACEncodedBuffer.put(outputBuffer);
                    this.mAACEncoder.releaseOutputBuffer(dequeueOutputBuffer, false);
                } catch (Exception e2) {
                    e = e2;
                    Logging.m3709e(this.TAG, "Error when encoding aac stream");
                    e.printStackTrace();
                    return i;
                }
            }
        } catch (Exception e3) {
            e = e3;
            i = 0;
        }
        return i;
    }

    public void encodeFrame(byte[] bArr) {
        try {
            int dequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(2000L);
            if (dequeueInputBuffer != -1) {
                ByteBuffer inputBuffer = this.mMediaCodec.getInputBuffer(dequeueInputBuffer);
                inputBuffer.clear();
                inputBuffer.put(bArr);
                this.mMediaCodec.queueInputBuffer(dequeueInputBuffer, 0, bArr.length, 0L, 0);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int dequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            while (dequeueOutputBuffer >= 0) {
                int i = bufferInfo.size;
                ByteBuffer outputBuffer = this.mMediaCodec.getOutputBuffer(dequeueOutputBuffer);
                outputBuffer.position(bufferInfo.offset);
                outputBuffer.limit(bufferInfo.offset + i);
                String str = this.mCodecString;
                if (str == "audio/mp4a-latm") {
                    int i2 = i + 7;
                    byte[] bArr2 = new byte[i2];
                    addADTStoPacket(bArr2, i2);
                    outputBuffer.get(bArr2, 7, i);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr2, 0, i2);
                } else if (str == "audio/3gpp" || str == "audio/amr-wb") {
                    byte[] bArr3 = new byte[i];
                    outputBuffer.get(bArr3, 0, i);
                    outputBuffer.position(bufferInfo.offset);
                    this.outputStream.write(bArr3, 0, i);
                }
                this.mMediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                dequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            }
        } catch (Exception e) {
            Logging.m3709e(this.TAG, "Error when encoding aac file");
            e.printStackTrace();
        }
    }

    public void releaseAACStreaming() {
        try {
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec == null) {
                return;
            }
            mediaCodec.stop();
            this.mAACEncoder.release();
            this.mAACEncoder = null;
        } catch (Exception e) {
            Logging.m3709e(this.TAG, "Error when releasing aac encode stream");
            e.printStackTrace();
        }
    }

    public void releaseStreaming() {
        try {
            MediaCodec mediaCodec = this.mMediaCodec;
            if (mediaCodec != null) {
                mediaCodec.stop();
                this.mMediaCodec.release();
                this.mMediaCodec = null;
            }
            BufferedOutputStream bufferedOutputStream = this.outputStream;
            if (bufferedOutputStream == null) {
                return;
            }
            bufferedOutputStream.flush();
            this.outputStream.close();
            this.outputStream = null;
        } catch (Exception e) {
            Logging.m3709e(this.TAG, "Error when releasing aac file encoder");
            e.printStackTrace();
        }
    }

    public boolean setAACEncodeBitrate(int i) {
        String str = this.TAG;
        Logging.m3704w(str, "Set hw aac bitrate = " + i);
        try {
            MediaCodec mediaCodec = this.mAACEncoder;
            if (mediaCodec == null) {
                return true;
            }
            mediaCodec.stop();
            this.mAACFormat.setInteger("bitrate", i);
            this.mAACEncoder.configure(this.mAACFormat, (Surface) null, (MediaCrypto) null, 1);
            this.mAACEncoder.start();
            return true;
        } catch (Exception e) {
            Logging.m3709e(this.TAG, "Error when setting aac encode bitrate");
            e.printStackTrace();
            return false;
        }
    }

    public void setChannelCount(int i) {
        try {
            this.mTrackFormat.setInteger("channel-count", i);
        } catch (Exception e) {
            Logging.m3709e(this.TAG, "Error when setting aac file encoder channel count");
            e.printStackTrace();
        }
    }

    public void setSampleRate(int i) {
        try {
            this.mTrackFormat.setInteger("sample-rate", i);
        } catch (Exception e) {
            Logging.m3709e(this.TAG, "Error when setting aac file encoder sample rate");
            e.printStackTrace();
        }
    }
}
