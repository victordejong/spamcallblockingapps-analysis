package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.core.p036e.C0829c;
import com.bumptech.glide.C3571e;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3825k;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.EnumC3660c;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.data.AbstractC3675e;
import com.bumptech.glide.load.data.C3677f;
import com.bumptech.glide.load.engine.AbstractC3768f;
import com.bumptech.glide.load.engine.C3780i;
import com.bumptech.glide.load.engine.p120b.AbstractC3731a;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.bitmap.C3878l;
import com.bumptech.glide.p116g.C3638f;
import com.bumptech.glide.p116g.p117a.AbstractC3629b;
import com.bumptech.glide.p116g.p117a.C3621a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h.class */
public final class RunnableC3771h<R> implements C3621a.AbstractC3627c, AbstractC3768f.AbstractC3769a, Comparable<RunnableC3771h<?>>, Runnable {

    /* renamed from: A */
    private AbstractC3818f f14007A;

    /* renamed from: B */
    private Object f14008B;

    /* renamed from: C */
    private EnumC3658a f14009C;

    /* renamed from: D */
    private AbstractC3673d<?> f14010D;

    /* renamed from: E */
    private volatile boolean f14011E;

    /* renamed from: F */
    private boolean f14012F;

    /* renamed from: b */
    final AbstractC3776d f14014b;

    /* renamed from: e */
    C3571e f14017e;

    /* renamed from: f */
    AbstractC3818f f14018f;

    /* renamed from: g */
    EnumC3646h f14019g;

    /* renamed from: h */
    C3802n f14020h;

    /* renamed from: i */
    int f14021i;

    /* renamed from: j */
    int f14022j;

    /* renamed from: k */
    AbstractC3782j f14023k;

    /* renamed from: l */
    C3822h f14024l;

    /* renamed from: m */
    AbstractC3773a<R> f14025m;

    /* renamed from: n */
    int f14026n;

    /* renamed from: o */
    EnumC3778f f14027o;

    /* renamed from: p */
    boolean f14028p;

    /* renamed from: q */
    Object f14029q;

    /* renamed from: r */
    AbstractC3818f f14030r;

    /* renamed from: s */
    volatile AbstractC3768f f14031s;

    /* renamed from: t */
    volatile boolean f14032t;

    /* renamed from: w */
    private final C0829c.AbstractC0830a<RunnableC3771h<?>> f14035w;

    /* renamed from: x */
    private EnumC3779g f14036x;

    /* renamed from: y */
    private long f14037y;

    /* renamed from: z */
    private Thread f14038z;

    /* renamed from: a */
    final C3770g<R> f14013a = new C3770g<>();

    /* renamed from: u */
    private final List<Throwable> f14033u = new ArrayList();

    /* renamed from: v */
    private final AbstractC3629b f14034v = new AbstractC3629b.C3631a();

    /* renamed from: c */
    final C3775c<?> f14015c = new C3775c<>();

    /* renamed from: d */
    final C3777e f14016d = new C3777e();

    /* renamed from: com.bumptech.glide.load.engine.h$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$1.class */
    public static final /* synthetic */ class C37721 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14039a;

        /* renamed from: b */
        static final /* synthetic */ int[] f14040b;

        /* renamed from: c */
        static final /* synthetic */ int[] f14041c;

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
            int[] iArr = new int[EnumC3660c.values().length];
            f14041c = iArr;
            try {
                iArr[EnumC3660c.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14041c[EnumC3660c.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[EnumC3779g.values().length];
            f14040b = iArr2;
            try {
                iArr2[EnumC3779g.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14040b[EnumC3779g.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14040b[EnumC3779g.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14040b[EnumC3779g.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f14040b[EnumC3779g.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[EnumC3778f.values().length];
            f14039a = iArr3;
            try {
                iArr3[EnumC3778f.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f14039a[EnumC3778f.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f14039a[EnumC3778f.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$a.class */
    public interface AbstractC3773a<R> {
        /* renamed from: a */
        void mo37359a(GlideException glideException);

        /* renamed from: a */
        void mo37358a(RunnableC3771h<?> runnableC3771h);

        /* renamed from: a */
        void mo37357a(AbstractC3811u<R> abstractC3811u, EnumC3658a enumC3658a, boolean z);
    }

    /* renamed from: com.bumptech.glide.load.engine.h$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$b.class */
    public final class C3774b<Z> implements C3780i.AbstractC3781a<Z> {

        /* renamed from: b */
        private final EnumC3658a f14043b;

        C3774b(EnumC3658a enumC3658a) {
            RunnableC3771h.this = r4;
            this.f14043b = enumC3658a;
        }

        @Override // com.bumptech.glide.load.engine.C3780i.AbstractC3781a
        /* renamed from: a */
        public final AbstractC3811u<Z> mo37373a(AbstractC3811u<Z> abstractC3811u) {
            AbstractC3826l<Z> abstractC3826l;
            AbstractC3811u<Z> abstractC3811u2;
            EnumC3660c enumC3660c;
            AbstractC3825k<Z> abstractC3825k;
            boolean z;
            C3813w c3813w;
            RunnableC3771h runnableC3771h = RunnableC3771h.this;
            EnumC3658a enumC3658a = this.f14043b;
            Class<?> cls = abstractC3811u.mo37235b().getClass();
            if (enumC3658a != EnumC3658a.RESOURCE_DISK_CACHE) {
                abstractC3826l = runnableC3771h.f14013a.m37399c(cls);
                abstractC3811u2 = abstractC3826l.mo37209a(runnableC3771h.f14017e, abstractC3811u, runnableC3771h.f14021i, runnableC3771h.f14022j);
            } else {
                abstractC3811u2 = abstractC3811u;
                abstractC3826l = null;
            }
            if (!abstractC3811u.equals(abstractC3811u2)) {
                abstractC3811u.mo37211d();
            }
            if (runnableC3771h.f14013a.f13989a.f13582c.f13430b.m37699a(abstractC3811u2.mo37213a()) != null) {
                abstractC3825k = runnableC3771h.f14013a.f13989a.f13582c.f13430b.m37699a(abstractC3811u2.mo37213a());
                if (abstractC3825k == null) {
                    throw new Registry.NoResultEncoderAvailableException(abstractC3811u2.mo37213a());
                }
                enumC3660c = abstractC3825k.mo37214a(runnableC3771h.f14024l);
            } else {
                enumC3660c = EnumC3660c.NONE;
                abstractC3825k = null;
            }
            C3770g<R> c3770g = runnableC3771h.f14013a;
            AbstractC3818f abstractC3818f = runnableC3771h.f14030r;
            List<ModelLoader.LoadData<?>> m37400c = c3770g.m37400c();
            int size = m37400c.size();
            int i = 0;
            while (true) {
                z = false;
                if (i >= size) {
                    break;
                } else if (m37400c.get(i).sourceKey.equals(abstractC3818f)) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            C3809t<Z> c3809t = (C3809t<Z>) abstractC3811u2;
            if (runnableC3771h.f14023k.mo37370a(!z, enumC3658a, enumC3660c)) {
                if (abstractC3825k == null) {
                    throw new Registry.NoResultEncoderAvailableException(abstractC3811u2.mo37235b().getClass());
                }
                int i2 = C37721.f14041c[enumC3660c.ordinal()];
                if (i2 == 1) {
                    c3813w = new C3766d(runnableC3771h.f14030r, runnableC3771h.f14018f);
                } else if (i2 != 2) {
                    throw new IllegalArgumentException("Unknown strategy: ".concat(String.valueOf(enumC3660c)));
                } else {
                    c3813w = new C3813w(runnableC3771h.f14013a.f13989a.f13581b, runnableC3771h.f14030r, runnableC3771h.f14018f, runnableC3771h.f14021i, runnableC3771h.f14022j, abstractC3826l, cls, runnableC3771h.f14024l);
                }
                c3809t = C3809t.m37337a(abstractC3811u2);
                C3775c<?> c3775c = runnableC3771h.f14015c;
                c3775c.f14044a = c3813w;
                c3775c.f14045b = abstractC3825k;
                c3775c.f14046c = c3809t;
            }
            return c3809t;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$c.class */
    public static final class C3775c<Z> {

        /* renamed from: a */
        AbstractC3818f f14044a;

        /* renamed from: b */
        AbstractC3825k<Z> f14045b;

        /* renamed from: c */
        C3809t<Z> f14046c;

        C3775c() {
        }

        /* renamed from: a */
        final void m37382a(AbstractC3776d abstractC3776d, C3822h c3822h) {
            try {
                abstractC3776d.mo37364a().mo37434a(this.f14044a, new C3767e(this.f14045b, this.f14046c, c3822h));
            } finally {
                this.f14046c.m37336e();
            }
        }

        /* renamed from: a */
        final boolean m37383a() {
            return this.f14046c != null;
        }

        /* renamed from: b */
        final void m37381b() {
            this.f14044a = null;
            this.f14045b = null;
            this.f14046c = null;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$d.class */
    public interface AbstractC3776d {
        /* renamed from: a */
        AbstractC3731a mo37364a();
    }

    /* renamed from: com.bumptech.glide.load.engine.h$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$e.class */
    public static final class C3777e {

        /* renamed from: a */
        private boolean f14047a;

        /* renamed from: b */
        private boolean f14048b;

        /* renamed from: c */
        private boolean f14049c;

        C3777e() {
        }

        /* renamed from: b */
        private boolean m37377b(boolean z) {
            return (this.f14049c || z || this.f14048b) && this.f14047a;
        }

        /* renamed from: a */
        final boolean m37380a() {
            boolean m37377b;
            synchronized (this) {
                this.f14048b = true;
                m37377b = m37377b(false);
            }
            return m37377b;
        }

        /* renamed from: a */
        public final boolean m37379a(boolean z) {
            boolean m37377b;
            synchronized (this) {
                this.f14047a = true;
                m37377b = m37377b(false);
            }
            return m37377b;
        }

        /* renamed from: b */
        final boolean m37378b() {
            boolean m37377b;
            synchronized (this) {
                this.f14049c = true;
                m37377b = m37377b(false);
            }
            return m37377b;
        }

        /* renamed from: c */
        final void m37376c() {
            synchronized (this) {
                this.f14048b = false;
                this.f14047a = false;
                this.f14049c = false;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$f.class */
    public enum EnumC3778f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* renamed from: com.bumptech.glide.load.engine.h$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$g.class */
    public enum EnumC3779g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public RunnableC3771h(AbstractC3776d abstractC3776d, C0829c.AbstractC0830a<RunnableC3771h<?>> abstractC0830a) {
        this.f14014b = abstractC3776d;
        this.f14035w = abstractC0830a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private <Data> AbstractC3811u<R> m37396a(AbstractC3673d<?> abstractC3673d, Data data, EnumC3658a enumC3658a) throws GlideException {
        if (data == null) {
            abstractC3673d.cleanup();
            return null;
        }
        try {
            long m37593a = C3638f.m37593a();
            AbstractC3811u<R> m37393a = m37393a((RunnableC3771h<R>) data, enumC3658a, (C3808s<RunnableC3771h<R>, ResourceType, R>) ((C3808s<Data, ?, R>) this.f14013a.m37401b(data.getClass())));
            if (Log.isLoggable("DecodeJob", 2)) {
                m37392a("Decoded result ".concat(String.valueOf(m37393a)), m37593a, (String) null);
            }
            abstractC3673d.cleanup();
            return m37393a;
        } catch (Throwable th) {
            abstractC3673d.cleanup();
            throw th;
        }
    }

    /* renamed from: a */
    private <Data, ResourceType> AbstractC3811u<R> m37393a(Data data, EnumC3658a enumC3658a, C3808s<Data, ResourceType, R> c3808s) throws GlideException {
        C3822h c3822h;
        C3822h c3822h2 = this.f14024l;
        if (Build.VERSION.SDK_INT < 26) {
            c3822h = c3822h2;
        } else {
            boolean z = enumC3658a == EnumC3658a.RESOURCE_DISK_CACHE || this.f14013a.f14002n;
            Boolean bool = (Boolean) c3822h2.m37322a(C3878l.f14243e);
            if (bool != null) {
                c3822h = c3822h2;
                if (bool.booleanValue()) {
                    if (z) {
                        c3822h = c3822h2;
                    }
                }
            }
            c3822h = new C3822h();
            c3822h.m37320a(this.f14024l);
            c3822h.m37321a(C3878l.f14243e, Boolean.valueOf(z));
        }
        AbstractC3675e<Data> m37525a = this.f14017e.f13582c.f13431c.m37525a((C3677f) data);
        try {
            return c3808s.m37339a(m37525a, c3822h, this.f14021i, this.f14022j, new C3774b(enumC3658a));
        } finally {
            m37525a.mo37317b();
        }
    }

    /* renamed from: a */
    private void m37394a(AbstractC3811u<R> abstractC3811u, EnumC3658a enumC3658a, boolean z) {
        m37385i();
        this.f14025m.mo37357a(abstractC3811u, enumC3658a, z);
    }

    /* renamed from: a */
    private void m37392a(String str, long j, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(C3638f.m37592a(j));
        sb.append(", load key: ");
        sb.append(this.f14020h);
        sb.append(str2 != null ? ", ".concat(String.valueOf(str2)) : "");
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private void m37391b(AbstractC3811u<R> abstractC3811u, EnumC3658a enumC3658a, boolean z) {
        if (abstractC3811u instanceof AbstractC3806q) {
            ((AbstractC3806q) abstractC3811u).mo37210e();
        }
        C3809t c3809t = null;
        C3809t c3809t2 = abstractC3811u;
        if (this.f14015c.m37383a()) {
            c3809t2 = C3809t.m37337a(abstractC3811u);
            c3809t = c3809t2;
        }
        m37394a(c3809t2, enumC3658a, z);
        this.f14036x = EnumC3779g.ENCODE;
        try {
            if (this.f14015c.m37383a()) {
                this.f14015c.m37382a(this.f14014b, this.f14024l);
            }
            if (c3809t != null) {
                c3809t.m37336e();
            }
            m37390d();
        } catch (Throwable th) {
            if (c3809t != null) {
                c3809t.m37336e();
            }
            throw th;
        }
    }

    /* renamed from: d */
    private void m37390d() {
        if (this.f14016d.m37380a()) {
            m37397a();
        }
    }

    /* renamed from: e */
    private void m37389e() {
        if (this.f14016d.m37378b()) {
            m37397a();
        }
    }

    /* renamed from: f */
    private AbstractC3768f m37388f() {
        int i = C37721.f14040b[this.f14036x.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new C3755c(this.f14013a, this);
            }
            if (i == 3) {
                return new C3816y(this.f14013a, this);
            }
            if (i == 4) {
                return null;
            }
            throw new IllegalStateException("Unrecognized stage: " + this.f14036x);
        }
        return new C3812v(this.f14013a, this);
    }

    /* renamed from: g */
    private void m37387g() {
        this.f14038z = Thread.currentThread();
        this.f14037y = C3638f.m37593a();
        boolean z = false;
        do {
            boolean z2 = z;
            if (!this.f14032t) {
                z2 = z;
                if (this.f14031s != null) {
                    z = this.f14031s.mo37331a();
                    z2 = z;
                    if (!z) {
                        this.f14036x = m37395a(this.f14036x);
                        this.f14031s = m37388f();
                    }
                }
            }
            if ((this.f14036x != EnumC3779g.FINISHED && !this.f14032t) || z2) {
                return;
            }
            m37386h();
            return;
        } while (this.f14036x != EnumC3779g.SOURCE);
        mo37326c();
    }

    /* renamed from: h */
    private void m37386h() {
        m37385i();
        this.f14025m.mo37359a(new GlideException("Failed to load resource", new ArrayList(this.f14033u)));
        m37389e();
    }

    /* renamed from: i */
    private void m37385i() {
        Throwable th;
        this.f14034v.mo37604a();
        if (!this.f14011E) {
            this.f14011E = true;
            return;
        }
        if (this.f14033u.isEmpty()) {
            th = null;
        } else {
            List<Throwable> list = this.f14033u;
            th = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    /* renamed from: j */
    private void m37384j() {
        if (Log.isLoggable("DecodeJob", 2)) {
            m37392a("Retrieved data", this.f14037y, "data: " + this.f14008B + ", cache key: " + this.f14030r + ", fetcher: " + this.f14010D);
        }
        AbstractC3811u<R> abstractC3811u = null;
        try {
            abstractC3811u = m37396a(this.f14010D, (AbstractC3673d<?>) this.f14008B, this.f14009C);
        } catch (GlideException e) {
            e.m37507a(this.f14007A, this.f14009C, null);
            this.f14033u.add(e);
        }
        if (abstractC3811u != null) {
            m37391b(abstractC3811u, this.f14009C, this.f14012F);
        } else {
            m37387g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
        return com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.FINISHED;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g m37395a(com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g r6) {
        /*
            r5 = this;
        L0:
            int[] r0 = com.bumptech.glide.load.engine.RunnableC3771h.C37721.f14040b
            r1 = r6
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L5c
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L4d
            r0 = r7
            r1 = 3
            if (r0 == r1) goto L49
            r0 = r7
            r1 = 4
            if (r0 == r1) goto L49
            r0 = r7
            r1 = 5
            if (r0 != r1) goto L37
            r0 = r5
            com.bumptech.glide.load.engine.j r0 = r0.f14023k
            boolean r0 = r0.mo37372a()
            if (r0 == 0) goto L30
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.RESOURCE_CACHE
            return r0
        L30:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.RESOURCE_CACHE
            r6 = r0
            goto L0
        L37:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Unrecognized stage: "
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        L49:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.FINISHED
            return r0
        L4d:
            r0 = r5
            boolean r0 = r0.f14028p
            if (r0 == 0) goto L58
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.FINISHED
            return r0
        L58:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.SOURCE
            return r0
        L5c:
            r0 = r5
            com.bumptech.glide.load.engine.j r0 = r0.f14023k
            boolean r0 = r0.mo37369b()
            if (r0 == 0) goto L6a
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.DATA_CACHE
            return r0
        L6a:
            com.bumptech.glide.load.engine.h$g r0 = com.bumptech.glide.load.engine.RunnableC3771h.EnumC3779g.DATA_CACHE
            r6 = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.RunnableC3771h.m37395a(com.bumptech.glide.load.engine.h$g):com.bumptech.glide.load.engine.h$g");
    }

    /* renamed from: a */
    public final void m37397a() {
        this.f14016d.m37376c();
        this.f14015c.m37381b();
        this.f14013a.m37405a();
        this.f14011E = false;
        this.f14017e = null;
        this.f14018f = null;
        this.f14024l = null;
        this.f14019g = null;
        this.f14020h = null;
        this.f14025m = null;
        this.f14036x = null;
        this.f14031s = null;
        this.f14038z = null;
        this.f14030r = null;
        this.f14008B = null;
        this.f14009C = null;
        this.f14010D = null;
        this.f14037y = 0L;
        this.f14032t = false;
        this.f14029q = null;
        this.f14033u.clear();
        this.f14035w.mo37606a(this);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f.AbstractC3769a
    /* renamed from: a */
    public final void mo37330a(AbstractC3818f abstractC3818f, Exception exc, AbstractC3673d<?> abstractC3673d, EnumC3658a enumC3658a) {
        abstractC3673d.cleanup();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.m37507a(abstractC3818f, enumC3658a, abstractC3673d.getDataClass());
        this.f14033u.add(glideException);
        if (Thread.currentThread() == this.f14038z) {
            m37387g();
            return;
        }
        this.f14027o = EnumC3778f.SWITCH_TO_SOURCE_SERVICE;
        this.f14025m.mo37358a((RunnableC3771h<?>) this);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f.AbstractC3769a
    /* renamed from: a */
    public final void mo37329a(AbstractC3818f abstractC3818f, Object obj, AbstractC3673d<?> abstractC3673d, EnumC3658a enumC3658a, AbstractC3818f abstractC3818f2) {
        this.f14030r = abstractC3818f;
        this.f14008B = obj;
        this.f14010D = abstractC3673d;
        this.f14009C = enumC3658a;
        this.f14007A = abstractC3818f2;
        boolean z = false;
        if (abstractC3818f != this.f14013a.m37398d().get(0)) {
            z = true;
        }
        this.f14012F = z;
        if (Thread.currentThread() == this.f14038z) {
            m37384j();
            return;
        }
        this.f14027o = EnumC3778f.DECODE_DATA;
        this.f14025m.mo37358a((RunnableC3771h<?>) this);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f.AbstractC3769a
    /* renamed from: c */
    public final void mo37326c() {
        this.f14027o = EnumC3778f.SWITCH_TO_SOURCE_SERVICE;
        this.f14025m.mo37358a((RunnableC3771h<?>) this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(RunnableC3771h<?> runnableC3771h) {
        RunnableC3771h<?> runnableC3771h2 = runnableC3771h;
        int ordinal = this.f14019g.ordinal() - runnableC3771h2.f14019g.ordinal();
        int i = ordinal;
        if (ordinal == 0) {
            i = this.f14026n - runnableC3771h2.f14026n;
        }
        return i;
    }

    @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3627c
    /* renamed from: m_ */
    public final AbstractC3629b mo37335m_() {
        return this.f14034v;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3673d<?> abstractC3673d = this.f14010D;
        try {
            try {
                if (this.f14032t) {
                    m37386h();
                    if (abstractC3673d == null) {
                        return;
                    }
                    abstractC3673d.cleanup();
                    return;
                }
                int i = C37721.f14039a[this.f14027o.ordinal()];
                if (i == 1) {
                    this.f14036x = m37395a(EnumC3779g.INITIALIZE);
                    this.f14031s = m37388f();
                    m37387g();
                } else if (i == 2) {
                    m37387g();
                } else if (i != 3) {
                    throw new IllegalStateException("Unrecognized run reason: " + this.f14027o);
                } else {
                    m37384j();
                }
                if (abstractC3673d == null) {
                    return;
                }
                abstractC3673d.cleanup();
            } catch (Throwable th) {
                if (abstractC3673d != null) {
                    abstractC3673d.cleanup();
                }
                throw th;
            }
        } catch (C3730b e) {
            throw e;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                StringBuilder sb = new StringBuilder("DecodeJob threw unexpectedly, isCancelled: ");
                sb.append(this.f14032t);
                sb.append(", stage: ");
                sb.append(this.f14036x);
            }
            if (this.f14036x != EnumC3779g.ENCODE) {
                this.f14033u.add(th2);
                m37386h();
            }
            if (this.f14032t) {
                throw th2;
            }
            throw th2;
        }
    }
}
