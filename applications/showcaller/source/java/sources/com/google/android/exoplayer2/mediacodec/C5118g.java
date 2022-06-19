package com.google.android.exoplayer2.mediacodec;

import android.media.MediaFormat;
import com.google.android.exoplayer2.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.mediacodec.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/mediacodec/g.class */
public final class C5118g {
    /* renamed from: a */
    public static void m20400a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    /* renamed from: b */
    public static void m20399b(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            m20397d(mediaFormat, "color-transfer", colorInfo.f17967f);
            m20397d(mediaFormat, "color-standard", colorInfo.f17965d);
            m20397d(mediaFormat, "color-range", colorInfo.f17966e);
            m20400a(mediaFormat, "hdr-static-info", colorInfo.f17968g);
        }
    }

    /* renamed from: c */
    public static void m20398c(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    /* renamed from: d */
    public static void m20397d(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: e */
    public static void m20396e(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer("csd-" + i, ByteBuffer.wrap(list.get(i)));
        }
    }
}
