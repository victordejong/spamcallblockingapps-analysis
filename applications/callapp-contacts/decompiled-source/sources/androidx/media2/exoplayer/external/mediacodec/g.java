package androidx.media2.exoplayer.external.mediacodec;

import android.media.MediaFormat;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/g.class */
public final class g {
    private g() {
    }

    public static void a(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            a(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            a(mediaFormat, "color-standard", colorInfo.colorSpace);
            a(mediaFormat, "color-range", colorInfo.colorRange);
            byte[] bArr = colorInfo.hdrStaticInfo;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
    }

    public static void a(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    public static void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(list.get(i)));
        }
    }
}
