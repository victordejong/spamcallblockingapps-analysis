package p067d1;

import p110h1.C3001f;
/* renamed from: d1.b */
/* loaded from: classes-dex2jar.jar:d1/b.class */
public abstract class AbstractC2141b<T> extends AbstractC2160j {
    public AbstractC2141b(AbstractC2151f abstractC2151f) {
        super(abstractC2151f);
    }

    /* renamed from: d */
    public abstract void mo370d(C3001f c3001f, T t);

    /* renamed from: e */
    public final void m3831e(T t) {
        C3001f m3800a = m3800a();
        try {
            mo370d(m3800a, t);
            m3800a.f10101b.executeInsert();
            if (m3800a != this.f7911c) {
                return;
            }
            this.f7909a.set(false);
        } catch (Throwable th) {
            m3799c(m3800a);
            throw th;
        }
    }
}
