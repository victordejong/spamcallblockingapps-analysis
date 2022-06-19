package com.huawei.hms.framework.network.grs;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.p085e.C2309a;
import com.huawei.hms.framework.network.grs.p085e.C2311c;
import com.huawei.hms.framework.network.grs.p086f.C2313b;
import com.huawei.hms.framework.network.grs.p087g.C2324h;
import com.huawei.hms.framework.network.grs.p087g.C2327i;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2330c;
import com.huawei.hms.framework.network.grs.p090h.C2332a;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.framework.network.grs.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/c.class */
public class C2306c {

    /* renamed from: i */
    private static final String f7373i = "c";

    /* renamed from: j */
    private static final ExecutorService f7374j = ExecutorsUtils.newSingleThreadExecutor("GRS_GrsClient-Init");

    /* renamed from: k */
    private static AtomicInteger f7375k = new AtomicInteger(0);

    /* renamed from: a */
    private GrsBaseInfo f7376a;

    /* renamed from: b */
    private Context f7377b;

    /* renamed from: c */
    private C2324h f7378c;

    /* renamed from: d */
    private C2309a f7379d;

    /* renamed from: e */
    private C2311c f7380e;

    /* renamed from: f */
    private C2311c f7381f;

    /* renamed from: g */
    private C2304a f7382g;

    /* renamed from: h */
    private FutureTask<Boolean> f7383h;

    /* renamed from: com.huawei.hms.framework.network.grs.c$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/c$a.class */
    public class CallableC2307a implements Callable<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ Context f7384a;

        /* renamed from: b */
        public final /* synthetic */ GrsBaseInfo f7385b;

        public CallableC2307a(Context context, GrsBaseInfo grsBaseInfo) {
            C2306c.this = r4;
            this.f7384a = context;
            this.f7385b = grsBaseInfo;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() {
            C2306c.this.f7378c = new C2324h();
            C2306c c2306c = C2306c.this;
            Context context = this.f7384a;
            c2306c.f7380e = new C2311c(context, GrsApp.getInstance().getBrand(AnalyticsConstants.DELIMITER_MAIN) + "share_pre_grs_conf_");
            C2306c c2306c2 = C2306c.this;
            Context context2 = this.f7384a;
            c2306c2.f7381f = new C2311c(context2, GrsApp.getInstance().getBrand(AnalyticsConstants.DELIMITER_MAIN) + "share_pre_grs_services_");
            C2306c c2306c3 = C2306c.this;
            c2306c3.f7379d = new C2309a(c2306c3.f7380e, C2306c.this.f7381f, C2306c.this.f7378c);
            C2306c c2306c4 = C2306c.this;
            c2306c4.f7382g = new C2304a(c2306c4.f7376a, C2306c.this.f7379d, C2306c.this.f7378c, C2306c.this.f7381f);
            if (C2306c.f7375k.incrementAndGet() <= 2 || C2313b.m37955a(this.f7384a.getPackageName(), C2306c.this.f7376a) == null) {
                new C2313b(this.f7384a, this.f7385b, true).m37956a(this.f7385b);
            }
            String m37874c = new C2330c(this.f7385b, this.f7384a).m37874c();
            String str = C2306c.f7373i;
            Logger.m38042v(str, "scan serviceSet is:" + m37874c);
            String m37985a = C2306c.this.f7381f.m37985a("services", "");
            String m37882a = C2327i.m37882a(m37985a, m37874c);
            if (!TextUtils.isEmpty(m37882a)) {
                C2306c.this.f7381f.m37983b("services", m37882a);
                String str2 = C2306c.f7373i;
                Logger.m38042v(str2, "postList is:" + m37882a + " currentServices:" + m37985a);
                if (!m37882a.equals(m37985a)) {
                    C2306c.this.f7378c.m37884a(C2306c.this.f7376a.getGrsParasKey(true, true, this.f7384a));
                    C2306c.this.f7378c.m37885a(new C2330c(this.f7385b, this.f7384a), (String) null, C2306c.this.f7381f);
                }
            }
            C2306c c2306c5 = C2306c.this;
            c2306c5.m38010a(c2306c5.f7380e.m37988a());
            C2306c.this.f7379d.m37992b(this.f7385b, this.f7384a);
            return Boolean.TRUE;
        }
    }

    public C2306c(Context context, GrsBaseInfo grsBaseInfo) {
        this.f7383h = null;
        this.f7377b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        m38022a(grsBaseInfo);
        GrsBaseInfo grsBaseInfo2 = this.f7376a;
        FutureTask<Boolean> futureTask = new FutureTask<>(new CallableC2307a(this.f7377b, grsBaseInfo2));
        this.f7383h = futureTask;
        f7374j.execute(futureTask);
        Logger.m38043i(f7373i, "GrsClient Instance is init, GRS SDK version: %s, GrsBaseInfoParam: app_name=%s, reg_country=%s, ser_country=%s, issue_country=%s", C2332a.m37862a(), grsBaseInfo2.getAppName(), grsBaseInfo.getRegCountry(), grsBaseInfo.getSerCountry(), grsBaseInfo.getIssueCountry());
    }

    public C2306c(GrsBaseInfo grsBaseInfo) {
        this.f7383h = null;
        m38022a(grsBaseInfo);
    }

    /* renamed from: a */
    private void m38022a(GrsBaseInfo grsBaseInfo) {
        try {
            this.f7376a = grsBaseInfo.clone();
        } catch (CloneNotSupportedException e) {
            Logger.m38039w(f7373i, "GrsClient catch CloneNotSupportedException", e);
            this.f7376a = grsBaseInfo.copy();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* renamed from: a */
    public void m38010a(Map<String, ?> map) {
        if (map == null || map.isEmpty()) {
            Logger.m38042v(f7373i, "sp's content is empty.");
            return;
        }
        for (String str : map.keySet()) {
            if (str.endsWith("time")) {
                String m37985a = this.f7380e.m37985a(str, "");
                ?? r12 = false;
                if (!TextUtils.isEmpty(m37985a)) {
                    r12 = false;
                    if (m37985a.matches("\\d+")) {
                        try {
                            r12 = Long.parseLong(m37985a);
                        } catch (NumberFormatException e) {
                            Logger.m38039w(f7373i, "convert expire time from String to Long catch NumberFormatException.", e);
                            r12 = false;
                        }
                    }
                }
                if (!m38023a(r12 == true ? 1L : 0L)) {
                    Logger.m38044i(f7373i, "init interface auto clear some invalid sp's data.");
                    String substring = str.substring(0, str.length() - 4);
                    String m8543z2 = C22128a.m8543z2(substring, "ETag");
                    this.f7380e.m37986a(substring);
                    this.f7380e.m37986a(str);
                    this.f7380e.m37986a(m8543z2);
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m38023a(long j) {
        return System.currentTimeMillis() - j <= 604800000;
    }

    /* renamed from: e */
    private boolean m38002e() {
        boolean z;
        String str;
        String str2;
        Throwable e;
        FutureTask<Boolean> futureTask = this.f7383h;
        if (futureTask == null) {
            return false;
        }
        try {
            z = futureTask.get(8L, TimeUnit.SECONDS).booleanValue();
        } catch (InterruptedException e2) {
            e = e2;
            str2 = f7373i;
            str = "init compute task interrupted.";
            Logger.m38039w(str2, str, e);
            z = false;
        } catch (CancellationException e3) {
            Logger.m38044i(f7373i, "init compute task canceled.");
            z = false;
        } catch (ExecutionException e4) {
            e = e4;
            str2 = f7373i;
            str = "init compute task failed.";
            Logger.m38039w(str2, str, e);
            z = false;
        } catch (TimeoutException e5) {
            Logger.m38040w(f7373i, "init compute task timed out");
            z = false;
        } catch (Exception e6) {
            e = e6;
            str2 = f7373i;
            str = "init compute task occur unknown Exception";
            Logger.m38039w(str2, str, e);
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public String m38012a(String str, String str2) {
        if (this.f7376a == null || str == null || str2 == null) {
            Logger.m38040w(f7373i, "invalid para!");
            return null;
        } else if (!m38002e()) {
            return null;
        } else {
            return this.f7382g.m38029a(str, str2, this.f7377b);
        }
    }

    /* renamed from: a */
    public Map<String, String> m38014a(String str) {
        if (this.f7376a != null && str != null) {
            return m38002e() ? this.f7382g.m38033a(str, this.f7377b) : new HashMap();
        }
        Logger.m38040w(f7373i, "invalid para!");
        return new HashMap();
    }

    /* renamed from: a */
    public void m38024a() {
        if (!m38002e()) {
            return;
        }
        String grsParasKey = this.f7376a.getGrsParasKey(true, true, this.f7377b);
        this.f7380e.m37986a(grsParasKey);
        C2311c c2311c = this.f7380e;
        c2311c.m37986a(grsParasKey + "time");
        C2311c c2311c2 = this.f7380e;
        c2311c2.m37986a(grsParasKey + "ETag");
        this.f7378c.m37884a(grsParasKey);
    }

    /* renamed from: a */
    public void m38013a(String str, IQueryUrlsCallBack iQueryUrlsCallBack) {
        if (iQueryUrlsCallBack == null) {
            Logger.m38040w(f7373i, "IQueryUrlsCallBack is must not null for process continue.");
        } else if (this.f7376a == null || str == null) {
            iQueryUrlsCallBack.onCallBackFail(-6);
        } else if (m38002e()) {
            this.f7382g.m38032a(str, iQueryUrlsCallBack, this.f7377b);
        } else {
            Logger.m38044i(f7373i, "grs init task has not completed.");
            iQueryUrlsCallBack.onCallBackFail(-7);
        }
    }

    /* renamed from: a */
    public void m38011a(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack) {
        if (iQueryUrlCallBack == null) {
            Logger.m38040w(f7373i, "IQueryUrlCallBack is must not null for process continue.");
        } else if (this.f7376a == null || str == null || str2 == null) {
            iQueryUrlCallBack.onCallBackFail(-6);
        } else if (m38002e()) {
            this.f7382g.m38028a(str, str2, iQueryUrlCallBack, this.f7377b);
        } else {
            Logger.m38044i(f7373i, "grs init task has not completed.");
            iQueryUrlCallBack.onCallBackFail(-7);
        }
    }

    /* renamed from: a */
    public boolean m38015a(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2306c.class == obj.getClass() && (obj instanceof C2306c)) {
            return this.f7376a.compare(((C2306c) obj).f7376a);
        }
        return false;
    }

    /* renamed from: b */
    public boolean m38009b() {
        GrsBaseInfo grsBaseInfo;
        Context context;
        if (!m38002e() || (grsBaseInfo = this.f7376a) == null || (context = this.f7377b) == null) {
            return false;
        }
        this.f7379d.m37998a(grsBaseInfo, context);
        return true;
    }
}
