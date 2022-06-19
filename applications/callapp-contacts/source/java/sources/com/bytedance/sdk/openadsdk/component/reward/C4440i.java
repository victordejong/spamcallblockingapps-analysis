package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/i.class */
class C4440i {

    /* renamed from: a */
    private String f16186a;

    /* renamed from: b */
    private Context f16187b;

    public C4440i(Context context, String str) {
        this.f16187b = context;
        this.f16186a = TextUtils.isEmpty(str) ? "" : str;
    }

    /* renamed from: b */
    private Context m35581b() {
        Context context = this.f16187b;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }

    /* renamed from: c */
    private String m35578c() {
        return this.f16186a + "_adslot";
    }

    /* renamed from: d */
    private String m35576d() {
        return this.f16186a + "_adslot_preload";
    }

    /* renamed from: f */
    private SharedPreferences m35573f(String str) {
        try {
            if (m35581b() == null) {
                return null;
            }
            return m35581b().getSharedPreferences(str, 0);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    private String m35572g(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "0";
        }
        return this.f16186a + "_cache_" + str2;
    }

    /* renamed from: a */
    public AdSlot m35585a() {
        AdSlot adSlot;
        String str;
        try {
            if (C5094b.m33091b()) {
                str = C5106a.m33035b(m35576d(), "preload_data", (String) null);
                C5106a.m33049a(m35576d());
            } else {
                SharedPreferences m35573f = m35573f(m35576d());
                if (m35573f != null) {
                    str = m35573f.getString("preload_data", null);
                    m35573f.edit().clear().apply();
                } else {
                    str = null;
                }
            }
            adSlot = AdSlot.getSlot(str != null ? new JSONObject(str) : null);
        } catch (Throwable th) {
            adSlot = null;
        }
        return adSlot;
    }

    /* renamed from: a */
    public String m35583a(String str) {
        try {
            if (C5094b.m33091b()) {
                return C5106a.m33035b(m35572g(str), "material_data", (String) null);
            }
            SharedPreferences m35573f = m35573f(m35572g(str));
            if (m35573f == null) {
                return null;
            }
            return m35573f.getString("material_data", null);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public void m35584a(AdSlot adSlot) {
        if (adSlot != null) {
            try {
                if (TextUtils.isEmpty(adSlot.getCodeId())) {
                    return;
                }
                String jSONObject = adSlot.toJsonObj().toString();
                if (C5094b.m33091b()) {
                    C5106a.m33041a(m35578c(), adSlot.getCodeId(), jSONObject);
                    return;
                }
                SharedPreferences m35573f = m35573f(m35578c());
                if (m35573f == null) {
                    return;
                }
                m35573f.edit().putString(adSlot.getCodeId(), jSONObject).apply();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public void m35582a(String str, String str2) {
        try {
            if (C5094b.m33091b()) {
                C5106a.m33045a(m35572g(str), "has_played", Boolean.FALSE);
                C5106a.m33042a(m35572g(str), "create_time", Long.valueOf(System.currentTimeMillis()));
                C5106a.m33041a(m35572g(str), "material_data", str2);
                return;
            }
            SharedPreferences m35573f = m35573f(m35572g(str));
            if (m35573f == null) {
                return;
            }
            m35573f.edit().putBoolean("has_played", false).putLong("create_time", System.currentTimeMillis()).putString("material_data", str2).apply();
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: b */
    public long m35579b(String str) {
        char c;
        try {
        } catch (Throwable th) {
            c = 0;
        }
        if (C5094b.m33091b()) {
            return C5106a.m33046a(m35572g(str), "create_time", 0L);
        }
        SharedPreferences m35573f = m35573f(m35572g(str));
        c = 0;
        if (m35573f != null) {
            c = m35573f.getLong("create_time", 0L);
        }
        return c;
    }

    /* renamed from: b */
    public void m35580b(AdSlot adSlot) {
        if (adSlot != null) {
            try {
                if (TextUtils.isEmpty(adSlot.getCodeId())) {
                    return;
                }
                String jSONObject = adSlot.toJsonObj().toString();
                if (C5094b.m33091b()) {
                    C5106a.m33041a(m35576d(), "preload_data", jSONObject);
                    return;
                }
                SharedPreferences m35573f = m35573f(m35576d());
                if (m35573f == null) {
                    return;
                }
                m35573f.edit().putString("preload_data", jSONObject).apply();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: c */
    public boolean m35577c(String str) {
        try {
            if (C5094b.m33091b()) {
                return C5106a.m33039a(m35572g(str), "has_played", true);
            }
            SharedPreferences m35573f = m35573f(m35572g(str));
            if (m35573f == null) {
                return true;
            }
            return m35573f.getBoolean("has_played", true);
        } catch (Throwable th) {
            return true;
        }
    }

    /* renamed from: d */
    public void m35575d(String str) {
        try {
            if (C5094b.m33091b()) {
                C5106a.m33049a(m35572g(str));
                return;
            }
            SharedPreferences m35573f = m35573f(m35572g(str));
            if (m35573f == null) {
                return;
            }
            m35573f.edit().clear().apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    public AdSlot m35574e(String str) {
        String str2;
        try {
            if (C5094b.m33091b()) {
                str2 = C5106a.m33035b(m35578c(), str, (String) null);
            } else {
                SharedPreferences m35573f = m35573f(m35578c());
                str2 = m35573f != null ? m35573f.getString(str, null) : null;
            }
            return AdSlot.getSlot(str2 != null ? new JSONObject(str2) : null);
        } catch (Throwable th) {
            return null;
        }
    }
}
