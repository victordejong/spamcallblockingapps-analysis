package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.C2414d;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.C2497f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2548f;
import com.google.android.gms.common.p130a.C2470a;
/* renamed from: com.google.android.gms.auth.api.signin.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/i.class */
public final class C2429i {

    /* renamed from: a */
    private static C2470a f6962a = new C2470a("GoogleSignInCommon", new String[0]);

    /* renamed from: a */
    public static Intent m14515a(Context context, GoogleSignInOptions googleSignInOptions) {
        f6962a.m14468a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    /* renamed from: a */
    public static C2414d m14514a(Intent intent) {
        C2414d c2414d;
        if (intent == null) {
            c2414d = new C2414d(null, Status.f7031c);
        } else {
            Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
            GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
            if (googleSignInAccount == null) {
                Status status2 = status;
                if (status == null) {
                    status2 = Status.f7031c;
                }
                c2414d = new C2414d(null, status2);
            } else {
                c2414d = new C2414d(googleSignInAccount, Status.f7029a);
            }
        }
        return c2414d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static AbstractC2495e<Status> m14513a(AbstractC2492d abstractC2492d, Context context, boolean z) {
        f6962a.m14468a("Signing out", new Object[0]);
        m14516a(context);
        return z ? C2497f.m14418a(Status.f7029a, abstractC2492d) : abstractC2492d.mo14398a((AbstractC2492d) new C2432l(abstractC2492d));
    }

    /* renamed from: a */
    private static void m14516a(Context context) {
        C2435o.m14507a(context).m14508a();
        for (AbstractC2492d abstractC2492d : AbstractC2492d.m14421a()) {
            abstractC2492d.m14419c();
        }
        C2548f.m14320a();
    }

    /* renamed from: b */
    public static Intent m14512b(Context context, GoogleSignInOptions googleSignInOptions) {
        f6962a.m14468a("getFallbackSignInIntent()", new Object[0]);
        Intent m14515a = m14515a(context, googleSignInOptions);
        m14515a.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return m14515a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static AbstractC2495e<Status> m14511b(AbstractC2492d abstractC2492d, Context context, boolean z) {
        f6962a.m14468a("Revoking access", new Object[0]);
        String m14523c = C2423c.m14530a(context).m14523c();
        m14516a(context);
        return z ? RunnableC2425e.m14520a(m14523c) : abstractC2492d.mo14398a((AbstractC2492d) new C2434n(abstractC2492d));
    }

    /* renamed from: c */
    public static Intent m14510c(Context context, GoogleSignInOptions googleSignInOptions) {
        f6962a.m14468a("getNoImplementationSignInIntent()", new Object[0]);
        Intent m14515a = m14515a(context, googleSignInOptions);
        m14515a.setAction("com.google.android.gms.auth.NO_IMPL");
        return m14515a;
    }
}
