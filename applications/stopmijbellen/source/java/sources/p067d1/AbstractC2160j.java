package p067d1;

import java.util.concurrent.atomic.AtomicBoolean;
import p110h1.C3001f;
/* renamed from: d1.j */
/* loaded from: classes-dex2jar.jar:d1/j.class */
public abstract class AbstractC2160j {

    /* renamed from: a */
    public final AtomicBoolean f7909a = new AtomicBoolean(false);

    /* renamed from: b */
    public final AbstractC2151f f7910b;

    /* renamed from: c */
    public volatile C3001f f7911c;

    public AbstractC2160j(AbstractC2151f abstractC2151f) {
        this.f7910b = abstractC2151f;
    }

    /* renamed from: a */
    public C3001f m3800a() {
        C3001f c3001f;
        this.f7910b.m3821a();
        if (this.f7909a.compareAndSet(false, true)) {
            if (this.f7911c == null) {
                this.f7911c = this.f7910b.m3818d(mo371b());
            }
            c3001f = this.f7911c;
        } else {
            c3001f = this.f7910b.m3818d(mo371b());
        }
        return c3001f;
    }

    /* renamed from: b */
    public abstract String mo371b();

    /* renamed from: c */
    public void m3799c(C3001f c3001f) {
        if (c3001f == this.f7911c) {
            this.f7909a.set(false);
        }
    }
}
