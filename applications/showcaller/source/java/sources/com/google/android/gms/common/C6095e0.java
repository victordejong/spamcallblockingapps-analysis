package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6223a;
import com.google.android.gms.common.util.C6232j;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.e0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/e0.class */
public class C6095e0 {

    /* renamed from: a */
    private static final C6095e0 f19414a = new C6095e0(true, null, null);

    /* renamed from: b */
    final boolean f19415b;

    /* renamed from: c */
    final String f19416c;

    /* renamed from: d */
    final Throwable f19417d;

    public C6095e0(boolean z, String str, Throwable th) {
        this.f19415b = z;
        this.f19416c = str;
        this.f19417d = th;
    }

    /* renamed from: b */
    public static C6095e0 m17197b() {
        return f19414a;
    }

    /* renamed from: c */
    public static C6095e0 m17196c(Callable<String> callable) {
        return new C6089d0(callable, null);
    }

    /* renamed from: d */
    public static C6095e0 m17195d(String str) {
        return new C6095e0(false, str, null);
    }

    /* renamed from: e */
    public static C6095e0 m17194e(String str, Throwable th) {
        return new C6095e0(false, str, th);
    }

    /* renamed from: g */
    public static String m17192g(String str, AbstractBinderC6221t abstractBinderC6221t, boolean z, boolean z2) {
        String str2 = true != z2 ? "not allowed" : "debug cert rejected";
        MessageDigest m16832b = C6223a.m16832b("SHA-1");
        C6155o.m17018j(m16832b);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, C6232j.m16793a(m16832b.digest(abstractBinderC6221t.mo16759J0())), Boolean.valueOf(z), "12451000.false");
    }

    /* renamed from: a */
    String mo17198a() {
        return this.f19416c;
    }

    /* renamed from: f */
    public final void m17193f() {
        if (this.f19415b || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f19417d != null) {
            Log.d("GoogleCertificatesRslt", mo17198a(), this.f19417d);
        } else {
            Log.d("GoogleCertificatesRslt", mo17198a());
        }
    }
}
