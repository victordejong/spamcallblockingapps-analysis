package com.google.android.exoplayer2;

import android.os.Handler;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.p323a.C10835a;
import com.google.android.exoplayer2.source.AbstractC11272ac;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11318s;
import com.google.android.exoplayer2.source.C11305l;
import com.google.android.exoplayer2.source.C11306m;
import com.google.android.exoplayer2.source.C11308n;
import com.google.android.exoplayer2.source.C11311o;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.exoplayer2.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y.class */
public final class C11667y {

    /* renamed from: d */
    final AbstractC11318s.C11319a f38928d;

    /* renamed from: e */
    final AbstractC10955c.C10956a f38929e;

    /* renamed from: i */
    boolean f38933i;

    /* renamed from: j */
    AbstractC11590v f38934j;

    /* renamed from: k */
    private final AbstractC11671d f38935k;

    /* renamed from: h */
    AbstractC11272ac f38932h = new AbstractC11272ac.C11273a(0);

    /* renamed from: b */
    final IdentityHashMap<AbstractC11312p, C11670c> f38926b = new IdentityHashMap<>();

    /* renamed from: c */
    final Map<Object, C11670c> f38927c = new HashMap();

    /* renamed from: a */
    final List<C11670c> f38925a = new ArrayList();

    /* renamed from: f */
    final HashMap<C11670c, C11669b> f38930f = new HashMap<>();

    /* renamed from: g */
    final Set<C11670c> f38931g = new HashSet();

    /* renamed from: com.google.android.exoplayer2.y$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$a.class */
    public final class C11668a implements AbstractC10955c, AbstractC11318s {

        /* renamed from: b */
        private final C11670c f38937b;

        /* renamed from: c */
        private AbstractC11318s.C11319a f38938c;

        /* renamed from: d */
        private AbstractC10955c.C10956a f38939d;

        public C11668a(C11670c c11670c) {
            C11667y.this = r4;
            this.f38938c = r4.f38928d;
            this.f38939d = r4.f38929e;
            this.f38937b = c11670c;
        }

        /* renamed from: f */
        private boolean m19595f(int i, AbstractC11315r.C11316a c11316a) {
            AbstractC11315r.C11316a c11316a2;
            if (c11316a != null) {
                AbstractC11315r.C11316a m19613a = C11667y.m19613a(this.f38937b, c11316a);
                c11316a2 = m19613a;
                if (m19613a == null) {
                    return false;
                }
            } else {
                c11316a2 = null;
            }
            int m19614a = C11667y.m19614a(this.f38937b, i);
            if (this.f38938c.f37153a != m19614a || !C11599af.m19973a(this.f38938c.f37154b, c11316a2)) {
                this.f38938c = C11667y.this.f38928d.m20933a(m19614a, c11316a2, 0L);
            }
            if (this.f38939d.f35466a != m19614a || !C11599af.m19973a(this.f38939d.f35467b, c11316a2)) {
                this.f38939d = C11667y.this.f38929e.m21863a(m19614a, c11316a2);
                return true;
            }
            return true;
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: a */
        public final void mo19606a(int i, AbstractC11315r.C11316a c11316a) {
            if (m19595f(i, c11316a)) {
                this.f38939d.m21864a();
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: a */
        public final void mo19605a(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
            if (m19595f(i, c11316a)) {
                this.f38938c.m20927a(c11305l, c11311o);
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: a */
        public final void mo19604a(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o, IOException iOException, boolean z) {
            if (m19595f(i, c11316a)) {
                this.f38938c.m20926a(c11305l, c11311o, iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: a */
        public final void mo19603a(int i, AbstractC11315r.C11316a c11316a, C11311o c11311o) {
            if (m19595f(i, c11316a)) {
                this.f38938c.m20925a(c11311o);
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: a */
        public final void mo19602a(int i, AbstractC11315r.C11316a c11316a, Exception exc) {
            if (m19595f(i, c11316a)) {
                this.f38939d.m21859a(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: b */
        public final void mo19601b(int i, AbstractC11315r.C11316a c11316a) {
            if (m19595f(i, c11316a)) {
                this.f38939d.m21858b();
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: b */
        public final void mo19600b(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
            if (m19595f(i, c11316a)) {
                this.f38938c.m20920b(c11305l, c11311o);
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: c */
        public final void mo19599c(int i, AbstractC11315r.C11316a c11316a) {
            if (m19595f(i, c11316a)) {
                this.f38939d.m21856c();
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11318s
        /* renamed from: c */
        public final void mo19598c(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
            if (m19595f(i, c11316a)) {
                this.f38938c.m20918c(c11305l, c11311o);
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: d */
        public final void mo19597d(int i, AbstractC11315r.C11316a c11316a) {
            if (m19595f(i, c11316a)) {
                this.f38939d.m21854d();
            }
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10955c
        /* renamed from: e */
        public final void mo19596e(int i, AbstractC11315r.C11316a c11316a) {
            if (m19595f(i, c11316a)) {
                this.f38939d.m21852e();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.y$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$b.class */
    public static final class C11669b {

        /* renamed from: a */
        public final AbstractC11315r f38940a;

        /* renamed from: b */
        public final AbstractC11315r.AbstractC11317b f38941b;

        /* renamed from: c */
        public final AbstractC11318s f38942c;

        public C11669b(AbstractC11315r abstractC11315r, AbstractC11315r.AbstractC11317b abstractC11317b, AbstractC11318s abstractC11318s) {
            this.f38940a = abstractC11315r;
            this.f38941b = abstractC11317b;
            this.f38942c = abstractC11318s;
        }
    }

    /* renamed from: com.google.android.exoplayer2.y$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$c.class */
    public static final class C11670c implements AbstractC11666x {

        /* renamed from: a */
        public final C11308n f38943a;

        /* renamed from: d */
        public int f38946d;

        /* renamed from: e */
        public boolean f38947e;

        /* renamed from: c */
        public final List<AbstractC11315r.C11316a> f38945c = new ArrayList();

        /* renamed from: b */
        public final Object f38944b = new Object();

        public C11670c(AbstractC11315r abstractC11315r, boolean z) {
            this.f38943a = new C11308n(abstractC11315r, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC11666x
        /* renamed from: a */
        public final Object mo19594a() {
            return this.f38944b;
        }

        /* renamed from: a */
        public final void m19593a(int i) {
            this.f38946d = i;
            this.f38947e = false;
            this.f38945c.clear();
        }

        @Override // com.google.android.exoplayer2.AbstractC11666x
        /* renamed from: b */
        public final AbstractC10864al mo19592b() {
            return this.f38943a.f37128a;
        }
    }

    /* renamed from: com.google.android.exoplayer2.y$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$d.class */
    public interface AbstractC11671d {
        /* renamed from: d */
        void mo19591d();
    }

    public C11667y(AbstractC11671d abstractC11671d, C10835a c10835a, Handler handler) {
        this.f38935k = abstractC11671d;
        AbstractC11318s.C11319a c11319a = new AbstractC11318s.C11319a();
        this.f38928d = c11319a;
        AbstractC10955c.C10956a c10956a = new AbstractC10955c.C10956a();
        this.f38929e = c10956a;
        if (c10835a != null) {
            c11319a.m20931a(handler, c10835a);
            c10956a.m21862a(handler, c10835a);
        }
    }

    /* renamed from: a */
    static /* synthetic */ int m19614a(C11670c c11670c, int i) {
        return i + c11670c.f38946d;
    }

    /* renamed from: a */
    static /* synthetic */ AbstractC11315r.C11316a m19613a(C11670c c11670c, AbstractC11315r.C11316a c11316a) {
        for (int i = 0; i < c11670c.f38945c.size(); i++) {
            if (c11670c.f38945c.get(i).f37151d == c11316a.f37151d) {
                return c11316a.mo20936a(C10850ae.m22314a(c11670c.f38944b, c11316a.f37148a));
            }
        }
        return null;
    }

    /* renamed from: a */
    public /* synthetic */ void m19616a(AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al) {
        this.f38935k.mo19591d();
    }

    /* renamed from: b */
    private void m19611b(int i, int i2) {
        while (i < this.f38925a.size()) {
            this.f38925a.get(i).f38946d += i2;
            i++;
        }
    }

    /* renamed from: b */
    private void m19610b(C11670c c11670c) {
        C11669b c11669b = this.f38930f.get(c11670c);
        if (c11669b != null) {
            c11669b.f38940a.mo20938b(c11669b.f38941b);
        }
    }

    /* renamed from: c */
    private void m19608c(C11670c c11670c) {
        if (!c11670c.f38947e || !c11670c.f38945c.isEmpty()) {
            return;
        }
        C11669b c11669b = (C11669b) C11593a.m20020b(this.f38930f.remove(c11670c));
        c11669b.f38940a.mo20937c(c11669b.f38941b);
        c11669b.f38940a.mo20939a(c11669b.f38942c);
        this.f38931g.remove(c11670c);
    }

    /* renamed from: a */
    public final int m19621a() {
        return this.f38925a.size();
    }

    /* renamed from: a */
    public final AbstractC10864al m19619a(int i, int i2, int i3, AbstractC11272ac abstractC11272ac) {
        C11593a.m20022a(i >= 0 && i <= i2 && i2 <= m19621a() && i3 >= 0);
        this.f38932h = abstractC11272ac;
        if (i == i2 || i == i3) {
            return m19609c();
        }
        int min = Math.min(i, i3);
        int max = Math.max(((i2 - i) + i3) - 1, i2 - 1);
        int i4 = this.f38925a.get(min).f38946d;
        C11599af.m19964a(this.f38925a, i, i2, i3);
        int i5 = i4;
        for (int i6 = min; i6 <= max; i6++) {
            C11670c c11670c = this.f38925a.get(i6);
            c11670c.f38946d = i5;
            i5 += c11670c.f38943a.f37128a.mo20949a();
        }
        return m19609c();
    }

    /* renamed from: a */
    public final AbstractC10864al m19618a(int i, List<C11670c> list, AbstractC11272ac abstractC11272ac) {
        if (!list.isEmpty()) {
            this.f38932h = abstractC11272ac;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                C11670c c11670c = list.get(i2 - i);
                if (i2 > 0) {
                    C11670c c11670c2 = this.f38925a.get(i2 - 1);
                    c11670c.m19593a(c11670c2.f38946d + c11670c2.f38943a.f37128a.mo20949a());
                } else {
                    c11670c.m19593a(0);
                }
                m19611b(i2, c11670c.f38943a.f37128a.mo20949a());
                this.f38925a.add(i2, c11670c);
                this.f38927c.put(c11670c.f38944b, c11670c);
                if (this.f38933i) {
                    m19615a(c11670c);
                    if (this.f38926b.isEmpty()) {
                        this.f38931g.add(c11670c);
                    } else {
                        m19610b(c11670c);
                    }
                }
            }
        }
        return m19609c();
    }

    /* renamed from: a */
    public final void m19620a(int i, int i2) {
        while (true) {
            i2--;
            if (i2 >= i) {
                C11670c remove = this.f38925a.remove(i2);
                this.f38927c.remove(remove.f38944b);
                m19611b(i2, -remove.f38943a.f37128a.mo20949a());
                remove.f38947e = true;
                if (this.f38933i) {
                    m19608c(remove);
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m19617a(AbstractC11312p abstractC11312p) {
        C11670c c11670c = (C11670c) C11593a.m20020b(this.f38926b.remove(abstractC11312p));
        c11670c.f38943a.mo20860a(abstractC11312p);
        c11670c.f38945c.remove(((C11306m) abstractC11312p).f37119a);
        if (!this.f38926b.isEmpty()) {
            m19607d();
        }
        m19608c(c11670c);
    }

    /* renamed from: a */
    public final void m19615a(C11670c c11670c) {
        C11308n c11308n = c11670c.f38943a;
        AbstractC11315r.AbstractC11317b abstractC11317b = new AbstractC11315r.AbstractC11317b() { // from class: com.google.android.exoplayer2._$$Lambda$y$LqbOLZDaxpu0TVuEP5_1xKNlChs
            @Override // com.google.android.exoplayer2.source.AbstractC11315r.AbstractC11317b
            public final void onSourceInfoRefreshed(AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al) {
                C11667y.this.m19616a(abstractC11315r, abstractC10864al);
            }
        };
        C11668a c11668a = new C11668a(c11670c);
        this.f38930f.put(c11670c, new C11669b(c11308n, abstractC11317b, c11668a));
        c11308n.mo20942a(C11599af.m19952b(), (AbstractC11318s) c11668a);
        c11308n.mo20943a(C11599af.m19952b(), (AbstractC10955c) c11668a);
        c11308n.mo20940a(abstractC11317b, this.f38934j);
    }

    /* renamed from: b */
    public final void m19612b() {
        for (C11669b c11669b : this.f38930f.values()) {
            try {
                c11669b.f38940a.mo20937c(c11669b.f38941b);
            } catch (RuntimeException e) {
                C11617n.m19857b("MediaSourceList", "Failed to release child source.", e);
            }
            c11669b.f38940a.mo20939a(c11669b.f38942c);
        }
        this.f38930f.clear();
        this.f38931g.clear();
        this.f38933i = false;
    }

    /* renamed from: c */
    public final AbstractC10864al m19609c() {
        if (this.f38925a.isEmpty()) {
            return AbstractC10864al.f34997b;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f38925a.size(); i2++) {
            C11670c c11670c = this.f38925a.get(i2);
            c11670c.f38946d = i;
            i += c11670c.f38943a.f37128a.mo20949a();
        }
        return new C10850ae(this.f38925a, this.f38932h);
    }

    /* renamed from: d */
    public final void m19607d() {
        Iterator<C11670c> it2 = this.f38931g.iterator();
        while (it2.hasNext()) {
            C11670c next = it2.next();
            if (next.f38945c.isEmpty()) {
                m19610b(next);
                it2.remove();
            }
        }
    }
}
