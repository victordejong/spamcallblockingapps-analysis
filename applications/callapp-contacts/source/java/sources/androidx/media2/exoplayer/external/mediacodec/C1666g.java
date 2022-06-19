package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaFormat;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.mediacodec.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/g.class */
public final class C1666g {
    private C1666g() {
    }

    /* renamed from: a */
    public static void m42412a(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            m42410a(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            m42410a(mediaFormat, "color-standard", colorInfo.colorSpace);
            m42410a(mediaFormat, "color-range", colorInfo.colorRange);
            byte[] bArr = colorInfo.hdrStaticInfo;
            if (bArr == null) {
                return;
            }
            mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
        }
    }

    /* renamed from: a */
    public static void m42411a(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    /* renamed from: a */
    public static void m42410a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: a */
    public static void m42409a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(list.get(i)));
        }
    }
}
