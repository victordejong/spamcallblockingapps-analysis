package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.util.C1605a;
import com.google.android.gms.common.util.C1614k;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
@CheckReturnValue
/* renamed from: com.google.android.gms.common.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/z.class */
public class C1631z {

    /* renamed from: d */
    private static final C1631z f5906d = new C1631z(true, null, null);

    /* renamed from: a */
    final boolean f5907a;
    @Nullable

    /* renamed from: b */
    final String f5908b;
    @Nullable

    /* renamed from: c */
    final Throwable f5909c;

    C1631z(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.f5907a = z;
        this.f5908b = str;
        this.f5909c = th;
    }

    /* renamed from: b */
    public static C1631z m8191b() {
        return f5906d;
    }

    /* renamed from: c */
    public static C1631z m8190c(Callable<String> callable) {
        return new y(callable, (C1630x) null);
    }

    /* renamed from: d */
    public static C1631z m8189d(String str) {
        return new C1631z(false, str, null);
    }

    /* renamed from: e */
    public static C1631z m8188e(String str, Throwable th) {
        return new C1631z(false, str, th);
    }

    /* renamed from: g */
    public static String m8186g(String str, o oVar, boolean z, boolean z2) {
        String str2 = true != z2 ? "not allowed" : "debug cert rejected";
        MessageDigest m8253b = C1605a.m8253b("SHA-1");
        C1581h.m8347h(m8253b);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, C1614k.m8225a(m8253b.digest(oVar.M1())), Boolean.valueOf(z), "12451000.false");
    }

    @Nullable
    /* renamed from: a */
    String m8192a() {
        return this.f5908b;
    }

    /* renamed from: f */
    public final void m8187f() {
        if (this.f5907a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f5909c != null) {
            Log.d("GoogleCertificatesRslt", m8192a(), this.f5909c);
        } else {
            Log.d("GoogleCertificatesRslt", m8192a());
        }
    }
}
