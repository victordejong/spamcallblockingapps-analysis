package com.google.firebase;

import android.content.Context;
import com.google.firebase.p315m.C9256h;
/* renamed from: com.google.firebase.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/g.class */
final /* synthetic */ class C9167g implements C9256h.AbstractC9257a {

    /* renamed from: a */
    private static final C9167g f39483a = new C9167g();

    private C9167g() {
    }

    /* renamed from: b */
    public static C9256h.AbstractC9257a m1663b() {
        return f39483a;
    }

    @Override // com.google.firebase.p315m.C9256h.AbstractC9257a
    /* renamed from: a */
    public String mo1397a(Object obj) {
        return r0.getPackageManager().getInstallerPackageName(((Context) obj).getPackageName());
    }
}
