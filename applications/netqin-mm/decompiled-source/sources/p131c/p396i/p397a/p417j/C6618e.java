package p131c.p396i.p397a.p417j;

import android.content.Context;
import android.content.SharedPreferences;
import p131c.p396i.p397a.C6489a;
/* renamed from: c.i.a.j.e */
/* loaded from: classes2-dex2jar.jar:c/i/a/j/e.class */
public class C6618e {

    /* renamed from: b */
    public static C6618e f20433b;

    /* renamed from: a */
    public SharedPreferences f20434a;

    public C6618e(Context context, String str) {
        this.f20434a = context.getSharedPreferences(str, 0);
    }

    /* renamed from: a */
    public static C6618e m20334a() {
        return m20324d("ad_sdk");
    }

    /* renamed from: d */
    public static C6618e m20324d(String str) {
        if (f20433b == null) {
            synchronized (C6618e.class) {
                try {
                    if (f20433b == null) {
                        f20433b = new C6618e(C6489a.m20718b(), str);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20433b;
    }

    /* renamed from: a */
    public Boolean m20329a(String str, boolean z) {
        return Boolean.valueOf(this.f20434a.getBoolean(str, z));
    }

    /* renamed from: a */
    public Integer m20332a(String str, int i) {
        return Integer.valueOf(this.f20434a.getInt(str, i));
    }

    /* renamed from: a */
    public void m20331a(String str, long j) {
        SharedPreferences.Editor edit = this.f20434a.edit();
        edit.putLong(str, j);
        edit.apply();
    }

    /* renamed from: a */
    public void m20330a(String str, String str2) {
        SharedPreferences.Editor edit = this.f20434a.edit();
        edit.putString(str, str2);
        edit.apply();
    }

    /* renamed from: a */
    public boolean m20333a(String str) {
        return this.f20434a.contains(str);
    }

    /* renamed from: b */
    public long m20328b(String str) {
        return this.f20434a.getLong(str, 0L);
    }

    /* renamed from: b */
    public void m20327b(String str, int i) {
        SharedPreferences.Editor edit = this.f20434a.edit();
        edit.putInt(str, i);
        edit.apply();
    }

    /* renamed from: b */
    public void m20326b(String str, boolean z) {
        SharedPreferences.Editor edit = this.f20434a.edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    /* renamed from: c */
    public String m20325c(String str) {
        return this.f20434a.getString(str, null);
    }
}
