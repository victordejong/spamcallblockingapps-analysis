package com.google.android.gms.auth.api.signin;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.internal.zbm;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.internal.zas;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24971h;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24973j;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInClient.class */
public class GoogleSignInClient extends GoogleApi<GoogleSignInOptions> {
    @VisibleForTesting

    /* renamed from: a */
    public static int f5515a = 1;

    public GoogleSignInClient(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, Auth.f5347b, googleSignInOptions, new ApiExceptionMapper());
    }

    /* renamed from: b */
    public Intent m39125b() {
        Context applicationContext = getApplicationContext();
        int m39124c = m39124c();
        int i = m39124c - 1;
        if (m39124c != 0) {
            if (i == 2) {
                GoogleSignInOptions apiOptions = getApiOptions();
                zbm.f5570a.m38818a("getFallbackSignInIntent()", new Object[0]);
                Intent m39102a = zbm.m39102a(applicationContext, apiOptions);
                m39102a.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
                return m39102a;
            } else if (i == 3) {
                return zbm.m39102a(applicationContext, getApiOptions());
            } else {
                GoogleSignInOptions apiOptions2 = getApiOptions();
                zbm.f5570a.m38818a("getNoImplementationSignInIntent()", new Object[0]);
                Intent m39102a2 = zbm.m39102a(applicationContext, apiOptions2);
                m39102a2.setAction("com.google.android.gms.auth.NO_IMPL");
                return m39102a2;
            }
        }
        throw null;
    }

    /* renamed from: c */
    public final int m39124c() {
        int i;
        synchronized (this) {
            if (f5515a == 1) {
                Context applicationContext = getApplicationContext();
                GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
                int mo39062e = googleApiAvailability.mo39062e(applicationContext, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                if (mo39062e == 0) {
                    f5515a = 4;
                } else if (googleApiAvailability.mo39066a(applicationContext, mo39062e, null) != null || DynamiteModule.m38740a(applicationContext, "com.google.android.gms.auth.api.fallback") == 0) {
                    f5515a = 2;
                } else {
                    f5515a = 3;
                }
            }
            i = f5515a;
        }
        return i;
    }

    @RecentlyNonNull
    public Task<Void> signOut() {
        PendingResult<Status> m39100c = zbm.m39100c(asGoogleApiClient(), getApplicationContext(), m39124c() == 3);
        C24973j c24973j = new C24973j();
        zas zasVar = PendingResultUtil.f5992a;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m39100c.addStatusListener(new C24971h(m39100c, taskCompletionSource, c24973j, zasVar));
        return taskCompletionSource.f6493a;
    }
}
