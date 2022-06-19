package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zak;
import com.google.android.gms.signin.zad;
import com.google.android.gms.signin.zae;
import java.util.Set;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24920g0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaco.class */
public final class zaco extends zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: h */
    public static final Api.AbstractClientBuilder<? extends zae, SignInOptions> f5872h = zad.f6468c;

    /* renamed from: a */
    public final Context f5873a;

    /* renamed from: b */
    public final Handler f5874b;

    /* renamed from: c */
    public final Api.AbstractClientBuilder<? extends zae, SignInOptions> f5875c;

    /* renamed from: d */
    public final Set<Scope> f5876d;

    /* renamed from: e */
    public final ClientSettings f5877e;

    /* renamed from: f */
    public zae f5878f;

    /* renamed from: g */
    public zacn f5879g;

    public zaco(Context context, Handler handler, ClientSettings clientSettings) {
        Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder = f5872h;
        this.f5873a = context;
        this.f5874b = handler;
        Preconditions.m38897k(clientSettings, "ClientSettings must not be null");
        this.f5877e = clientSettings;
        this.f5876d = clientSettings.f5943b;
        this.f5875c = abstractClientBuilder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f5878f.d(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f5879g.mo4291c(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f5878f.disconnect();
    }

    /* renamed from: w0 */
    public final void m38949w0(zak zakVar) {
        this.f5874b.post(new RunnableC24920g0(this, zakVar));
    }
}
