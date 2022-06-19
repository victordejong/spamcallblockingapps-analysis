package p078c.p084c.p085a.p096b.p105u;

import android.graphics.Typeface;
/* renamed from: c.c.a.b.u.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/u/a.class */
public final class C1916a extends AbstractC1924f {

    /* renamed from: a */
    private final Typeface f6847a;

    /* renamed from: b */
    private final AbstractC1917a f6848b;

    /* renamed from: c */
    private boolean f6849c;

    /* renamed from: c.c.a.b.u.a$a */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/u/a$a.class */
    public interface AbstractC1917a {
        /* renamed from: a */
        void mo4558a(Typeface typeface);
    }

    public C1916a(AbstractC1917a abstractC1917a, Typeface typeface) {
        this.f6847a = typeface;
        this.f6848b = abstractC1917a;
    }

    /* renamed from: d */
    private void m28691d(Typeface typeface) {
        if (!this.f6849c) {
            this.f6848b.mo4558a(typeface);
        }
    }

    @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
    /* renamed from: a */
    public void mo4476a(int i) {
        m28691d(this.f6847a);
    }

    @Override // p078c.p084c.p085a.p096b.p105u.AbstractC1924f
    /* renamed from: b */
    public void mo4475b(Typeface typeface, boolean z) {
        m28691d(typeface);
    }

    /* renamed from: c */
    public void m28692c() {
        this.f6849c = true;
    }
}
