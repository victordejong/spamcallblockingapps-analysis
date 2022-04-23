package com.google.android.gms.auth.api.signin;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.j;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/a.class */
public final class a {
    private a() {
    }

    public static c a(Context context, GoogleSignInOptions googleSignInOptions) {
        return new c(context, (GoogleSignInOptions) o.a(googleSignInOptions));
    }

    public static h<GoogleSignInAccount> a(Intent intent) {
        e a2 = j.a(intent);
        GoogleSignInAccount googleSignInAccount = a2.f22498a;
        return (!a2.getStatus().isSuccess() || googleSignInAccount == null) ? k.a((Exception) b.a(a2.getStatus())) : k.a(googleSignInAccount);
    }
}
