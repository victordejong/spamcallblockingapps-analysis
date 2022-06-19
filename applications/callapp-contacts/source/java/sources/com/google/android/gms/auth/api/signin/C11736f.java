package com.google.android.gms.auth.api.signin;

import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: com.google.android.gms.auth.api.signin.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/f.class */
public final /* synthetic */ class C11736f implements Comparator {

    /* renamed from: a */
    static final Comparator f39052a = new C11736f();

    private C11736f() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
        return ((Scope) obj).getScopeUri().compareTo(((Scope) obj2).getScopeUri());
    }
}
