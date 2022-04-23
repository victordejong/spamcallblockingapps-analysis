package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zak;
import com.google.android.gms.signin.zab;
import com.google.android.gms.signin.zac;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zace.class */
public final class zace extends zad implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: h */
    private static Api.AbstractClientBuilder<? extends zac, SignInOptions> f7258h = zab.f9825c;

    /* renamed from: a */
    private final Context f7259a;

    /* renamed from: b */
    private final Handler f7260b;

    /* renamed from: c */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f7261c;

    /* renamed from: d */
    private Set<Scope> f7262d;

    /* renamed from: e */
    private ClientSettings f7263e;

    /* renamed from: f */
    private zac f7264f;

    /* renamed from: g */
    private zacf f7265g;

    @WorkerThread
    public zace(Context context, Handler handler, @NonNull ClientSettings clientSettings) {
        this(context, handler, clientSettings, f7258h);
    }

    @WorkerThread
    public zace(Context context, Handler handler, @NonNull ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder) {
        this.f7259a = context;
        this.f7260b = handler;
        Preconditions.m14522l(clientSettings, "ClientSettings must not be null");
        this.f7263e = clientSettings;
        this.f7262d = clientSettings.m14575h();
        this.f7261c = abstractClientBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: V0 */
    public final void m14764V0(zak zakVar) {
        ConnectionResult B = zakVar.m10842B();
        if (B.m15090d0()) {
            ResolveAccountResponse I = zakVar.m10841I();
            ConnectionResult I2 = I.m14514I();
            if (!I2.m15090d0()) {
                String valueOf = String.valueOf(I2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
                this.f7265g.mo14762c(I2);
                this.f7264f.disconnect();
                return;
            }
            this.f7265g.mo14763b(I.m14515B(), this.f7262d);
        } else {
            this.f7265g.mo14762c(B);
        }
        this.f7264f.disconnect();
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    @BinderThread
    /* renamed from: E */
    public final void mo10849E(zak zakVar) {
        this.f7260b.post(new zacg(this, zakVar));
    }

    @WorkerThread
    /* renamed from: S0 */
    public final void m14767S0(zacf zacfVar) {
        zac zacVar = this.f7264f;
        if (zacVar != null) {
            zacVar.disconnect();
        }
        this.f7263e.m14572k(Integer.valueOf(System.identityHashCode(this)));
        Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder = this.f7261c;
        Context context = this.f7259a;
        Looper looper = this.f7260b.getLooper();
        ClientSettings clientSettings = this.f7263e;
        this.f7264f = (zac) abstractClientBuilder.buildClient(context, looper, clientSettings, (ClientSettings) clientSettings.m14574i(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.f7265g = zacfVar;
        Set<Scope> set = this.f7262d;
        if (set == null || set.isEmpty()) {
            this.f7260b.post(new zacd(this));
        } else {
            this.f7264f.connect();
        }
    }

    /* renamed from: T0 */
    public final zac m14766T0() {
        return this.f7264f;
    }

    /* renamed from: U0 */
    public final void m14765U0() {
        zac zacVar = this.f7264f;
        if (zacVar != null) {
            zacVar.disconnect();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    @WorkerThread
    /* renamed from: a */
    public final void mo14715a(int i) {
        this.f7264f.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    @WorkerThread
    /* renamed from: b */
    public final void mo14714b(@Nullable Bundle bundle) {
        this.f7264f.mo10839b(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    @WorkerThread
    /* renamed from: f */
    public final void mo14711f(@NonNull ConnectionResult connectionResult) {
        this.f7265g.mo14762c(connectionResult);
    }
}
