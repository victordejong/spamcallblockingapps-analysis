package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a.C24884b;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a.C24886d;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.C24961d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zbm.class */
public final class zbm {

    /* renamed from: a */
    public static final Logger f5570a = new Logger("GoogleSignInCommon", new String[0]);

    /* renamed from: a */
    public static Intent m39102a(Context context, GoogleSignInOptions googleSignInOptions) {
        f5570a.m38818a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable(DTBMetricsConfiguration.CONFIG_DIR, signInConfiguration);
        intent.putExtra(DTBMetricsConfiguration.CONFIG_DIR, bundle);
        return intent;
    }

    /* renamed from: b */
    public static PendingResult<Status> m39101b(GoogleApiClient googleApiClient, Context context, boolean z) {
        BasePendingResult basePendingResult;
        f5570a.m38818a("Revoking access", new Object[0]);
        String m39108f = Storage.m39113a(context).m39108f("refreshToken");
        m39099d(context);
        if (z) {
            Logger logger = zbb.f5564c;
            if (m39108f == null) {
                Status status = new Status(4, null);
                Preconditions.m38897k(status, "Result must not be null");
                Preconditions.m38906b(!status.m39042q2(), "Status code must not be SUCCESS");
                basePendingResult = new C24961d(null, status);
                basePendingResult.setResult(status);
            } else {
                zbb zbbVar = new zbb(m39108f);
                new Thread(zbbVar).start();
                basePendingResult = zbbVar.f5566b;
            }
            return basePendingResult;
        }
        return googleApiClient.mo38956i(new C24886d(googleApiClient));
    }

    /* renamed from: c */
    public static PendingResult<Status> m39100c(GoogleApiClient googleApiClient, Context context, boolean z) {
        f5570a.m38818a("Signing out", new Object[0]);
        m39099d(context);
        if (z) {
            Status status = Status.f5722f;
            Preconditions.m38897k(status, "Result must not be null");
            StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
            statusPendingResult.setResult(status);
            return statusPendingResult;
        }
        return googleApiClient.mo38956i(new C24884b(googleApiClient));
    }

    /* renamed from: d */
    public static void m39099d(Context context) {
        zbn.m39098a(context).m39097b();
        for (GoogleApiClient googleApiClient : GoogleApiClient.m39052j()) {
            googleApiClient.mo38993q();
        }
        GoogleApiManager.m39036a();
    }
}
