package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.SharedPreferences;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
/* renamed from: com.bytedance.sdk.openadsdk.core.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c.class */
public class C4516c {

    /* renamed from: a */
    private static volatile C4516c f16402a;

    /* renamed from: b */
    private final SharedPreferences f16403b;

    private C4516c(Context context) {
        this.f16403b = context.getSharedPreferences("ttopenadsdk", 0);
    }

    /* renamed from: a */
    public static C4516c m35418a(Context context) {
        if (f16402a == null) {
            synchronized (C4516c.class) {
                try {
                    if (f16402a == null) {
                        f16402a = new C4516c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16402a;
    }

    /* renamed from: a */
    public void m35417a(String str, int i) {
        if (C5094b.m33091b()) {
            C5106a.m33043a("ttopenadsdk", str, Integer.valueOf(i));
        } else {
            this.f16403b.edit().putInt(str, i).apply();
        }
    }

    /* renamed from: a */
    public void m35416a(String str, long j) {
        if (C5094b.m33091b()) {
            C5106a.m33042a("ttopenadsdk", str, Long.valueOf(j));
        } else {
            this.f16403b.edit().putLong(str, j).apply();
        }
    }

    /* renamed from: a */
    public void m35415a(String str, String str2) {
        if (C5094b.m33091b()) {
            C5106a.m33041a("ttopenadsdk", str, str2);
        } else {
            this.f16403b.edit().putString(str, str2).apply();
        }
    }

    /* renamed from: a */
    public void m35414a(String str, boolean z) {
        if (C5094b.m33091b()) {
            C5106a.m33045a("ttopenadsdk", str, Boolean.valueOf(z));
        } else {
            this.f16403b.edit().putBoolean(str, z).apply();
        }
    }

    /* renamed from: b */
    public int m35413b(String str, int i) {
        return C5094b.m33091b() ? C5106a.m33047a("ttopenadsdk", str, i) : this.f16403b.getInt(str, i);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: b */
    public Long m35412b(String str, long j) {
        return Long.valueOf(C5094b.m33091b() ? C5106a.m33046a("ttopenadsdk", str, j) : this.f16403b.getLong(str, j));
    }

    /* renamed from: b */
    public String m35411b(String str, String str2) {
        return C5094b.m33091b() ? C5106a.m33035b("ttopenadsdk", str, str2) : this.f16403b.getString(str, str2);
    }

    /* renamed from: b */
    public boolean m35410b(String str, boolean z) {
        return C5094b.m33091b() ? C5106a.m33039a("ttopenadsdk", str, z) : this.f16403b.getBoolean(str, z);
    }
}
