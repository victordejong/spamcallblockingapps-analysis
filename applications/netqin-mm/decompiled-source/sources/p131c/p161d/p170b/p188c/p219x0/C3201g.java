package p131c.p161d.p170b.p188c.p219x0;

import android.media.MediaFormat;
import com.google.android.exoplayer2.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: c.d.b.c.x0.g */
/* loaded from: classes-dex2jar.jar:c/d/b/c/x0/g.class */
public final class C3201g {
    /* renamed from: a */
    public static void m27503a(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            m27501a(mediaFormat, "color-transfer", colorInfo.f22576c);
            m27501a(mediaFormat, "color-standard", colorInfo.f22574a);
            m27501a(mediaFormat, "color-range", colorInfo.f22575b);
            m27500a(mediaFormat, "hdr-static-info", colorInfo.f22577d);
        }
    }

    /* renamed from: a */
    public static void m27502a(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    /* renamed from: a */
    public static void m27501a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: a */
    public static void m27500a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    /* renamed from: a */
    public static void m27499a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer("csd-" + i, ByteBuffer.wrap(list.get(i)));
        }
    }
}
