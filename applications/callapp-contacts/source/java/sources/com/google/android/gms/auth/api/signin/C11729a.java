package com.google.android.gms.auth.api.signin;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.C11750j;
import com.google.android.gms.common.internal.C12001b;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
/* renamed from: com.google.android.gms.auth.api.signin.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/a.class */
public final class C11729a {
    private C11729a() {
    }

    /* renamed from: a */
    public static C11731c m19566a(Context context, GoogleSignInOptions googleSignInOptions) {
        return new C11731c(context, (GoogleSignInOptions) C12045o.m19162a(googleSignInOptions));
    }

    /* renamed from: a */
    public static AbstractC14185h<GoogleSignInAccount> m19565a(Intent intent) {
        C11735e m19537a = C11750j.m19537a(intent);
        GoogleSignInAccount googleSignInAccount = m19537a.f39050a;
        return (!m19537a.getStatus().isSuccess() || googleSignInAccount == null) ? C14188k.m11465a((Exception) C12001b.m19215a(m19537a.getStatus())) : C14188k.m11464a(googleSignInAccount);
    }
}
