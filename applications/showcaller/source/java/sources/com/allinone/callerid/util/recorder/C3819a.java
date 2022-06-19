package com.allinone.callerid.util.recorder;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
/* renamed from: com.allinone.callerid.util.recorder.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/a.class */
public class C3819a {

    /* renamed from: a */
    private static byte[] f12096a = {35, 33, 65, 77, 82, 10};

    /* renamed from: b */
    protected int f12097b = 8000;

    /* renamed from: c */
    protected int f12098c = 64;

    /* renamed from: d */
    protected int f12099d = 1;

    /* renamed from: e */
    protected String f12100e;

    /* JADX WARN: Type inference failed for: r0v78, types: [double] */
    /* renamed from: a */
    public void m24038a(String str) {
        try {
            MediaCodec createEncoderByType = MediaCodec.createEncoderByType("audio/3gpp");
            MediaFormat mediaFormat = new MediaFormat();
            mediaFormat.setString("mime", "audio/3gpp");
            mediaFormat.setInteger("sample-rate", this.f12097b);
            mediaFormat.setInteger("channel-count", this.f12099d);
            mediaFormat.setInteger("bitrate", this.f12098c);
            boolean z = true;
            createEncoderByType.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.f12100e));
            fileOutputStream.write(f12096a);
            createEncoderByType.start();
            ByteBuffer[] inputBuffers = createEncoderByType.getInputBuffers();
            ByteBuffer[] outputBuffers = createEncoderByType.getOutputBuffers();
            byte[] bArr = new byte[88200];
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            char c = 0;
            int i = 0;
            do {
                int i2 = 0;
                while (i2 != -1 && z) {
                    i2 = createEncoderByType.dequeueInputBuffer(0L);
                    if (i2 >= 0) {
                        ByteBuffer byteBuffer = inputBuffers[i2];
                        byteBuffer.clear();
                        int read = fileInputStream.read(bArr, 0, byteBuffer.limit());
                        if (read == -1) {
                            createEncoderByType.queueInputBuffer(i2, 0, 0, c, 4);
                            z = false;
                        } else {
                            i += read;
                            byteBuffer.put(bArr, 0, read);
                            createEncoderByType.queueInputBuffer(i2, 0, read, c, 0);
                            c = ((i / 2) * 1000000) / this.f12097b;
                        }
                    }
                }
                int i3 = 0;
                while (i3 != -1) {
                    i3 = createEncoderByType.dequeueOutputBuffer(bufferInfo, 0L);
                    if (i3 >= 0) {
                        ByteBuffer byteBuffer2 = outputBuffers[i3];
                        byteBuffer2.position(bufferInfo.offset);
                        byteBuffer2.limit(bufferInfo.offset + bufferInfo.size);
                        int i4 = bufferInfo.size;
                        byte[] bArr2 = new byte[i4];
                        byteBuffer2.get(bArr2, 0, i4);
                        fileOutputStream.write(bArr2, 0, bufferInfo.size);
                        createEncoderByType.releaseOutputBuffer(i3, false);
                    }
                }
            } while (bufferInfo.flags != 4);
            fileInputStream.close();
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public void m24037b(int i, int i2, int i3) {
        this.f12097b = i;
        this.f12098c = i2;
        this.f12099d = i3;
    }

    /* renamed from: c */
    public void m24036c(String str) {
        this.f12100e = str;
    }
}
