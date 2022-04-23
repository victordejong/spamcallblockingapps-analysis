package com.bumptech.glide.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.f.f;
import com.bumptech.glide.g.a.d;
import com.bumptech.glide.g.b.h;
import com.bumptech.glide.g.b.j;
import com.bumptech.glide.load.b.b;
import com.bumptech.glide.load.b.c;
import com.bumptech.glide.load.b.i;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.g;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Queue;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a.class */
public final class a<A, T, Z, R> implements b, h, e {

    /* renamed from: a  reason: collision with root package name */
    private static final Queue<a<?, ?, ?, ?>> f3418a = com.bumptech.glide.i.h.a(0);
    private k<?> A;
    private c.C0100c B;
    private long C;
    private int D;

    /* renamed from: b  reason: collision with root package name */
    private final String f3419b = String.valueOf(hashCode());
    private com.bumptech.glide.load.c c;
    private Drawable d;
    private int e;
    private int f;
    private int g;
    private Context h;
    private g<Z> i;
    private f<A, T, Z, R> j;
    private c k;
    private A l;
    private Class<R> m;
    private boolean n;
    private int o;
    private j<R> p;
    private d<? super A, R> q;
    private float r;
    private c s;
    private d<R> t;
    private int u;
    private int v;
    private b w;
    private Drawable x;
    private Drawable y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.bumptech.glide.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a$a.class */
    public static final class EnumC0092a extends Enum<EnumC0092a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3420a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f3421b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        public static final int f = 6;
        public static final int g = 7;
        public static final int h = 8;
        private static final /* synthetic */ int[] i = {f3420a, f3421b, c, d, e, f, g, h};
    }

    private a() {
    }

    public static <A, T, Z, R> a<A, T, Z, R> a(f<A, T, Z, R> fVar, A a2, com.bumptech.glide.load.c cVar, Context context, int i, j<R> jVar, float f, Drawable drawable, int i2, Drawable drawable2, int i3, Drawable drawable3, int i4, d<? super A, R> dVar, c cVar2, c cVar3, g<Z> gVar, Class<R> cls, boolean z, d<R> dVar2, int i5, int i6, b bVar) {
        a<?, ?, ?, ?> poll = f3418a.poll();
        a<A, T, Z, R> aVar = (a<A, T, Z, R>) poll;
        if (poll == null) {
            aVar = new a<>();
        }
        ((a) aVar).j = fVar;
        ((a) aVar).l = a2;
        ((a) aVar).c = cVar;
        ((a) aVar).d = drawable3;
        ((a) aVar).e = i4;
        ((a) aVar).h = context.getApplicationContext();
        ((a) aVar).o = i;
        ((a) aVar).p = jVar;
        ((a) aVar).r = f;
        ((a) aVar).x = drawable;
        ((a) aVar).f = i2;
        ((a) aVar).y = drawable2;
        ((a) aVar).g = i3;
        ((a) aVar).q = dVar;
        ((a) aVar).k = cVar2;
        ((a) aVar).s = cVar3;
        ((a) aVar).i = gVar;
        ((a) aVar).m = cls;
        ((a) aVar).n = z;
        ((a) aVar).t = dVar2;
        ((a) aVar).u = i5;
        ((a) aVar).v = i6;
        ((a) aVar).w = bVar;
        ((a) aVar).D = EnumC0092a.f3420a;
        if (a2 != null) {
            a("ModelLoader", fVar.e(), "try .using(ModelLoader)");
            a("Transcoder", fVar.f(), "try .as*(Class).transcode(ResourceTranscoder)");
            a("Transformation", gVar, "try .transform(UnitTransformation.get())");
            if (bVar.e) {
                a("SourceEncoder", fVar.c(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
            } else {
                a("SourceDecoder", fVar.b(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
            }
            if (bVar.e || bVar.f) {
                a("CacheDecoder", fVar.a(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
            }
            if (bVar.f) {
                a("Encoder", fVar.d(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
            }
        }
        return aVar;
    }

    private void a(String str) {
        Log.v("GenericRequest", str + " this: " + this.f3419b);
    }

    private static void a(String str, Object obj, String str2) {
        if (obj == null) {
            throw new NullPointerException(str + " must not be null, " + str2);
        }
    }

    private void b(k kVar) {
        com.bumptech.glide.i.h.a();
        if (kVar instanceof com.bumptech.glide.load.b.h) {
            ((com.bumptech.glide.load.b.h) kVar).e();
            this.A = null;
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    private Drawable i() {
        if (this.x == null && this.f > 0) {
            this.x = this.h.getResources().getDrawable(this.f);
        }
        return this.x;
    }

    private boolean j() {
        return this.k == null || this.k.b(this);
    }

    private boolean k() {
        return this.k == null || !this.k.i();
    }

    @Override // com.bumptech.glide.g.b
    public final void a() {
        this.j = null;
        this.l = null;
        this.h = null;
        this.p = null;
        this.x = null;
        this.y = null;
        this.d = null;
        this.q = null;
        this.k = null;
        this.i = null;
        this.t = null;
        this.z = false;
        this.B = null;
        f3418a.offer(this);
    }

    @Override // com.bumptech.glide.g.b.h
    public final void a(int i, int i2) {
        k<?> kVar;
        com.bumptech.glide.load.b.h<?> hVar;
        c.C0100c cVar;
        if (Log.isLoggable("GenericRequest", 2)) {
            a("Got onSizeReady in " + com.bumptech.glide.i.d.a(this.C));
        }
        if (this.D == EnumC0092a.c) {
            this.D = EnumC0092a.f3421b;
            int round = Math.round(this.r * i);
            int round2 = Math.round(this.r * i2);
            com.bumptech.glide.load.a.c<T> a2 = this.j.e().a(this.l, round, round2);
            if (a2 == null) {
                a(new Exception("Failed to load model: '" + this.l + "'"));
                return;
            }
            com.bumptech.glide.load.resource.e.c<Z, R> f = this.j.f();
            if (Log.isLoggable("GenericRequest", 2)) {
                a("finished setup for calling load in " + com.bumptech.glide.i.d.a(this.C));
            }
            this.z = true;
            c cVar2 = this.s;
            com.bumptech.glide.load.c cVar3 = this.c;
            f<A, T, Z, R> fVar = this.j;
            g<Z> gVar = this.i;
            int i3 = this.o;
            boolean z = this.n;
            b bVar = this.w;
            com.bumptech.glide.i.h.a();
            long a3 = com.bumptech.glide.i.d.a();
            com.bumptech.glide.load.b.f fVar2 = new com.bumptech.glide.load.b.f(a2.b(), cVar3, round, round2, fVar.a(), fVar.b(), gVar, fVar.d(), f, fVar.c());
            if (!z) {
                kVar = null;
            } else {
                k<?> a4 = cVar2.f3523b.a(fVar2);
                com.bumptech.glide.load.b.h hVar2 = a4 == null ? null : a4 instanceof com.bumptech.glide.load.b.h ? (com.bumptech.glide.load.b.h) a4 : new com.bumptech.glide.load.b.h(a4, true);
                kVar = hVar2;
                if (hVar2 != null) {
                    hVar2.d();
                    cVar2.d.put(fVar2, new c.e(fVar2, hVar2, cVar2.a()));
                    kVar = hVar2;
                }
            }
            if (kVar != null) {
                a(kVar);
                if (Log.isLoggable("Engine", 2)) {
                    c.a("Loaded resource from cache", a3, fVar2);
                }
                cVar = null;
            } else {
                if (!z) {
                    hVar = null;
                } else {
                    WeakReference<com.bumptech.glide.load.b.h<?>> weakReference = cVar2.d.get(fVar2);
                    if (weakReference != null) {
                        hVar = weakReference.get();
                        if (hVar != null) {
                            hVar.d();
                        } else {
                            cVar2.d.remove(fVar2);
                        }
                    } else {
                        hVar = null;
                    }
                }
                if (hVar != null) {
                    a(hVar);
                    if (Log.isLoggable("Engine", 2)) {
                        c.a("Loaded resource from active resources", a3, fVar2);
                    }
                    cVar = null;
                } else {
                    com.bumptech.glide.load.b.d dVar = cVar2.f3522a.get(fVar2);
                    if (dVar != null) {
                        dVar.a(this);
                        if (Log.isLoggable("Engine", 2)) {
                            c.a("Added to existing load", a3, fVar2);
                        }
                        cVar = new c.C0100c(this, dVar);
                    } else {
                        c.a aVar = cVar2.c;
                        com.bumptech.glide.load.b.d dVar2 = new com.bumptech.glide.load.b.d(fVar2, aVar.f3526a, aVar.f3527b, z, aVar.c);
                        i iVar = new i(dVar2, new com.bumptech.glide.load.b.a(fVar2, round, round2, a2, fVar, gVar, f, cVar2.e, bVar, i3), i3);
                        cVar2.f3522a.put(fVar2, dVar2);
                        dVar2.a(this);
                        dVar2.i = iVar;
                        dVar2.j = dVar2.d.submit(iVar);
                        if (Log.isLoggable("Engine", 2)) {
                            c.a("Started new load", a3, fVar2);
                        }
                        cVar = new c.C0100c(this, dVar2);
                    }
                }
            }
            this.B = cVar;
            this.z = this.A != null;
            if (Log.isLoggable("GenericRequest", 2)) {
                a("finished onSizeReady in " + com.bumptech.glide.i.d.a(this.C));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.g.e
    public final void a(k<?> kVar) {
        if (kVar == null) {
            a(new Exception("Expected to receive a Resource<R> with an object of " + this.m + " inside, but instead got null."));
            return;
        }
        Object a2 = kVar.a();
        if (a2 == null || !this.m.isAssignableFrom(a2.getClass())) {
            b(kVar);
            a(new Exception("Expected to receive an object of " + this.m + " but instead got " + (a2 != null ? a2.getClass() : BuildConfig.FLAVOR) + "{" + a2 + "} inside Resource{" + kVar + "}." + (a2 != null ? BuildConfig.FLAVOR : " To indicate failure return a null Resource object, rather than a Resource object containing null data.")));
            return;
        }
        if (!(this.k == null || this.k.a(this))) {
            b(kVar);
            this.D = EnumC0092a.d;
            return;
        }
        boolean k = k();
        this.D = EnumC0092a.d;
        this.A = kVar;
        if (this.q == null || !this.q.b()) {
            this.p.onResourceReady(a2, this.t.a(this.z, k));
        }
        if (this.k != null) {
            this.k.c(this);
        }
        if (Log.isLoggable("GenericRequest", 2)) {
            a("Resource ready in " + com.bumptech.glide.i.d.a(this.C) + " size: " + (kVar.b() * 9.5367431640625E-7d) + " fromCache: " + this.z);
        }
    }

    @Override // com.bumptech.glide.g.e
    public final void a(Exception exc) {
        Drawable drawable;
        if (Log.isLoggable("GenericRequest", 3)) {
            Log.d("GenericRequest", "load failed", exc);
        }
        this.D = EnumC0092a.e;
        if (this.q != null) {
            d<? super A, R> dVar = this.q;
            k();
            if (dVar.a()) {
                return;
            }
        }
        if (j()) {
            if (this.l == null) {
                if (this.d == null && this.e > 0) {
                    this.d = this.h.getResources().getDrawable(this.e);
                }
                drawable = this.d;
            } else {
                drawable = null;
            }
            Drawable drawable2 = drawable;
            if (drawable == null) {
                if (this.y == null && this.g > 0) {
                    this.y = this.h.getResources().getDrawable(this.g);
                }
                drawable2 = this.y;
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = i();
            }
            this.p.onLoadFailed(exc, drawable3);
        }
    }

    @Override // com.bumptech.glide.g.b
    public final void b() {
        this.C = com.bumptech.glide.i.d.a();
        if (this.l == null) {
            a((Exception) null);
            return;
        }
        this.D = EnumC0092a.c;
        if (com.bumptech.glide.i.h.a(this.u, this.v)) {
            a(this.u, this.v);
        } else {
            this.p.getSize(this);
        }
        if (!f()) {
            if (!(this.D == EnumC0092a.e) && j()) {
                this.p.onLoadStarted(i());
            }
        }
        if (Log.isLoggable("GenericRequest", 2)) {
            a("finished run method in " + com.bumptech.glide.i.d.a(this.C));
        }
    }

    @Override // com.bumptech.glide.g.b
    public final void c() {
        com.bumptech.glide.i.h.a();
        if (this.D != EnumC0092a.g) {
            this.D = EnumC0092a.f;
            if (this.B != null) {
                c.C0100c cVar = this.B;
                com.bumptech.glide.load.b.d dVar = cVar.f3536a;
                e eVar = cVar.f3537b;
                com.bumptech.glide.i.h.a();
                if (dVar.f || dVar.g) {
                    if (dVar.h == null) {
                        dVar.h = new HashSet();
                    }
                    dVar.h.add(eVar);
                } else {
                    dVar.f3541a.remove(eVar);
                    if (dVar.f3541a.isEmpty() && !dVar.g && !dVar.f && !dVar.e) {
                        i iVar = dVar.i;
                        iVar.f3550b = true;
                        com.bumptech.glide.load.b.a<?, ?, ?> aVar = iVar.f3549a;
                        aVar.d = true;
                        aVar.f3485b.c();
                        Future<?> future = dVar.j;
                        if (future != null) {
                            future.cancel(true);
                        }
                        dVar.e = true;
                        dVar.f3542b.a(dVar, dVar.c);
                    }
                }
                this.B = null;
            }
            if (this.A != null) {
                b(this.A);
            }
            if (j()) {
                this.p.onLoadCleared(i());
            }
            this.D = EnumC0092a.g;
        }
    }

    @Override // com.bumptech.glide.g.b
    public final void d() {
        c();
        this.D = EnumC0092a.h;
    }

    @Override // com.bumptech.glide.g.b
    public final boolean e() {
        return this.D == EnumC0092a.f3421b || this.D == EnumC0092a.c;
    }

    @Override // com.bumptech.glide.g.b
    public final boolean f() {
        return this.D == EnumC0092a.d;
    }

    @Override // com.bumptech.glide.g.b
    public final boolean g() {
        return f();
    }

    @Override // com.bumptech.glide.g.b
    public final boolean h() {
        return this.D == EnumC0092a.f || this.D == EnumC0092a.g;
    }
}
