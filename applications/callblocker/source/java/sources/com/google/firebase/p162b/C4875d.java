package com.google.firebase.p162b;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: com.google.firebase.b.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/b/d.class */
class C4875d {

    /* renamed from: a */
    private static C4875d f20961a = null;

    /* renamed from: b */
    private final SharedPreferences f20962b;

    private C4875d(Context context) {
        this.f20962b = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
    }

    /* renamed from: a */
    public static C4875d m2129a(Context context) {
        C4875d c4875d;
        synchronized (C4875d.class) {
            try {
                if (f20961a == null) {
                    f20961a = new C4875d(context);
                }
                c4875d = f20961a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4875d;
    }

    /* renamed from: a */
    public boolean m2130a(long j) {
        boolean m2127a;
        synchronized (this) {
            m2127a = m2127a("fire-global", j);
        }
        return m2127a;
    }

    /* renamed from: a */
    public boolean m2127a(String str, long j) {
        boolean z = true;
        synchronized (this) {
            if (!this.f20962b.contains(str)) {
                this.f20962b.edit().putLong(str, j).apply();
            } else if (j - this.f20962b.getLong(str, -1L) >= 86400000) {
                this.f20962b.edit().putLong(str, j).apply();
            } else {
                z = false;
            }
        }
        return z;
    }
}
