package p1727n3.p1874y.p1906c;

import android.media.MediaFormat;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27181i;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27177e;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27428j;
/* renamed from: n3.y.c.h0 */
/* loaded from: classes-dex2jar.jar:n3/y/c/h0.class */
public class C27474h0 {

    /* renamed from: a */
    public static final AbstractC27181i f77339a;

    static {
        C27177e c27177e = new C27177e();
        synchronized (c27177e) {
            c27177e.f76036a = 1;
        }
        f77339a = c27177e;
    }

    /* renamed from: a */
    public static MediaFormat m231a(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        String str = format.f960i;
        mediaFormat.setString("mime", str);
        int m359e = C27428j.m359e(str);
        int i = 1;
        if (m359e == 1) {
            mediaFormat.setInteger("channel-count", format.f973v);
            mediaFormat.setInteger("sample-rate", format.f974w);
            String str2 = format.f948A;
            if (str2 != null) {
                mediaFormat.setString("language", str2);
            }
        } else if (m359e == 2) {
            MediaSessionCompat.m43269T0(mediaFormat, "width", format.f965n);
            MediaSessionCompat.m43269T0(mediaFormat, "height", format.f966o);
            float f = format.f967p;
            if (f != -1.0f) {
                mediaFormat.setFloat("frame-rate", f);
            }
            MediaSessionCompat.m43269T0(mediaFormat, "rotation-degrees", format.f968q);
            MediaSessionCompat.m43271S0(mediaFormat, format.f972u);
        } else if (m359e == 3) {
            int i2 = format.f954c;
            int i3 = i2 == 4 ? 1 : 0;
            int i4 = i2 == 1 ? 1 : 0;
            if (i2 != 2) {
                i = 0;
            }
            mediaFormat.setInteger("is-autoselect", i3);
            mediaFormat.setInteger("is-default", i4);
            mediaFormat.setInteger("is-forced-subtitle", i);
            String str3 = format.f948A;
            if (str3 == null) {
                mediaFormat.setString("language", "und");
            } else {
                mediaFormat.setString("language", str3);
            }
            if ("application/cea-608".equals(str)) {
                mediaFormat.setString("mime", "text/cea-608");
            } else if ("application/cea-708".equals(str)) {
                mediaFormat.setString("mime", "text/cea-708");
            }
        }
        return mediaFormat;
    }
}
