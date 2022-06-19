package p193e.p194a.p1114o5.p1123g2;

import android.media.MediaFormat;
import s1.z.c.l;
import s3.b.a.g.a;
/* renamed from: e.a.o5.g2.a */
/* loaded from: classes15-dex2jar.jar:e/a/o5/g2/a.class */
public final class C19031a implements a {
    /* renamed from: a */
    public MediaFormat m14227a(MediaFormat mediaFormat) {
        return null;
    }

    /* renamed from: b */
    public MediaFormat m14226b(MediaFormat mediaFormat) {
        int i;
        int i2;
        int i3;
        int i4;
        l.e(mediaFormat, "inputFormat");
        int integer = mediaFormat.getInteger("width");
        int integer2 = mediaFormat.getInteger("height");
        if (integer >= integer2) {
            i4 = integer2;
            i3 = integer;
            i2 = 640;
            i = 360;
        } else {
            i3 = integer2;
            i4 = integer;
            i = 640;
            i2 = 360;
        }
        if (i4 <= 360) {
            return null;
        }
        int i5 = i2;
        int i6 = i;
        if (i3 * 9 != i4 * 16) {
            int i7 = (i4 * 640) / i3;
            if (integer >= integer2) {
                i5 = i2;
                i6 = i7;
            } else {
                i6 = i;
                i5 = i7;
            }
        }
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", i5, i6);
        l.d(createVideoFormat, "MediaFormat.createVideoF…vc\", outWidth, outHeight)");
        createVideoFormat.setInteger("bitrate", 2000000);
        createVideoFormat.setInteger("frame-rate", 30);
        createVideoFormat.setInteger("i-frame-interval", 3);
        createVideoFormat.setInteger("color-format", 2130708361);
        return createVideoFormat;
    }
}
