package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.core.e.c;
import com.bumptech.glide.Registry;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.a.b;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.k;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h.class */
public final class h<R> implements a.c, f.a, Comparable<h<?>>, Runnable {
    private com.bumptech.glide.load.f A;
    private Object B;
    private com.bumptech.glide.load.a C;
    private com.bumptech.glide.load.data.d<?> D;
    private volatile boolean E;
    private boolean F;

    /* renamed from: b  reason: collision with root package name */
    final d f7536b;
    com.bumptech.glide.e e;
    com.bumptech.glide.load.f f;
    com.bumptech.glide.h g;
    n h;
    int i;
    int j;
    j k;
    com.bumptech.glide.load.h l;
    a<R> m;
    int n;
    f o;
    boolean p;
    Object q;
    com.bumptech.glide.load.f r;
    volatile com.bumptech.glide.load.engine.f s;
    volatile boolean t;
    private final c.a<h<?>> w;
    private g x;
    private long y;
    private Thread z;

    /* renamed from: a  reason: collision with root package name */
    final com.bumptech.glide.load.engine.g<R> f7535a = new com.bumptech.glide.load.engine.g<>();
    private final List<Throwable> u = new ArrayList();
    private final com.bumptech.glide.g.a.b v = new b.a();

    /* renamed from: c  reason: collision with root package name */
    final c<?> f7537c = new c<>();

    /* renamed from: d  reason: collision with root package name */
    final e f7538d = new e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.h$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7539a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f7540b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f7541c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x008a -> B:39:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008e -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:49:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0096 -> B:43:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:37:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009e -> B:51:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a2 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a6 -> B:41:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00aa -> B:35:0x007e). Please submit an issue!!! */
        static {
            int[] iArr = new int[com.bumptech.glide.load.c.values().length];
            f7541c = iArr;
            try {
                iArr[com.bumptech.glide.load.c.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7541c[com.bumptech.glide.load.c.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[g.values().length];
            f7540b = iArr2;
            try {
                iArr2[g.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7540b[g.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f7540b[g.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f7540b[g.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f7540b[g.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[f.values().length];
            f7539a = iArr3;
            try {
                iArr3[f.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f7539a[f.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f7539a[f.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$a.class */
    public interface a<R> {
        void a(GlideException glideException);

        void a(h<?> hVar);

        void a(u<R> uVar, com.bumptech.glide.load.a aVar, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$b.class */
    public final class b<Z> implements i.a<Z> {

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.load.a f7543b;

        b(com.bumptech.glide.load.a aVar) {
            this.f7543b = aVar;
        }

        @Override // com.bumptech.glide.load.engine.i.a
        public final u<Z> a(u<Z> uVar) {
            l<Z> lVar;
            u<Z> uVar2;
            com.bumptech.glide.load.c cVar;
            com.bumptech.glide.load.f fVar;
            h hVar = h.this;
            com.bumptech.glide.load.a aVar = this.f7543b;
            Class<?> cls = uVar.b().getClass();
            k<Z> kVar = null;
            if (aVar != com.bumptech.glide.load.a.RESOURCE_DISK_CACHE) {
                lVar = hVar.f7535a.c(cls);
                uVar2 = lVar.a(hVar.e, uVar, hVar.i, hVar.j);
            } else {
                uVar2 = uVar;
                lVar = null;
            }
            if (!uVar.equals(uVar2)) {
                uVar.d();
            }
            boolean z = false;
            if (hVar.f7535a.f7531a.f7263c.f7189b.a(uVar2.a()) != null) {
                kVar = hVar.f7535a.f7531a.f7263c.f7189b.a(uVar2.a());
                if (kVar != null) {
                    cVar = kVar.a(hVar.l);
                } else {
                    throw new Registry.NoResultEncoderAvailableException(uVar2.a());
                }
            } else {
                cVar = com.bumptech.glide.load.c.NONE;
            }
            com.bumptech.glide.load.engine.g<R> gVar = hVar.f7535a;
            com.bumptech.glide.load.f fVar2 = hVar.r;
            List<ModelLoader.LoadData<?>> c2 = gVar.c();
            int size = c2.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                } else if (c2.get(i).sourceKey.equals(fVar2)) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            t<Z> tVar = uVar2;
            if (hVar.k.a(!z, aVar, cVar)) {
                if (kVar != null) {
                    int i2 = AnonymousClass1.f7541c[cVar.ordinal()];
                    if (i2 == 1) {
                        fVar = new com.bumptech.glide.load.engine.d(hVar.r, hVar.f);
                    } else if (i2 == 2) {
                        fVar = new w(hVar.f7535a.f7531a.f7262b, hVar.r, hVar.f, hVar.i, hVar.j, lVar, cls, hVar.l);
                    } else {
                        throw new IllegalArgumentException("Unknown strategy: ".concat(String.valueOf(cVar)));
                    }
                    t<Z> a2 = t.a(uVar2);
                    c<?> cVar2 = hVar.f7537c;
                    cVar2.f7544a = fVar;
                    cVar2.f7545b = kVar;
                    cVar2.f7546c = a2;
                    tVar = a2;
                } else {
                    throw new Registry.NoResultEncoderAvailableException(uVar2.b().getClass());
                }
            }
            return tVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$c.class */
    public static final class c<Z> {

        /* renamed from: a  reason: collision with root package name */
        com.bumptech.glide.load.f f7544a;

        /* renamed from: b  reason: collision with root package name */
        k<Z> f7545b;

        /* renamed from: c  reason: collision with root package name */
        t<Z> f7546c;

        c() {
        }

        final void a(d dVar, com.bumptech.glide.load.h hVar) {
            try {
                dVar.a().a(this.f7544a, new com.bumptech.glide.load.engine.e(this.f7545b, this.f7546c, hVar));
            } finally {
                this.f7546c.e();
            }
        }

        final boolean a() {
            return this.f7546c != null;
        }

        final void b() {
            this.f7544a = null;
            this.f7545b = null;
            this.f7546c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$d.class */
    public interface d {
        com.bumptech.glide.load.engine.b.a a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private boolean f7547a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f7548b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f7549c;

        e() {
        }

        private boolean b(boolean z) {
            return (this.f7549c || z || this.f7548b) && this.f7547a;
        }

        final boolean a() {
            boolean b2;
            synchronized (this) {
                this.f7548b = true;
                b2 = b(false);
            }
            return b2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(boolean z) {
            boolean b2;
            synchronized (this) {
                this.f7547a = true;
                b2 = b(false);
            }
            return b2;
        }

        final boolean b() {
            boolean b2;
            synchronized (this) {
                this.f7549c = true;
                b2 = b(false);
            }
            return b2;
        }

        final void c() {
            synchronized (this) {
                this.f7548b = false;
                this.f7547a = false;
                this.f7549c = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$f.class */
    public enum f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$g.class */
    public enum g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(d dVar, c.a<h<?>> aVar) {
        this.f7536b = dVar;
        this.w = aVar;
    }

    /* JADX WARN: Finally extract failed */
    private <Data> u<R> a(com.bumptech.glide.load.data.d<?> dVar, Data data, com.bumptech.glide.load.a aVar) throws GlideException {
        if (data == null) {
            dVar.cleanup();
            return null;
        }
        try {
            long a2 = com.bumptech.glide.g.f.a();
            u<R> a3 = a((h<R>) data, aVar, (s<h<R>, ResourceType, R>) ((s<Data, ?, R>) this.f7535a.b(data.getClass())));
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Decoded result ".concat(String.valueOf(a3)), a2, (String) null);
            }
            dVar.cleanup();
            return a3;
        } catch (Throwable th) {
            dVar.cleanup();
            throw th;
        }
    }

    private <Data, ResourceType> u<R> a(Data data, com.bumptech.glide.load.a aVar, s<Data, ResourceType, R> sVar) throws GlideException {
        com.bumptech.glide.load.h hVar;
        com.bumptech.glide.load.h hVar2 = this.l;
        if (Build.VERSION.SDK_INT < 26) {
            hVar = hVar2;
        } else {
            boolean z = aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || this.f7535a.n;
            Boolean bool = (Boolean) hVar2.a(com.bumptech.glide.load.resource.bitmap.l.e);
            if (bool != null) {
                hVar = hVar2;
                if (bool.booleanValue()) {
                    if (z) {
                        hVar = hVar2;
                    }
                }
            }
            hVar = new com.bumptech.glide.load.h();
            hVar.a(this.l);
            hVar.a(com.bumptech.glide.load.resource.bitmap.l.e, Boolean.valueOf(z));
        }
        com.bumptech.glide.load.data.e<Data> a2 = this.e.f7263c.f7190c.a((com.bumptech.glide.load.data.f) data);
        try {
            return sVar.a(a2, hVar, this.i, this.j, new b(aVar));
        } finally {
            a2.b();
        }
    }

    private void a(u<R> uVar, com.bumptech.glide.load.a aVar, boolean z) {
        i();
        this.m.a(uVar, aVar, z);
    }

    private void a(String str, long j, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(com.bumptech.glide.g.f.a(j));
        sb.append(", load key: ");
        sb.append(this.h);
        sb.append(str2 != null ? ", ".concat(String.valueOf(str2)) : "");
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(u<R> uVar, com.bumptech.glide.load.a aVar, boolean z) {
        if (uVar instanceof q) {
            ((q) uVar).e();
        }
        t tVar = 0;
        u<R> uVar2 = uVar;
        if (this.f7537c.a()) {
            uVar2 = t.a(uVar);
            tVar = uVar2;
        }
        a(uVar2, aVar, z);
        this.x = g.ENCODE;
        try {
            if (this.f7537c.a()) {
                this.f7537c.a(this.f7536b, this.l);
            }
            if (tVar != 0) {
                tVar.e();
            }
            d();
        } catch (Throwable th) {
            if (tVar != 0) {
                tVar.e();
            }
            throw th;
        }
    }

    private void d() {
        if (this.f7538d.a()) {
            a();
        }
    }

    private void e() {
        if (this.f7538d.b()) {
            a();
        }
    }

    private com.bumptech.glide.load.engine.f f() {
        int i = AnonymousClass1.f7540b[this.x.ordinal()];
        if (i == 1) {
            return new v(this.f7535a, this);
        }
        if (i == 2) {
            return new com.bumptech.glide.load.engine.c(this.f7535a, this);
        }
        if (i == 3) {
            return new y(this.f7535a, this);
        }
        if (i == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.x);
    }

    private void g() {
        this.z = Thread.currentThread();
        this.y = com.bumptech.glide.g.f.a();
        boolean z = false;
        do {
            boolean z2 = z;
            if (!this.t) {
                z2 = z;
                if (this.s != null) {
                    z = this.s.a();
                    z2 = z;
                    if (!z) {
                        this.x = a(this.x);
                        this.s = f();
                    }
                }
            }
            if ((this.x == g.FINISHED || this.t) && !z2) {
                h();
                return;
            }
            return;
        } while (this.x != g.SOURCE);
        c();
    }

    private void h() {
        i();
        this.m.a(new GlideException("Failed to load resource", new ArrayList(this.u)));
        e();
    }

    private void i() {
        Throwable th;
        this.v.a();
        if (this.E) {
            if (this.u.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.u;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.E = true;
    }

    private void j() {
        if (Log.isLoggable("DecodeJob", 2)) {
            long j = this.y;
            a("Retrieved data", j, "data: " + this.B + ", cache key: " + this.r + ", fetcher: " + this.D);
        }
        u<R> uVar = null;
        try {
            uVar = a(this.D, (com.bumptech.glide.load.data.d<?>) this.B, this.C);
        } catch (GlideException e2) {
            e2.a(this.A, this.C, null);
            this.u.add(e2);
        }
        if (uVar != null) {
            b(uVar, this.C, this.F);
        } else {
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
        return com.bumptech.glide.load.engine.h.g.FINISHED;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.engine.h.g a(com.bumptech.glide.load.engine.h.g r6) {
        /*
            r5 = this;
        L_0x0000:
            int[] r0 = com.bumptech.glide.load.engine.h.AnonymousClass1.f7540b
            r1 = r6
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x005c
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x004d
            r0 = r7
            r1 = 3
            if (r0 == r1) goto L_0x0049
            r0 = r7
            r1 = 4
            if (r0 == r1) goto L_0x0049
            r0 = r7
            r1 = 5
            if (r0 != r1) goto L_0x0037
            r0 = r5
            com.bumptech.glide.load.engine.j r0 = r0.k
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x0030
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.h.g.RESOURCE_CACHE
            return r0
        L_0x0030:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.h.g.RESOURCE_CACHE
            r6 = r0
            goto L_0x0000
        L_0x0037:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Unrecognized stage: "
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        L_0x0049:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.h.g.FINISHED
            return r0
        L_0x004d:
            r0 = r5
            boolean r0 = r0.p
            if (r0 == 0) goto L_0x0058
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.h.g.FINISHED
            return r0
        L_0x0058:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.h.g.SOURCE
            return r0
        L_0x005c:
            r0 = r5
            com.bumptech.glide.load.engine.j r0 = r0.k
            boolean r0 = r0.b()
            if (r0 == 0) goto L_0x006a
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.h.g.DATA_CACHE
            return r0
        L_0x006a:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.h.g.DATA_CACHE
            r6 = r0
            goto L_0x0000
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.h.a(com.bumptech.glide.load.engine.h$g):com.bumptech.glide.load.engine.h$g");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f7538d.c();
        this.f7537c.b();
        this.f7535a.a();
        this.E = false;
        this.e = null;
        this.f = null;
        this.l = null;
        this.g = null;
        this.h = null;
        this.m = null;
        this.x = null;
        this.s = null;
        this.z = null;
        this.r = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.y = 0L;
        this.t = false;
        this.q = null;
        this.u.clear();
        this.w.a(this);
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public final void a(com.bumptech.glide.load.f fVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar) {
        dVar.cleanup();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.a(fVar, aVar, dVar.getDataClass());
        this.u.add(glideException);
        if (Thread.currentThread() != this.z) {
            this.o = f.SWITCH_TO_SOURCE_SERVICE;
            this.m.a((h<?>) this);
            return;
        }
        g();
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public final void a(com.bumptech.glide.load.f fVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.f fVar2) {
        this.r = fVar;
        this.B = obj;
        this.D = dVar;
        this.C = aVar;
        this.A = fVar2;
        boolean z = false;
        if (fVar != this.f7535a.d().get(0)) {
            z = true;
        }
        this.F = z;
        if (Thread.currentThread() != this.z) {
            this.o = f.DECODE_DATA;
            this.m.a((h<?>) this);
            return;
        }
        j();
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public final void c() {
        this.o = f.SWITCH_TO_SOURCE_SERVICE;
        this.m.a((h<?>) this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(h<?> hVar) {
        h<?> hVar2 = hVar;
        int ordinal = this.g.ordinal() - hVar2.g.ordinal();
        int i = ordinal;
        if (ordinal == 0) {
            i = this.n - hVar2.n;
        }
        return i;
    }

    @Override // com.bumptech.glide.g.a.a.c
    public final com.bumptech.glide.g.a.b m_() {
        return this.v;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.load.data.d<?> dVar = this.D;
        try {
            try {
                if (this.t) {
                    h();
                    if (dVar != null) {
                        dVar.cleanup();
                        return;
                    }
                    return;
                }
                int i = AnonymousClass1.f7539a[this.o.ordinal()];
                if (i == 1) {
                    this.x = a(g.INITIALIZE);
                    this.s = f();
                    g();
                } else if (i == 2) {
                    g();
                } else if (i == 3) {
                    j();
                } else {
                    throw new IllegalStateException("Unrecognized run reason: " + this.o);
                }
                if (dVar != null) {
                    dVar.cleanup();
                }
            } catch (Throwable th) {
                if (dVar != null) {
                    dVar.cleanup();
                }
                throw th;
            }
        } catch (com.bumptech.glide.load.engine.b e2) {
            throw e2;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                StringBuilder sb = new StringBuilder("DecodeJob threw unexpectedly, isCancelled: ");
                sb.append(this.t);
                sb.append(", stage: ");
                sb.append(this.x);
            }
            if (this.x != g.ENCODE) {
                this.u.add(th2);
                h();
            }
            if (!this.t) {
                throw th2;
            }
            throw th2;
        }
    }
}
