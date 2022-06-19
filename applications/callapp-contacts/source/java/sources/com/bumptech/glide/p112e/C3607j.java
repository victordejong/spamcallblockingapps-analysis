package com.bumptech.glide.p112e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.C3556d;
import com.bumptech.glide.C3571e;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.C3788k;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.p123b.C3841a;
import com.bumptech.glide.p112e.p113a.AbstractC3584i;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p114b.AbstractC3597e;
import com.bumptech.glide.p116g.C3638f;
import com.bumptech.glide.p116g.C3644k;
import com.bumptech.glide.p116g.p117a.AbstractC3629b;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.bumptech.glide.e.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/j.class */
public final class C3607j<R> implements AbstractC3584i, AbstractC3599d, AbstractC3606i {

    /* renamed from: a */
    private static final boolean f13675a = Log.isLoggable("Request", 2);

    /* renamed from: A */
    private int f13676A;

    /* renamed from: B */
    private int f13677B;

    /* renamed from: C */
    private boolean f13678C;

    /* renamed from: D */
    private RuntimeException f13679D;

    /* renamed from: b */
    private final String f13680b;

    /* renamed from: c */
    private final AbstractC3629b f13681c;

    /* renamed from: d */
    private final Object f13682d;

    /* renamed from: e */
    private final AbstractC3604g<R> f13683e;

    /* renamed from: f */
    private final AbstractC3600e f13684f;

    /* renamed from: g */
    private final Context f13685g;

    /* renamed from: h */
    private final C3571e f13686h;

    /* renamed from: i */
    private final Object f13687i;

    /* renamed from: j */
    private final Class<R> f13688j;

    /* renamed from: k */
    private final AbstractC3572a<?> f13689k;

    /* renamed from: l */
    private final int f13690l;

    /* renamed from: m */
    private final int f13691m;

    /* renamed from: n */
    private final EnumC3646h f13692n;

    /* renamed from: o */
    private final AbstractC3585j<R> f13693o;

    /* renamed from: p */
    private final List<AbstractC3604g<R>> f13694p;

    /* renamed from: q */
    private final AbstractC3597e<? super R> f13695q;

    /* renamed from: r */
    private final Executor f13696r;

    /* renamed from: s */
    private AbstractC3811u<R> f13697s;

    /* renamed from: t */
    private C3788k.C3794d f13698t;

    /* renamed from: u */
    private long f13699u;

    /* renamed from: v */
    private volatile C3788k f13700v;

    /* renamed from: w */
    private int f13701w;

    /* renamed from: x */
    private Drawable f13702x;

    /* renamed from: y */
    private Drawable f13703y;

    /* renamed from: z */
    private Drawable f13704z;

    /* renamed from: com.bumptech.glide.e.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/j$a.class */
    public static final class EnumC3608a extends Enum<EnumC3608a> {

        /* renamed from: a */
        public static final int f13705a = 1;

        /* renamed from: b */
        public static final int f13706b = 2;

        /* renamed from: c */
        public static final int f13707c = 3;

        /* renamed from: d */
        public static final int f13708d = 4;

        /* renamed from: e */
        public static final int f13709e = 5;

        /* renamed from: f */
        public static final int f13710f = 6;

        /* renamed from: g */
        private static final /* synthetic */ int[] f13711g = {1, 2, 3, 4, 5, 6};

        private EnumC3608a(String str, int i) {
            super(str, i);
        }
    }

    private C3607j(Context context, C3571e c3571e, Object obj, Object obj2, Class<R> cls, AbstractC3572a<?> abstractC3572a, int i, int i2, EnumC3646h enumC3646h, AbstractC3585j<R> abstractC3585j, AbstractC3604g<R> abstractC3604g, List<AbstractC3604g<R>> list, AbstractC3600e abstractC3600e, C3788k c3788k, AbstractC3597e<? super R> abstractC3597e, Executor executor) {
        this.f13680b = f13675a ? String.valueOf(super.hashCode()) : null;
        this.f13681c = new AbstractC3629b.C3631a();
        this.f13682d = obj;
        this.f13685g = context;
        this.f13686h = c3571e;
        this.f13687i = obj2;
        this.f13688j = cls;
        this.f13689k = abstractC3572a;
        this.f13690l = i;
        this.f13691m = i2;
        this.f13692n = enumC3646h;
        this.f13693o = abstractC3585j;
        this.f13683e = abstractC3604g;
        this.f13694p = list;
        this.f13684f = abstractC3600e;
        this.f13700v = c3788k;
        this.f13695q = abstractC3597e;
        this.f13696r = executor;
        this.f13701w = EnumC3608a.f13705a;
        if (this.f13679D != null || !c3571e.f13586g.m37620a(C3556d.C3560b.class)) {
            return;
        }
        this.f13679D = new RuntimeException("Glide request origin trace");
    }

    /* renamed from: a */
    private static int m37652a(int i, float f) {
        return i == Integer.MIN_VALUE ? i : Math.round(f * i);
    }

    /* renamed from: a */
    private Drawable m37653a(int i) {
        return C3841a.m37314a(this.f13686h, i, this.f13689k.getTheme() != null ? this.f13689k.getTheme() : this.f13685g.getTheme());
    }

    /* renamed from: a */
    public static <R> C3607j<R> m37650a(Context context, C3571e c3571e, Object obj, Object obj2, Class<R> cls, AbstractC3572a<?> abstractC3572a, int i, int i2, EnumC3646h enumC3646h, AbstractC3585j<R> abstractC3585j, AbstractC3604g<R> abstractC3604g, List<AbstractC3604g<R>> list, AbstractC3600e abstractC3600e, C3788k c3788k, AbstractC3597e<? super R> abstractC3597e, Executor executor) {
        return new C3607j<>(context, c3571e, obj, obj2, cls, abstractC3572a, i, i2, enumC3646h, abstractC3585j, abstractC3604g, list, abstractC3600e, c3788k, abstractC3597e, executor);
    }

    /* renamed from: a */
    private void m37648a(GlideException glideException, int i) {
        this.f13681c.mo37604a();
        synchronized (this.f13682d) {
            glideException.f13853a = this.f13679D;
            int i2 = this.f13686h.f13587h;
            if (i2 <= i) {
                Log.w("Glide", "Load failed for " + this.f13687i + " with size [" + this.f13676A + "x" + this.f13677B + "]", glideException);
                if (i2 <= 4) {
                    glideException.m37508a();
                }
            }
            this.f13698t = null;
            this.f13701w = EnumC3608a.f13709e;
            this.f13678C = true;
            List<AbstractC3604g<R>> list = this.f13694p;
            if (list != null) {
                for (AbstractC3604g<R> abstractC3604g : list) {
                    abstractC3604g.mo26384a(glideException, this.f13687i, this.f13693o, m37637o());
                }
            }
            AbstractC3604g<R> abstractC3604g2 = this.f13683e;
            if (abstractC3604g2 != null) {
                abstractC3604g2.mo26384a(glideException, this.f13687i, this.f13693o, m37637o());
            }
            m37640l();
            this.f13678C = false;
            m37636p();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private void m37646a(AbstractC3811u<R> abstractC3811u, R r, EnumC3658a enumC3658a) {
        boolean m37637o = m37637o();
        this.f13701w = EnumC3608a.f13708d;
        this.f13697s = abstractC3811u;
        if (this.f13686h.f13587h <= 3) {
            StringBuilder sb = new StringBuilder("Finished loading ");
            sb.append(r.getClass().getSimpleName());
            sb.append(" from ");
            sb.append(enumC3658a);
            sb.append(" for ");
            sb.append(this.f13687i);
            sb.append(" with size [");
            sb.append(this.f13676A);
            sb.append("x");
            sb.append(this.f13677B);
            sb.append("] in ");
            sb.append(C3638f.m37592a(this.f13699u));
            sb.append(" ms");
        }
        this.f13678C = true;
        try {
            List<AbstractC3604g<R>> list = this.f13694p;
            if (list != null) {
                for (AbstractC3604g<R> abstractC3604g : list) {
                    abstractC3604g.mo26383a(r, this.f13687i, this.f13693o, enumC3658a, m37637o);
                }
            }
            AbstractC3604g<R> abstractC3604g2 = this.f13683e;
            if (abstractC3604g2 != null) {
                abstractC3604g2.mo26383a(r, this.f13687i, this.f13693o, enumC3658a, m37637o);
            }
            this.f13693o.mo27008a(r, this.f13695q.mo37661a(enumC3658a));
            this.f13678C = false;
            AbstractC3600e abstractC3600e = this.f13684f;
            if (abstractC3600e == null) {
                return;
            }
            abstractC3600e.mo37625e(this);
        } catch (Throwable th) {
            this.f13678C = false;
            throw th;
        }
    }

    /* renamed from: a */
    private void m37645a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" this: ");
        sb.append(this.f13680b);
    }

    /* renamed from: i */
    private void m37643i() {
        if (!this.f13678C) {
            return;
        }
        throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
    }

    /* renamed from: j */
    private Drawable m37642j() {
        if (this.f13703y == null) {
            Drawable placeholderDrawable = this.f13689k.getPlaceholderDrawable();
            this.f13703y = placeholderDrawable;
            if (placeholderDrawable == null && this.f13689k.getPlaceholderId() > 0) {
                this.f13703y = m37653a(this.f13689k.getPlaceholderId());
            }
        }
        return this.f13703y;
    }

    /* renamed from: k */
    private Drawable m37641k() {
        if (this.f13704z == null) {
            Drawable fallbackDrawable = this.f13689k.getFallbackDrawable();
            this.f13704z = fallbackDrawable;
            if (fallbackDrawable == null && this.f13689k.getFallbackId() > 0) {
                this.f13704z = m37653a(this.f13689k.getFallbackId());
            }
        }
        return this.f13704z;
    }

    /* renamed from: l */
    private void m37640l() {
        if (!m37638n()) {
            return;
        }
        Drawable drawable = null;
        if (this.f13687i == null) {
            drawable = m37641k();
        }
        Drawable drawable2 = drawable;
        if (drawable == null) {
            if (this.f13702x == null) {
                Drawable errorPlaceholder = this.f13689k.getErrorPlaceholder();
                this.f13702x = errorPlaceholder;
                if (errorPlaceholder == null && this.f13689k.getErrorId() > 0) {
                    this.f13702x = m37653a(this.f13689k.getErrorId());
                }
            }
            drawable2 = this.f13702x;
        }
        Drawable drawable3 = drawable2;
        if (drawable2 == null) {
            drawable3 = m37642j();
        }
        this.f13693o.mo27009a(drawable3);
    }

    /* renamed from: m */
    private boolean m37639m() {
        AbstractC3600e abstractC3600e = this.f13684f;
        return abstractC3600e == null || abstractC3600e.mo37631b(this);
    }

    /* renamed from: n */
    private boolean m37638n() {
        AbstractC3600e abstractC3600e = this.f13684f;
        return abstractC3600e == null || abstractC3600e.mo37629c(this);
    }

    /* renamed from: o */
    private boolean m37637o() {
        AbstractC3600e abstractC3600e = this.f13684f;
        return abstractC3600e == null || !abstractC3600e.mo37621h().mo37622g();
    }

    /* renamed from: p */
    private void m37636p() {
        AbstractC3600e abstractC3600e = this.f13684f;
        if (abstractC3600e != null) {
            abstractC3600e.mo37623f(this);
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: a */
    public final void mo37635a() {
        synchronized (this.f13682d) {
            m37643i();
            this.f13681c.mo37604a();
            this.f13699u = C3638f.m37593a();
            if (this.f13687i == null) {
                if (C3644k.m37581a(this.f13690l, this.f13691m)) {
                    this.f13676A = this.f13690l;
                    this.f13677B = this.f13691m;
                }
                m37648a(new GlideException("Received null model"), m37641k() == null ? 5 : 3);
            } else if (this.f13701w == EnumC3608a.f13706b) {
                throw new IllegalArgumentException("Cannot restart a running request");
            } else {
                if (this.f13701w == EnumC3608a.f13708d) {
                    mo37647a((AbstractC3811u<?>) this.f13697s, EnumC3658a.MEMORY_CACHE);
                    return;
                }
                this.f13701w = EnumC3608a.f13707c;
                if (C3644k.m37581a(this.f13690l, this.f13691m)) {
                    mo37651a(this.f13690l, this.f13691m);
                } else {
                    this.f13693o.mo37660a(this);
                }
                if ((this.f13701w == EnumC3608a.f13706b || this.f13701w == EnumC3608a.f13707c) && m37638n()) {
                    this.f13693o.mo37657c(m37642j());
                }
                if (f13675a) {
                    m37645a("finished run method in " + C3638f.m37592a(this.f13699u));
                }
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 34, insn: 0x01b8: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r34 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:51:0x01b8 */
    @Override // com.bumptech.glide.p112e.p113a.AbstractC3584i
    /* renamed from: a */
    public final void mo37651a(int i, int i2) {
        Object obj;
        this.f13681c.mo37604a();
        Object obj2 = this.f13682d;
        synchronized (obj2) {
            try {
                try {
                    boolean z = f13675a;
                    if (z) {
                        m37645a("Got onSizeReady in " + C3638f.m37592a(this.f13699u));
                    }
                    if (this.f13701w != EnumC3608a.f13707c) {
                        return;
                    }
                    this.f13701w = EnumC3608a.f13706b;
                    float sizeMultiplier = this.f13689k.getSizeMultiplier();
                    this.f13676A = m37652a(i, sizeMultiplier);
                    this.f13677B = m37652a(i2, sizeMultiplier);
                    if (z) {
                        m37645a("finished setup for calling load in " + C3638f.m37592a(this.f13699u));
                    }
                    try {
                        this.f13698t = this.f13700v.m37368a(this.f13686h, this.f13687i, this.f13689k.getSignature(), this.f13676A, this.f13677B, this.f13689k.getResourceClass(), this.f13688j, this.f13692n, this.f13689k.getDiskCacheStrategy(), this.f13689k.getTransformations(), this.f13689k.isTransformationRequired(), this.f13689k.isScaleOnlyOrNoTransform(), this.f13689k.getOptions(), this.f13689k.isMemoryCacheable(), this.f13689k.getUseUnlimitedSourceGeneratorsPool(), this.f13689k.getUseAnimationPool(), this.f13689k.getOnlyRetrieveFromCache(), this, this.f13696r);
                        if (this.f13701w != EnumC3608a.f13706b) {
                            this.f13698t = null;
                        }
                        if (z) {
                            StringBuilder sb = new StringBuilder("finished onSizeReady in ");
                            sb.append(C3638f.m37592a(this.f13699u));
                            m37645a(sb.toString());
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    obj2 = obj;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3606i
    /* renamed from: a */
    public final void mo37649a(GlideException glideException) {
        m37648a(glideException, 5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
        if (r6 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bf, code lost:
        com.bumptech.glide.load.engine.C3788k.m37367a(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c3, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x016b, code lost:
        if (r6 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x016e, code lost:
        com.bumptech.glide.load.engine.C3788k.m37367a(r6);
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
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.p112e.AbstractC3606i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo37647a(com.bumptech.glide.load.engine.AbstractC3811u<?> r6, com.bumptech.glide.load.EnumC3658a r7) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3607j.mo37647a(com.bumptech.glide.load.engine.u, com.bumptech.glide.load.a):void");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: a */
    public final boolean mo37634a(AbstractC3599d abstractC3599d) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        AbstractC3572a<?> abstractC3572a;
        EnumC3646h enumC3646h;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        AbstractC3572a<?> abstractC3572a2;
        EnumC3646h enumC3646h2;
        int size2;
        if (!(abstractC3599d instanceof C3607j)) {
            return false;
        }
        synchronized (this.f13682d) {
            i = this.f13690l;
            i2 = this.f13691m;
            obj = this.f13687i;
            cls = this.f13688j;
            abstractC3572a = this.f13689k;
            enumC3646h = this.f13692n;
            List<AbstractC3604g<R>> list = this.f13694p;
            size = list != null ? list.size() : 0;
        }
        C3607j c3607j = (C3607j) abstractC3599d;
        synchronized (c3607j.f13682d) {
            i3 = c3607j.f13690l;
            i4 = c3607j.f13691m;
            obj2 = c3607j.f13687i;
            cls2 = c3607j.f13688j;
            abstractC3572a2 = c3607j.f13689k;
            enumC3646h2 = c3607j.f13692n;
            List<AbstractC3604g<R>> list2 = c3607j.f13694p;
            size2 = list2 != null ? list2.size() : 0;
        }
        return i == i3 && i2 == i4 && C3644k.m37569b(obj, obj2) && cls.equals(cls2) && abstractC3572a.equals(abstractC3572a2) && enumC3646h == enumC3646h2 && size == size2;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009e A[Catch: all -> 0x00bd, TRY_ENTER, TryCatch #2 {, blocks: (B:4:0x0007, B:7:0x001d, B:9:0x001f, B:12:0x003f, B:13:0x0047, B:18:0x0057, B:20:0x0065, B:22:0x006f, B:24:0x0077, B:26:0x0082, B:33:0x009e, B:35:0x00ac, B:36:0x00b3, B:15:0x0049, B:16:0x0055), top: B:46:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo37632b() {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3607j.mo37632b():void");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: c */
    public final void mo37630c() {
        synchronized (this.f13682d) {
            if (mo37628d()) {
                mo37632b();
            }
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: d */
    public final boolean mo37628d() {
        boolean z;
        synchronized (this.f13682d) {
            if (this.f13701w != EnumC3608a.f13706b && this.f13701w != EnumC3608a.f13707c) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: e */
    public final boolean mo37626e() {
        boolean z;
        synchronized (this.f13682d) {
            z = this.f13701w == EnumC3608a.f13708d;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: f */
    public final boolean mo37624f() {
        boolean z;
        synchronized (this.f13682d) {
            z = this.f13701w == EnumC3608a.f13710f;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d, com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: g */
    public final boolean mo37622g() {
        boolean z;
        synchronized (this.f13682d) {
            z = this.f13701w == EnumC3608a.f13708d;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3606i
    /* renamed from: h */
    public final Object mo37644h() {
        this.f13681c.mo37604a();
        return this.f13682d;
    }
}
