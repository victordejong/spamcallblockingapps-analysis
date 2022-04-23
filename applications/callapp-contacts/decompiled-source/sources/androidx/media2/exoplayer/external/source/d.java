package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/d.class */
public abstract class d<T> extends androidx.media2.exoplayer.external.source.b {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<T, b> f3603a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private Handler f3604b;

    /* renamed from: c  reason: collision with root package name */
    private w f3605c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/d$a.class */
    final class a implements u {

        /* renamed from: b  reason: collision with root package name */
        private final T f3607b;

        /* renamed from: c  reason: collision with root package name */
        private u.a f3608c;

        public a(T t) {
            this.f3608c = d.this.a((t.a) null);
            this.f3607b = t;
        }

        private u.c a(u.c cVar) {
            long a2 = d.this.a(cVar.f);
            long a3 = d.this.a(cVar.g);
            return (a2 == cVar.f && a3 == cVar.g) ? cVar : new u.c(cVar.f3762a, cVar.f3763b, cVar.f3764c, cVar.f3765d, cVar.e, a2, a3);
        }

        private boolean d(int i, t.a aVar) {
            t.a aVar2;
            if (aVar != null) {
                t.a a2 = d.this.a((d) this.f3607b, aVar);
                aVar2 = a2;
                if (a2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int a3 = d.this.a((d) this.f3607b, i);
            if (this.f3608c.f3752a == a3 && ac.a(this.f3608c.f3753b, aVar2)) {
                return true;
            }
            this.f3608c = d.this.a(a3, aVar2);
            return true;
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void a(int i, t.a aVar) {
            if (d(i, aVar) && d.this.b((t.a) androidx.media2.exoplayer.external.util.a.a(this.f3608c.f3753b))) {
                this.f3608c.a();
            }
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void a(int i, t.a aVar, u.b bVar, u.c cVar) {
            if (d(i, aVar)) {
                this.f3608c.a(bVar, a(cVar));
            }
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void a(int i, t.a aVar, u.b bVar, u.c cVar, IOException iOException, boolean z) {
            if (d(i, aVar)) {
                this.f3608c.a(bVar, a(cVar), iOException, z);
            }
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void a(int i, t.a aVar, u.c cVar) {
            if (d(i, aVar)) {
                this.f3608c.a(a(cVar));
            }
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void b(int i, t.a aVar) {
            if (d(i, aVar) && d.this.b((t.a) androidx.media2.exoplayer.external.util.a.a(this.f3608c.f3753b))) {
                this.f3608c.b();
            }
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void b(int i, t.a aVar, u.b bVar, u.c cVar) {
            if (d(i, aVar)) {
                this.f3608c.b(bVar, a(cVar));
            }
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void c(int i, t.a aVar) {
            if (d(i, aVar)) {
                this.f3608c.c();
            }
        }

        @Override // androidx.media2.exoplayer.external.source.u
        public final void c(int i, t.a aVar, u.b bVar, u.c cVar) {
            if (d(i, aVar)) {
                this.f3608c.c(bVar, a(cVar));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/d$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final t f3609a;

        /* renamed from: b  reason: collision with root package name */
        public final t.b f3610b;

        /* renamed from: c  reason: collision with root package name */
        public final u f3611c;

        public b(t tVar, t.b bVar, u uVar) {
            this.f3609a = tVar;
            this.f3610b = bVar;
            this.f3611c = uVar;
        }
    }

    protected int a(T t, int i) {
        return i;
    }

    protected long a(long j) {
        return j;
    }

    protected t.a a(T t, t.a aVar) {
        return aVar;
    }

    @Override // androidx.media2.exoplayer.external.source.b
    protected void a() {
        for (b bVar : this.f3603a.values()) {
            bVar.f3609a.a(bVar.f3610b);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.b
    public void a(w wVar) {
        this.f3605c = wVar;
        this.f3604b = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(T t) {
        b bVar = (b) androidx.media2.exoplayer.external.util.a.a(this.f3603a.get(t));
        bVar.f3609a.a(bVar.f3610b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(final T t, t tVar) {
        androidx.media2.exoplayer.external.util.a.a(!this.f3603a.containsKey(t));
        t.b eVar = new t.b(this, t) { // from class: androidx.media2.exoplayer.external.source.e

            /* renamed from: a  reason: collision with root package name */
            private final d f3612a;

            /* renamed from: b  reason: collision with root package name */
            private final Object f3613b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3612a = this;
                this.f3613b = t;
            }

            @Override // androidx.media2.exoplayer.external.source.t.b
            public final void a(t tVar2, al alVar) {
                this.f3612a.b(this.f3613b, tVar2, alVar);
            }
        };
        a aVar = new a(t);
        this.f3603a.put(t, new b(tVar, eVar, aVar));
        tVar.a((Handler) androidx.media2.exoplayer.external.util.a.a(this.f3604b), aVar);
        tVar.a(eVar, this.f3605c);
        if (!d()) {
            tVar.b(eVar);
        }
    }

    protected abstract void a(T t, t tVar, al alVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.b
    public void b() {
        for (b bVar : this.f3603a.values()) {
            bVar.f3609a.b(bVar.f3610b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(T t) {
        b bVar = (b) androidx.media2.exoplayer.external.util.a.a(this.f3603a.get(t));
        bVar.f3609a.b(bVar.f3610b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void b(Object obj, t tVar, al alVar) {
        a((d<T>) obj, tVar, alVar);
    }

    protected boolean b(t.a aVar) {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.source.b
    public void c() {
        for (b bVar : this.f3603a.values()) {
            bVar.f3609a.c(bVar.f3610b);
            bVar.f3609a.a(bVar.f3611c);
        }
        this.f3603a.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(T t) {
        b bVar = (b) androidx.media2.exoplayer.external.util.a.a(this.f3603a.remove(t));
        bVar.f3609a.c(bVar.f3610b);
        bVar.f3609a.a(bVar.f3611c);
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public void f() throws IOException {
        for (b bVar : this.f3603a.values()) {
            bVar.f3609a.f();
        }
    }
}
