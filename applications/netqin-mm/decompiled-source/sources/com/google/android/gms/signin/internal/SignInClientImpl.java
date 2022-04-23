package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zas;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/SignInClientImpl.class */
public class SignInClientImpl extends GmsClient<zae> implements zad {

    /* renamed from: E */
    public final boolean f30225E;

    /* renamed from: F */
    public final ClientSettings f30226F;

    /* renamed from: G */
    public final Bundle f30227G;

    /* renamed from: H */
    public final Integer f30228H;

    public SignInClientImpl(Context context, Looper looper, boolean z, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.f30225E = z;
        this.f30226F = clientSettings;
        this.f30227G = bundle;
        this.f30228H = clientSettings.m17322i();
    }

    public SignInClientImpl(Context context, Looper looper, boolean z, ClientSettings clientSettings, SignInOptions signInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, true, clientSettings, m8644a(clientSettings), connectionCallbacks, onConnectionFailedListener);
    }

    @KeepForSdk
    /* renamed from: a */
    public static Bundle m8644a(ClientSettings clientSettings) {
        SignInOptions h = clientSettings.m17323h();
        Integer i = clientSettings.m17322i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", clientSettings.m17332a());
        if (i != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", i.intValue());
        }
        if (h != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", h.m8655c());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", h.m8654d());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", h.m8653e());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", h.m8652f());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", h.m8651g());
            bundle.putString("com.google.android.gms.signin.internal.logSessionId", h.m8650h());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", h.m8649i());
            Long j = h.m8648j();
            if (j != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", j.longValue());
            }
            Long k = h.m8647k();
            if (k != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", k.longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: A */
    public String mo8646A() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    public /* synthetic */ IInterface mo8645a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof zae ? (zae) queryLocalInterface : new zah(iBinder);
    }

    @Override // com.google.android.gms.signin.zad
    /* renamed from: a */
    public final void mo8626a() {
        try {
            zae zaeVar = (zae) m17344y();
            Integer num = this.f30228H;
            Preconditions.m17288a(num);
            zaeVar.mo8629b(num.intValue());
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.signin.zad
    /* renamed from: a */
    public final void mo8625a(IAccountAccessor iAccountAccessor, boolean z) {
        try {
            zae zaeVar = (zae) m17344y();
            Integer num = this.f30228H;
            Preconditions.m17288a(num);
            zaeVar.mo8631a(iAccountAccessor, num.intValue(), z);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.signin.zad
    /* renamed from: a */
    public final void mo8624a(zac zacVar) {
        Preconditions.m17287a(zacVar, "Expecting a valid ISignInCallbacks");
        try {
            Account b = this.f30226F.m17329b();
            GoogleSignInAccount googleSignInAccount = null;
            if ("<<default account>>".equals(b.name)) {
                googleSignInAccount = Storage.m17857a(m17346u()).m17858a();
            }
            Integer num = this.f30228H;
            Preconditions.m17288a(num);
            ((zae) m17344y()).mo8630a(new zak(new zas(b, num.intValue(), googleSignInAccount)), zacVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zacVar.mo8636a(new zam(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.signin.zad
    /* renamed from: d */
    public final void mo8623d() {
        m17382a(new BaseGmsClient.LegacyClientCallbackAdapter());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: j */
    public int mo8643j() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    /* renamed from: n */
    public boolean mo8642n() {
        return this.f30225E;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: v */
    public Bundle mo8641v() {
        if (!m17346u().getPackageName().equals(this.f30226F.m17327d())) {
            this.f30227G.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f30226F.m17327d());
        }
        return this.f30227G;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: z */
    public String mo8640z() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }
}
