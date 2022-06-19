package com.bumptech.glide.load.engine;

import androidx.core.p025g.C0523e;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.p078a.AbstractC1446c;
import com.bumptech.glide.p077h.p078a.C1437a;
/* renamed from: com.bumptech.glide.load.engine.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/s.class */
public final class C1769s<Z> implements C1437a.AbstractC1443c, AbstractC1771t<Z> {

    /* renamed from: a */
    private static final C0523e.AbstractC0524a<C1769s<?>> f5377a = C1437a.m17024b(20, new C1437a.AbstractC1441a<C1769s<?>>() { // from class: com.bumptech.glide.load.engine.s.1
        /* renamed from: a */
        public C1769s<?> mo16349b() {
            return new C1769s<>();
        }
    });

    /* renamed from: b */
    private final AbstractC1446c f5378b = AbstractC1446c.m17014a();

    /* renamed from: c */
    private AbstractC1771t<Z> f5379c;

    /* renamed from: d */
    private boolean f5380d;

    /* renamed from: e */
    private boolean f5381e;

    C1769s() {
    }

    /* renamed from: a */
    public static <Z> C1769s<Z> m16354a(AbstractC1771t<Z> abstractC1771t) {
        C1769s<Z> c1769s = (C1769s) C1456i.m16989a(f5377a.mo17021a());
        c1769s.m16352b(abstractC1771t);
        return c1769s;
    }

    /* renamed from: b */
    private void m16353b() {
        this.f5379c = null;
        f5377a.mo17020a(this);
    }

    /* renamed from: b */
    private void m16352b(AbstractC1771t<Z> abstractC1771t) {
        this.f5381e = false;
        this.f5380d = true;
        this.f5379c = abstractC1771t;
    }

    /* renamed from: a */
    public void m16355a() {
        synchronized (this) {
            this.f5378b.mo17012b();
            if (!this.f5380d) {
                throw new IllegalStateException("Already unlocked");
            }
            this.f5380d = false;
            if (this.f5381e) {
                mo16345f();
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: c */
    public Class<Z> mo16348c() {
        return this.f5379c.mo16348c();
    }

    @Override // com.bumptech.glide.p077h.p078a.C1437a.AbstractC1443c
    /* renamed from: c_ */
    public AbstractC1446c mo16351c_() {
        return this.f5378b;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: d */
    public Z mo16347d() {
        return this.f5379c.mo16347d();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: e */
    public int mo16346e() {
        return this.f5379c.mo16346e();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: f */
    public void mo16345f() {
        synchronized (this) {
            this.f5378b.mo17012b();
            this.f5381e = true;
            if (!this.f5380d) {
                this.f5379c.mo16345f();
                m16353b();
            }
        }
    }
}
