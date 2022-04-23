package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.e;
import com.google.android.gms.common.a.a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.f;
import com.google.android.gms.common.api.internal.r;
import com.google.android.gms.common.internal.o;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static a f22520a = new a("GoogleSignInCommon", new String[0]);

    public static Intent a(Context context, GoogleSignInOptions googleSignInOptions) {
        f22520a.a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    public static e a(Intent intent) {
        if (intent == null) {
            return new e(null, Status.RESULT_INTERNAL_ERROR);
        }
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        if (googleSignInAccount != null) {
            return new e(googleSignInAccount, Status.RESULT_SUCCESS);
        }
        Status status2 = status;
        if (status == null) {
            status2 = Status.RESULT_INTERNAL_ERROR;
        }
        return new e(null, status2);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.i<com.google.android.gms.auth.api.signin.e> a(com.google.android.gms.common.api.g r9, android.content.Context r10, com.google.android.gms.auth.api.signin.GoogleSignInOptions r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.j.a(com.google.android.gms.common.api.g, android.content.Context, com.google.android.gms.auth.api.signin.GoogleSignInOptions, boolean):com.google.android.gms.common.api.i");
    }

    public static com.google.android.gms.common.api.j<Status> a(g gVar, Context context, boolean z) {
        f22520a.a("Signing out", new Object[0]);
        a(context);
        if (!z) {
            return gVar.b(new k(gVar));
        }
        Status status = Status.RESULT_SUCCESS;
        o.a(status, "Result must not be null");
        r rVar = new r(gVar);
        rVar.a((r) status);
        return rVar;
    }

    private static void a(Context context) {
        r.a(context).a();
        Iterator<g> it2 = g.a().iterator();
        while (it2.hasNext()) {
            it2.next();
            g.e();
        }
        f.a();
    }

    public static Intent b(Context context, GoogleSignInOptions googleSignInOptions) {
        f22520a.a("getFallbackSignInIntent()", new Object[0]);
        Intent a2 = a(context, googleSignInOptions);
        a2.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return a2;
    }

    public static com.google.android.gms.common.api.j<Status> b(g gVar, Context context, boolean z) {
        f22520a.a("Revoking access", new Object[0]);
        String a2 = b.a(context).a("refreshToken");
        a(context);
        return z ? f.a(a2) : gVar.b(new m(gVar));
    }

    public static Intent c(Context context, GoogleSignInOptions googleSignInOptions) {
        f22520a.a("getNoImplementationSignInIntent()", new Object[0]);
        Intent a2 = a(context, googleSignInOptions);
        a2.setAction("com.google.android.gms.auth.NO_IMPL");
        return a2;
    }
}
