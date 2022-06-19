package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.hatool.h0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/h0.class */
public class C2364h0 {

    /* renamed from: b */
    public static C2364h0 f7520b;

    /* renamed from: a */
    public Context f7521a;

    static {
        new HashMap();
    }

    /* renamed from: a */
    public static C2364h0 m37688a() {
        return m37682b();
    }

    /* renamed from: b */
    public static C2364h0 m37682b() {
        C2364h0 c2364h0;
        synchronized (C2364h0.class) {
            try {
                if (f7520b == null) {
                    f7520b = new C2364h0();
                }
                c2364h0 = f7520b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2364h0;
    }

    /* renamed from: a */
    public void m37687a(Context context) {
        this.f7521a = context;
        m37681b(context);
        C2366i.m37672c().m37673b().m37595h(AbstractC2357f.m37722a());
    }

    /* renamed from: a */
    public void m37686a(String str, int i) {
        if (this.f7521a == null) {
            C2398y.m37470e("hmsSdk", "onReport() null context or SDK was not init.");
            return;
        }
        C2398y.m37473c("hmsSdk", "onReport: Before calling runtaskhandler()");
        m37683a(str, AbstractC2390u0.m37516a(i), AbstractC2349b.m37783g());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: a */
    public void m37685a(String str, int i, String str2, JSONObject jSONObject) {
        ?? currentTimeMillis = System.currentTimeMillis();
        char c = currentTimeMillis;
        if (2 == i) {
            c = AbstractC2390u0.m37514a("yyyy-MM-dd", (long) currentTimeMillis);
        }
        C2378o0.m37553c().m37555a(new j0(str2, jSONObject, str, AbstractC2390u0.m37516a(i), c));
    }

    /* renamed from: a */
    public void m37684a(String str, String str2) {
        if (!AbstractC2351c.m37770a(str, str2)) {
            C2398y.m37473c("hmsSdk", "auto report is closed tag:" + str);
            return;
        }
        long m37760j = AbstractC2351c.m37760j(str, str2);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - m37760j <= 30000) {
            C2398y.m37469f("hmsSdk", "autoReport timeout. interval < 30s ");
            return;
        }
        C2398y.m37479a("hmsSdk", "begin to call onReport!");
        AbstractC2351c.m37769a(str, str2, currentTimeMillis);
        m37683a(str, str2, AbstractC2349b.m37783g());
    }

    /* renamed from: a */
    public void m37683a(String str, String str2, String str3) {
        Context context = this.f7521a;
        if (context == null) {
            C2398y.m37470e("hmsSdk", "onReport() null context or SDK was not init.");
            return;
        }
        String m37689a = C2363h.m37689a(context);
        if (AbstractC2351c.m37765e(str, str2) && !"WIFI".equals(m37689a)) {
            C2398y.m37473c("hmsSdk", "strNetworkType is :" + m37689a);
        } else if (TextUtils.isEmpty(m37689a) || AnalyticsConstants.NETWORK_2G.equals(m37689a)) {
            C2398y.m37470e("hmsSdk", "The network is bad.");
        } else {
            C2378o0.m37553c().m37555a(new k0(str, str2, str3));
        }
    }

    /* renamed from: b */
    public final void m37681b(Context context) {
        String str;
        String m37713d = AbstractC2357f.m37713d(context);
        AbstractC2349b.m37794a(m37713d);
        if (C2394w0.m37493b().m37494a()) {
            String m37696a = C2362g0.m37696a(context, "global_v2", "app_ver", "");
            C2362g0.m37692b(context, "global_v2", "app_ver", m37713d);
            AbstractC2349b.m37792b(m37696a);
            if (!TextUtils.isEmpty(m37696a)) {
                if (m37696a.equals(m37713d)) {
                    return;
                }
                C2398y.m37473c("hmsSdk", "the appVers are different!");
                m37688a().m37683a("", "alltype", m37696a);
                return;
            }
            str = "app ver is first save!";
        } else {
            str = "userManager.isUserUnlocked() == false";
        }
        C2398y.m37473c("hmsSdk", str);
    }
}
