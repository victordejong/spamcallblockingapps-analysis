package p012b.p076s.p078b.p079a.p095t0;

import android.media.MediaFormat;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: b.s.b.a.t0.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/t0/g.class */
public final class C1508g {
    /* renamed from: a */
    public static void m33082a(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            m33080a(mediaFormat, "color-transfer", colorInfo.f2022c);
            m33080a(mediaFormat, "color-standard", colorInfo.f2020a);
            m33080a(mediaFormat, "color-range", colorInfo.f2021b);
            m33079a(mediaFormat, "hdr-static-info", colorInfo.f2023d);
        }
    }

    /* renamed from: a */
    public static void m33081a(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    /* renamed from: a */
    public static void m33080a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: a */
    public static void m33079a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    /* renamed from: a */
    public static void m33078a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(list.get(i)));
        }
    }
}
