package com.huawei.hms.framework.network.grs.p087g;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.local.model.C2340a;
import com.huawei.hms.framework.network.grs.p085e.C2309a;
import com.huawei.hms.framework.network.grs.p085e.C2311c;
import com.huawei.hms.framework.network.grs.p086f.C2313b;
import com.huawei.hms.framework.network.grs.p087g.p088j.C2328a;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2330c;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2331d;
import com.huawei.hms.framework.network.grs.p090h.C2335d;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.framework.network.grs.g.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/c.class */
public class C2319c {

    /* renamed from: n */
    private static final String f7426n = "c";

    /* renamed from: a */
    private final GrsBaseInfo f7427a;

    /* renamed from: b */
    private final Context f7428b;

    /* renamed from: c */
    private final C2309a f7429c;

    /* renamed from: d */
    private C2321d f7430d;

    /* renamed from: j */
    private final C2330c f7436j;

    /* renamed from: k */
    private C2331d f7437k;

    /* renamed from: e */
    private final Map<String, Future<C2321d>> f7431e = new ConcurrentHashMap(16);

    /* renamed from: f */
    private final List<C2321d> f7432f = new CopyOnWriteArrayList();

    /* renamed from: g */
    private final JSONArray f7433g = new JSONArray();

    /* renamed from: h */
    private final List<String> f7434h = new CopyOnWriteArrayList();

    /* renamed from: i */
    private final List<String> f7435i = new CopyOnWriteArrayList();

    /* renamed from: l */
    private String f7438l = "";

    /* renamed from: m */
    private long f7439m = 1;

    /* renamed from: com.huawei.hms.framework.network.grs.g.c$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/c$a.class */
    public class CallableC2320a implements Callable<C2321d> {

        /* renamed from: a */
        public final /* synthetic */ ExecutorService f7440a;

        /* renamed from: b */
        public final /* synthetic */ String f7441b;

        /* renamed from: c */
        public final /* synthetic */ C2311c f7442c;

        public CallableC2320a(ExecutorService executorService, String str, C2311c c2311c) {
            C2319c.this = r4;
            this.f7440a = executorService;
            this.f7441b = str;
            this.f7442c = c2311c;
        }

        @Override // java.util.concurrent.Callable
        public C2321d call() {
            return C2319c.this.m37931b(this.f7440a, this.f7441b, this.f7442c);
        }
    }

    public C2319c(C2330c c2330c, C2309a c2309a) {
        this.f7436j = c2330c;
        this.f7427a = c2330c.m37875b();
        this.f7428b = c2330c.m37877a();
        this.f7429c = c2309a;
        m37930c();
        m37929d();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x010e A[LOOP:0: B:3:0x0006->B:33:0x010e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ff A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.framework.network.grs.p087g.C2321d m37935a(java.util.concurrent.ExecutorService r12, java.util.List<java.lang.String> r13, java.lang.String r14, com.huawei.hms.framework.network.grs.p085e.C2311c r15) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.p087g.C2319c.m37935a(java.util.concurrent.ExecutorService, java.util.List, java.lang.String, com.huawei.hms.framework.network.grs.e.c):com.huawei.hms.framework.network.grs.g.d");
    }

    /* renamed from: a */
    private void m37937a(String str, String str2) {
        StringBuilder m8696K = C22128a.m8696K(str2, str);
        String grsReqParamJoint = this.f7427a.getGrsReqParamJoint(false, false, m37928e(), this.f7428b);
        if (!TextUtils.isEmpty(grsReqParamJoint)) {
            m8696K.append("?");
            m8696K.append(grsReqParamJoint);
        }
        this.f7435i.add(m8696K.toString());
    }

    /* renamed from: b */
    private C2321d m37933b(C2321d c2321d) {
        String str;
        Throwable e;
        String str2;
        for (Map.Entry<String, Future<C2321d>> entry : this.f7431e.entrySet()) {
            if (c2321d != null && c2321d.m37898o()) {
                break;
            }
            try {
                c2321d = entry.getValue().get(40000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e2) {
                e = e2;
                str = f7426n;
                str2 = "{checkResponse} when check result, find InterruptedException, check others";
                Logger.m38039w(str, str2, e);
            } catch (CancellationException e3) {
                Logger.m38044i(f7426n, "{checkResponse} when check result, find CancellationException, check others");
            } catch (ExecutionException e4) {
                e = e4;
                str = f7426n;
                str2 = "{checkResponse} when check result, find ExecutionException, check others";
                Logger.m38039w(str, str2, e);
            } catch (TimeoutException e5) {
                Logger.m38040w(f7426n, "{checkResponse} when check result, find TimeoutException, cancel current request task");
                if (!entry.getValue().isCancelled()) {
                    entry.getValue().cancel(true);
                }
            }
        }
        return c2321d;
    }

    /* renamed from: b */
    public C2321d m37931b(ExecutorService executorService, String str, C2311c c2311c) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        C2321d m37935a = m37935a(executorService, this.f7435i, str, c2311c);
        int m37922b = m37935a == null ? 0 : m37935a.m37922b();
        String str2 = f7426n;
        Logger.m38041v(str2, "use 2.0 interface return http's code is：{%s}", Integer.valueOf(m37922b));
        if (m37922b == 404 || m37922b == 401) {
            if (TextUtils.isEmpty(m37928e()) && TextUtils.isEmpty(this.f7427a.getAppName())) {
                Logger.m38044i(str2, "request grs server use 1.0 API must set appName,please check.");
                return null;
            }
            this.f7431e.clear();
            Logger.m38044i(str2, "this env has not deploy new interface,so use old interface.");
            m37935a = m37935a(executorService, this.f7434h, str, c2311c);
        }
        C2322e.m37892a(new ArrayList(this.f7432f), SystemClock.elapsedRealtime() - elapsedRealtime, this.f7433g, this.f7428b);
        this.f7432f.clear();
        return m37935a;
    }

    /* renamed from: b */
    private void m37932b(String str, String str2) {
        if (!TextUtils.isEmpty(this.f7427a.getAppName()) || !TextUtils.isEmpty(m37928e())) {
            StringBuilder m8728C = C22128a.m8728C(str2);
            m8728C.append(String.format(Locale.ROOT, str, TextUtils.isEmpty(m37928e()) ? this.f7427a.getAppName() : m37928e()));
            String grsReqParamJoint = this.f7427a.getGrsReqParamJoint(false, false, "1.0", this.f7428b);
            if (!TextUtils.isEmpty(grsReqParamJoint)) {
                m8728C.append("?");
                m8728C.append(grsReqParamJoint);
            }
            this.f7434h.add(m8728C.toString());
        }
    }

    /* renamed from: c */
    private void m37930c() {
        C2331d m37880a = C2328a.m37880a(this.f7428b);
        if (m37880a == null) {
            Logger.m38040w(f7426n, "g*s***_se****er_conf*** maybe has a big error");
            return;
        }
        m37938a(m37880a);
        List<String> m37870a = m37880a.m37870a();
        if (m37870a == null || m37870a.size() <= 0) {
            Logger.m38042v(f7426n, "maybe grs_base_url config with [],please check.");
        } else if (m37870a.size() > 10) {
            throw new IllegalArgumentException("grs_base_url's count is larger than MAX value 10");
        } else {
            String m37864c = m37880a.m37864c();
            String m37866b = m37880a.m37866b();
            if (m37870a.size() > 0) {
                for (String str : m37870a) {
                    if (!str.startsWith(DtbConstants.HTTPS)) {
                        Logger.m38040w(f7426n, "grs server just support https scheme url,please check.");
                    } else {
                        m37932b(m37864c, str);
                        m37937a(m37866b, str);
                    }
                }
            }
            Logger.m38041v(f7426n, "request to GRS server url is{%s} and {%s}", this.f7434h, this.f7435i);
        }
    }

    /* renamed from: d */
    private void m37929d() {
        String grsParasKey = this.f7427a.getGrsParasKey(true, true, this.f7428b);
        C2311c m37999a = this.f7429c.m37999a();
        this.f7438l = m37999a.m37985a(grsParasKey + "ETag", "");
    }

    /* renamed from: e */
    private String m37928e() {
        String str;
        C2313b m37955a = C2313b.m37955a(this.f7428b.getPackageName(), this.f7427a);
        C2340a m37961a = m37955a != null ? m37955a.m37961a() : null;
        if (m37961a != null) {
            str = m37961a.m37840b();
            Logger.m38041v(f7426n, "get appName from local assets is{%s}", str);
        } else {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    public C2321d m37936a(ExecutorService executorService, String str, C2311c c2311c) {
        C2321d c2321d;
        String str2;
        String str3;
        Throwable e;
        C2331d m37934b;
        if (!this.f7434h.isEmpty() || !this.f7435i.isEmpty()) {
            try {
                c2321d = (C2321d) executorService.submit(new CallableC2320a(executorService, str, c2311c)).get(m37934b() != null ? m37934b.m37863d() : 10, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                e = e2;
                str3 = f7426n;
                str2 = "{submitExcutorTaskWithTimeout} the current thread was interrupted while waiting";
                Logger.m38039w(str3, str2, e);
                c2321d = null;
            } catch (CancellationException e3) {
                Logger.m38044i(f7426n, "{submitExcutorTaskWithTimeout} the computation was cancelled");
                c2321d = null;
            } catch (ExecutionException e4) {
                e = e4;
                str3 = f7426n;
                str2 = "{submitExcutorTaskWithTimeout} the computation threw an ExecutionException";
                Logger.m38039w(str3, str2, e);
                c2321d = null;
            } catch (TimeoutException e5) {
                Logger.m38040w(f7426n, "{submitExcutorTaskWithTimeout} the wait timed out");
                c2321d = null;
            } catch (Exception e6) {
                e = e6;
                str3 = f7426n;
                str2 = "{submitExcutorTaskWithTimeout} catch Exception";
                Logger.m38039w(str3, str2, e);
                c2321d = null;
            }
            return c2321d;
        }
        return null;
    }

    /* renamed from: a */
    public String m37941a() {
        return this.f7438l;
    }

    /* renamed from: a */
    public void m37939a(C2321d c2321d) {
        synchronized (this) {
            this.f7432f.add(c2321d);
            C2321d c2321d2 = this.f7430d;
            if (c2321d2 != null && c2321d2.m37898o()) {
                Logger.m38042v(f7426n, "grsResponseResult is ok");
            } else if (c2321d.m37899n()) {
                Logger.m38044i(f7426n, "GRS server open 503 limiting strategy.");
                C2335d.m37852a(this.f7427a.getGrsParasKey(true, true, this.f7428b), new C2335d.C2336a(c2321d.m37902k(), SystemClock.elapsedRealtime()));
            } else {
                if (c2321d.m37900m()) {
                    Logger.m38044i(f7426n, "GRS server open 304 Not Modified.");
                }
                if (!c2321d.m37898o() && !c2321d.m37900m()) {
                    Logger.m38042v(f7426n, "grsResponseResult has exception so need return");
                    return;
                }
                this.f7430d = c2321d;
                this.f7429c.m37996a(this.f7427a, c2321d, this.f7428b, this.f7436j);
                for (Map.Entry<String, Future<C2321d>> entry : this.f7431e.entrySet()) {
                    if (!entry.getKey().equals(c2321d.m37901l()) && !entry.getValue().isCancelled()) {
                        Logger.m38044i(f7426n, "future cancel");
                        entry.getValue().cancel(true);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m37938a(C2331d c2331d) {
        this.f7437k = c2331d;
    }

    /* renamed from: b */
    public C2331d m37934b() {
        return this.f7437k;
    }
}
