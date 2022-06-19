package p000;

import android.media.MediaFormat;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: eo */
/* loaded from: classes-dex2jar.jar:eo.class */
public final class C1376eo {
    /* renamed from: a */
    public static void m2071a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    /* renamed from: b */
    public static void m2070b(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            m2068d(mediaFormat, "color-transfer", colorInfo.f1189c);
            m2068d(mediaFormat, "color-standard", colorInfo.f1187a);
            m2068d(mediaFormat, "color-range", colorInfo.f1188b);
            m2071a(mediaFormat, "hdr-static-info", colorInfo.f1190d);
        }
    }

    /* renamed from: c */
    public static void m2069c(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    /* renamed from: d */
    public static void m2068d(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: e */
    public static void m2067e(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(list.get(i)));
        }
    }
}
