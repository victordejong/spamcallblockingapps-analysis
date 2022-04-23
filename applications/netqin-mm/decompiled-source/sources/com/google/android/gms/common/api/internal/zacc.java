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
import com.google.android.gms.common.internal.zau;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zam;
import com.google.android.gms.signin.zaa;
import java.util.Set;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3247c0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3249d0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacc.class */
public final class zacc extends zad implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: h */
    public static Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zad, SignInOptions> f23257h = zaa.f30241c;

    /* renamed from: a */
    public final Context f23258a;

    /* renamed from: b */
    public final Handler f23259b;

    /* renamed from: c */
    public final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zad, SignInOptions> f23260c;

    /* renamed from: d */
    public Set<Scope> f23261d;

    /* renamed from: e */
    public ClientSettings f23262e;

    /* renamed from: f */
    public com.google.android.gms.signin.zad f23263f;

    /* renamed from: g */
    public zacd f23264g;

    public zacc(Context context, Handler handler, ClientSettings clientSettings) {
        this(context, handler, clientSettings, f23257h);
    }

    public zacc(Context context, Handler handler, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zad, SignInOptions> abstractClientBuilder) {
        this.f23258a = context;
        this.f23259b = handler;
        Preconditions.m17287a(clientSettings, "ClientSettings must not be null");
        this.f23262e = clientSettings;
        this.f23261d = clientSettings.m17326e();
        this.f23260c = abstractClientBuilder;
    }

    /* renamed from: W */
    public final void m17507W() {
        com.google.android.gms.signin.zad zadVar = this.f23263f;
        if (zadVar != null) {
            zadVar.mo10491b();
        }
    }

    /* renamed from: a */
    public final void m17504a(zacd zacdVar) {
        com.google.android.gms.signin.zad zadVar = this.f23263f;
        if (zadVar != null) {
            zadVar.mo10491b();
        }
        this.f23262e.m17330a(Integer.valueOf(System.identityHashCode(this)));
        Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zad, SignInOptions> abstractClientBuilder = this.f23260c;
        Context context = this.f23258a;
        Looper looper = this.f23259b.getLooper();
        ClientSettings clientSettings = this.f23262e;
        this.f23263f = (com.google.android.gms.signin.zad) abstractClientBuilder.mo17783a(context, looper, clientSettings, (ClientSettings) clientSettings.m17323h(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.f23264g = zacdVar;
        Set<Scope> set = this.f23261d;
        if (set == null || set.isEmpty()) {
            this.f23259b.post(new RunnableC3247c0(this));
        } else {
            this.f23263f.mo8623d();
        }
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    /* renamed from: a */
    public final void mo8636a(zam zamVar) {
        this.f23259b.post(new RunnableC3249d0(this, zamVar));
    }

    /* renamed from: b */
    public final void m17503b(zam zamVar) {
        ConnectionResult f = zamVar.m8628f();
        if (f.m17830y()) {
            zau i = zamVar.m8627i();
            Preconditions.m17288a(i);
            zau zauVar = i;
            ConnectionResult i2 = zauVar.m17178i();
            if (!i2.m17830y()) {
                String valueOf = String.valueOf(i2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
                this.f23264g.mo17502a(i2);
                this.f23263f.mo10491b();
                return;
            }
            this.f23264g.mo17501a(zauVar.m17179f(), this.f23261d);
        } else {
            this.f23264g.mo17502a(f);
        }
        this.f23263f.mo10491b();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f23263f.mo8624a(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f23264g.mo17502a(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f23263f.mo10491b();
    }
}
