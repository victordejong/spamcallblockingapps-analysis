package com.google.android.gms.auth.api.signin;

import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: com.google.android.gms.auth.api.signin.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/e.class */
public final /* synthetic */ class C5907e implements Comparator {

    /* renamed from: d */
    static final Comparator f19024d = new C5907e();

    private C5907e() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
        return ((Scope) obj).m17492k0().compareTo(((Scope) obj2).m17492k0());
    }
}
