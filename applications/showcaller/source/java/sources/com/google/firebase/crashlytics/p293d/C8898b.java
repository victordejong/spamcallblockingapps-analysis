package com.google.firebase.crashlytics.p293d;

import android.util.Log;
/* renamed from: com.google.firebase.crashlytics.d.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/b.class */
public class C8898b {

    /* renamed from: a */
    static final C8898b f38871a = new C8898b("FirebaseCrashlytics");

    /* renamed from: b */
    private final String f38872b;

    /* renamed from: c */
    private int f38873c = 4;

    public C8898b(String str) {
        this.f38872b = str;
    }

    /* renamed from: a */
    private boolean m2402a(int i) {
        return this.f38873c <= i || Log.isLoggable(this.f38872b, i);
    }

    /* renamed from: f */
    public static C8898b m2397f() {
        return f38871a;
    }

    /* renamed from: b */
    public void m2401b(String str) {
        m2400c(str, null);
    }

    /* renamed from: c */
    public void m2400c(String str, Throwable th) {
        if (m2402a(3)) {
            Log.d(this.f38872b, str, th);
        }
    }

    /* renamed from: d */
    public void m2399d(String str) {
        m2398e(str, null);
    }

    /* renamed from: e */
    public void m2398e(String str, Throwable th) {
        if (m2402a(6)) {
            Log.e(this.f38872b, str, th);
        }
    }

    /* renamed from: g */
    public void m2396g(String str) {
        m2395h(str, null);
    }

    /* renamed from: h */
    public void m2395h(String str, Throwable th) {
        if (m2402a(4)) {
            Log.i(this.f38872b, str, th);
        }
    }

    /* renamed from: i */
    public void m2394i(String str) {
        m2393j(str, null);
    }

    /* renamed from: j */
    public void m2393j(String str, Throwable th) {
        if (m2402a(2)) {
            Log.v(this.f38872b, str, th);
        }
    }

    /* renamed from: k */
    public void m2392k(String str) {
        m2391l(str, null);
    }

    /* renamed from: l */
    public void m2391l(String str, Throwable th) {
        if (m2402a(5)) {
            Log.w(this.f38872b, str, th);
        }
    }
}
