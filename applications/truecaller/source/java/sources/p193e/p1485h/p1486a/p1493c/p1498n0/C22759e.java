package p193e.p1485h.p1486a.p1493c.p1498n0;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.AbstractC22721c0;
import p193e.p1485h.p1486a.p1493c.AbstractC22742k;
import p193e.p1485h.p1486a.p1493c.C22718b0;
import p193e.p1485h.p1486a.p1493c.C22731f0;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22739i0;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.C22751m;
import p193e.p1485h.p1486a.p1493c.C22768o;
import p193e.p1485h.p1486a.p1493c.C22858w;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22713b;
import p193e.p1485h.p1486a.p1493c.p1496l0.AbstractC22745a;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22746b;
import p193e.p1485h.p1486a.p1493c.p1496l0.C22749c;
import p193e.p1485h.p1486a.p1493c.p1504t0.AbstractC22833b;
import p193e.p1485h.p1486a.p1493c.p1504t0.C22838f;
import p193e.p1485h.p1486a.p1493c.p1505u0.AbstractC22840a;
import p193e.p1485h.p1486a.p1493c.p1505u0.C22841b;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.HandlerC22886e;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.n0.e */
/* loaded from: classes-dex2jar.jar:e/h/a/c/n0/e.class */
public class C22759e extends AbstractC22755a implements AbstractC22721c0 {

    /* renamed from: b */
    public final AbstractC22745a f63038b;

    /* renamed from: c */
    public final C22858w f63039c;

    /* renamed from: d */
    public final CleverTapInstanceConfig f63040d;

    /* renamed from: e */
    public final Context f63041e;

    /* renamed from: f */
    public final C22751m f63042f;

    /* renamed from: g */
    public final C22718b0 f63043g;

    /* renamed from: h */
    public final C22758d f63044h;

    /* renamed from: i */
    public final C22731f0 f63045i;

    /* renamed from: j */
    public final C22735g0 f63046j;

    /* renamed from: k */
    public C22838f f63047k;

    /* renamed from: l */
    public final HandlerC22886e f63048l;

    /* renamed from: m */
    public final AbstractC22840a f63049m;

    /* renamed from: n */
    public final C22739i0 f63050n;

    /* renamed from: o */
    public final C22713b f63051o;

    /* renamed from: a */
    public Runnable f63037a = null;

    /* renamed from: p */
    public Runnable f63052p = null;

    /* renamed from: e.h.a.c.n0.e$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/n0/e$a.class */
    public class CallableC22760a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ EnumC22757c f63053a;

        /* renamed from: b */
        public final /* synthetic */ Context f63054b;

        public CallableC22760a(EnumC22757c enumC22757c, Context context) {
            C22759e.this = r4;
            this.f63053a = enumC22757c;
            this.f63054b = context;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            if (this.f63053a == EnumC22757c.PUSH_NOTIFICATION_VIEWED) {
                C22759e c22759e = C22759e.this;
                c22759e.f63046j.m7855b(c22759e.f63040d.f2240a, "Pushing Notification Viewed event onto queue flush sync");
            } else {
                C22759e c22759e2 = C22759e.this;
                c22759e2.f63046j.m7855b(c22759e2.f63040d.f2240a, "Pushing event onto queue flush sync");
            }
            C22759e.this.mo7815a(this.f63054b, this.f63053a);
            return null;
        }
    }

    /* renamed from: e.h.a.c.n0.e$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/n0/e$b.class */
    public class RunnableC22761b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f63056a;

        /* renamed from: b */
        public final /* synthetic */ EnumC22757c f63057b;

        public RunnableC22761b(Context context, EnumC22757c enumC22757c) {
            C22759e.this = r4;
            this.f63056a = context;
            this.f63057b = enumC22757c;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22759e.this.f63049m.mo7710a(this.f63056a, this.f63057b);
        }
    }

    /* renamed from: e.h.a.c.n0.e$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/n0/e$c.class */
    public class CallableC22762c implements Callable<Void> {
        public CallableC22762c() {
            C22759e.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            try {
                C22759e.this.f63040d.m42081b().m7855b(C22759e.this.f63040d.f2240a, "Queuing daily events");
                C22759e.this.mo7814b(null);
                return null;
            } catch (Throwable th) {
                C22735g0 m42081b = C22759e.this.f63040d.m42081b();
                String str = C22759e.this.f63040d.f2240a;
                Objects.requireNonNull(m42081b);
                return null;
            }
        }
    }

    /* renamed from: e.h.a.c.n0.e$d */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/n0/e$d.class */
    public class CallableC22763d implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ JSONObject f63060a;

        /* renamed from: b */
        public final /* synthetic */ int f63061b;

        /* renamed from: c */
        public final /* synthetic */ Context f63062c;

        public CallableC22763d(JSONObject jSONObject, int i, Context context) {
            C22759e.this = r4;
            this.f63060a = jSONObject;
            this.f63061b = i;
            this.f63062c = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
        @Override // java.util.concurrent.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void call() throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 501
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1498n0.C22759e.CallableC22763d.call():java.lang.Object");
        }
    }

    /* renamed from: e.h.a.c.n0.e$e */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/n0/e$e.class */
    public class RunnableC22764e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f63064a;

        public RunnableC22764e(Context context) {
            C22759e.this = r4;
            this.f63064a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22759e.this.m7809g(this.f63064a, EnumC22757c.REGULAR);
            C22759e.this.m7809g(this.f63064a, EnumC22757c.PUSH_NOTIFICATION_VIEWED);
        }
    }

    public C22759e(AbstractC22745a abstractC22745a, Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22758d c22758d, C22739i0 c22739i0, AbstractC22742k abstractC22742k, HandlerC22886e handlerC22886e, C22718b0 c22718b0, C22713b c22713b, C22841b c22841b, C22858w c22858w, C22751m c22751m, C22731f0 c22731f0) {
        this.f63038b = abstractC22745a;
        this.f63041e = context;
        this.f63040d = cleverTapInstanceConfig;
        this.f63044h = c22758d;
        this.f63050n = c22739i0;
        this.f63048l = handlerC22886e;
        this.f63043g = c22718b0;
        this.f63051o = c22713b;
        this.f63049m = c22841b;
        this.f63045i = c22731f0;
        this.f63046j = cleverTapInstanceConfig.m42081b();
        this.f63039c = c22858w;
        this.f63042f = c22751m;
        ((C22768o) abstractC22742k).f63072c = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0022, code lost:
        if (r0.isConnected() != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    @Override // p193e.p1485h.p1486a.p1493c.p1498n0.AbstractC22755a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7815a(android.content.Context r7, p193e.p1485h.p1486a.p1493c.p1498n0.EnumC22757c r8) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1498n0.C22759e.mo7815a(android.content.Context, e.h.a.c.n0.c):void");
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1498n0.AbstractC22755a
    /* renamed from: b */
    public void mo7814b(JSONObject jSONObject) {
        try {
            String m7910j = this.f63043g.m7910j();
            JSONObject jSONObject2 = new JSONObject();
            if (jSONObject != null && jSONObject.length() > 0) {
                Iterator<String> keys = jSONObject.keys();
                AbstractC22833b m2285x0 = C26232y.m2285x0(this.f63041e, this.f63040d, this.f63043g, this.f63051o);
                this.f63047k = new C22838f(this.f63041e, this.f63040d, this.f63043g);
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject3 = null;
                    try {
                        jSONObject3 = jSONObject.getJSONObject(next);
                    } catch (Throwable th) {
                        try {
                            jSONObject3 = jSONObject.get(next);
                        } catch (JSONException e) {
                        }
                    }
                    if (jSONObject3 != null) {
                        jSONObject2.put(next, jSONObject3);
                        if (m2285x0.mo7722b(next)) {
                            try {
                                this.f63047k.m7717a(m7910j, next, jSONObject3.toString());
                            } catch (Throwable th2) {
                            }
                        }
                    }
                }
            }
            try {
                String str = this.f63043g.m7911i().f62883c;
                if (str != null && !str.equals("")) {
                    jSONObject2.put("Carrier", str);
                }
                String m7912h = this.f63043g.m7912h();
                if (m7912h != null && !m7912h.equals("")) {
                    jSONObject2.put("cc", m7912h);
                }
                jSONObject2.put("tz", TimeZone.getDefault().getID());
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("profile", jSONObject2);
                mo7812d(this.f63041e, jSONObject4, 3);
            } catch (JSONException e2) {
                this.f63040d.m42081b().m7855b(this.f63040d.f2240a, "FATAL: Creating basic profile update event failed!");
            }
        } catch (Throwable th3) {
            C22735g0 m42081b = this.f63040d.m42081b();
            String str2 = this.f63040d.f2240a;
            Objects.requireNonNull(m42081b);
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1498n0.AbstractC22755a
    /* renamed from: c */
    public void mo7813c() {
        if (!this.f63039c.m7673b()) {
            C22895k m7641c = C22882a.m7644a(this.f63040d).m7641c();
            m7641c.f63554c.execute(new RunnableC22894j(m7641c, "CleverTapAPI#pushInitialEventsAsync", new CallableC22762c()));
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1498n0.AbstractC22755a
    /* renamed from: d */
    public Future<?> mo7812d(Context context, JSONObject jSONObject, int i) {
        C22895k m7641c = C22882a.m7644a(this.f63040d).m7641c();
        CallableC22763d callableC22763d = new CallableC22763d(jSONObject, i, context);
        Executor executor = m7641c.f63554c;
        if (executor instanceof ExecutorService) {
            return ((ExecutorService) executor).submit(new RunnableC22894j(m7641c, "queueEvent", callableC22763d));
        }
        throw new UnsupportedOperationException("Can't use this method without ExecutorService, Use Execute alternatively ");
    }

    /* renamed from: e */
    public void m7811e(Context context, JSONObject jSONObject, int i) {
        String str;
        Boolean bool = Boolean.TRUE;
        if (i == 6) {
            this.f63040d.m42081b().m7855b(this.f63040d.f2240a, "Pushing Notification Viewed event onto separate queue");
            Objects.requireNonNull(this.f63042f);
            synchronized (bool) {
                try {
                    jSONObject.put("s", this.f63039c.f63454d);
                    jSONObject.put("type", "event");
                    jSONObject.put("ep", (int) (System.currentTimeMillis() / 1000));
                    C22712a m7927a = this.f63051o.m7927a();
                    if (m7927a != null) {
                        jSONObject.put("wzrk_error", C26232y.m2333l0(m7927a));
                    }
                    this.f63040d.m42081b().m7855b(this.f63040d.f2240a, "Pushing Notification Viewed event onto DB");
                    ((C22749c) this.f63038b).m7817d(context, jSONObject, C22746b.EnumC22748b.PUSH_NOTIFICATION_VIEWED);
                    this.f63040d.m42081b().m7855b(this.f63040d.f2240a, "Pushing Notification Viewed event onto queue flush");
                    if (this.f63052p == null) {
                        this.f63052p = new RunnableC22767g(this, context);
                    }
                    this.f63048l.removeCallbacks(this.f63052p);
                    this.f63048l.post(this.f63052p);
                }
            }
            return;
        }
        Objects.requireNonNull(this.f63042f);
        synchronized (bool) {
            try {
                if (C22858w.f63449v == 0) {
                    C22858w.f63449v = 1;
                }
                if (i == 1) {
                    str = "page";
                } else if (i == 2) {
                    m7810f(jSONObject, context);
                    if (jSONObject.has("bk")) {
                        this.f63039c.f63460j = true;
                        jSONObject.remove("bk");
                    }
                    if (this.f63039c.f63461k) {
                        jSONObject.put("gf", true);
                        C22858w c22858w = this.f63039c;
                        c22858w.f63461k = false;
                        jSONObject.put("gfSDKVersion", c22858w.f63458h);
                        this.f63039c.f63458h = 0;
                    }
                    str = "ping";
                } else {
                    str = i == 3 ? "profile" : i == 5 ? RemoteMessageConst.DATA : "event";
                }
                Objects.requireNonNull(this.f63039c);
                jSONObject.put("s", this.f63039c.f63454d);
                jSONObject.put("pg", C22858w.f63449v);
                jSONObject.put("type", str);
                jSONObject.put("ep", (int) (System.currentTimeMillis() / 1000));
                jSONObject.put("f", this.f63039c.f63457g);
                jSONObject.put("lsl", this.f63039c.f63463m);
                try {
                    if ("event".equals(jSONObject.getString("type")) && "App Launched".equals(jSONObject.getString("evtName"))) {
                        jSONObject.put("pai", context.getPackageName());
                    }
                } catch (Throwable th) {
                }
                C22712a m7927a2 = this.f63051o.m7927a();
                if (m7927a2 != null) {
                    jSONObject.put("wzrk_error", C26232y.m2333l0(m7927a2));
                }
                this.f63045i.m7864l(jSONObject);
                ((C22749c) this.f63038b).m7817d(context, jSONObject, i == 3 ? C22746b.EnumC22748b.PROFILE_EVENTS : C22746b.EnumC22748b.EVENTS);
                if (i == 4) {
                    C22731f0 c22731f0 = this.f63045i;
                    Objects.requireNonNull(c22731f0);
                    if (i == 4) {
                        try {
                            c22731f0.m7868h(context, jSONObject);
                        } catch (Throwable th2) {
                            C22735g0 m7872d = c22731f0.m7872d();
                            String str2 = c22731f0.f62938c.f2240a;
                            Objects.requireNonNull(m7872d);
                        }
                    }
                }
                m7808h(context);
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0067 -> B:27:0x001d). Please submit an issue!!! */
    /* renamed from: f */
    public final void m7810f(JSONObject jSONObject, Context context) {
        String str;
        try {
            boolean z = C22741j0.f62977a;
            jSONObject.put("mc", Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory());
        } catch (Throwable th) {
        }
        try {
            boolean z2 = C22741j0.f62977a;
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null) {
                    str = "Unavailable";
                } else {
                    NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                    str = (networkInfo == null || !networkInfo.isConnected()) ? C22741j0.m7843g(context) : "WiFi";
                }
            } catch (Throwable th2) {
                str = "Unavailable";
            }
            jSONObject.put("nt", str);
        } catch (Throwable th3) {
        }
    }

    /* renamed from: g */
    public void m7809g(Context context, EnumC22757c enumC22757c) {
        C22895k m7641c = C22882a.m7644a(this.f63040d).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "CommsManager#flushQueueAsync", new CallableC22760a(enumC22757c, context)));
    }

    /* renamed from: h */
    public void m7808h(Context context) {
        if (this.f63037a == null) {
            this.f63037a = new RunnableC22764e(context);
        }
        this.f63048l.removeCallbacks(this.f63037a);
        HandlerC22886e handlerC22886e = this.f63048l;
        Runnable runnable = this.f63037a;
        C22841b c22841b = (C22841b) this.f63049m;
        C22735g0 c22735g0 = c22841b.f63400j;
        String str = c22841b.f63393c.f2240a;
        StringBuilder m8728C = C22128a.m8728C("Network retry #");
        m8728C.append(c22841b.f63401k);
        c22735g0.m7856a(str, m8728C.toString());
        int i = 1000;
        if (c22841b.f63401k < 10) {
            C22735g0 c22735g02 = c22841b.f63400j;
            String str2 = c22841b.f63393c.f2240a;
            StringBuilder m8728C2 = C22128a.m8728C("Failure count is ");
            m8728C2.append(c22841b.f63401k);
            m8728C2.append(". Setting delay frequency to 1s");
            c22735g02.m7856a(str2, m8728C2.toString());
        } else {
            CleverTapInstanceConfig cleverTapInstanceConfig = c22841b.f63393c;
            if (cleverTapInstanceConfig.f2241b == null) {
                c22841b.f63400j.m7856a(cleverTapInstanceConfig.f2240a, "Setting delay frequency to 1s");
            } else {
                int nextInt = ((new SecureRandom().nextInt(10) + 1) * 1000) + 0;
                if (nextInt < 600000) {
                    c22841b.f63400j.m7856a(c22841b.f63393c.f2240a, "Setting delay frequency to " + nextInt);
                    i = nextInt;
                } else {
                    c22841b.f63400j.m7856a(c22841b.f63393c.f2240a, "Setting delay frequency to 1000");
                }
            }
        }
        handlerC22886e.postDelayed(runnable, i);
        this.f63046j.m7855b(this.f63040d.f2240a, "Scheduling delayed queue flush on main event loop");
    }
}
