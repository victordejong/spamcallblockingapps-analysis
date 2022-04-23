package com.google.android.exoplayer2;

import android.os.Handler;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.source.ac;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.s;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y.class */
public final class y {

    /* renamed from: d  reason: collision with root package name */
    final s.a f22430d;
    final c.a e;
    boolean i;
    v j;
    private final d k;
    ac h = new ac.a(0);

    /* renamed from: b  reason: collision with root package name */
    final IdentityHashMap<p, c> f22428b = new IdentityHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    final Map<Object, c> f22429c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    final List<c> f22427a = new ArrayList();
    final HashMap<c, b> f = new HashMap<>();
    final Set<c> g = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$a.class */
    public final class a implements com.google.android.exoplayer2.drm.c, s {

        /* renamed from: b  reason: collision with root package name */
        private final c f22432b;

        /* renamed from: c  reason: collision with root package name */
        private s.a f22433c;

        /* renamed from: d  reason: collision with root package name */
        private c.a f22434d;

        public a(c cVar) {
            this.f22433c = y.this.f22430d;
            this.f22434d = y.this.e;
            this.f22432b = cVar;
        }

        private boolean f(int i, r.a aVar) {
            r.a aVar2;
            if (aVar != null) {
                r.a a2 = y.a(this.f22432b, aVar);
                aVar2 = a2;
                if (a2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int a3 = y.a(this.f22432b, i);
            if (this.f22433c.f21641a != a3 || !af.a(this.f22433c.f21642b, aVar2)) {
                this.f22433c = y.this.f22430d.a(a3, aVar2, 0L);
            }
            if (this.f22434d.f20881a == a3 && af.a(this.f22434d.f20882b, aVar2)) {
                return true;
            }
            this.f22434d = y.this.e.a(a3, aVar2);
            return true;
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void a(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f22434d.a();
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void a(int i, r.a aVar, l lVar, o oVar) {
            if (f(i, aVar)) {
                this.f22433c.a(lVar, oVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void a(int i, r.a aVar, l lVar, o oVar, IOException iOException, boolean z) {
            if (f(i, aVar)) {
                this.f22433c.a(lVar, oVar, iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void a(int i, r.a aVar, o oVar) {
            if (f(i, aVar)) {
                this.f22433c.a(oVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void a(int i, r.a aVar, Exception exc) {
            if (f(i, aVar)) {
                this.f22434d.a(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void b(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f22434d.b();
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void b(int i, r.a aVar, l lVar, o oVar) {
            if (f(i, aVar)) {
                this.f22433c.b(lVar, oVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void c(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f22434d.c();
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void c(int i, r.a aVar, l lVar, o oVar) {
            if (f(i, aVar)) {
                this.f22433c.c(lVar, oVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void d(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f22434d.d();
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void e(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f22434d.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final r f22435a;

        /* renamed from: b  reason: collision with root package name */
        public final r.b f22436b;

        /* renamed from: c  reason: collision with root package name */
        public final s f22437c;

        public b(r rVar, r.b bVar, s sVar) {
            this.f22435a = rVar;
            this.f22436b = bVar;
            this.f22437c = sVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$c.class */
    public static final class c implements x {

        /* renamed from: a  reason: collision with root package name */
        public final n f22438a;

        /* renamed from: d  reason: collision with root package name */
        public int f22441d;
        public boolean e;

        /* renamed from: c  reason: collision with root package name */
        public final List<r.a> f22440c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f22439b = new Object();

        public c(r rVar, boolean z) {
            this.f22438a = new n(rVar, z);
        }

        @Override // com.google.android.exoplayer2.x
        public final Object a() {
            return this.f22439b;
        }

        public final void a(int i) {
            this.f22441d = i;
            this.e = false;
            this.f22440c.clear();
        }

        @Override // com.google.android.exoplayer2.x
        public final al b() {
            return this.f22438a.f21626a;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/y$d.class */
    public interface d {
        void d();
    }

    public y(d dVar, com.google.android.exoplayer2.a.a aVar, Handler handler) {
        this.k = dVar;
        s.a aVar2 = new s.a();
        this.f22430d = aVar2;
        c.a aVar3 = new c.a();
        this.e = aVar3;
        if (aVar != null) {
            aVar2.a(handler, aVar);
            aVar3.a(handler, aVar);
        }
    }

    static /* synthetic */ int a(c cVar, int i) {
        return i + cVar.f22441d;
    }

    static /* synthetic */ r.a a(c cVar, r.a aVar) {
        for (int i = 0; i < cVar.f22440c.size(); i++) {
            if (cVar.f22440c.get(i).f21640d == aVar.f21640d) {
                return aVar.a(ae.a(cVar.f22439b, aVar.f21637a));
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(r rVar, al alVar) {
        this.k.d();
    }

    private void b(int i, int i2) {
        while (i < this.f22427a.size()) {
            this.f22427a.get(i).f22441d += i2;
            i++;
        }
    }

    private void b(c cVar) {
        b bVar = this.f.get(cVar);
        if (bVar != null) {
            bVar.f22435a.b(bVar.f22436b);
        }
    }

    private void c(c cVar) {
        if (cVar.e && cVar.f22440c.isEmpty()) {
            b bVar = (b) com.google.android.exoplayer2.util.a.b(this.f.remove(cVar));
            bVar.f22435a.c(bVar.f22436b);
            bVar.f22435a.a(bVar.f22437c);
            this.g.remove(cVar);
        }
    }

    public final int a() {
        return this.f22427a.size();
    }

    public final al a(int i, int i2, int i3, ac acVar) {
        com.google.android.exoplayer2.util.a.a(i >= 0 && i <= i2 && i2 <= a() && i3 >= 0);
        this.h = acVar;
        if (i == i2 || i == i3) {
            return c();
        }
        int min = Math.min(i, i3);
        int max = Math.max(((i2 - i) + i3) - 1, i2 - 1);
        int i4 = this.f22427a.get(min).f22441d;
        af.a(this.f22427a, i, i2, i3);
        for (int i5 = min; i5 <= max; i5++) {
            c cVar = this.f22427a.get(i5);
            cVar.f22441d = i4;
            i4 += cVar.f22438a.f21626a.a();
        }
        return c();
    }

    public final al a(int i, List<c> list, ac acVar) {
        if (!list.isEmpty()) {
            this.h = acVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                c cVar = list.get(i2 - i);
                if (i2 > 0) {
                    c cVar2 = this.f22427a.get(i2 - 1);
                    cVar.a(cVar2.f22441d + cVar2.f22438a.f21626a.a());
                } else {
                    cVar.a(0);
                }
                b(i2, cVar.f22438a.f21626a.a());
                this.f22427a.add(i2, cVar);
                this.f22429c.put(cVar.f22439b, cVar);
                if (this.i) {
                    a(cVar);
                    if (this.f22428b.isEmpty()) {
                        this.g.add(cVar);
                    } else {
                        b(cVar);
                    }
                }
            }
        }
        return c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        while (true) {
            i2--;
            if (i2 >= i) {
                c remove = this.f22427a.remove(i2);
                this.f22429c.remove(remove.f22439b);
                b(i2, -remove.f22438a.f21626a.a());
                remove.e = true;
                if (this.i) {
                    c(remove);
                }
            } else {
                return;
            }
        }
    }

    public final void a(p pVar) {
        c cVar = (c) com.google.android.exoplayer2.util.a.b(this.f22428b.remove(pVar));
        cVar.f22438a.a(pVar);
        cVar.f22440c.remove(((m) pVar).f21622a);
        if (!this.f22428b.isEmpty()) {
            d();
        }
        c(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(c cVar) {
        n nVar = cVar.f22438a;
        r.b ___lambda_y_lqbolzdaxpu0tvuep5_1xknlchs = new r.b() { // from class: com.google.android.exoplayer2._$$Lambda$y$LqbOLZDaxpu0TVuEP5_1xKNlChs
            @Override // com.google.android.exoplayer2.source.r.b
            public final void onSourceInfoRefreshed(r rVar, al alVar) {
                y.this.a(rVar, alVar);
            }
        };
        a aVar = new a(cVar);
        this.f.put(cVar, new b(nVar, ___lambda_y_lqbolzdaxpu0tvuep5_1xknlchs, aVar));
        nVar.a(af.b(), (s) aVar);
        nVar.a(af.b(), (com.google.android.exoplayer2.drm.c) aVar);
        nVar.a(___lambda_y_lqbolzdaxpu0tvuep5_1xknlchs, this.j);
    }

    public final void b() {
        for (b bVar : this.f.values()) {
            try {
                bVar.f22435a.c(bVar.f22436b);
            } catch (RuntimeException e) {
                com.google.android.exoplayer2.util.n.b("MediaSourceList", "Failed to release child source.", e);
            }
            bVar.f22435a.a(bVar.f22437c);
        }
        this.f.clear();
        this.g.clear();
        this.i = false;
    }

    public final al c() {
        if (this.f22427a.isEmpty()) {
            return al.f20674b;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f22427a.size(); i2++) {
            c cVar = this.f22427a.get(i2);
            cVar.f22441d = i;
            i += cVar.f22438a.f21626a.a();
        }
        return new ae(this.f22427a, this.h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        Iterator<c> it2 = this.g.iterator();
        while (it2.hasNext()) {
            c next = it2.next();
            if (next.f22440c.isEmpty()) {
                b(next);
                it2.remove();
            }
        }
    }
}
