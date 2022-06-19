package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.utils.z */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/z.class */
public class C5490z {

    /* renamed from: a */
    private static Map<String, C5490z> f19040a = new HashMap();

    /* renamed from: b */
    private SharedPreferences f19041b;

    private C5490z(String str, Context context) {
        if (context != null) {
            this.f19041b = context.getApplicationContext().getSharedPreferences(str, 0);
        }
    }

    /* renamed from: a */
    public static C5490z m32028a(String str, Context context) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "tt_ad_sdk_sp";
        }
        C5490z c5490z = f19040a.get(str2);
        C5490z c5490z2 = c5490z;
        if (c5490z == null) {
            c5490z2 = new C5490z(str2, context);
            f19040a.put(str2, c5490z2);
        }
        return c5490z2;
    }

    /* renamed from: a */
    public String m32031a(String str) {
        try {
            return m32021b(str, "");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public void m32030a(String str, int i) {
        try {
            this.f19041b.edit().putInt(str, i).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m32029a(String str, long j) {
        try {
            this.f19041b.edit().putLong(str, j).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m32027a(String str, String str2) {
        try {
            this.f19041b.edit().putString(str, str2).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m32026a(String str, Set<String> set) {
        try {
            this.f19041b.edit().putStringSet(str, set).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m32025a(String str, boolean z) {
        try {
            this.f19041b.edit().putBoolean(str, z).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public int m32023b(String str, int i) {
        try {
            return this.f19041b.getInt(str, i);
        } catch (Throwable th) {
            return i;
        }
    }

    /* renamed from: b */
    public long m32022b(String str, long j) {
        try {
            return this.f19041b.getLong(str, j);
        } catch (Throwable th) {
            return j;
        }
    }

    /* renamed from: b */
    public String m32021b(String str, String str2) {
        try {
            return this.f19041b.getString(str, str2);
        } catch (Throwable th) {
            return str2;
        }
    }

    /* renamed from: b */
    public Set<String> m32020b(String str, Set<String> set) {
        try {
            return this.f19041b.getStringSet(str, set);
        } catch (Throwable th) {
            return set;
        }
    }

    /* renamed from: b */
    public void m32024b(String str) {
        try {
            this.f19041b.edit().remove(str).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public boolean m32019b(String str, boolean z) {
        try {
            return this.f19041b.getBoolean(str, z);
        } catch (Throwable th) {
            return z;
        }
    }
}
