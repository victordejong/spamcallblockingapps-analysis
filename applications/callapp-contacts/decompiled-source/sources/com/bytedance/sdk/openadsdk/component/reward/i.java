package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.multipro.d.a;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/i.class */
class i {

    /* renamed from: a  reason: collision with root package name */
    private String f8690a;

    /* renamed from: b  reason: collision with root package name */
    private Context f8691b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, String str) {
        this.f8691b = context;
        this.f8690a = TextUtils.isEmpty(str) ? "" : str;
    }

    private Context b() {
        Context context = this.f8691b;
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        return context2;
    }

    private String c() {
        return this.f8690a + "_adslot";
    }

    private String d() {
        return this.f8690a + "_adslot_preload";
    }

    private SharedPreferences f(String str) {
        try {
            if (b() != null) {
                return b().getSharedPreferences(str, 0);
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private String g(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "0";
        }
        return this.f8690a + "_cache_" + str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSlot a() {
        String str;
        AdSlot adSlot = null;
        try {
            if (b.b()) {
                str = a.b(d(), "preload_data", (String) null);
                a.a(d());
            } else {
                SharedPreferences f = f(d());
                if (f != null) {
                    str = f.getString("preload_data", null);
                    f.edit().clear().apply();
                } else {
                    str = null;
                }
            }
            adSlot = AdSlot.getSlot(str != null ? new JSONObject(str) : null);
        } catch (Throwable th) {
        }
        return adSlot;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        try {
            if (b.b()) {
                return a.b(g(str), "material_data", (String) null);
            }
            SharedPreferences f = f(g(str));
            if (f != null) {
                return f.getString("material_data", null);
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdSlot adSlot) {
        if (adSlot != null) {
            try {
                if (!TextUtils.isEmpty(adSlot.getCodeId())) {
                    String jSONObject = adSlot.toJsonObj().toString();
                    if (b.b()) {
                        a.a(c(), adSlot.getCodeId(), jSONObject);
                        return;
                    }
                    SharedPreferences f = f(c());
                    if (f != null) {
                        f.edit().putString(adSlot.getCodeId(), jSONObject).apply();
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        try {
            if (b.b()) {
                a.a(g(str), "has_played", Boolean.FALSE);
                a.a(g(str), "create_time", Long.valueOf(System.currentTimeMillis()));
                a.a(g(str), "material_data", str2);
                return;
            }
            SharedPreferences f = f(g(str));
            if (f != null) {
                f.edit().putBoolean("has_played", false).putLong("create_time", System.currentTimeMillis()).putString("material_data", str2).apply();
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long b(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            boolean r0 = com.bytedance.sdk.openadsdk.multipro.b.b()     // Catch: all -> 0x0037
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0018
            r0 = r5
            r1 = r6
            java.lang.String r0 = r0.g(r1)     // Catch: all -> 0x0037
            java.lang.String r1 = "create_time"
            r2 = 0
            long r0 = com.bytedance.sdk.openadsdk.multipro.d.a.a(r0, r1, r2)     // Catch: all -> 0x0037
            return r0
        L_0x0018:
            r0 = r5
            r1 = r5
            r2 = r6
            java.lang.String r1 = r1.g(r2)     // Catch: all -> 0x0037
            android.content.SharedPreferences r0 = r0.f(r1)     // Catch: all -> 0x0037
            r6 = r0
            r0 = r7
            r10 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0034
            r0 = r6
            java.lang.String r1 = "create_time"
            r2 = 0
            long r0 = r0.getLong(r1, r2)     // Catch: all -> 0x0037
            r10 = r0
        L_0x0034:
            r0 = r10
            return r0
        L_0x0037:
            r6 = move-exception
            r0 = r7
            r10 = r0
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.i.b(java.lang.String):long");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(AdSlot adSlot) {
        if (adSlot != null) {
            try {
                if (!TextUtils.isEmpty(adSlot.getCodeId())) {
                    String jSONObject = adSlot.toJsonObj().toString();
                    if (b.b()) {
                        a.a(d(), "preload_data", jSONObject);
                        return;
                    }
                    SharedPreferences f = f(d());
                    if (f != null) {
                        f.edit().putString("preload_data", jSONObject).apply();
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(String str) {
        try {
            if (b.b()) {
                return a.a(g(str), "has_played", true);
            }
            SharedPreferences f = f(g(str));
            if (f != null) {
                return f.getBoolean("has_played", true);
            }
            return true;
        } catch (Throwable th) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        try {
            if (b.b()) {
                a.a(g(str));
                return;
            }
            SharedPreferences f = f(g(str));
            if (f != null) {
                f.edit().clear().apply();
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSlot e(String str) {
        String str2;
        try {
            if (b.b()) {
                str2 = a.b(c(), str, (String) null);
            } else {
                SharedPreferences f = f(c());
                str2 = f != null ? f.getString(str, null) : null;
            }
            return AdSlot.getSlot(str2 != null ? new JSONObject(str2) : null);
        } catch (Throwable th) {
            return null;
        }
    }
}
