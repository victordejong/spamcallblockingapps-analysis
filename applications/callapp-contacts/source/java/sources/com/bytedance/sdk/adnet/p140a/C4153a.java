package com.bytedance.sdk.adnet.p140a;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.core.C4203e;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4181f;
import com.bytedance.sdk.adnet.p142c.AbstractC4186a;
import com.bytedance.sdk.adnet.p142c.C4191f;
import com.bytedance.sdk.adnet.p143d.C4228d;
import com.bytedance.sdk.adnet.p143d.C4234f;
import com.bytedance.sdk.adnet.p143d.C4235g;
import com.bytedance.sdk.adnet.p143d.C4236h;
import com.bytedance.sdk.adnet.p143d.HandlerC4237i;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.callapp.contacts.model.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.adnet.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/a/a.class */
public class C4153a implements AbstractC4186a, HandlerC4237i.AbstractC4238a {

    /* renamed from: b */
    private static C4153a f15235b;

    /* renamed from: c */
    private final boolean f15237c;

    /* renamed from: j */
    private final Context f15244j;

    /* renamed from: d */
    private volatile boolean f15238d = false;

    /* renamed from: e */
    private boolean f15239e = true;

    /* renamed from: f */
    private boolean f15240f = false;

    /* renamed from: g */
    private long f15241g = 0;

    /* renamed from: h */
    private long f15242h = 0;

    /* renamed from: i */
    private AtomicBoolean f15243i = new AtomicBoolean(false);

    /* renamed from: k */
    private volatile boolean f15245k = false;

    /* renamed from: a */
    final HandlerC4237i f15236a = new HandlerC4237i(Looper.getMainLooper(), this);

    private C4153a(Context context, boolean z) {
        this.f15244j = context;
        this.f15237c = z;
    }

    /* renamed from: a */
    public static C4153a m36297a(Context context) {
        C4153a c4153a;
        synchronized (C4153a.class) {
            try {
                if (f15235b == null) {
                    C4153a c4153a2 = new C4153a(context.getApplicationContext(), C4235g.m36077b(context));
                    f15235b = c4153a2;
                    C4151a.m36306a(c4153a2);
                }
                c4153a = f15235b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4153a;
    }

    /* renamed from: a */
    public void m36298a(final int i) {
        String[] m36284d = m36284d();
        if (m36284d == null || m36284d.length <= i) {
            m36291b(102);
            return;
        }
        String str = m36284d[i];
        if (TextUtils.isEmpty(str)) {
            m36291b(102);
            return;
        }
        try {
            String m36288b = m36288b(str);
            if (TextUtils.isEmpty(m36288b)) {
                m36291b(102);
            } else {
                new C4181f(0, m36288b, new JSONObject(), new C4218m.AbstractC4219a<JSONObject>() { // from class: com.bytedance.sdk.adnet.a.a.3
                    @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                    /* renamed from: a */
                    public void mo33422a(C4218m<JSONObject> c4218m) {
                        JSONObject jSONObject = c4218m.f15468a;
                        if (jSONObject == null) {
                            C4153a.this.m36298a(i + 1);
                            return;
                        }
                        String str2 = null;
                        try {
                            str2 = jSONObject.getString("message");
                        } catch (Exception e) {
                        }
                        if (!"success".equals(str2)) {
                            C4153a.this.m36298a(i + 1);
                            return;
                        }
                        try {
                            if (C4153a.this.m36294a(jSONObject)) {
                                C4153a.this.m36291b(101);
                            } else {
                                C4153a.this.m36298a(i + 1);
                            }
                        } catch (Exception e2) {
                        }
                    }

                    @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                    /* renamed from: b */
                    public void mo33419b(C4218m<JSONObject> c4218m) {
                        C4153a.this.m36298a(i + 1);
                    }
                }).setRetryPolicy(new C4203e().m36171a(10000).m36170b(0)).build(C4151a.m36309a(this.f15244j));
            }
        } catch (Throwable th) {
            C4228d.m36086b("AppConfig", "try app config exception: ".concat(String.valueOf(th)));
        }
    }

    /* renamed from: a */
    public boolean m36294a(Object obj) throws Exception {
        JSONObject jSONObject;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            JSONObject jSONObject2 = new JSONObject(str);
            jSONObject = jSONObject2;
            if (!"success".equals(jSONObject2.getString("message"))) {
                return false;
            }
        } else {
            jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        }
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("data");
        synchronized (this) {
            SharedPreferences.Editor edit = this.f15244j.getSharedPreferences("ss_app_config", 0).edit();
            edit.putLong("last_refresh_time", System.currentTimeMillis());
            edit.apply();
        }
        if (C4191f.m36225a().m36208e() == null) {
            return true;
        }
        C4191f.m36225a().m36208e().m36229a(jSONObject3);
        return true;
    }

    /* renamed from: b */
    private String m36288b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Address mo33449a = C4151a.m36311a().mo33449a(this.f15244j);
        C4236h c4236h = new C4236h("https://" + str + "/get_domains/v4/");
        if (mo33449a != null && mo33449a.hasLatitude() && mo33449a.hasLongitude()) {
            c4236h.m36074a("latitude", mo33449a.getLatitude());
            c4236h.m36074a("longitude", mo33449a.getLongitude());
            String locality = mo33449a.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                c4236h.m36072a("city", Uri.encode(locality));
            }
        }
        if (this.f15238d) {
            c4236h.m36073a("force", 1);
        }
        try {
            c4236h.m36072a("abi", Build.VERSION.SDK_INT < 21 ? Build.CPU_ABI : Build.SUPPORTED_ABIS[0]);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        c4236h.m36073a("aid", C4151a.m36311a().mo33450a());
        c4236h.m36072a("device_platform", C4151a.m36311a().mo33445c());
        c4236h.m36072a(AppsFlyerProperties.CHANNEL, C4151a.m36311a().mo33446b());
        c4236h.m36073a("version_code", C4151a.m36311a().mo33444d());
        c4236h.m36072a("custom_info_1", C4151a.m36311a().mo33443e());
        return c4236h.toString();
    }

    /* renamed from: b */
    public void m36291b(int i) {
        HandlerC4237i handlerC4237i = this.f15236a;
        if (handlerC4237i != null) {
            handlerC4237i.sendEmptyMessage(i);
        }
    }

    /* renamed from: b */
    public static void m36290b(Context context) {
        C4153a c4153a = f15235b;
        if (c4153a != null) {
            if (C4235g.m36077b(context)) {
                c4153a.m36293a(true);
            } else {
                c4153a.m36299a();
            }
        }
    }

    /* renamed from: d */
    private void m36283d(boolean z) {
        if (this.f15240f) {
            return;
        }
        if (this.f15239e) {
            this.f15239e = false;
            this.f15241g = 0L;
            this.f15242h = 0L;
        }
        char c = z ? (char) 52096 : (char) 11776;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f15241g <= c || currentTimeMillis - this.f15242h <= 120000) {
            return;
        }
        boolean m36080a = C4234f.m36080a(this.f15244j);
        if (this.f15245k && !m36080a) {
            return;
        }
        m36287b(m36080a);
    }

    /* renamed from: e */
    private boolean m36282e() {
        String[] m36284d = m36284d();
        if (m36284d == null || m36284d.length == 0) {
            return false;
        }
        m36298a(0);
        return false;
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4186a
    /* renamed from: a */
    public String mo36231a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            try {
                str = C4191f.m36225a().m36218a(str);
            } catch (Throwable th) {
            }
            return str;
        }
        try {
            if (this.f15237c) {
                m36286c();
            } else {
                m36292b();
            }
            str = C4191f.m36225a().m36218a(str);
        } catch (Throwable th2) {
        }
        return str;
    }

    /* renamed from: a */
    public void m36299a() {
        m36293a(false);
    }

    @Override // com.bytedance.sdk.adnet.p143d.HandlerC4237i.AbstractC4238a
    /* renamed from: a */
    public void mo36069a(Message message) {
        int i = message.what;
        if (i == 101) {
            this.f15240f = false;
            this.f15241g = System.currentTimeMillis();
            C4228d.m36086b("TNCManager", "doRefresh, succ");
            if (this.f15239e) {
                m36299a();
            }
            this.f15243i.set(false);
        } else if (i != 102) {
        } else {
            this.f15240f = false;
            if (this.f15239e) {
                m36299a();
            }
            C4228d.m36086b("TNCManager", "doRefresh, error");
            this.f15243i.set(false);
        }
    }

    /* renamed from: a */
    public void m36293a(boolean z) {
        synchronized (this) {
            if (this.f15237c) {
                m36283d(z);
                return;
            }
            if (this.f15241g <= 0) {
                try {
                    C5052e.m33158b(new AbstractRunnableC5055g("adnet tryRefreshConfig") { // from class: com.bytedance.sdk.adnet.a.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            C4153a.this.m36292b();
                        }
                    });
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: b */
    void m36292b() {
        synchronized (this) {
            if (System.currentTimeMillis() - this.f15241g > Constants.HOUR_IN_MILLIS) {
                this.f15241g = System.currentTimeMillis();
                try {
                    if (C4191f.m36225a().m36208e() != null) {
                        C4191f.m36225a().m36208e().m36228b();
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: b */
    public boolean m36287b(final boolean z) {
        C4228d.m36086b("TNCManager", "doRefresh: updating state " + this.f15243i.get());
        if (!this.f15243i.compareAndSet(false, true)) {
            C4228d.m36086b("TNCManager", "doRefresh, already running");
            return false;
        }
        if (z) {
            this.f15242h = System.currentTimeMillis();
        }
        C5052e.m33158b(new AbstractRunnableC5055g("adnet doRefresh") { // from class: com.bytedance.sdk.adnet.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                C4153a.this.m36285c(z);
            }
        });
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: c */
    public void m36286c() {
        synchronized (this) {
            if (this.f15245k) {
                return;
            }
            this.f15245k = true;
            ?? r0 = this.f15244j.getSharedPreferences("ss_app_config", 0).getLong("last_refresh_time", 0L);
            ?? currentTimeMillis = System.currentTimeMillis();
            char c = r0;
            if (r0 > currentTimeMillis) {
                c = currentTimeMillis;
            }
            this.f15241g = c;
            if (C4191f.m36225a().m36208e() != null) {
                C4191f.m36225a().m36208e().m36230a();
            }
        }
    }

    /* renamed from: c */
    void m36285c(boolean z) {
        C4228d.m36086b("TNCManager", "doRefresh, actual request");
        m36286c();
        this.f15240f = true;
        if (!z) {
            this.f15236a.sendEmptyMessage(102);
            return;
        }
        try {
            m36282e();
        } catch (Exception e) {
            this.f15243i.set(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0.length <= 0) goto L6;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] m36284d() {
        /*
            r2 = this;
            com.bytedance.sdk.adnet.c.b r0 = com.bytedance.sdk.adnet.C4151a.m36311a()
            java.lang.String[] r0 = r0.mo33442f()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L14
            r0 = r3
            r4 = r0
            r0 = r3
            int r0 = r0.length
            if (r0 > 0) goto L19
        L14:
            r0 = 0
            java.lang.String[] r0 = new java.lang.String[r0]
            r4 = r0
        L19:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.p140a.C4153a.m36284d():java.lang.String[]");
    }
}
