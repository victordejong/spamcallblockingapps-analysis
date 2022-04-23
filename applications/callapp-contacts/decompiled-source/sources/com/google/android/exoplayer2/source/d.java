package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.s;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/d.class */
public abstract class d<T> extends com.google.android.exoplayer2.source.a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<T, b> f21598a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private Handler f21599b;

    /* renamed from: c  reason: collision with root package name */
    private v f21600c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/d$a.class */
    final class a implements c, s {

        /* renamed from: b  reason: collision with root package name */
        private final T f21602b;

        /* renamed from: c  reason: collision with root package name */
        private s.a f21603c;

        /* renamed from: d  reason: collision with root package name */
        private c.a f21604d;

        public a(T t) {
            this.f21603c = d.this.a((r.a) null);
            this.f21604d = d.this.b((r.a) null);
            this.f21602b = t;
        }

        private o a(o oVar) {
            long a2 = d.this.a(oVar.f);
            long a3 = d.this.a(oVar.g);
            return (a2 == oVar.f && a3 == oVar.g) ? oVar : new o(oVar.f21633a, oVar.f21634b, oVar.f21635c, oVar.f21636d, oVar.e, a2, a3);
        }

        private boolean f(int i, r.a aVar) {
            r.a aVar2;
            if (aVar != null) {
                r.a a2 = d.this.a((d) this.f21602b, aVar);
                aVar2 = a2;
                if (a2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            if (this.f21603c.f21641a != i || !af.a(this.f21603c.f21642b, aVar2)) {
                this.f21603c = d.this.a(i, aVar2);
            }
            if (this.f21604d.f20881a == i && af.a(this.f21604d.f20882b, aVar2)) {
                return true;
            }
            this.f21604d = d.this.b(i, aVar2);
            return true;
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void a(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f21604d.a();
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void a(int i, r.a aVar, l lVar, o oVar) {
            if (f(i, aVar)) {
                this.f21603c.a(lVar, a(oVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void a(int i, r.a aVar, l lVar, o oVar, IOException iOException, boolean z) {
            if (f(i, aVar)) {
                this.f21603c.a(lVar, a(oVar), iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void a(int i, r.a aVar, o oVar) {
            if (f(i, aVar)) {
                this.f21603c.a(a(oVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void a(int i, r.a aVar, Exception exc) {
            if (f(i, aVar)) {
                this.f21604d.a(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void b(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f21604d.b();
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void b(int i, r.a aVar, l lVar, o oVar) {
            if (f(i, aVar)) {
                this.f21603c.b(lVar, a(oVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void c(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f21604d.c();
            }
        }

        @Override // com.google.android.exoplayer2.source.s
        public final void c(int i, r.a aVar, l lVar, o oVar) {
            if (f(i, aVar)) {
                this.f21603c.c(lVar, a(oVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void d(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f21604d.d();
            }
        }

        @Override // com.google.android.exoplayer2.drm.c
        public final void e(int i, r.a aVar) {
            if (f(i, aVar)) {
                this.f21604d.e();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/d$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final r f21605a;

        /* renamed from: b  reason: collision with root package name */
        public final r.b f21606b;

        /* renamed from: c  reason: collision with root package name */
        public final s f21607c;

        public b(r rVar, r.b bVar, s sVar) {
            this.f21605a = rVar;
            this.f21606b = bVar;
            this.f21607c = sVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void b(Object obj, r rVar, al alVar) {
        a((d<T>) obj, rVar, alVar);
    }

    protected long a(long j) {
        return j;
    }

    protected r.a a(T t, r.a aVar) {
        return aVar;
    }

    @Override // com.google.android.exoplayer2.source.a
    protected final void a() {
        for (b bVar : this.f21598a.values()) {
            bVar.f21605a.a(bVar.f21606b);
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    public void a(v vVar) {
        this.f21600c = vVar;
        this.f21599b = af.a();
    }

    public final void a(T t) {
        b bVar = (b) com.google.android.exoplayer2.util.a.b(this.f21598a.remove(t));
        bVar.f21605a.c(bVar.f21606b);
        bVar.f21605a.a(bVar.f21607c);
    }

    public final void a(final T t, r rVar) {
        com.google.android.exoplayer2.util.a.a(!this.f21598a.containsKey(t));
        r.b ___lambda_d_dp8hrkx5rpnq96cwcicj9del_x8 = new r.b() { // from class: com.google.android.exoplayer2.source._$$Lambda$d$DP8hRkX5RPNq96cWCicj9DEL_X8
            @Override // com.google.android.exoplayer2.source.r.b
            public final void onSourceInfoRefreshed(r rVar2, al alVar) {
                d.this.b(t, rVar2, alVar);
            }
        };
        a aVar = new a(t);
        this.f21598a.put(t, new b(rVar, ___lambda_d_dp8hrkx5rpnq96cwcicj9del_x8, aVar));
        rVar.a((Handler) com.google.android.exoplayer2.util.a.b(this.f21599b), (s) aVar);
        rVar.a((Handler) com.google.android.exoplayer2.util.a.b(this.f21599b), (c) aVar);
        rVar.a(___lambda_d_dp8hrkx5rpnq96cwcicj9del_x8, this.f21600c);
        if (!d()) {
            rVar.b(___lambda_d_dp8hrkx5rpnq96cwcicj9del_x8);
        }
    }

    protected abstract void a(T t, r rVar, al alVar);

    @Override // com.google.android.exoplayer2.source.a
    protected final void b() {
        for (b bVar : this.f21598a.values()) {
            bVar.f21605a.b(bVar.f21606b);
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    public void c() {
        for (b bVar : this.f21598a.values()) {
            bVar.f21605a.c(bVar.f21606b);
            bVar.f21605a.a(bVar.f21607c);
        }
        this.f21598a.clear();
    }

    @Override // com.google.android.exoplayer2.source.r
    public void f() throws IOException {
        for (b bVar : this.f21598a.values()) {
            bVar.f21605a.f();
        }
    }
}
