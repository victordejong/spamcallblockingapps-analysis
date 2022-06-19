package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import com.bumptech.glide.C3965e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.AbstractC4147g;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.C4000d;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.data.AbstractC4009e;
import com.bumptech.glide.load.engine.AbstractC4049e;
import com.bumptech.glide.load.engine.C4052g;
import com.bumptech.glide.load.engine.p210y.AbstractC4114a;
import com.bumptech.glide.load.resource.bitmap.C4304l;
import com.bumptech.glide.p223p.C4377f;
import com.bumptech.glide.p223p.p224l.AbstractC4394c;
import com.bumptech.glide.p223p.p224l.C4385a;
import com.bumptech.glide.p223p.p224l.C4393b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p020b.p041h.p049k.AbstractC1594e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob.class */
public class DecodeJob<R> implements AbstractC4049e.AbstractC4050a, Runnable, Comparable<DecodeJob<?>>, C4385a.AbstractC4391f {

    /* renamed from: A */
    private AbstractC3999c f12683A;

    /* renamed from: B */
    private AbstractC3999c f12684B;

    /* renamed from: C */
    private Object f12685C;

    /* renamed from: D */
    private DataSource f12686D;

    /* renamed from: E */
    private AbstractC4007d<?> f12687E;

    /* renamed from: F */
    private volatile AbstractC4049e f12688F;

    /* renamed from: G */
    private volatile boolean f12689G;

    /* renamed from: H */
    private volatile boolean f12690H;

    /* renamed from: I */
    private boolean f12691I;

    /* renamed from: g */
    private final AbstractC4037e f12695g;

    /* renamed from: h */
    private final AbstractC1594e<DecodeJob<?>> f12696h;

    /* renamed from: k */
    private C3965e f12699k;

    /* renamed from: l */
    private AbstractC3999c f12700l;

    /* renamed from: m */
    private Priority f12701m;

    /* renamed from: n */
    private C4074l f12702n;

    /* renamed from: o */
    private int f12703o;

    /* renamed from: p */
    private int f12704p;

    /* renamed from: q */
    private AbstractC4054h f12705q;

    /* renamed from: r */
    private C4032e f12706r;

    /* renamed from: s */
    private AbstractC4034b<R> f12707s;

    /* renamed from: t */
    private int f12708t;

    /* renamed from: u */
    private Stage f12709u;

    /* renamed from: v */
    private RunReason f12710v;

    /* renamed from: w */
    private long f12711w;

    /* renamed from: x */
    private boolean f12712x;

    /* renamed from: y */
    private Object f12713y;

    /* renamed from: z */
    private Thread f12714z;

    /* renamed from: d */
    private final C4051f<R> f12692d = new C4051f<>();

    /* renamed from: e */
    private final List<Throwable> f12693e = new ArrayList();

    /* renamed from: f */
    private final AbstractC4394c f12694f = AbstractC4394c.m22678a();

    /* renamed from: i */
    private final C4036d<?> f12697i = new C4036d<>();

    /* renamed from: j */
    private final C4038f f12698j = new C4038f();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$RunReason.class */
    public enum RunReason {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$Stage.class */
    public enum Stage {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$a.class */
    public static /* synthetic */ class C4033a {

        /* renamed from: a */
        static final /* synthetic */ int[] f12726a;

        /* renamed from: b */
        static final /* synthetic */ int[] f12727b;

        /* renamed from: c */
        static final /* synthetic */ int[] f12728c;

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
            int[] iArr = new int[EncodeStrategy.values().length];
            f12728c = iArr;
            try {
                iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12728c[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[Stage.values().length];
            f12727b = iArr2;
            try {
                iArr2[Stage.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12727b[Stage.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12727b[Stage.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12727b[Stage.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12727b[Stage.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[RunReason.values().length];
            f12726a = iArr3;
            try {
                iArr3[RunReason.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f12726a[RunReason.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f12726a[RunReason.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$b.class */
    public interface AbstractC4034b<R> {
        /* renamed from: a */
        void mo23358a(GlideException glideException);

        /* renamed from: c */
        void mo23356c(AbstractC4083s<R> abstractC4083s, DataSource dataSource, boolean z);

        /* renamed from: d */
        void mo23355d(DecodeJob<?> decodeJob);
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$c.class */
    public final class C4035c<Z> implements C4052g.AbstractC4053a<Z> {

        /* renamed from: a */
        private final DataSource f12729a;

        C4035c(DataSource dataSource) {
            DecodeJob.this = r4;
            this.f12729a = dataSource;
        }

        @Override // com.bumptech.glide.load.engine.C4052g.AbstractC4053a
        /* renamed from: a */
        public AbstractC4083s<Z> mo23377a(AbstractC4083s<Z> abstractC4083s) {
            return DecodeJob.this.m23431x(this.f12729a, abstractC4083s);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$d.class */
    public static class C4036d<Z> {

        /* renamed from: a */
        private AbstractC3999c f12731a;

        /* renamed from: b */
        private AbstractC4147g<Z> f12732b;

        /* renamed from: c */
        private C4081r<Z> f12733c;

        C4036d() {
        }

        /* renamed from: a */
        void m23428a() {
            this.f12731a = null;
            this.f12732b = null;
            this.f12733c = null;
        }

        /* renamed from: b */
        void m23427b(AbstractC4037e abstractC4037e, C4032e c4032e) {
            C4393b.m22682a("DecodeJob.encode");
            try {
                abstractC4037e.mo23360a().mo23220a(this.f12731a, new C4048d(this.f12732b, this.f12733c, c4032e));
            } finally {
                this.f12733c.m23317h();
                C4393b.m22679d();
            }
        }

        /* renamed from: c */
        boolean m23426c() {
            return this.f12733c != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: d */
        <X> void m23425d(AbstractC3999c abstractC3999c, AbstractC4147g<X> abstractC4147g, C4081r<X> c4081r) {
            this.f12731a = abstractC3999c;
            this.f12732b = abstractC4147g;
            this.f12733c = c4081r;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$e.class */
    public interface AbstractC4037e {
        /* renamed from: a */
        AbstractC4114a mo23360a();
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$f.class */
    public static class C4038f {

        /* renamed from: a */
        private boolean f12734a;

        /* renamed from: b */
        private boolean f12735b;

        /* renamed from: c */
        private boolean f12736c;

        C4038f() {
        }

        /* renamed from: a */
        private boolean m23424a(boolean z) {
            return (this.f12736c || z || this.f12735b) && this.f12734a;
        }

        /* renamed from: b */
        boolean m23423b() {
            boolean m23424a;
            synchronized (this) {
                this.f12735b = true;
                m23424a = m23424a(false);
            }
            return m23424a;
        }

        /* renamed from: c */
        boolean m23422c() {
            boolean m23424a;
            synchronized (this) {
                this.f12736c = true;
                m23424a = m23424a(false);
            }
            return m23424a;
        }

        /* renamed from: d */
        boolean m23421d(boolean z) {
            boolean m23424a;
            synchronized (this) {
                this.f12734a = true;
                m23424a = m23424a(z);
            }
            return m23424a;
        }

        /* renamed from: e */
        void m23420e() {
            synchronized (this) {
                this.f12735b = false;
                this.f12734a = false;
                this.f12736c = false;
            }
        }
    }

    public DecodeJob(AbstractC4037e abstractC4037e, AbstractC1594e<DecodeJob<?>> abstractC1594e) {
        this.f12695g = abstractC4037e;
        this.f12696h = abstractC1594e;
    }

    /* renamed from: A */
    private void m23453A() {
        this.f12714z = Thread.currentThread();
        this.f12711w = C4377f.m22735b();
        boolean z = false;
        do {
            boolean z2 = z;
            if (!this.f12690H) {
                z2 = z;
                if (this.f12688F != null) {
                    z = this.f12688F.mo23311b();
                    z2 = z;
                    if (!z) {
                        this.f12709u = m23442m(this.f12709u);
                        this.f12688F = m23443l();
                    }
                }
            }
            if ((this.f12709u != Stage.FINISHED && !this.f12690H) || z2) {
                return;
            }
            m23434u();
            return;
        } while (this.f12709u != Stage.SOURCE);
        mo23309d();
    }

    /* renamed from: B */
    private <Data, ResourceType> AbstractC4083s<R> m23452B(Data data, DataSource dataSource, C4080q<Data, ResourceType, R> c4080q) {
        C4032e m23441n = m23441n(dataSource);
        AbstractC4009e<Data> m23706l = this.f12699k.m23664i().m23706l(data);
        try {
            return c4080q.m23322a(m23706l, m23441n, this.f12703o, this.f12704p, new C4035c(dataSource));
        } finally {
            m23706l.mo23073b();
        }
    }

    /* renamed from: C */
    private void m23451C() {
        int i = C4033a.f12726a[this.f12710v.ordinal()];
        if (i == 1) {
            this.f12709u = m23442m(Stage.INITIALIZE);
            this.f12688F = m23443l();
            m23453A();
        } else if (i == 2) {
            m23453A();
        } else if (i == 3) {
            m23444k();
        } else {
            throw new IllegalStateException("Unrecognized run reason: " + this.f12710v);
        }
    }

    /* renamed from: D */
    private void m23450D() {
        Throwable th;
        this.f12694f.mo22676c();
        if (!this.f12689G) {
            this.f12689G = true;
            return;
        }
        if (this.f12693e.isEmpty()) {
            th = null;
        } else {
            List<Throwable> list = this.f12693e;
            th = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    private <Data> AbstractC4083s<R> m23446i(AbstractC4007d<?> abstractC4007d, Data data, DataSource dataSource) {
        if (data == null) {
            abstractC4007d.mo23089b();
            return null;
        }
        try {
            long m22735b = C4377f.m22735b();
            AbstractC4083s<R> m23445j = m23445j(data, dataSource);
            if (Log.isLoggable("DecodeJob", 2)) {
                m23438q("Decoded result " + m23445j, m22735b);
            }
            abstractC4007d.mo23089b();
            return m23445j;
        } catch (Throwable th) {
            abstractC4007d.mo23089b();
            throw th;
        }
    }

    /* renamed from: j */
    private <Data> AbstractC4083s<R> m23445j(Data data, DataSource dataSource) {
        return m23452B(data, dataSource, (C4080q<Data, ?, R>) this.f12692d.m23397h(data.getClass()));
    }

    /* renamed from: k */
    private void m23444k() {
        if (Log.isLoggable("DecodeJob", 2)) {
            m23437r("Retrieved data", this.f12711w, "data: " + this.f12685C + ", cache key: " + this.f12683A + ", fetcher: " + this.f12687E);
        }
        AbstractC4083s<R> abstractC4083s = null;
        try {
            abstractC4083s = m23446i(this.f12687E, this.f12685C, this.f12686D);
        } catch (GlideException e) {
            e.setLoggingDetails(this.f12684B, this.f12686D);
            this.f12693e.add(e);
        }
        if (abstractC4083s != null) {
            m23435t(abstractC4083s, this.f12686D, this.f12691I);
        } else {
            m23453A();
        }
    }

    /* renamed from: l */
    private AbstractC4049e m23443l() {
        int i = C4033a.f12727b[this.f12709u.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new C4046b(this.f12692d, this);
            }
            if (i == 3) {
                return new C4088w(this.f12692d, this);
            }
            if (i == 4) {
                return null;
            }
            throw new IllegalStateException("Unrecognized stage: " + this.f12709u);
        }
        return new C4084t(this.f12692d, this);
    }

    /* renamed from: m */
    private Stage m23442m(Stage stage) {
        int i = C4033a.f12727b[stage.ordinal()];
        if (i == 1) {
            return this.f12705q.mo23376a() ? Stage.DATA_CACHE : m23442m(Stage.DATA_CACHE);
        } else if (i == 2) {
            return this.f12712x ? Stage.FINISHED : Stage.SOURCE;
        } else if (i == 3 || i == 4) {
            return Stage.FINISHED;
        } else {
            if (i == 5) {
                return this.f12705q.mo23375b() ? Stage.RESOURCE_CACHE : m23442m(Stage.RESOURCE_CACHE);
            }
            throw new IllegalArgumentException("Unrecognized stage: " + stage);
        }
    }

    /* renamed from: n */
    private C4032e m23441n(DataSource dataSource) {
        C4032e c4032e = this.f12706r;
        if (Build.VERSION.SDK_INT < 26) {
            return c4032e;
        }
        boolean z = dataSource == DataSource.RESOURCE_DISK_CACHE || this.f12692d.m23382w();
        C4000d<Boolean> c4000d = C4304l.f13259e;
        Boolean bool = (Boolean) c4032e.m23457c(c4000d);
        if (bool != null && (!bool.booleanValue() || z)) {
            return c4032e;
        }
        C4032e c4032e2 = new C4032e();
        c4032e2.m23456d(this.f12706r);
        c4032e2.m23455e(c4000d, Boolean.valueOf(z));
        return c4032e2;
    }

    /* renamed from: o */
    private int m23440o() {
        return this.f12701m.ordinal();
    }

    /* renamed from: q */
    private void m23438q(String str, long j) {
        m23437r(str, j, null);
    }

    /* renamed from: r */
    private void m23437r(String str, long j, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(C4377f.m22736a(j));
        sb.append(", load key: ");
        sb.append(this.f12702n);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sb.toString());
    }

    /* renamed from: s */
    private void m23436s(AbstractC4083s<R> abstractC4083s, DataSource dataSource, boolean z) {
        m23450D();
        this.f12707s.mo23356c(abstractC4083s, dataSource, z);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: t */
    private void m23435t(AbstractC4083s<R> abstractC4083s, DataSource dataSource, boolean z) {
        if (abstractC4083s instanceof AbstractC4078o) {
            ((AbstractC4078o) abstractC4083s).mo22888b();
        }
        C4081r c4081r = null;
        C4081r c4081r2 = abstractC4083s;
        if (this.f12697i.m23426c()) {
            c4081r2 = C4081r.m23319e(abstractC4083s);
            c4081r = c4081r2;
        }
        m23436s(c4081r2, dataSource, z);
        this.f12709u = Stage.ENCODE;
        try {
            if (this.f12697i.m23426c()) {
                this.f12697i.m23427b(this.f12695g, this.f12706r);
            }
            if (c4081r != null) {
                c4081r.m23317h();
            }
            m23433v();
        } catch (Throwable th) {
            if (c4081r != null) {
                c4081r.m23317h();
            }
            throw th;
        }
    }

    /* renamed from: u */
    private void m23434u() {
        m23450D();
        this.f12707s.mo23358a(new GlideException("Failed to load resource", new ArrayList(this.f12693e)));
        m23432w();
    }

    /* renamed from: v */
    private void m23433v() {
        if (this.f12698j.m23423b()) {
            m23429z();
        }
    }

    /* renamed from: w */
    private void m23432w() {
        if (this.f12698j.m23422c()) {
            m23429z();
        }
    }

    /* renamed from: z */
    private void m23429z() {
        this.f12698j.m23420e();
        this.f12697i.m23428a();
        this.f12692d.m23404a();
        this.f12689G = false;
        this.f12699k = null;
        this.f12700l = null;
        this.f12706r = null;
        this.f12701m = null;
        this.f12702n = null;
        this.f12707s = null;
        this.f12709u = null;
        this.f12688F = null;
        this.f12714z = null;
        this.f12683A = null;
        this.f12685C = null;
        this.f12686D = null;
        this.f12687E = null;
        this.f12711w = 0L;
        this.f12690H = false;
        this.f12713y = null;
        this.f12693e.clear();
        this.f12696h.mo22685b(this);
    }

    /* renamed from: E */
    public boolean m23449E() {
        Stage m23442m = m23442m(Stage.INITIALIZE);
        return m23442m == Stage.RESOURCE_CACHE || m23442m == Stage.DATA_CACHE;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e.AbstractC4050a
    /* renamed from: a */
    public void mo23312a(AbstractC3999c abstractC3999c, Exception exc, AbstractC4007d<?> abstractC4007d, DataSource dataSource) {
        abstractC4007d.mo23089b();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.setLoggingDetails(abstractC3999c, dataSource, abstractC4007d.mo23090a());
        this.f12693e.add(glideException);
        if (Thread.currentThread() == this.f12714z) {
            m23453A();
            return;
        }
        this.f12710v = RunReason.SWITCH_TO_SOURCE_SERVICE;
        this.f12707s.mo23355d(this);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e.AbstractC4050a
    /* renamed from: d */
    public void mo23309d() {
        this.f12710v = RunReason.SWITCH_TO_SOURCE_SERVICE;
        this.f12707s.mo23355d(this);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e.AbstractC4050a
    /* renamed from: e */
    public void mo23308e(AbstractC3999c abstractC3999c, Object obj, AbstractC4007d<?> abstractC4007d, DataSource dataSource, AbstractC3999c abstractC3999c2) {
        this.f12683A = abstractC3999c;
        this.f12685C = obj;
        this.f12687E = abstractC4007d;
        this.f12686D = dataSource;
        this.f12684B = abstractC3999c2;
        boolean z = false;
        if (abstractC3999c != this.f12692d.m23402c().get(0)) {
            z = true;
        }
        this.f12691I = z;
        if (Thread.currentThread() != this.f12714z) {
            this.f12710v = RunReason.DECODE_DATA;
            this.f12707s.mo23355d(this);
            return;
        }
        C4393b.m22682a("DecodeJob.decodeFromRetrievedData");
        try {
            m23444k();
        } finally {
            C4393b.m22679d();
        }
    }

    @Override // com.bumptech.glide.p223p.p224l.C4385a.AbstractC4391f
    /* renamed from: f */
    public AbstractC4394c mo22684f() {
        return this.f12694f;
    }

    /* renamed from: g */
    public void m23448g() {
        this.f12690H = true;
        AbstractC4049e abstractC4049e = this.f12688F;
        if (abstractC4049e != null) {
            abstractC4049e.cancel();
        }
    }

    /* renamed from: h */
    public int compareTo(DecodeJob<?> decodeJob) {
        int m23440o = m23440o() - decodeJob.m23440o();
        int i = m23440o;
        if (m23440o == 0) {
            i = this.f12708t - decodeJob.f12708t;
        }
        return i;
    }

    /* renamed from: p */
    public DecodeJob<R> m23439p(C3965e c3965e, Object obj, C4074l c4074l, AbstractC3999c abstractC3999c, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, AbstractC4054h abstractC4054h, Map<Class<?>, AbstractC4148h<?>> map, boolean z, boolean z2, boolean z3, C4032e c4032e, AbstractC4034b<R> abstractC4034b, int i3) {
        this.f12692d.m23384u(c3965e, obj, abstractC3999c, i, i2, abstractC4054h, cls, cls2, priority, c4032e, map, z, z2, this.f12695g);
        this.f12699k = c3965e;
        this.f12700l = abstractC3999c;
        this.f12701m = priority;
        this.f12702n = c4074l;
        this.f12703o = i;
        this.f12704p = i2;
        this.f12705q = abstractC4054h;
        this.f12712x = z3;
        this.f12706r = c4032e;
        this.f12707s = abstractC4034b;
        this.f12708t = i3;
        this.f12710v = RunReason.INITIALIZE;
        this.f12713y = obj;
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        C4393b.m22681b("DecodeJob#run(model=%s)", this.f12713y);
        AbstractC4007d<?> abstractC4007d = this.f12687E;
        try {
            try {
                if (this.f12690H) {
                    m23434u();
                    return;
                }
                m23451C();
                if (abstractC4007d != null) {
                    abstractC4007d.mo23089b();
                }
                C4393b.m22679d();
            } finally {
                if (abstractC4007d != null) {
                    abstractC4007d.mo23089b();
                }
                C4393b.m22679d();
            }
        } catch (CallbackException e) {
            throw e;
        } catch (Throwable th) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.f12690H + ", stage: " + this.f12709u, th);
            }
            if (this.f12709u != Stage.ENCODE) {
                this.f12693e.add(th);
                m23434u();
            }
            if (this.f12690H) {
                throw th;
            }
            throw th;
        }
    }

    /* renamed from: x */
    <Z> AbstractC4083s<Z> m23431x(DataSource dataSource, AbstractC4083s<Z> abstractC4083s) {
        AbstractC4148h<Z> abstractC4148h;
        AbstractC4083s<Z> abstractC4083s2;
        EncodeStrategy encodeStrategy;
        AbstractC4147g<Z> abstractC4147g;
        C4085u c4085u;
        Class<?> cls = abstractC4083s.get().getClass();
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            abstractC4148h = this.f12692d.m23387r(cls);
            abstractC4083s2 = abstractC4148h.mo22910b(this.f12699k, abstractC4083s, this.f12703o, this.f12704p);
        } else {
            abstractC4083s2 = abstractC4083s;
            abstractC4148h = null;
        }
        if (!abstractC4083s.equals(abstractC4083s2)) {
            abstractC4083s.mo22858a();
        }
        if (this.f12692d.m23383v(abstractC4083s2)) {
            abstractC4147g = this.f12692d.m23391n(abstractC4083s2);
            encodeStrategy = abstractC4147g.mo22949b(this.f12706r);
        } else {
            encodeStrategy = EncodeStrategy.NONE;
            abstractC4147g = null;
        }
        C4081r c4081r = abstractC4083s2;
        if (this.f12705q.mo23373d(!this.f12692d.m23381x(this.f12683A), dataSource, encodeStrategy)) {
            if (abstractC4147g == null) {
                throw new Registry.NoResultEncoderAvailableException(abstractC4083s2.get().getClass());
            }
            int i = C4033a.f12728c[encodeStrategy.ordinal()];
            if (i == 1) {
                c4085u = new C4047c(this.f12683A, this.f12700l);
            } else if (i != 2) {
                throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
            } else {
                c4085u = new C4085u(this.f12692d.m23403b(), this.f12683A, this.f12700l, this.f12703o, this.f12704p, abstractC4148h, cls, this.f12706r);
            }
            c4081r = C4081r.m23319e(abstractC4083s2);
            this.f12697i.m23425d(c4085u, abstractC4147g, c4081r);
        }
        return c4081r;
    }

    /* renamed from: y */
    public void m23430y(boolean z) {
        if (this.f12698j.m23421d(z)) {
            m23429z();
        }
    }
}
