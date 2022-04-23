package com.bumptech.glide.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.d;
import com.bumptech.glide.e;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.g.a.b;
import com.bumptech.glide.g.f;
import com.bumptech.glide.h;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.load.engine.u;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/j.class */
public final class j<R> implements i, d, i {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f7311a = Log.isLoggable("Request", 2);
    private int A;
    private int B;
    private boolean C;
    private RuntimeException D;

    /* renamed from: b  reason: collision with root package name */
    private final String f7312b;

    /* renamed from: c  reason: collision with root package name */
    private final b f7313c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f7314d;
    private final g<R> e;
    private final e f;
    private final Context g;
    private final e h;
    private final Object i;
    private final Class<R> j;
    private final com.bumptech.glide.e.a<?> k;
    private final int l;
    private final int m;
    private final h n;
    private final com.bumptech.glide.e.a.j<R> o;
    private final List<g<R>> p;
    private final com.bumptech.glide.e.b.e<? super R> q;
    private final Executor r;
    private u<R> s;
    private k.d t;
    private long u;
    private volatile k v;
    private int w;
    private Drawable x;
    private Drawable y;
    private Drawable z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/j$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f7315a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f7316b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f7317c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f7318d = 4;
        public static final int e = 5;
        public static final int f = 6;
        private static final /* synthetic */ int[] g = {1, 2, 3, 4, 5, 6};

        private a(String str, int i) {
        }
    }

    private j(Context context, e eVar, Object obj, Object obj2, Class<R> cls, com.bumptech.glide.e.a<?> aVar, int i, int i2, h hVar, com.bumptech.glide.e.a.j<R> jVar, g<R> gVar, List<g<R>> list, e eVar2, k kVar, com.bumptech.glide.e.b.e<? super R> eVar3, Executor executor) {
        this.f7312b = f7311a ? String.valueOf(super.hashCode()) : null;
        this.f7313c = new b.a();
        this.f7314d = obj;
        this.g = context;
        this.h = eVar;
        this.i = obj2;
        this.j = cls;
        this.k = aVar;
        this.l = i;
        this.m = i2;
        this.n = hVar;
        this.o = jVar;
        this.e = gVar;
        this.p = list;
        this.f = eVar2;
        this.v = kVar;
        this.q = eVar3;
        this.r = executor;
        this.w = a.f7315a;
        if (this.D == null && eVar.g.a(d.b.class)) {
            this.D = new RuntimeException("Glide request origin trace");
        }
    }

    private static int a(int i, float f) {
        return i == Integer.MIN_VALUE ? i : Math.round(f * i);
    }

    private Drawable a(int i) {
        return com.bumptech.glide.load.resource.b.a.a(this.h, i, this.k.getTheme() != null ? this.k.getTheme() : this.g.getTheme());
    }

    public static <R> j<R> a(Context context, e eVar, Object obj, Object obj2, Class<R> cls, com.bumptech.glide.e.a<?> aVar, int i, int i2, h hVar, com.bumptech.glide.e.a.j<R> jVar, g<R> gVar, List<g<R>> list, e eVar2, k kVar, com.bumptech.glide.e.b.e<? super R> eVar3, Executor executor) {
        return new j<>(context, eVar, obj, obj2, cls, aVar, i, i2, hVar, jVar, gVar, list, eVar2, kVar, eVar3, executor);
    }

    private void a(GlideException glideException, int i) {
        this.f7313c.a();
        synchronized (this.f7314d) {
            glideException.f7427a = this.D;
            int i2 = this.h.h;
            if (i2 <= i) {
                Log.w("Glide", "Load failed for " + this.i + " with size [" + this.A + "x" + this.B + "]", glideException);
                if (i2 <= 4) {
                    glideException.a();
                }
            }
            this.t = null;
            this.w = a.e;
            this.C = true;
            List<g<R>> list = this.p;
            if (list != null) {
                for (g<R> gVar : list) {
                    gVar.a(glideException, this.i, this.o, o());
                }
            }
            g<R> gVar2 = this.e;
            if (gVar2 != null) {
                gVar2.a(glideException, this.i, this.o, o());
            }
            l();
            this.C = false;
            p();
        }
    }

    /* JADX WARN: Finally extract failed */
    private void a(u<R> uVar, R r, com.bumptech.glide.load.a aVar) {
        boolean o = o();
        this.w = a.f7318d;
        this.s = uVar;
        if (this.h.h <= 3) {
            StringBuilder sb = new StringBuilder("Finished loading ");
            sb.append(r.getClass().getSimpleName());
            sb.append(" from ");
            sb.append(aVar);
            sb.append(" for ");
            sb.append(this.i);
            sb.append(" with size [");
            sb.append(this.A);
            sb.append("x");
            sb.append(this.B);
            sb.append("] in ");
            sb.append(f.a(this.u));
            sb.append(" ms");
        }
        this.C = true;
        try {
            List<g<R>> list = this.p;
            if (list != null) {
                for (g<R> gVar : list) {
                    gVar.a(r, this.i, this.o, aVar, o);
                }
            }
            g<R> gVar2 = this.e;
            if (gVar2 != null) {
                gVar2.a(r, this.i, this.o, aVar, o);
            }
            this.o.a(r, this.q.a(aVar));
            this.C = false;
            e eVar = this.f;
            if (eVar != null) {
                eVar.e(this);
            }
        } catch (Throwable th) {
            this.C = false;
            throw th;
        }
    }

    private void a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" this: ");
        sb.append(this.f7312b);
    }

    private void i() {
        if (this.C) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    private Drawable j() {
        if (this.y == null) {
            Drawable placeholderDrawable = this.k.getPlaceholderDrawable();
            this.y = placeholderDrawable;
            if (placeholderDrawable == null && this.k.getPlaceholderId() > 0) {
                this.y = a(this.k.getPlaceholderId());
            }
        }
        return this.y;
    }

    private Drawable k() {
        if (this.z == null) {
            Drawable fallbackDrawable = this.k.getFallbackDrawable();
            this.z = fallbackDrawable;
            if (fallbackDrawable == null && this.k.getFallbackId() > 0) {
                this.z = a(this.k.getFallbackId());
            }
        }
        return this.z;
    }

    private void l() {
        if (n()) {
            Drawable drawable = null;
            if (this.i == null) {
                drawable = k();
            }
            Drawable drawable2 = drawable;
            if (drawable == null) {
                if (this.x == null) {
                    Drawable errorPlaceholder = this.k.getErrorPlaceholder();
                    this.x = errorPlaceholder;
                    if (errorPlaceholder == null && this.k.getErrorId() > 0) {
                        this.x = a(this.k.getErrorId());
                    }
                }
                drawable2 = this.x;
            }
            Drawable drawable3 = drawable2;
            if (drawable2 == null) {
                drawable3 = j();
            }
            this.o.a(drawable3);
        }
    }

    private boolean m() {
        e eVar = this.f;
        return eVar == null || eVar.b(this);
    }

    private boolean n() {
        e eVar = this.f;
        return eVar == null || eVar.c(this);
    }

    private boolean o() {
        e eVar = this.f;
        return eVar == null || !eVar.h().g();
    }

    private void p() {
        e eVar = this.f;
        if (eVar != null) {
            eVar.f(this);
        }
    }

    @Override // com.bumptech.glide.e.d
    public final void a() {
        synchronized (this.f7314d) {
            i();
            this.f7313c.a();
            this.u = f.a();
            if (this.i == null) {
                if (com.bumptech.glide.g.k.a(this.l, this.m)) {
                    this.A = this.l;
                    this.B = this.m;
                }
                a(new GlideException("Received null model"), k() == null ? 5 : 3);
            } else if (this.w == a.f7316b) {
                throw new IllegalArgumentException("Cannot restart a running request");
            } else if (this.w == a.f7318d) {
                a((u<?>) this.s, com.bumptech.glide.load.a.MEMORY_CACHE);
            } else {
                this.w = a.f7317c;
                if (com.bumptech.glide.g.k.a(this.l, this.m)) {
                    a(this.l, this.m);
                } else {
                    this.o.a(this);
                }
                if ((this.w == a.f7316b || this.w == a.f7317c) && n()) {
                    this.o.c(j());
                }
                if (f7311a) {
                    a("finished run method in " + f.a(this.u));
                }
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 34, insn: 0x01b8: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r34 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:51:0x01b8 */
    @Override // com.bumptech.glide.e.a.i
    public final void a(int i, int i2) {
        this.f7313c.a();
        Object obj = this.f7314d;
        synchronized (obj) {
            try {
                try {
                    boolean z = f7311a;
                    if (z) {
                        a("Got onSizeReady in " + f.a(this.u));
                    }
                    if (this.w == a.f7317c) {
                        this.w = a.f7316b;
                        float sizeMultiplier = this.k.getSizeMultiplier();
                        this.A = a(i, sizeMultiplier);
                        this.B = a(i2, sizeMultiplier);
                        if (z) {
                            a("finished setup for calling load in " + f.a(this.u));
                        }
                        try {
                            this.t = this.v.a(this.h, this.i, this.k.getSignature(), this.A, this.B, this.k.getResourceClass(), this.j, this.n, this.k.getDiskCacheStrategy(), this.k.getTransformations(), this.k.isTransformationRequired(), this.k.isScaleOnlyOrNoTransform(), this.k.getOptions(), this.k.isMemoryCacheable(), this.k.getUseUnlimitedSourceGeneratorsPool(), this.k.getUseAnimationPool(), this.k.getOnlyRetrieveFromCache(), this, this.r);
                            if (this.w != a.f7316b) {
                                this.t = null;
                            }
                            if (z) {
                                StringBuilder sb = new StringBuilder("finished onSizeReady in ");
                                sb.append(f.a(this.u));
                                a(sb.toString());
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // com.bumptech.glide.e.i
    public final void a(GlideException glideException) {
        a(glideException, 5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
        if (r6 == null) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bf, code lost:
        com.bumptech.glide.load.engine.k.a(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c3, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x016b, code lost:
        if (r6 == null) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x016e, code lost:
        com.bumptech.glide.load.engine.k.a(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0172, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.e.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.bumptech.glide.load.engine.u<?> r6, com.bumptech.glide.load.a r7) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.j.a(com.bumptech.glide.load.engine.u, com.bumptech.glide.load.a):void");
    }

    @Override // com.bumptech.glide.e.d
    public final boolean a(d dVar) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        com.bumptech.glide.e.a<?> aVar;
        h hVar;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        com.bumptech.glide.e.a<?> aVar2;
        h hVar2;
        int size2;
        if (!(dVar instanceof j)) {
            return false;
        }
        synchronized (this.f7314d) {
            i = this.l;
            i2 = this.m;
            obj = this.i;
            cls = this.j;
            aVar = this.k;
            hVar = this.n;
            List<g<R>> list = this.p;
            size = list != null ? list.size() : 0;
        }
        j jVar = (j) dVar;
        synchronized (jVar.f7314d) {
            i3 = jVar.l;
            i4 = jVar.m;
            obj2 = jVar.i;
            cls2 = jVar.j;
            aVar2 = jVar.k;
            hVar2 = jVar.n;
            List<g<R>> list2 = jVar.p;
            size2 = list2 != null ? list2.size() : 0;
        }
        return i == i3 && i2 == i4 && com.bumptech.glide.g.k.b(obj, obj2) && cls.equals(cls2) && aVar.equals(aVar2) && hVar == hVar2 && size == size2;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009e A[Catch: all -> 0x00bd, TRY_ENTER, TryCatch #2 {, blocks: (B:4:0x0007, B:7:0x001d, B:9:0x001f, B:12:0x003f, B:13:0x0047, B:18:0x0057, B:20:0x0065, B:22:0x006f, B:24:0x0077, B:26:0x0082, B:33:0x009e, B:35:0x00ac, B:36:0x00b3, B:15:0x0049, B:16:0x0055), top: B:46:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    @Override // com.bumptech.glide.e.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.j.b():void");
    }

    @Override // com.bumptech.glide.e.d
    public final void c() {
        synchronized (this.f7314d) {
            if (d()) {
                b();
            }
        }
    }

    @Override // com.bumptech.glide.e.d
    public final boolean d() {
        boolean z;
        synchronized (this.f7314d) {
            if (!(this.w == a.f7316b || this.w == a.f7317c)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.d
    public final boolean e() {
        boolean z;
        synchronized (this.f7314d) {
            z = this.w == a.f7318d;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.d
    public final boolean f() {
        boolean z;
        synchronized (this.f7314d) {
            z = this.w == a.f;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.d, com.bumptech.glide.e.e
    public final boolean g() {
        boolean z;
        synchronized (this.f7314d) {
            z = this.w == a.f7318d;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.i
    public final Object h() {
        this.f7313c.a();
        return this.f7314d;
    }
}
