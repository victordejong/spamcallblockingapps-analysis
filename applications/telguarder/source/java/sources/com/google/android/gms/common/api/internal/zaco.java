package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zak;
import com.google.android.gms.signin.zad;
import com.google.android.gms.signin.zae;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaco.class */
public final class zaco extends zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private static final Api.AbstractClientBuilder<? extends zae, SignInOptions> zaa = zad.zac;
    private final Context zab;
    private final Handler zac;
    private final Api.AbstractClientBuilder<? extends zae, SignInOptions> zad;
    private final Set<Scope> zae;
    private final ClientSettings zaf;
    private zae zag;
    private zacn zah;

    public zaco(Context context, Handler handler, ClientSettings clientSettings) {
        Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder = zaa;
        this.zab = context;
        this.zac = handler;
        this.zaf = (ClientSettings) Preconditions.checkNotNull(clientSettings, "ClientSettings must not be null");
        this.zae = clientSettings.getRequiredScopes();
        this.zad = abstractClientBuilder;
    }

    public static /* synthetic */ void zaf(zaco zacoVar, zak zakVar) {
        ConnectionResult zaa2 = zakVar.zaa();
        ConnectionResult connectionResult = zaa2;
        if (zaa2.isSuccess()) {
            zav zavVar = (zav) Preconditions.checkNotNull(zakVar.zab());
            connectionResult = zavVar.zab();
            if (connectionResult.isSuccess()) {
                zacoVar.zah.zab(zavVar.zaa(), zacoVar.zae);
                zacoVar.zag.disconnect();
            }
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
            sb.append("Sign-in succeeded with resolve account failure: ");
            sb.append(valueOf);
            Log.wtf("SignInCoordinator", sb.toString(), new Exception());
        }
        zacoVar.zah.zaa(connectionResult);
        zacoVar.zag.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.zag.zaa(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zah.zaa(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.zag.disconnect();
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void zab(zak zakVar) {
        this.zac.post(new zacm(this, zakVar));
    }

    public final void zac(zacn zacnVar) {
        zae zaeVar = this.zag;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
        this.zaf.zae(Integer.valueOf(System.identityHashCode(this)));
        Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder = this.zad;
        Context context = this.zab;
        Looper looper = this.zac.getLooper();
        ClientSettings clientSettings = this.zaf;
        this.zag = abstractClientBuilder.buildClient(context, looper, clientSettings, (ClientSettings) clientSettings.zac(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.zah = zacnVar;
        Set<Scope> set = this.zae;
        if (set == null || set.isEmpty()) {
            this.zac.post(new zacl(this));
        } else {
            this.zag.zad();
        }
    }

    public final void zad() {
        zae zaeVar = this.zag;
        if (zaeVar != null) {
            zaeVar.disconnect();
        }
    }
}
