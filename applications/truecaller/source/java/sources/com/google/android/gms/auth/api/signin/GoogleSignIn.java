package com.google.android.gms.auth.api.signin;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.internal.zbn;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignIn.class */
public final class GoogleSignIn {
    private GoogleSignIn() {
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static GoogleSignInClient m39130a(@RecentlyNonNull Context context, @RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
        Objects.requireNonNull(googleSignInOptions, "null reference");
        return new GoogleSignInClient(context, googleSignInOptions);
    }

    @RecentlyNullable
    /* renamed from: b */
    public static GoogleSignInAccount m39129b(@RecentlyNonNull Context context) {
        GoogleSignInAccount googleSignInAccount;
        zbn m39098a = zbn.m39098a(context);
        synchronized (m39098a) {
            googleSignInAccount = m39098a.f5573b;
        }
        return googleSignInAccount;
    }
}
