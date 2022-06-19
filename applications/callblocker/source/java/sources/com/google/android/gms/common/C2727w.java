package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.util.C2701a;
import com.google.android.gms.common.util.C2713j;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
@CheckReturnValue
/* renamed from: com.google.android.gms.common.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/w.class */
public class C2727w {

    /* renamed from: b */
    private static final C2727w f7542b = new C2727w(true, null, null);

    /* renamed from: a */
    final boolean f7543a;

    /* renamed from: c */
    private final String f7544c;

    /* renamed from: d */
    private final Throwable f7545d;

    public C2727w(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.f7543a = z;
        this.f7544c = str;
        this.f7545d = th;
    }

    /* renamed from: a */
    public static C2727w m13804a() {
        return f7542b;
    }

    /* renamed from: a */
    public static C2727w m13803a(String str) {
        return new C2727w(false, str, null);
    }

    /* renamed from: a */
    public static C2727w m13801a(String str, Throwable th) {
        return new C2727w(false, str, th);
    }

    /* renamed from: a */
    public static C2727w m13800a(Callable<String> callable) {
        return new C2729y(callable);
    }

    /* renamed from: a */
    public static String m13802a(String str, AbstractBinderC2680o abstractBinderC2680o, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, C2713j.m13850a(C2701a.m13880a("SHA-1").digest(abstractBinderC2680o.mo13898c())), Boolean.valueOf(z), "12451009.false");
    }

    @Nullable
    /* renamed from: b */
    String mo13798b() {
        return this.f7544c;
    }

    /* renamed from: c */
    public final void m13799c() {
        if (this.f7543a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f7545d != null) {
            Log.d("GoogleCertificatesRslt", mo13798b(), this.f7545d);
        } else {
            Log.d("GoogleCertificatesRslt", mo13798b());
        }
    }
}
