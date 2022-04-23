package com.google.android.gms.common;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.a;
import com.google.android.gms.common.util.k;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/aa.class */
public class aa {

    /* renamed from: d  reason: collision with root package name */
    private static final aa f22602d = new aa(true, null, null);

    /* renamed from: a  reason: collision with root package name */
    final boolean f22603a;

    /* renamed from: b  reason: collision with root package name */
    final String f22604b;

    /* renamed from: c  reason: collision with root package name */
    final Throwable f22605c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(boolean z, String str, Throwable th) {
        this.f22603a = z;
        this.f22604b = str;
        this.f22605c = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static aa a(String str) {
        return new aa(false, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static aa a(String str, Throwable th) {
        return new aa(false, str, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static aa a(Callable<String> callable) {
        return new z(callable, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, p pVar, boolean z, boolean z2) {
        String str2 = true != z2 ? "not allowed" : "debug cert rejected";
        MessageDigest a2 = a.a("SHA-1");
        o.a(a2);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, k.b(a2.digest(pVar.d())), Boolean.valueOf(z), "12451000.false");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static aa b() {
        return f22602d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f22604b;
    }
}
