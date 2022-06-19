package p1727n3.p1874y.p1876b.p1877a.p1881p0;

import android.os.Looper;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27158b;
import p1727n3.p1874y.p1876b.p1877a.p1881p0.C27163e;
/* renamed from: n3.y.b.a.p0.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/p0/c.class */
public interface AbstractC27160c<T extends C27163e> {

    /* renamed from: a */
    public static final AbstractC27160c<C27163e> f75990a = new C27161a();

    /* renamed from: n3.y.b.a.p0.c$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/p0/c$a.class */
    public class C27161a implements AbstractC27160c<C27163e> {
        static {
            MediaSessionCompat.m43256a();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
        /* renamed from: a */
        public int mo777a() {
            return 0;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
        /* renamed from: b */
        public boolean mo776b(DrmInitData drmInitData) {
            return false;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
        /* renamed from: c */
        public AbstractC27158b<C27163e> mo775c(Looper looper, DrmInitData drmInitData) {
            return new C27162d(new AbstractC27158b.C27159a(new C27164f(1)));
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c
        /* renamed from: d */
        public Class<C27163e> mo774d(DrmInitData drmInitData) {
            return null;
        }
    }

    /* renamed from: a */
    int mo777a();

    /* renamed from: b */
    boolean mo776b(DrmInitData drmInitData);

    /* renamed from: c */
    AbstractC27158b<T> mo775c(Looper looper, DrmInitData drmInitData);

    /* renamed from: d */
    Class<? extends C27163e> mo774d(DrmInitData drmInitData);
}
