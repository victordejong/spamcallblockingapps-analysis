package com.google.firebase;

import android.content.Context;
import com.google.firebase.p394f.C15751g;
/* renamed from: com.google.firebase.g */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/g.class */
final /* synthetic */ class C15755g implements C15751g.AbstractC15752a {

    /* renamed from: a */
    private static final C15755g f56098a = new C15755g();

    private C15755g() {
    }

    /* renamed from: a */
    public static C15751g.AbstractC15752a m8454a() {
        return f56098a;
    }

    @Override // com.google.firebase.p394f.C15751g.AbstractC15752a
    /* renamed from: a */
    public final String mo8453a(Object obj) {
        return r0.getPackageManager().getInstallerPackageName(((Context) obj).getPackageName());
    }
}
