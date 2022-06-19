package p000;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: d10 */
/* loaded from: classes-dex2jar.jar:d10.class */
public abstract class d10 {

    /* renamed from: a */
    public final AtomicBoolean f5740a = new AtomicBoolean(false);

    /* renamed from: b */
    public final z00 f5741b;

    /* renamed from: c */
    public volatile r10 f5742c;

    public d10(z00 z00Var) {
        this.f5741b = z00Var;
    }

    /* renamed from: a */
    public r10 m2913a() {
        m2912b();
        return m2909e(this.f5740a.compareAndSet(false, true));
    }

    /* renamed from: b */
    public void m2912b() {
        this.f5741b.a();
    }

    /* renamed from: c */
    public final r10 m2911c() {
        return this.f5741b.d(m2910d());
    }

    /* renamed from: d */
    public abstract String m2910d();

    /* renamed from: e */
    public final r10 m2909e(boolean z) {
        r10 r10Var;
        if (z) {
            if (this.f5742c == null) {
                this.f5742c = m2911c();
            }
            r10Var = this.f5742c;
        } else {
            r10Var = m2911c();
        }
        return r10Var;
    }

    /* renamed from: f */
    public void m2908f(r10 r10Var) {
        if (r10Var == this.f5742c) {
            this.f5740a.set(false);
        }
    }
}
