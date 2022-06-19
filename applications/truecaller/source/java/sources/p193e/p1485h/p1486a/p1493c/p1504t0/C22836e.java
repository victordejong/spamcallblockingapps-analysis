package p193e.p1485h.p1486a.p1493c.p1504t0;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import p193e.p1485h.p1486a.p1493c.AbstractC22742k;
import p193e.p1485h.p1486a.p1493c.C22718b0;
import p193e.p1485h.p1486a.p1493c.C22723d0;
import p193e.p1485h.p1486a.p1493c.C22727f;
import p193e.p1485h.p1486a.p1493c.C22731f0;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22739i0;
import p193e.p1485h.p1486a.p1493c.C22751m;
import p193e.p1485h.p1486a.p1493c.C22844v;
import p193e.p1485h.p1486a.p1493c.C22858w;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22713b;
import p193e.p1485h.p1486a.p1493c.p1496l0.AbstractC22745a;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22749c;
import p193e.p1485h.p1486a.p1493c.p1497m0.C22752a;
import p193e.p1485h.p1486a.p1493c.p1498n0.AbstractC22755a;
import p193e.p1485h.p1486a.p1493c.p1498n0.EnumC22757c;
import p193e.p1485h.p1486a.p1493c.p1499o0.C22770b;
import p193e.p1485h.p1486a.p1493c.p1499o0.CallableC22769a;
import p193e.p1485h.p1486a.p1493c.p1506v0.C22847b;
import p193e.p1485h.p1486a.p1493c.p1506v0.C22855e;
import p193e.p1485h.p1486a.p1493c.p1506v0.CallableC22854d;
import p193e.p1485h.p1486a.p1493c.p1507w0.C22867i;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22897a;
/* renamed from: e.h.a.c.t0.e */
/* loaded from: classes-dex2jar.jar:e/h/a/c/t0/e.class */
public class C22836e {

    /* renamed from: q */
    public static final Object f63361q = new Object();

    /* renamed from: b */
    public final C22727f f63363b;

    /* renamed from: c */
    public final AbstractC22755a f63364c;

    /* renamed from: d */
    public final C22751m f63365d;

    /* renamed from: e */
    public final AbstractC22742k f63366e;

    /* renamed from: f */
    public final CleverTapInstanceConfig f63367f;

    /* renamed from: g */
    public final Context f63368g;

    /* renamed from: h */
    public final C22844v f63369h;

    /* renamed from: i */
    public final C22858w f63370i;

    /* renamed from: j */
    public final AbstractC22745a f63371j;

    /* renamed from: k */
    public final C22718b0 f63372k;

    /* renamed from: l */
    public final C22731f0 f63373l;

    /* renamed from: m */
    public final C22867i f63374m;

    /* renamed from: n */
    public final C22739i0 f63375n;

    /* renamed from: o */
    public final C22713b f63376o;

    /* renamed from: a */
    public String f63362a = null;

    /* renamed from: p */
    public String f63377p = null;

    /* renamed from: e.h.a.c.t0.e$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/t0/e$a.class */
    public class CallableC22837a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Map f63378a;

        /* renamed from: b */
        public final /* synthetic */ String f63379b;

        /* renamed from: c */
        public final /* synthetic */ String f63380c;

        public CallableC22837a(Map map, String str, String str2) {
            C22836e.this = r4;
            this.f63378a = map;
            this.f63379b = str;
            this.f63380c = str2;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            String str;
            C22836e c22836e;
            C22844v c22844v;
            try {
                C22735g0 m42081b = C22836e.this.f63367f.m42081b();
                String str2 = C22836e.this.f63367f.f2240a;
                StringBuilder sb = new StringBuilder();
                sb.append("asyncProfileSwitchUser:[profile ");
                sb.append(this.f63378a);
                sb.append(" with Cached GUID ");
                if (this.f63379b != null) {
                    str = C22836e.this.f63362a;
                } else {
                    str = "NULL and cleverTapID " + this.f63380c;
                }
                sb.append(str);
                m42081b.m7855b(str2, sb.toString());
                C22858w c22858w = C22836e.this.f63370i;
                synchronized (c22858w.f63464n) {
                    c22858w.f63455e = false;
                }
                C22836e.this.f63374m.m7654g(false);
                C22836e c22836e2 = C22836e.this;
                c22836e2.f63364c.mo7815a(c22836e2.f63368g, EnumC22757c.REGULAR);
                C22836e c22836e3 = C22836e.this;
                c22836e3.f63364c.mo7815a(c22836e3.f63368g, EnumC22757c.PUSH_NOTIFICATION_VIEWED);
                C22836e c22836e4 = C22836e.this;
                c22836e4.f63371j.mo7820a(c22836e4.f63368g);
                C22836e.this.f63373l.m7875a();
                C22858w.f63449v = 1;
                C22836e.this.f63375n.m7852a();
                String str3 = this.f63379b;
                if (str3 != null) {
                    C22836e.this.f63372k.m7917c(str3);
                    C22836e.this.f63366e.mo7807a(this.f63379b);
                } else {
                    C22836e c22836e5 = C22836e.this;
                    if (c22836e5.f63367f.f2250k) {
                        c22836e5.f63372k.m7918b(this.f63380c);
                    } else {
                        C22718b0 c22718b0 = c22836e5.f63372k;
                        c22718b0.m7917c(c22718b0.m7915e());
                    }
                }
                C22836e c22836e6 = C22836e.this;
                c22836e6.f63366e.mo7807a(c22836e6.f63372k.m7910j());
                C22836e.this.f63372k.m7903q();
                C22727f c22727f = C22836e.this.f63363b;
                c22727f.f62921h.m7671d(false);
                c22727f.m7883h();
                Map<String, Object> map = this.f63378a;
                if (map != null) {
                    C22836e.this.f63363b.m7876o(map);
                }
                C22836e.this.f63374m.m7654g(true);
                Object obj = C22836e.f63361q;
                synchronized (C22836e.f63361q) {
                    c22836e = C22836e.this;
                    c22836e.f63377p = null;
                }
                synchronized (c22836e.f63365d.f63016a) {
                    c22844v = c22836e.f63369h;
                    c22844v.f63410e = null;
                }
                c22844v.m7695a();
                C22836e.m7721a(C22836e.this);
                C22836e.m7720b(C22836e.this);
                C22836e.this.m7718d();
                C22836e c22836e7 = C22836e.this;
                C22752a c22752a = c22836e7.f63369h.f63408c;
                if (c22752a != null) {
                    synchronized (c22752a) {
                        c22752a.f63017a.clear();
                    }
                } else {
                    c22836e7.f63367f.m42081b().m7855b(c22836e7.f63367f.f2240a, "DisplayUnit : Can't reset Display Units, DisplayUnitcontroller is null");
                }
                C22836e c22836e8 = C22836e.this;
                C22723d0 c22723d0 = c22836e8.f63369h.f63406a;
                String m7910j = c22836e8.f63372k.m7910j();
                c22723d0.f62905f.clear();
                c22723d0.f62906g = 0;
                c22723d0.f62904e.clear();
                c22723d0.f62903d = m7910j;
                c22723d0.m7893h(m7910j);
                return null;
            } catch (Throwable th) {
                C22735g0 m42081b2 = C22836e.this.f63367f.m42081b();
                String str4 = C22836e.this.f63367f.f2240a;
                Objects.requireNonNull(m42081b2);
                return null;
            }
        }
    }

    public C22836e(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22718b0 c22718b0, C22713b c22713b, AbstractC22755a abstractC22755a, C22727f c22727f, C22858w c22858w, C22844v c22844v, C22739i0 c22739i0, C22731f0 c22731f0, AbstractC22742k abstractC22742k, C22749c c22749c, C22751m c22751m) {
        this.f63367f = cleverTapInstanceConfig;
        this.f63368g = context;
        this.f63372k = c22718b0;
        this.f63376o = c22713b;
        this.f63364c = abstractC22755a;
        this.f63363b = c22727f;
        this.f63370i = c22858w;
        this.f63374m = c22844v.f63418m;
        this.f63375n = c22739i0;
        this.f63373l = c22731f0;
        this.f63366e = abstractC22742k;
        this.f63371j = c22749c;
        this.f63369h = c22844v;
        this.f63365d = c22751m;
    }

    /* renamed from: a */
    public static void m7721a(C22836e c22836e) {
        C22770b c22770b = c22836e.f63369h.f63409d;
        if (c22770b == null || !c22770b.f63076c) {
            c22836e.f63367f.m42081b().m7855b(c22836e.f63367f.f2240a, "DisplayUnit : Can't reset Display Units, CTFeatureFlagsController is null");
            return;
        }
        c22770b.f63075b = c22836e.f63372k.m7910j();
        c22770b.m7801f();
        C22895k m7642b = C22882a.m7644a(c22770b.f63074a).m7642b();
        m7642b.f63554c.execute(new RunnableC22894j(m7642b, "fetchFeatureFlags", new CallableC22769a(c22770b)));
    }

    /* renamed from: b */
    public static void m7720b(C22836e c22836e) {
        CleverTapInstanceConfig cleverTapInstanceConfig = c22836e.f63367f;
        if (cleverTapInstanceConfig.f2244e) {
            cleverTapInstanceConfig.m42081b().m7856a(c22836e.f63367f.f2240a, "Product Config is not enabled for this instance");
            return;
        }
        C22847b c22847b = c22836e.f63369h.f63412g;
        if (c22847b != null) {
            C22855e c22855e = c22847b.f63428h;
            C22897a c22897a = c22847b.f63424d;
            c22855e.m7679g();
            if (c22897a == null) {
                throw new IllegalArgumentException("FileUtils can't be null");
            }
            C22895k m7643a = C22882a.m7644a(c22855e.f63441a).m7643a();
            m7643a.f63554c.execute(new RunnableC22894j(m7643a, "ProductConfigSettings#eraseStoredSettingsFile", new CallableC22854d(c22855e, c22897a)));
        }
        Context context = c22836e.f63368g;
        C22718b0 c22718b0 = c22836e.f63372k;
        CleverTapInstanceConfig cleverTapInstanceConfig2 = c22836e.f63367f;
        C22727f c22727f = c22836e.f63363b;
        C22858w c22858w = c22836e.f63370i;
        AbstractC22742k abstractC22742k = c22836e.f63366e;
        String m7910j = c22718b0.m7910j();
        C22897a c22897a2 = new C22897a(context, cleverTapInstanceConfig2);
        c22836e.f63369h.f63412g = new C22847b(context, cleverTapInstanceConfig2, c22727f, c22858w, abstractC22742k, new C22855e(m7910j, cleverTapInstanceConfig2, c22897a2), c22897a2);
        c22836e.f63367f.m42081b().m7855b(c22836e.f63367f.f2240a, "Product Config reset");
    }

    /* renamed from: c */
    public void m7719c(Map<String, Object> map, String str, String str2) {
        C22895k m7641c = C22882a.m7644a(this.f63367f).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "resetProfile", new CallableC22837a(map, str, str2)));
    }

    /* renamed from: d */
    public void m7718d() {
        C22718b0 c22718b0 = this.f63372k;
        ArrayList arrayList = (ArrayList) c22718b0.f62880k.clone();
        c22718b0.f62880k.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f63376o.m7926b((C22712a) it.next());
        }
    }
}
