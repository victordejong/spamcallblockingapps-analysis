package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11318s;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
import java.util.HashMap;
/* renamed from: com.google.android.exoplayer2.source.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/d.class */
public abstract class AbstractC11293d<T> extends AbstractC11266a {

    /* renamed from: a */
    private final HashMap<T, C11295b> f37083a = new HashMap<>();

    /* renamed from: b */
    private Handler f37084b;

    /* renamed from: c */
    private AbstractC11590v f37085c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.source.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/d$a.class */
    public final class C11294a implements AbstractC10955c, AbstractC11318s {

        /* renamed from: b */
        private final T f37087b;

        /* renamed from: c */
        private AbstractC11318s.C11319a f37088c;

        /* renamed from: d */
        private AbstractC10955c.C10956a f37089d;

        public C11294a(T t) {
            AbstractC11293d.this = r5;
            this.f37088c = r5.m21012a((AbstractC11315r.C11316a) null);
            this.f37089d = r5.m21010b((AbstractC11315r.C11316a) null);
            this.f37087b = t;
        }

        /* renamed from: a */
        private C11311o m20974a(C11311o c11311o) {
            long mo20979a = AbstractC11293d.this.mo20979a(c11311o.f37146f);
            long mo20979a2 = AbstractC11293d.this.mo20979a(c11311o.f37147g);
            return (mo20979a == c11311o.f37146f && mo20979a2 == c11311o.f37147g) ? c11311o : new C11311o(c11311o.f37141a, c11311o.f37142b, c11311o.f37143c, c11311o.f37144d, c11311o.f37145e, mo20979a, mo20979a2);
        }

        /* renamed from: f */
        private boolean m20973f(int i, AbstractC11315r.C11316a c11316a) {
            AbstractC11315r.C11316a c11316a2;
            if (c11316a != null) {
                AbstractC11315r.C11316a mo20958a = AbstractC11293d.this.mo20958a((AbstractC11293d) this.f37087b, c11316a);
                c11316a2 = mo20958a;
                if (mo20958a == null) {
                    return false;
                }
            } else {
                c11316a2 = null;
            }
            if (this.f37088c.f37153a != i || !C11599af.m19973a(this.f37088c.f37154b, c11316a2)) {
                this.f37088c = AbstractC11293d.this.m21014a(i, c11316a2);
            }
            if (this.f37089d.f35466a != i || !C11599af.m19973a(this.f37089d.f35467b, c11316a2)) {
                this.f37089d = AbstractC11293d.this.m21011b(i, c11316a2);
                return true;
            }
            return true;
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: a */
        public final void mo19606a(int i, AbstractC11315r.C11316a c11316a) {
            if (m20973f(i, c11316a)) {
                this.f37089d.m21864a();
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: a */
        public final void mo19605a(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
            if (m20973f(i, c11316a)) {
                this.f37088c.m20927a(c11305l, m20974a(c11311o));
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: a */
        public final void mo19604a(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o, IOException iOException, boolean z) {
            if (m20973f(i, c11316a)) {
                this.f37088c.m20926a(c11305l, m20974a(c11311o), iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: a */
        public final void mo19603a(int i, AbstractC11315r.C11316a c11316a, C11311o c11311o) {
            if (m20973f(i, c11316a)) {
                this.f37088c.m20925a(m20974a(c11311o));
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: a */
        public final void mo19602a(int i, AbstractC11315r.C11316a c11316a, Exception exc) {
            if (m20973f(i, c11316a)) {
                this.f37089d.m21859a(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: b */
        public final void mo19601b(int i, AbstractC11315r.C11316a c11316a) {
            if (m20973f(i, c11316a)) {
                this.f37089d.m21858b();
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: b */
        public final void mo19600b(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
            if (m20973f(i, c11316a)) {
                this.f37088c.m20920b(c11305l, m20974a(c11311o));
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: c */
        public final void mo19599c(int i, AbstractC11315r.C11316a c11316a) {
            if (m20973f(i, c11316a)) {
                this.f37089d.m21856c();
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: c */
        public final void mo19598c(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
            if (m20973f(i, c11316a)) {
                this.f37088c.m20918c(c11305l, m20974a(c11311o));
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: d */
        public final void mo19597d(int i, AbstractC11315r.C11316a c11316a) {
            if (m20973f(i, c11316a)) {
                this.f37089d.m21854d();
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: e */
        public final void mo19596e(int i, AbstractC11315r.C11316a c11316a) {
            if (m20973f(i, c11316a)) {
                this.f37089d.m21852e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.source.d$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/d$b.class */
    public static final class C11295b {

        /* renamed from: a */
        public final AbstractC11315r f37090a;

        /* renamed from: b */
        public final AbstractC11315r.AbstractC11317b f37091b;

        /* renamed from: c */
        public final AbstractC11318s f37092c;

        public C11295b(AbstractC11315r abstractC11315r, AbstractC11315r.AbstractC11317b abstractC11317b, AbstractC11318s abstractC11318s) {
            this.f37090a = abstractC11315r;
            this.f37091b = abstractC11317b;
            this.f37092c = abstractC11318s;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public /* synthetic */ void m20975b(Object obj, AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al) {
        mo20957a((AbstractC11293d<T>) obj, abstractC11315r, abstractC10864al);
    }

    /* renamed from: a */
    protected long mo20979a(long j) {
        return j;
    }

    /* renamed from: a */
    protected AbstractC11315r.C11316a mo20958a(T t, AbstractC11315r.C11316a c11316a) {
        return c11316a;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    protected final void mo20980a() {
        for (C11295b c11295b : this.f37083a.values()) {
            c11295b.f37090a.mo20941a(c11295b.f37091b);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    public void mo20858a(AbstractC11590v abstractC11590v) {
        this.f37085c = abstractC11590v;
        this.f37084b = C11599af.m20001a();
    }

    /* renamed from: a */
    public final void m20978a(T t) {
        C11295b c11295b = (C11295b) C11593a.m20020b(this.f37083a.remove(t));
        c11295b.f37090a.mo20937c(c11295b.f37091b);
        c11295b.f37090a.mo20939a(c11295b.f37092c);
    }

    /* renamed from: a */
    public final void m20977a(final T t, AbstractC11315r abstractC11315r) {
        C11593a.m20022a(!this.f37083a.containsKey(t));
        AbstractC11315r.AbstractC11317b abstractC11317b = new AbstractC11315r.AbstractC11317b() { // from class: com.google.android.exoplayer2.source._$$Lambda$d$DP8hRkX5RPNq96cWCicj9DEL_X8
            @Override // com.google.android.exoplayer2.source.AbstractC11315r.AbstractC11317b
            public final void onSourceInfoRefreshed(AbstractC11315r abstractC11315r2, AbstractC10864al abstractC10864al) {
                AbstractC11293d.this.m20975b(t, abstractC11315r2, abstractC10864al);
            }
        };
        C11294a c11294a = new C11294a(t);
        this.f37083a.put(t, new C11295b(abstractC11315r, abstractC11317b, c11294a));
        abstractC11315r.mo20942a((Handler) C11593a.m20020b(this.f37084b), (AbstractC11318s) c11294a);
        abstractC11315r.mo20943a((Handler) C11593a.m20020b(this.f37084b), (AbstractC10955c) c11294a);
        abstractC11315r.mo20940a(abstractC11317b, this.f37085c);
        if (!m21009d()) {
            abstractC11315r.mo20938b(abstractC11317b);
        }
    }

    /* renamed from: a */
    protected abstract void mo20957a(T t, AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al);

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: b */
    protected final void mo20976b() {
        for (C11295b c11295b : this.f37083a.values()) {
            c11295b.f37090a.mo20938b(c11295b.f37091b);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: c */
    public void mo20857c() {
        for (C11295b c11295b : this.f37083a.values()) {
            c11295b.f37090a.mo20937c(c11295b.f37091b);
            c11295b.f37090a.mo20939a(c11295b.f37092c);
        }
        this.f37083a.clear();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: f */
    public void mo20855f() throws IOException {
        for (C11295b c11295b : this.f37083a.values()) {
            c11295b.f37090a.mo20855f();
        }
    }
}
