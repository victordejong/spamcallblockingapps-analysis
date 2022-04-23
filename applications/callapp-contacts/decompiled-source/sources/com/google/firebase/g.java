package com.google.firebase;

import android.content.Context;
import com.google.firebase.f.g;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/g.class */
final /* synthetic */ class g implements g.a {

    /* renamed from: a  reason: collision with root package name */
    private static final g f32313a = new g();

    private g() {
    }

    public static g.a a() {
        return f32313a;
    }

    @Override // com.google.firebase.f.g.a
    public final String a(Object obj) {
        return r0.getPackageManager().getInstallerPackageName(((Context) obj).getPackageName());
    }
}
