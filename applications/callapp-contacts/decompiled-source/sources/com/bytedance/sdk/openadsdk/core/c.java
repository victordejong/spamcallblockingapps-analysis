package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.SharedPreferences;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.multipro.d.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f8825a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f8826b;

    private c(Context context) {
        this.f8826b = context.getSharedPreferences("ttopenadsdk", 0);
    }

    public static c a(Context context) {
        if (f8825a == null) {
            synchronized (c.class) {
                try {
                    if (f8825a == null) {
                        f8825a = new c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8825a;
    }

    public void a(String str, int i) {
        if (b.b()) {
            a.a("ttopenadsdk", str, Integer.valueOf(i));
        } else {
            this.f8826b.edit().putInt(str, i).apply();
        }
    }

    public void a(String str, long j) {
        if (b.b()) {
            a.a("ttopenadsdk", str, Long.valueOf(j));
        } else {
            this.f8826b.edit().putLong(str, j).apply();
        }
    }

    public void a(String str, String str2) {
        if (b.b()) {
            a.a("ttopenadsdk", str, str2);
        } else {
            this.f8826b.edit().putString(str, str2).apply();
        }
    }

    public void a(String str, boolean z) {
        if (b.b()) {
            a.a("ttopenadsdk", str, Boolean.valueOf(z));
        } else {
            this.f8826b.edit().putBoolean(str, z).apply();
        }
    }

    public int b(String str, int i) {
        return b.b() ? a.a("ttopenadsdk", str, i) : this.f8826b.getInt(str, i);
    }

    public Long b(String str, long j) {
        return Long.valueOf(b.b() ? a.a("ttopenadsdk", str, j) : this.f8826b.getLong(str, j));
    }

    public String b(String str, String str2) {
        return b.b() ? a.b("ttopenadsdk", str, str2) : this.f8826b.getString(str, str2);
    }

    public boolean b(String str, boolean z) {
        return b.b() ? a.a("ttopenadsdk", str, z) : this.f8826b.getBoolean(str, z);
    }
}
