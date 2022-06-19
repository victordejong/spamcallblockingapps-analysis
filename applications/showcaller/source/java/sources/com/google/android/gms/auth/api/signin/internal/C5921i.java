package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.C5906d;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.AbstractC6003f;
import com.google.android.gms.common.api.C6005g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C6025f;
import com.google.android.gms.common.p269i.C6099a;
/* renamed from: com.google.android.gms.auth.api.signin.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/i.class */
public final class C5921i {

    /* renamed from: a */
    private static C6099a f19050a = new C6099a("GoogleSignInCommon", new String[0]);

    /* renamed from: a */
    public static C5906d m17586a(Intent intent) {
        if (intent == null) {
            return new C5906d(null, Status.f19169f);
        }
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        if (googleSignInAccount != null) {
            return new C5906d(googleSignInAccount, Status.f19167d);
        }
        Status status2 = status;
        if (status == null) {
            status2 = Status.f19169f;
        }
        return new C5906d(null, status2);
    }

    /* renamed from: b */
    public static Intent m17585b(Context context, GoogleSignInOptions googleSignInOptions) {
        f19050a.m17183a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    /* renamed from: c */
    public static AbstractC6003f<Status> m17584c(AbstractC5999d abstractC5999d, Context context, boolean z) {
        f19050a.m17183a("Signing out", new Object[0]);
        m17583d(context);
        return z ? C6005g.m17453b(Status.f19167d, abstractC5999d) : abstractC5999d.mo17334a(new C5922j(abstractC5999d));
    }

    /* renamed from: d */
    private static void m17583d(Context context) {
        C5928p.m17577c(context).m17579a();
        for (AbstractC5999d abstractC5999d : AbstractC5999d.m17458b()) {
            abstractC5999d.m17456e();
        }
        C6025f.m17369a();
    }

    /* renamed from: e */
    public static Intent m17582e(Context context, GoogleSignInOptions googleSignInOptions) {
        f19050a.m17183a("getFallbackSignInIntent()", new Object[0]);
        Intent m17585b = m17585b(context, googleSignInOptions);
        m17585b.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return m17585b;
    }

    /* renamed from: f */
    public static AbstractC6003f<Status> m17581f(AbstractC5999d abstractC5999d, Context context, boolean z) {
        f19050a.m17183a("Revoking access", new Object[0]);
        String m17596e = C5914b.m17599b(context).m17596e();
        m17583d(context);
        return z ? RunnableC5918f.m17588a(m17596e) : abstractC5999d.mo17334a(new C5923k(abstractC5999d));
    }

    /* renamed from: g */
    public static Intent m17580g(Context context, GoogleSignInOptions googleSignInOptions) {
        f19050a.m17183a("getNoImplementationSignInIntent()", new Object[0]);
        Intent m17585b = m17585b(context, googleSignInOptions);
        m17585b.setAction("com.google.android.gms.auth.NO_IMPL");
        return m17585b;
    }
}
