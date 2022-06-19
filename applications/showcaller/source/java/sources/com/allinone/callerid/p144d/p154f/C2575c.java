package com.allinone.callerid.p144d.p154f;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import com.allinone.callerid.util.C3718c0;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.allinone.callerid.d.f.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/c.class */
public class C2575c {
    /* renamed from: a */
    private static void m27085a(byte[] bArr, int i) {
        bArr[0] = (byte) (-1);
        bArr[1] = (byte) (-7);
        bArr[2] = (byte) 80;
        bArr[3] = (byte) (128 + (i >> 11));
        bArr[4] = (byte) ((i & 2047) >> 3);
        bArr[5] = (byte) (((i & 7) << 5) + 31);
        bArr[6] = (byte) (-4);
    }

    /* renamed from: b */
    public static void m27084b(String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("callscreen", "mp4文件不存在");
            return;
        }
        MediaExtractor mediaExtractor = new MediaExtractor();
        try {
            try {
                mediaExtractor.setDataSource(file.getAbsolutePath());
            } catch (IOException e) {
                e.printStackTrace();
            }
            int trackCount = mediaExtractor.getTrackCount();
            MediaFormat mediaFormat = null;
            int i = 0;
            for (int i2 = 0; i2 < trackCount; i2++) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i2);
                if (trackFormat.getString("mime").startsWith("audio")) {
                    i = i2;
                    mediaFormat = trackFormat;
                }
            }
            File file2 = new File(str2);
            if (file2.exists()) {
                file2.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            int i3 = 102400;
            if (mediaFormat != null) {
                i3 = mediaFormat.getInteger("max-input-size");
            }
            ByteBuffer allocate = ByteBuffer.allocate(i3);
            mediaExtractor.selectTrack(i);
            while (true) {
                int readSampleData = mediaExtractor.readSampleData(allocate, 0);
                if (readSampleData == -1) {
                    break;
                }
                byte[] bArr = new byte[readSampleData];
                allocate.get(bArr);
                int i4 = readSampleData + 7;
                byte[] bArr2 = new byte[i4];
                m27085a(bArr2, i4);
                System.arraycopy(bArr, 0, bArr2, 7, readSampleData);
                fileOutputStream.write(bArr2);
                allocate.clear();
                mediaExtractor.advance();
            }
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e2) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "Exception:" + e2.getLocalizedMessage());
            }
            e2.printStackTrace();
        }
        mediaExtractor.release();
    }
}
