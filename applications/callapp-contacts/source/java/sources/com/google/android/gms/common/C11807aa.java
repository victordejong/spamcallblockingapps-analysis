package com.google.android.gms.common;

import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12094a;
import com.google.android.gms.common.util.C12107k;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.aa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/aa.class */
public class C11807aa {

    /* renamed from: d */
    private static final C11807aa f39167d = new C11807aa(true, null, null);

    /* renamed from: a */
    final boolean f39168a;

    /* renamed from: b */
    final String f39169b;

    /* renamed from: c */
    final Throwable f39170c;

    public C11807aa(boolean z, String str, Throwable th) {
        this.f39168a = z;
        this.f39169b = str;
        this.f39170c = th;
    }

    /* renamed from: a */
    public static C11807aa m19472a(String str) {
        return new C11807aa(false, str, null);
    }

    /* renamed from: a */
    public static C11807aa m19470a(String str, Throwable th) {
        return new C11807aa(false, str, th);
    }

    /* renamed from: a */
    public static C11807aa m19469a(Callable<String> callable) {
        return new C12124z(callable, null);
    }

    /* renamed from: a */
    public static String m19471a(String str, AbstractBinderC12066p abstractBinderC12066p, boolean z, boolean z2) {
        String str2 = true != z2 ? "not allowed" : "debug cert rejected";
        MessageDigest m19057a = C12094a.m19057a("SHA-1");
        C12045o.m19162a(m19057a);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, C12107k.m19026b(m19057a.digest(abstractBinderC12066p.mo19073d())), Boolean.valueOf(z), "12451000.false");
    }

    /* renamed from: b */
    public static C11807aa m19468b() {
        return f39167d;
    }

    /* renamed from: a */
    public String mo18997a() {
        return this.f39169b;
    }
}
