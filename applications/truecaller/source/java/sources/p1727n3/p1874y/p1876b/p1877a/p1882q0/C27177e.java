package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import java.lang.reflect.Constructor;
import java.util.Collections;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1883q.C27192a;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.C27194b;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s.C27204d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1886t.C27211c;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27221d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27225f;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.C27238c;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27253a;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27256b0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27259c;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27267e;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27269g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27290u;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1890x.C27298a;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
/* renamed from: n3.y.b.a.q0.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/e.class */
public final class C27177e implements AbstractC27181i {

    /* renamed from: b */
    public static final Constructor<? extends AbstractC27179g> f76035b;

    /* renamed from: a */
    public int f76036a;

    static {
        Constructor<? extends AbstractC27179g> constructor;
        try {
            constructor = Class.forName("androidx.media2.exoplayer.external.ext.flac.FlacExtractor").asSubclass(AbstractC27179g.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f76035b = constructor;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27181i
    /* renamed from: a */
    public AbstractC27179g[] mo748a() {
        AbstractC27179g[] abstractC27179gArr;
        synchronized (this) {
            Constructor<? extends AbstractC27179g> constructor = f76035b;
            abstractC27179gArr = new AbstractC27179g[constructor == null ? 13 : 14];
            abstractC27179gArr[0] = new C27204d(0);
            abstractC27179gArr[1] = new C27221d(0, null, null, null, Collections.emptyList());
            abstractC27179gArr[2] = new C27225f(0);
            abstractC27179gArr[3] = new C27211c(0, -9223372036854775807L);
            abstractC27179gArr[4] = new C27267e(this.f76036a | 0);
            abstractC27179gArr[5] = new C27253a();
            abstractC27179gArr[6] = new C27256b0(1, new C27443v(0L), new C27269g(0));
            abstractC27179gArr[7] = new C27194b();
            abstractC27179gArr[8] = new C27238c();
            abstractC27179gArr[9] = new C27290u();
            abstractC27179gArr[10] = new C27298a();
            abstractC27179gArr[11] = new C27192a(0);
            abstractC27179gArr[12] = new C27259c();
            if (constructor != null) {
                try {
                    abstractC27179gArr[13] = constructor.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            }
        }
        return abstractC27179gArr;
    }
}
