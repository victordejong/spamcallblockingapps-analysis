package com.bytedance.sdk.adnet.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.adnet.b.f;
import com.bytedance.sdk.adnet.core.e;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.d.d;
import com.bytedance.sdk.adnet.d.g;
import com.bytedance.sdk.adnet.d.h;
import com.bytedance.sdk.adnet.d.i;
import com.callapp.contacts.model.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/a/a.class */
public class a implements com.bytedance.sdk.adnet.c.a, i.a {

    /* renamed from: b  reason: collision with root package name */
    private static a f8184b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8186c;
    private final Context j;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f8187d = false;
    private boolean e = true;
    private boolean f = false;
    private long g = 0;
    private long h = 0;
    private AtomicBoolean i = new AtomicBoolean(false);
    private volatile boolean k = false;

    /* renamed from: a  reason: collision with root package name */
    final i f8185a = new i(Looper.getMainLooper(), this);

    private a(Context context, boolean z) {
        this.j = context;
        this.f8186c = z;
    }

    public static a a(Context context) {
        a aVar;
        synchronized (a.class) {
            try {
                if (f8184b == null) {
                    a aVar2 = new a(context.getApplicationContext(), g.b(context));
                    f8184b = aVar2;
                    com.bytedance.sdk.adnet.a.a(aVar2);
                }
                aVar = f8184b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i) {
        String[] d2 = d();
        if (d2 == null || d2.length <= i) {
            b(102);
            return;
        }
        String str = d2[i];
        if (TextUtils.isEmpty(str)) {
            b(102);
            return;
        }
        try {
            String b2 = b(str);
            if (TextUtils.isEmpty(b2)) {
                b(102);
            } else {
                new f(0, b2, new JSONObject(), new m.a<JSONObject>() { // from class: com.bytedance.sdk.adnet.a.a.3
                    @Override // com.bytedance.sdk.adnet.core.m.a
                    public void a(m<JSONObject> mVar) {
                        JSONObject jSONObject = mVar.f8332a;
                        if (jSONObject == null) {
                            a.this.a(i + 1);
                            return;
                        }
                        String str2 = null;
                        try {
                            str2 = jSONObject.getString("message");
                        } catch (Exception e) {
                        }
                        if (!"success".equals(str2)) {
                            a.this.a(i + 1);
                            return;
                        }
                        try {
                            if (a.this.a(jSONObject)) {
                                a.this.b(101);
                            } else {
                                a.this.a(i + 1);
                            }
                        } catch (Exception e2) {
                        }
                    }

                    @Override // com.bytedance.sdk.adnet.core.m.a
                    public void b(m<JSONObject> mVar) {
                        a.this.a(i + 1);
                    }
                }).setRetryPolicy(new e().a(10000).b(0)).build(com.bytedance.sdk.adnet.a.a(this.j));
            }
        } catch (Throwable th) {
            d.b("AppConfig", "try app config exception: ".concat(String.valueOf(th)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Object obj) throws Exception {
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
            SharedPreferences.Editor edit = this.j.getSharedPreferences("ss_app_config", 0).edit();
            edit.putLong("last_refresh_time", System.currentTimeMillis());
            edit.apply();
        }
        if (com.bytedance.sdk.adnet.c.f.a().e() == null) {
            return true;
        }
        com.bytedance.sdk.adnet.c.f.a().e().a(jSONObject3);
        return true;
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Address a2 = com.bytedance.sdk.adnet.a.a().a(this.j);
        h hVar = new h("https://" + str + "/get_domains/v4/");
        if (a2 != null && a2.hasLatitude() && a2.hasLongitude()) {
            hVar.a("latitude", a2.getLatitude());
            hVar.a("longitude", a2.getLongitude());
            String locality = a2.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                hVar.a("city", Uri.encode(locality));
            }
        }
        if (this.f8187d) {
            hVar.a("force", 1);
        }
        try {
            hVar.a("abi", Build.VERSION.SDK_INT < 21 ? Build.CPU_ABI : Build.SUPPORTED_ABIS[0]);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        hVar.a("aid", com.bytedance.sdk.adnet.a.a().a());
        hVar.a("device_platform", com.bytedance.sdk.adnet.a.a().c());
        hVar.a(AppsFlyerProperties.CHANNEL, com.bytedance.sdk.adnet.a.a().b());
        hVar.a("version_code", com.bytedance.sdk.adnet.a.a().d());
        hVar.a("custom_info_1", com.bytedance.sdk.adnet.a.a().e());
        return hVar.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        i iVar = this.f8185a;
        if (iVar != null) {
            iVar.sendEmptyMessage(i);
        }
    }

    public static void b(Context context) {
        a aVar = f8184b;
        if (aVar == null) {
            return;
        }
        if (g.b(context)) {
            aVar.a(true);
        } else {
            aVar.a();
        }
    }

    private void d(boolean z) {
        if (!this.f) {
            if (this.e) {
                this.e = false;
                this.g = 0L;
                this.h = 0L;
            }
            long j = z ? 10800000L : 43200000L;
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.g > j && currentTimeMillis - this.h > 120000) {
                boolean a2 = com.bytedance.sdk.adnet.d.f.a(this.j);
                if (!this.k || a2) {
                    b(a2);
                }
            }
        }
    }

    private boolean e() {
        String[] d2 = d();
        if (d2 == null || d2.length == 0) {
            return false;
        }
        a(0);
        return false;
    }

    @Override // com.bytedance.sdk.adnet.c.a
    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            try {
                str = com.bytedance.sdk.adnet.c.f.a().a(str);
            } catch (Throwable th) {
            }
            return str;
        }
        try {
            if (this.f8186c) {
                c();
            } else {
                b();
            }
            str = com.bytedance.sdk.adnet.c.f.a().a(str);
        } catch (Throwable th2) {
        }
        return str;
    }

    public void a() {
        a(false);
    }

    @Override // com.bytedance.sdk.adnet.d.i.a
    public void a(Message message) {
        int i = message.what;
        if (i == 101) {
            this.f = false;
            this.g = System.currentTimeMillis();
            d.b("TNCManager", "doRefresh, succ");
            if (this.e) {
                a();
            }
            this.i.set(false);
        } else if (i == 102) {
            this.f = false;
            if (this.e) {
                a();
            }
            d.b("TNCManager", "doRefresh, error");
            this.i.set(false);
        }
    }

    public void a(boolean z) {
        synchronized (this) {
            if (this.f8186c) {
                d(z);
                return;
            }
            if (this.g <= 0) {
                try {
                    com.bytedance.sdk.openadsdk.l.e.b(new com.bytedance.sdk.openadsdk.l.g("adnet tryRefreshConfig") { // from class: com.bytedance.sdk.adnet.a.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.b();
                        }
                    });
                } catch (Throwable th) {
                }
            }
        }
    }

    void b() {
        synchronized (this) {
            if (System.currentTimeMillis() - this.g > Constants.HOUR_IN_MILLIS) {
                this.g = System.currentTimeMillis();
                try {
                    if (com.bytedance.sdk.adnet.c.f.a().e() != null) {
                        com.bytedance.sdk.adnet.c.f.a().e().b();
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    public boolean b(final boolean z) {
        d.b("TNCManager", "doRefresh: updating state " + this.i.get());
        if (!this.i.compareAndSet(false, true)) {
            d.b("TNCManager", "doRefresh, already running");
            return false;
        }
        if (z) {
            this.h = System.currentTimeMillis();
        }
        com.bytedance.sdk.openadsdk.l.e.b(new com.bytedance.sdk.openadsdk.l.g("adnet doRefresh") { // from class: com.bytedance.sdk.adnet.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.this.c(z);
            }
        });
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c() {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            boolean r0 = r0.k     // Catch: all -> 0x0054
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x000e
            r0 = r5
            monitor-exit(r0)
            return
        L_0x000e:
            r0 = r5
            r1 = 1
            r0.k = r1     // Catch: all -> 0x0054
            r0 = r5
            android.content.Context r0 = r0.j     // Catch: all -> 0x0054
            java.lang.String r1 = "ss_app_config"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)     // Catch: all -> 0x0054
            java.lang.String r1 = "last_refresh_time"
            r2 = 0
            long r0 = r0.getLong(r1, r2)     // Catch: all -> 0x0054
            r7 = r0
            long r0 = java.lang.System.currentTimeMillis()     // Catch: all -> 0x0054
            r9 = r0
            r0 = r7
            r11 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0039
            r0 = r9
            r11 = r0
        L_0x0039:
            r0 = r5
            r1 = r11
            r0.g = r1     // Catch: all -> 0x0054
            com.bytedance.sdk.adnet.c.f r0 = com.bytedance.sdk.adnet.c.f.a()     // Catch: all -> 0x0054
            com.bytedance.sdk.adnet.c.e r0 = r0.e()     // Catch: all -> 0x0054
            if (r0 == 0) goto L_0x0051
            com.bytedance.sdk.adnet.c.f r0 = com.bytedance.sdk.adnet.c.f.a()     // Catch: all -> 0x0054
            com.bytedance.sdk.adnet.c.e r0 = r0.e()     // Catch: all -> 0x0054
            r0.a()     // Catch: all -> 0x0054
        L_0x0051:
            r0 = r5
            monitor-exit(r0)
            return
        L_0x0054:
            r13 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.a.a.c():void");
    }

    void c(boolean z) {
        d.b("TNCManager", "doRefresh, actual request");
        c();
        this.f = true;
        if (!z) {
            this.f8185a.sendEmptyMessage(102);
            return;
        }
        try {
            e();
        } catch (Exception e) {
            this.i.set(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0.length <= 0) goto L_0x0014;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] d() {
        /*
            r2 = this;
            com.bytedance.sdk.adnet.c.b r0 = com.bytedance.sdk.adnet.a.a()
            java.lang.String[] r0 = r0.f()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0014
            r0 = r3
            r4 = r0
            r0 = r3
            int r0 = r0.length
            if (r0 > 0) goto L_0x0019
        L_0x0014:
            r0 = 0
            java.lang.String[] r0 = new java.lang.String[r0]
            r4 = r0
        L_0x0019:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.a.a.d():java.lang.String[]");
    }
}
