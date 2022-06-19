package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.C11735e;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11896f;
import com.google.android.gms.common.api.internal.C11911r;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p349a.C11806a;
import java.util.Iterator;
/* renamed from: com.google.android.gms.auth.api.signin.internal.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/j.class */
public final class C11750j {

    /* renamed from: a */
    private static C11806a f39074a = new C11806a("GoogleSignInCommon", new String[0]);

    /* renamed from: a */
    public static Intent m19538a(Context context, GoogleSignInOptions googleSignInOptions) {
        f39074a.m19476a("getSignInIntent()", new Object[0]);
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
    public static C11735e m19537a(Intent intent) {
        if (intent == null) {
            return new C11735e(null, Status.RESULT_INTERNAL_ERROR);
        }
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        if (googleSignInAccount != null) {
            return new C11735e(googleSignInAccount, Status.RESULT_SUCCESS);
        }
        Status status2 = status;
        if (status == null) {
            status2 = Status.RESULT_INTERNAL_ERROR;
        }
        return new C11735e(null, status2);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.AbstractC11830i<com.google.android.gms.auth.api.signin.C11735e> m19536a(com.google.android.gms.common.api.AbstractC11826g r9, android.content.Context r10, com.google.android.gms.auth.api.signin.GoogleSignInOptions r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.C11750j.m19536a(com.google.android.gms.common.api.g, android.content.Context, com.google.android.gms.auth.api.signin.GoogleSignInOptions, boolean):com.google.android.gms.common.api.i");
    }

    /* renamed from: a */
    public static AbstractC11921j<Status> m19535a(AbstractC11826g abstractC11826g, Context context, boolean z) {
        f39074a.m19476a("Signing out", new Object[0]);
        m19539a(context);
        if (z) {
            Status status = Status.RESULT_SUCCESS;
            C12045o.m19161a(status, "Result must not be null");
            C11911r c11911r = new C11911r(abstractC11826g);
            c11911r.m19438a((C11911r) status);
            return c11911r;
        }
        return abstractC11826g.mo19404b(new C11751k(abstractC11826g));
    }

    /* renamed from: a */
    private static void m19539a(Context context) {
        C11758r.m19530a(context).m19531a();
        Iterator<AbstractC11826g> it2 = AbstractC11826g.m19445a().iterator();
        while (it2.hasNext()) {
            it2.next();
            AbstractC11826g.m19442e();
        }
        C11896f.m19356a();
    }

    /* renamed from: b */
    public static Intent m19534b(Context context, GoogleSignInOptions googleSignInOptions) {
        f39074a.m19476a("getFallbackSignInIntent()", new Object[0]);
        Intent m19538a = m19538a(context, googleSignInOptions);
        m19538a.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return m19538a;
    }

    /* renamed from: b */
    public static AbstractC11921j<Status> m19533b(AbstractC11826g abstractC11826g, Context context, boolean z) {
        f39074a.m19476a("Revoking access", new Object[0]);
        String m19547a = C11742b.m19548a(context).m19547a("refreshToken");
        m19539a(context);
        return z ? RunnableC11746f.m19540a(m19547a) : abstractC11826g.mo19404b(new C11753m(abstractC11826g));
    }

    /* renamed from: c */
    public static Intent m19532c(Context context, GoogleSignInOptions googleSignInOptions) {
        f39074a.m19476a("getNoImplementationSignInIntent()", new Object[0]);
        Intent m19538a = m19538a(context, googleSignInOptions);
        m19538a.setAction("com.google.android.gms.auth.NO_IMPL");
        return m19538a;
    }
}
