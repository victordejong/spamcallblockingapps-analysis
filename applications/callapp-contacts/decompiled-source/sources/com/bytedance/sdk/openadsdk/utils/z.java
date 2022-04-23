package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/z.class */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, z> f10326a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences f10327b;

    private z(String str, Context context) {
        if (context != null) {
            this.f10327b = context.getApplicationContext().getSharedPreferences(str, 0);
        }
    }

    public static z a(String str, Context context) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "tt_ad_sdk_sp";
        }
        z zVar = f10326a.get(str2);
        z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = new z(str2, context);
            f10326a.put(str2, zVar2);
        }
        return zVar2;
    }

    public String a(String str) {
        try {
            return b(str, "");
        } catch (Throwable th) {
            return null;
        }
    }

    public void a(String str, int i) {
        try {
            this.f10327b.edit().putInt(str, i).apply();
        } catch (Throwable th) {
        }
    }

    public void a(String str, long j) {
        try {
            this.f10327b.edit().putLong(str, j).apply();
        } catch (Throwable th) {
        }
    }

    public void a(String str, String str2) {
        try {
            this.f10327b.edit().putString(str, str2).apply();
        } catch (Throwable th) {
        }
    }

    public void a(String str, Set<String> set) {
        try {
            this.f10327b.edit().putStringSet(str, set).apply();
        } catch (Throwable th) {
        }
    }

    public void a(String str, boolean z) {
        try {
            this.f10327b.edit().putBoolean(str, z).apply();
        } catch (Throwable th) {
        }
    }

    public int b(String str, int i) {
        try {
            return this.f10327b.getInt(str, i);
        } catch (Throwable th) {
            return i;
        }
    }

    public long b(String str, long j) {
        try {
            return this.f10327b.getLong(str, j);
        } catch (Throwable th) {
            return j;
        }
    }

    public String b(String str, String str2) {
        try {
            return this.f10327b.getString(str, str2);
        } catch (Throwable th) {
            return str2;
        }
    }

    public Set<String> b(String str, Set<String> set) {
        try {
            return this.f10327b.getStringSet(str, set);
        } catch (Throwable th) {
            return set;
        }
    }

    public void b(String str) {
        try {
            this.f10327b.edit().remove(str).apply();
        } catch (Throwable th) {
        }
    }

    public boolean b(String str, boolean z) {
        try {
            return this.f10327b.getBoolean(str, z);
        } catch (Throwable th) {
            return z;
        }
    }
}
