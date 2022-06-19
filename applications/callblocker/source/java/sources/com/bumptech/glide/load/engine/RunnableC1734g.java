package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.core.p025g.C0523e;
import com.bumptech.glide.C1391e;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.AbstractC1783j;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.EnumC1578c;
import com.bumptech.glide.load.engine.AbstractC1731e;
import com.bumptech.glide.load.engine.C1743h;
import com.bumptech.glide.load.engine.p091b.AbstractC1697a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p079a.AbstractC1477e;
import com.bumptech.glide.load.p083c.p084a.C1602l;
import com.bumptech.glide.p077h.C1452e;
import com.bumptech.glide.p077h.p078a.AbstractC1446c;
import com.bumptech.glide.p077h.p078a.C1437a;
import com.bumptech.glide.p077h.p078a.C1445b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.engine.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g.class */
public class RunnableC1734g<R> implements C1437a.AbstractC1443c, AbstractC1731e.AbstractC1732a, Comparable<RunnableC1734g<?>>, Runnable {

    /* renamed from: A */
    private EnumC1464a f5243A;

    /* renamed from: B */
    private AbstractC1475d<?> f5244B;

    /* renamed from: C */
    private volatile AbstractC1731e f5245C;

    /* renamed from: D */
    private volatile boolean f5246D;

    /* renamed from: E */
    private volatile boolean f5247E;

    /* renamed from: d */
    private final AbstractC1739d f5251d;

    /* renamed from: e */
    private final C0523e.AbstractC0524a<RunnableC1734g<?>> f5252e;

    /* renamed from: h */
    private C1391e f5255h;

    /* renamed from: i */
    private AbstractC1777f f5256i;

    /* renamed from: j */
    private EnumC1428g f5257j;

    /* renamed from: k */
    private C1762m f5258k;

    /* renamed from: l */
    private int f5259l;

    /* renamed from: m */
    private int f5260m;

    /* renamed from: n */
    private AbstractC1745i f5261n;

    /* renamed from: o */
    private C1781h f5262o;

    /* renamed from: p */
    private AbstractC1736a<R> f5263p;

    /* renamed from: q */
    private int f5264q;

    /* renamed from: r */
    private EnumC1742g f5265r;

    /* renamed from: s */
    private EnumC1741f f5266s;

    /* renamed from: t */
    private long f5267t;

    /* renamed from: u */
    private boolean f5268u;

    /* renamed from: v */
    private Object f5269v;

    /* renamed from: w */
    private Thread f5270w;

    /* renamed from: x */
    private AbstractC1777f f5271x;

    /* renamed from: y */
    private AbstractC1777f f5272y;

    /* renamed from: z */
    private Object f5273z;

    /* renamed from: a */
    private final C1733f<R> f5248a = new C1733f<>();

    /* renamed from: b */
    private final List<Throwable> f5249b = new ArrayList();

    /* renamed from: c */
    private final AbstractC1446c f5250c = AbstractC1446c.m17014a();

    /* renamed from: f */
    private final C1738c<?> f5253f = new C1738c<>();

    /* renamed from: g */
    private final C1740e f5254g = new C1740e();

    /* renamed from: com.bumptech.glide.load.engine.g$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$1.class */
    public static /* synthetic */ class C17351 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5274a;

        /* renamed from: b */
        static final /* synthetic */ int[] f5275b;

        /* renamed from: c */
        static final /* synthetic */ int[] f5276c = new int[EnumC1578c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008e -> B:41:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:35:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0096 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:47:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009e -> B:43:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a2 -> B:37:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a6 -> B:53:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00aa -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ae -> B:45:0x0014). Please submit an issue!!! */
        static {
            try {
                f5276c[EnumC1578c.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5276c[EnumC1578c.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f5275b = new int[EnumC1742g.values().length];
            try {
                f5275b[EnumC1742g.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5275b[EnumC1742g.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5275b[EnumC1742g.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5275b[EnumC1742g.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5275b[EnumC1742g.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            f5274a = new int[EnumC1741f.values().length];
            try {
                f5274a[EnumC1741f.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5274a[EnumC1741f.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f5274a[EnumC1741f.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$a.class */
    public interface AbstractC1736a<R> {
        /* renamed from: a */
        void mo16386a(GlideException glideException);

        /* renamed from: a */
        void mo16385a(RunnableC1734g<?> runnableC1734g);

        /* renamed from: a */
        void mo16384a(AbstractC1771t<R> abstractC1771t, EnumC1464a enumC1464a);
    }

    /* renamed from: com.bumptech.glide.load.engine.g$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$b.class */
    public final class C1737b<Z> implements C1743h.AbstractC1744a<Z> {

        /* renamed from: b */
        private final EnumC1464a f5278b;

        C1737b(EnumC1464a enumC1464a) {
            RunnableC1734g.this = r4;
            this.f5278b = enumC1464a;
        }

        @Override // com.bumptech.glide.load.engine.C1743h.AbstractC1744a
        /* renamed from: a */
        public AbstractC1771t<Z> mo16406a(AbstractC1771t<Z> abstractC1771t) {
            return RunnableC1734g.this.m16439a(this.f5278b, abstractC1771t);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.g$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$c.class */
    public static class C1738c<Z> {

        /* renamed from: a */
        private AbstractC1777f f5279a;

        /* renamed from: b */
        private AbstractC1783j<Z> f5280b;

        /* renamed from: c */
        private C1769s<Z> f5281c;

        C1738c() {
        }

        /* renamed from: a */
        void m16417a(AbstractC1739d abstractC1739d, C1781h c1781h) {
            C1445b.m17017a("DecodeJob.encode");
            try {
                abstractC1739d.mo16390a().mo16502a(this.f5279a, new C1729d(this.f5280b, this.f5281c, c1781h));
            } finally {
                this.f5281c.m16355a();
                C1445b.m17018a();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        <X> void m16416a(AbstractC1777f abstractC1777f, AbstractC1783j<X> abstractC1783j, C1769s<X> c1769s) {
            this.f5279a = abstractC1777f;
            this.f5280b = abstractC1783j;
            this.f5281c = c1769s;
        }

        /* renamed from: a */
        boolean m16418a() {
            return this.f5281c != null;
        }

        /* renamed from: b */
        void m16415b() {
            this.f5279a = null;
            this.f5280b = null;
            this.f5281c = null;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.g$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$d.class */
    public interface AbstractC1739d {
        /* renamed from: a */
        AbstractC1697a mo16390a();
    }

    /* renamed from: com.bumptech.glide.load.engine.g$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$e.class */
    public static class C1740e {

        /* renamed from: a */
        private boolean f5282a;

        /* renamed from: b */
        private boolean f5283b;

        /* renamed from: c */
        private boolean f5284c;

        C1740e() {
        }

        /* renamed from: b */
        private boolean m16411b(boolean z) {
            return (this.f5284c || z || this.f5283b) && this.f5282a;
        }

        /* renamed from: a */
        boolean m16414a() {
            boolean m16411b;
            synchronized (this) {
                this.f5283b = true;
                m16411b = m16411b(false);
            }
            return m16411b;
        }

        /* renamed from: a */
        boolean m16413a(boolean z) {
            boolean m16411b;
            synchronized (this) {
                this.f5282a = true;
                m16411b = m16411b(z);
            }
            return m16411b;
        }

        /* renamed from: b */
        boolean m16412b() {
            boolean m16411b;
            synchronized (this) {
                this.f5284c = true;
                m16411b = m16411b(false);
            }
            return m16411b;
        }

        /* renamed from: c */
        void m16410c() {
            synchronized (this) {
                this.f5283b = false;
                this.f5282a = false;
                this.f5284c = false;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.g$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$f.class */
    public enum EnumC1741f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* renamed from: com.bumptech.glide.load.engine.g$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g$g.class */
    public enum EnumC1742g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public RunnableC1734g(AbstractC1739d abstractC1739d, C0523e.AbstractC0524a<RunnableC1734g<?>> abstractC0524a) {
        this.f5251d = abstractC1739d;
        this.f5252e = abstractC0524a;
    }

    /* renamed from: a */
    private EnumC1742g m16438a(EnumC1742g enumC1742g) {
        EnumC1742g enumC1742g2;
        switch (C17351.f5275b[enumC1742g.ordinal()]) {
            case 1:
                if (!this.f5261n.mo16402b()) {
                    enumC1742g2 = m16438a(EnumC1742g.DATA_CACHE);
                    break;
                } else {
                    enumC1742g2 = EnumC1742g.DATA_CACHE;
                    break;
                }
            case 2:
                if (!this.f5268u) {
                    enumC1742g2 = EnumC1742g.SOURCE;
                    break;
                } else {
                    enumC1742g2 = EnumC1742g.FINISHED;
                    break;
                }
            case 3:
            case 4:
                enumC1742g2 = EnumC1742g.FINISHED;
                break;
            case 5:
                if (!this.f5261n.mo16405a()) {
                    enumC1742g2 = m16438a(EnumC1742g.RESOURCE_CACHE);
                    break;
                } else {
                    enumC1742g2 = EnumC1742g.RESOURCE_CACHE;
                    break;
                }
            default:
                throw new IllegalArgumentException("Unrecognized stage: " + enumC1742g);
        }
        return enumC1742g2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private <Data> AbstractC1771t<R> m16441a(AbstractC1475d<?> abstractC1475d, Data data, EnumC1464a enumC1464a) {
        AbstractC1771t<R> abstractC1771t;
        if (data == null) {
            abstractC1475d.mo16811b();
            abstractC1771t = null;
        } else {
            try {
                long m17002a = C1452e.m17002a();
                AbstractC1771t<R> m16435a = m16435a((RunnableC1734g<R>) data, enumC1464a);
                if (Log.isLoggable("DecodeJob", 2)) {
                    m16433a("Decoded result " + m16435a, m17002a);
                }
                abstractC1475d.mo16811b();
                abstractC1771t = m16435a;
            } catch (Throwable th) {
                abstractC1475d.mo16811b();
                throw th;
            }
        }
        return abstractC1771t;
    }

    /* renamed from: a */
    private <Data> AbstractC1771t<R> m16435a(Data data, EnumC1464a enumC1464a) {
        return m16434a((RunnableC1734g<R>) data, enumC1464a, (C1768r<RunnableC1734g<R>, ResourceType, R>) ((C1768r<Data, ?, R>) this.f5248a.m16457b(data.getClass())));
    }

    /* renamed from: a */
    private <Data, ResourceType> AbstractC1771t<R> m16434a(Data data, EnumC1464a enumC1464a, C1768r<Data, ResourceType, R> c1768r) {
        C1781h m16440a = m16440a(enumC1464a);
        AbstractC1477e<Data> m17410b = this.f5255h.m17223c().m17410b((Registry) data);
        try {
            return c1768r.m16357a(m17410b, m16440a, this.f5259l, this.f5260m, new C1737b(enumC1464a));
        } finally {
            m17410b.mo16697b();
        }
    }

    /* renamed from: a */
    private C1781h m16440a(EnumC1464a enumC1464a) {
        C1781h c1781h;
        C1781h c1781h2 = this.f5262o;
        if (Build.VERSION.SDK_INT < 26) {
            c1781h = c1781h2;
        } else {
            boolean z = enumC1464a == EnumC1464a.RESOURCE_DISK_CACHE || this.f5248a.m16446l();
            Boolean bool = (Boolean) c1781h2.m16324a(C1602l.f4982d);
            if (bool == null || (bool.booleanValue() && !z)) {
                c1781h = new C1781h();
                c1781h.m16321a(this.f5262o);
                c1781h.m16323a(C1602l.f4982d, Boolean.valueOf(z));
            } else {
                c1781h = c1781h2;
            }
        }
        return c1781h;
    }

    /* renamed from: a */
    private void m16436a(AbstractC1771t<R> abstractC1771t, EnumC1464a enumC1464a) {
        m16420m();
        this.f5263p.mo16384a(abstractC1771t, enumC1464a);
    }

    /* renamed from: a */
    private void m16433a(String str, long j) {
        m16432a(str, j, (String) null);
    }

    /* renamed from: a */
    private void m16432a(String str, long j, String str2) {
        Log.v("DecodeJob", str + " in " + C1452e.m17001a(j) + ", load key: " + this.f5258k + (str2 != null ? ", " + str2 : "") + ", thread: " + Thread.currentThread().getName());
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private void m16429b(AbstractC1771t<R> abstractC1771t, EnumC1464a enumC1464a) {
        if (abstractC1771t instanceof AbstractC1766p) {
            ((AbstractC1766p) abstractC1771t).mo16362a();
        }
        C1769s c1769s = null;
        C1769s c1769s2 = abstractC1771t;
        if (this.f5253f.m16418a()) {
            C1769s m16354a = C1769s.m16354a(abstractC1771t);
            c1769s = m16354a;
            c1769s2 = m16354a;
        }
        m16436a((AbstractC1771t) c1769s2, enumC1464a);
        this.f5265r = EnumC1742g.ENCODE;
        try {
            if (this.f5253f.m16418a()) {
                this.f5253f.m16417a(this.f5251d, this.f5262o);
            }
            if (c1769s != null) {
                c1769s.m16355a();
            }
            m16428e();
        } catch (Throwable th) {
            if (c1769s != null) {
                c1769s.m16355a();
            }
            throw th;
        }
    }

    /* renamed from: e */
    private void m16428e() {
        if (this.f5254g.m16414a()) {
            m16426g();
        }
    }

    /* renamed from: f */
    private void m16427f() {
        if (this.f5254g.m16412b()) {
            m16426g();
        }
    }

    /* renamed from: g */
    private void m16426g() {
        this.f5254g.m16410c();
        this.f5253f.m16415b();
        this.f5248a.m16466a();
        this.f5246D = false;
        this.f5255h = null;
        this.f5256i = null;
        this.f5262o = null;
        this.f5257j = null;
        this.f5258k = null;
        this.f5263p = null;
        this.f5265r = null;
        this.f5245C = null;
        this.f5270w = null;
        this.f5271x = null;
        this.f5273z = null;
        this.f5243A = null;
        this.f5244B = null;
        this.f5267t = 0L;
        this.f5247E = false;
        this.f5269v = null;
        this.f5249b.clear();
        this.f5252e.mo17020a(this);
    }

    /* renamed from: h */
    private int m16425h() {
        return this.f5257j.ordinal();
    }

    /* renamed from: i */
    private void m16424i() {
        switch (C17351.f5274a[this.f5266s.ordinal()]) {
            case 1:
                this.f5265r = m16438a(EnumC1742g.INITIALIZE);
                this.f5245C = m16423j();
                m16422k();
                return;
            case 2:
                m16422k();
                return;
            case 3:
                m16419n();
                return;
            default:
                throw new IllegalStateException("Unrecognized run reason: " + this.f5266s);
        }
    }

    /* renamed from: j */
    private AbstractC1731e m16423j() {
        AbstractC1731e abstractC1731e;
        switch (C17351.f5275b[this.f5265r.ordinal()]) {
            case 1:
                abstractC1731e = new C1772u(this.f5248a, this);
                break;
            case 2:
                abstractC1731e = new C1696b(this.f5248a, this);
                break;
            case 3:
                abstractC1731e = new C1776x(this.f5248a, this);
                break;
            case 4:
                abstractC1731e = null;
                break;
            default:
                throw new IllegalStateException("Unrecognized stage: " + this.f5265r);
        }
        return abstractC1731e;
    }

    /* renamed from: k */
    private void m16422k() {
        this.f5270w = Thread.currentThread();
        this.f5267t = C1452e.m17002a();
        boolean z = false;
        do {
            boolean z2 = z;
            if (!this.f5247E) {
                z2 = z;
                if (this.f5245C != null) {
                    z = this.f5245C.mo16341a();
                    z2 = z;
                    if (!z) {
                        this.f5265r = m16438a(this.f5265r);
                        this.f5245C = m16423j();
                    }
                }
            }
            if ((this.f5265r != EnumC1742g.FINISHED && !this.f5247E) || z2) {
                return;
            }
            m16421l();
            return;
        } while (this.f5265r != EnumC1742g.SOURCE);
        mo16334c();
    }

    /* renamed from: l */
    private void m16421l() {
        m16420m();
        this.f5263p.mo16386a(new GlideException("Failed to load resource", new ArrayList(this.f5249b)));
        m16427f();
    }

    /* renamed from: m */
    private void m16420m() {
        this.f5250c.mo17012b();
        if (this.f5246D) {
            throw new IllegalStateException("Already notified");
        }
        this.f5246D = true;
    }

    /* renamed from: n */
    private void m16419n() {
        AbstractC1771t<R> abstractC1771t;
        if (Log.isLoggable("DecodeJob", 2)) {
            m16432a("Retrieved data", this.f5267t, "data: " + this.f5273z + ", cache key: " + this.f5271x + ", fetcher: " + this.f5244B);
        }
        try {
            abstractC1771t = m16441a(this.f5244B, (AbstractC1475d<?>) this.f5273z, this.f5243A);
        } catch (GlideException e) {
            e.m16607a(this.f5272y, this.f5243A);
            this.f5249b.add(e);
            abstractC1771t = null;
        }
        if (abstractC1771t != null) {
            m16429b(abstractC1771t, this.f5243A);
        } else {
            m16422k();
        }
    }

    /* renamed from: a */
    public int compareTo(RunnableC1734g<?> runnableC1734g) {
        int m16425h = m16425h() - runnableC1734g.m16425h();
        int i = m16425h;
        if (m16425h == 0) {
            i = this.f5264q - runnableC1734g.f5264q;
        }
        return i;
    }

    /* renamed from: a */
    public RunnableC1734g<R> m16442a(C1391e c1391e, Object obj, C1762m c1762m, AbstractC1777f abstractC1777f, int i, int i2, Class<?> cls, Class<R> cls2, EnumC1428g enumC1428g, AbstractC1745i abstractC1745i, Map<Class<?>, AbstractC1784k<?>> map, boolean z, boolean z2, boolean z3, C1781h c1781h, AbstractC1736a<R> abstractC1736a, int i3) {
        this.f5248a.m16465a(c1391e, obj, abstractC1777f, i, i2, abstractC1745i, cls, cls2, enumC1428g, c1781h, map, z, z2, this.f5251d);
        this.f5255h = c1391e;
        this.f5256i = abstractC1777f;
        this.f5257j = enumC1428g;
        this.f5258k = c1762m;
        this.f5259l = i;
        this.f5260m = i2;
        this.f5261n = abstractC1745i;
        this.f5268u = z3;
        this.f5262o = c1781h;
        this.f5263p = abstractC1736a;
        this.f5264q = i3;
        this.f5266s = EnumC1741f.INITIALIZE;
        this.f5269v = obj;
        return this;
    }

    /* renamed from: a */
    <Z> AbstractC1771t<Z> m16439a(EnumC1464a enumC1464a, AbstractC1771t<Z> abstractC1771t) {
        AbstractC1771t<Z> abstractC1771t2;
        AbstractC1784k<Z> abstractC1784k;
        EnumC1578c enumC1578c;
        AbstractC1783j<Z> abstractC1783j;
        AbstractC1777f c1773v;
        Class<?> cls = abstractC1771t.mo16347d().getClass();
        if (enumC1464a != EnumC1464a.RESOURCE_DISK_CACHE) {
            abstractC1784k = this.f5248a.m16455c(cls);
            abstractC1771t2 = abstractC1784k.mo16316a(this.f5255h, abstractC1771t, this.f5259l, this.f5260m);
        } else {
            abstractC1771t2 = abstractC1771t;
            abstractC1784k = null;
        }
        if (!abstractC1771t.equals(abstractC1771t2)) {
            abstractC1771t.mo16345f();
        }
        if (this.f5248a.m16464a((AbstractC1771t<?>) abstractC1771t2)) {
            abstractC1783j = this.f5248a.m16458b(abstractC1771t2);
            enumC1578c = abstractC1783j.mo16317a(this.f5262o);
        } else {
            enumC1578c = EnumC1578c.NONE;
            abstractC1783j = null;
        }
        C1769s c1769s = abstractC1771t2;
        if (this.f5261n.mo16403a(!this.f5248a.m16463a(this.f5271x), enumC1464a, enumC1578c)) {
            if (abstractC1783j == null) {
                throw new Registry.NoResultEncoderAvailableException(abstractC1771t2.mo16347d().getClass());
            }
            switch (C17351.f5276c[enumC1578c.ordinal()]) {
                case 1:
                    c1773v = new C1719c(this.f5271x, this.f5256i);
                    break;
                case 2:
                    c1773v = new C1773v(this.f5248a.m16449i(), this.f5271x, this.f5256i, this.f5259l, this.f5260m, abstractC1784k, cls, this.f5262o);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown strategy: " + enumC1578c);
            }
            c1769s = C1769s.m16354a(abstractC1771t2);
            this.f5253f.m16416a(c1773v, abstractC1783j, c1769s);
        }
        return c1769s;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e.AbstractC1732a
    /* renamed from: a */
    public void mo16340a(AbstractC1777f abstractC1777f, Exception exc, AbstractC1475d<?> abstractC1475d, EnumC1464a enumC1464a) {
        abstractC1475d.mo16811b();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.m16606a(abstractC1777f, enumC1464a, abstractC1475d.mo16813a());
        this.f5249b.add(glideException);
        if (Thread.currentThread() == this.f5270w) {
            m16422k();
            return;
        }
        this.f5266s = EnumC1741f.SWITCH_TO_SOURCE_SERVICE;
        this.f5263p.mo16385a((RunnableC1734g<?>) this);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e.AbstractC1732a
    /* renamed from: a */
    public void mo16339a(AbstractC1777f abstractC1777f, Object obj, AbstractC1475d<?> abstractC1475d, EnumC1464a enumC1464a, AbstractC1777f abstractC1777f2) {
        this.f5271x = abstractC1777f;
        this.f5273z = obj;
        this.f5244B = abstractC1475d;
        this.f5243A = enumC1464a;
        this.f5272y = abstractC1777f2;
        if (Thread.currentThread() != this.f5270w) {
            this.f5266s = EnumC1741f.DECODE_DATA;
            this.f5263p.mo16385a((RunnableC1734g<?>) this);
            return;
        }
        C1445b.m17017a("DecodeJob.decodeFromRetrievedData");
        try {
            m16419n();
        } finally {
            C1445b.m17018a();
        }
    }

    /* renamed from: a */
    public void m16431a(boolean z) {
        if (this.f5254g.m16413a(z)) {
            m16426g();
        }
    }

    /* renamed from: a */
    public boolean m16443a() {
        EnumC1742g m16438a = m16438a(EnumC1742g.INITIALIZE);
        return m16438a == EnumC1742g.RESOURCE_CACHE || m16438a == EnumC1742g.DATA_CACHE;
    }

    /* renamed from: b */
    public void m16430b() {
        this.f5247E = true;
        AbstractC1731e abstractC1731e = this.f5245C;
        if (abstractC1731e != null) {
            abstractC1731e.mo16336b();
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e.AbstractC1732a
    /* renamed from: c */
    public void mo16334c() {
        this.f5266s = EnumC1741f.SWITCH_TO_SOURCE_SERVICE;
        this.f5263p.mo16385a((RunnableC1734g<?>) this);
    }

    @Override // com.bumptech.glide.p077h.p078a.C1437a.AbstractC1443c
    /* renamed from: c_ */
    public AbstractC1446c mo16351c_() {
        return this.f5250c;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1445b.m17016a("DecodeJob#run(model=%s)", this.f5269v);
        AbstractC1475d<?> abstractC1475d = this.f5244B;
        try {
            if (this.f5247E) {
                m16421l();
            } else {
                m16424i();
                if (abstractC1475d != null) {
                    abstractC1475d.mo16811b();
                }
                C1445b.m17018a();
            }
        } catch (Throwable th) {
            try {
                if (Log.isLoggable("DecodeJob", 3)) {
                    Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.f5247E + ", stage: " + this.f5265r, th);
                }
                if (this.f5265r != EnumC1742g.ENCODE) {
                    this.f5249b.add(th);
                    m16421l();
                }
                if (!this.f5247E) {
                    throw th;
                }
                if (abstractC1475d != null) {
                    abstractC1475d.mo16811b();
                }
                C1445b.m17018a();
            } finally {
                if (abstractC1475d != null) {
                    abstractC1475d.mo16811b();
                }
                C1445b.m17018a();
            }
        }
    }
}
