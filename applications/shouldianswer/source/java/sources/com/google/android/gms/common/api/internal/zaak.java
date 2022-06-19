package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zaj;
import com.google.android.gms.signin.zad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaak.class */
public final class zaak implements zabd {
    private final Context mContext;
    private final Api.AbstractClientBuilder<? extends zad, SignInOptions> zace;
    private final Lock zaeo;
    private final ClientSettings zaet;
    private final Map<Api<?>, Boolean> zaew;
    private final GoogleApiAvailabilityLight zaey;
    private ConnectionResult zafh;
    private final zabe zaft;
    private int zafw;
    private int zafy;
    private zad zagb;
    private boolean zagc;
    private boolean zagd;
    private boolean zage;
    private IAccountAccessor zagf;
    private boolean zagg;
    private boolean zagh;
    private int zafx = 0;
    private final Bundle zafz = new Bundle();
    private final Set<Api.AnyClientKey> zaga = new HashSet();
    private ArrayList<Future<?>> zagi = new ArrayList<>();

    public zaak(zabe zabeVar, ClientSettings clientSettings, Map<Api<?>, Boolean> map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, Lock lock, Context context) {
        this.zaft = zabeVar;
        this.zaet = clientSettings;
        this.zaew = map;
        this.zaey = googleApiAvailabilityLight;
        this.zace = abstractClientBuilder;
        this.zaeo = lock;
        this.mContext = context;
    }

    public final void zaa(zaj zajVar) {
        if (!zac(0)) {
            return;
        }
        ConnectionResult connectionResult = zajVar.getConnectionResult();
        if (!connectionResult.isSuccess()) {
            if (!zad(connectionResult)) {
                zae(connectionResult);
                return;
            }
            zaar();
            zaap();
            return;
        }
        ResolveAccountResponse zacx = zajVar.zacx();
        ConnectionResult connectionResult2 = zacx.getConnectionResult();
        if (connectionResult2.isSuccess()) {
            this.zage = true;
            this.zagf = zacx.getAccountAccessor();
            this.zagg = zacx.getSaveDefaultAccount();
            this.zagh = zacx.isFromCrossClientAuth();
            zaap();
            return;
        }
        String valueOf = String.valueOf(connectionResult2);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
        sb.append("Sign-in succeeded with resolve account failure: ");
        sb.append(valueOf);
        Log.wtf("GoogleApiClientConnecting", sb.toString(), new Exception());
        zae(connectionResult2);
    }

    public final boolean zaao() {
        this.zafy--;
        int i = this.zafy;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            Log.w("GoogleApiClientConnecting", this.zaft.zaee.zaay());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            zae(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.zafh;
        if (connectionResult == null) {
            return true;
        }
        this.zaft.zahs = this.zafw;
        zae(connectionResult);
        return false;
    }

    public final void zaap() {
        if (this.zafy != 0) {
            return;
        }
        if (this.zagd && !this.zage) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        this.zafx = 1;
        this.zafy = this.zaft.zagz.size();
        for (Api.AnyClientKey<?> anyClientKey : this.zaft.zagz.keySet()) {
            if (!this.zaft.zahp.containsKey(anyClientKey)) {
                arrayList.add(this.zaft.zagz.get(anyClientKey));
            } else if (zaao()) {
                zaaq();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.zagi.add(zabh.zabb().submit(new zaaq(this, arrayList)));
    }

    private final void zaaq() {
        this.zaft.zaba();
        zabh.zabb().execute(new zaal(this));
        zad zadVar = this.zagb;
        if (zadVar != null) {
            if (this.zagg) {
                zadVar.zaa(this.zagf, this.zagh);
            }
            zab(false);
        }
        for (Api.AnyClientKey<?> anyClientKey : this.zaft.zahp.keySet()) {
            this.zaft.zagz.get(anyClientKey).disconnect();
        }
        this.zaft.zaht.zab(this.zafz.isEmpty() ? null : this.zafz);
    }

    public final void zaar() {
        this.zagd = false;
        this.zaft.zaee.zaha = Collections.emptySet();
        for (Api.AnyClientKey<?> anyClientKey : this.zaga) {
            if (!this.zaft.zahp.containsKey(anyClientKey)) {
                this.zaft.zahp.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    private final void zaas() {
        ArrayList<Future<?>> arrayList = this.zagi;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            i++;
            arrayList.get(i).cancel(true);
        }
        this.zagi.clear();
    }

    public final Set<Scope> zaat() {
        ClientSettings clientSettings = this.zaet;
        if (clientSettings == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map<Api<?>, ClientSettings.OptionalApiSettings> optionalApiSettings = this.zaet.getOptionalApiSettings();
        for (Api<?> api : optionalApiSettings.keySet()) {
            if (!this.zaft.zahp.containsKey(api.getClientKey())) {
                hashSet.addAll(optionalApiSettings.get(api).mScopes);
            }
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        if ((r5.hasResolution() || r4.zaey.getErrorResolutionIntent(r5.getErrorCode()) != null) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        if (r0 < r4.zafw) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zab(com.google.android.gms.common.ConnectionResult r5, com.google.android.gms.common.api.Api<?> r6, boolean r7) {
        /*
            r4 = this;
            r0 = r6
            com.google.android.gms.common.api.Api$BaseClientBuilder r0 = r0.zah()
            int r0 = r0.getPriority()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L3a
            r0 = r5
            boolean r0 = r0.hasResolution()
            if (r0 == 0) goto L1d
        L17:
            r0 = 1
            r10 = r0
            goto L31
        L1d:
            r0 = r4
            com.google.android.gms.common.GoogleApiAvailabilityLight r0 = r0.zaey
            r1 = r5
            int r1 = r1.getErrorCode()
            android.content.Intent r0 = r0.getErrorResolutionIntent(r1)
            if (r0 == 0) goto L2e
            goto L17
        L2e:
            r0 = 0
            r10 = r0
        L31:
            r0 = r9
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L51
        L3a:
            r0 = r4
            com.google.android.gms.common.ConnectionResult r0 = r0.zafh
            if (r0 == 0) goto L4e
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r4
            int r1 = r1.zafw
            if (r0 >= r1) goto L51
        L4e:
            r0 = 1
            r11 = r0
        L51:
            r0 = r11
            if (r0 == 0) goto L61
            r0 = r4
            r1 = r5
            r0.zafh = r1
            r0 = r4
            r1 = r8
            r0.zafw = r1
        L61:
            r0 = r4
            com.google.android.gms.common.api.internal.zabe r0 = r0.zaft
            java.util.Map<com.google.android.gms.common.api.Api$AnyClientKey<?>, com.google.android.gms.common.ConnectionResult> r0 = r0.zahp
            r1 = r6
            com.google.android.gms.common.api.Api$AnyClientKey r1 = r1.getClientKey()
            r2 = r5
            java.lang.Object r0 = r0.put(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zaak.zab(com.google.android.gms.common.ConnectionResult, com.google.android.gms.common.api.Api, boolean):void");
    }

    private final void zab(boolean z) {
        zad zadVar = this.zagb;
        if (zadVar != null) {
            if (zadVar.isConnected() && z) {
                this.zagb.zacw();
            }
            this.zagb.disconnect();
            if (this.zaet.isSignInClientDisconnectFixEnabled()) {
                this.zagb = null;
            }
            this.zagf = null;
        }
    }

    public final boolean zac(int i) {
        if (this.zafx != i) {
            Log.w("GoogleApiClientConnecting", this.zaft.zaee.zaay());
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Unexpected callback in ");
            sb.append(valueOf);
            Log.w("GoogleApiClientConnecting", sb.toString());
            int i2 = this.zafy;
            StringBuilder sb2 = new StringBuilder(33);
            sb2.append("mRemainingConnections=");
            sb2.append(i2);
            Log.w("GoogleApiClientConnecting", sb2.toString());
            String zad = zad(this.zafx);
            String zad2 = zad(i);
            StringBuilder sb3 = new StringBuilder(String.valueOf(zad).length() + 70 + String.valueOf(zad2).length());
            sb3.append("GoogleApiClient connecting is in step ");
            sb3.append(zad);
            sb3.append(" but received callback for step ");
            sb3.append(zad2);
            Log.wtf("GoogleApiClientConnecting", sb3.toString(), new Exception());
            zae(new ConnectionResult(8, null));
            return false;
        }
        return true;
    }

    private static String zad(int i) {
        return i != 0 ? i != 1 ? "UNKNOWN" : "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    public final boolean zad(ConnectionResult connectionResult) {
        return this.zagc && !connectionResult.hasResolution();
    }

    public final void zae(ConnectionResult connectionResult) {
        zaas();
        zab(!connectionResult.hasResolution());
        this.zaft.zaf(connectionResult);
        this.zaft.zaht.zac(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void begin() {
        this.zaft.zahp.clear();
        this.zagd = false;
        this.zafh = null;
        this.zafx = 0;
        this.zagc = true;
        this.zage = false;
        this.zagg = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.zaew.keySet()) {
            Api.Client client = this.zaft.zagz.get(api.getClientKey());
            z |= api.zah().getPriority() == 1;
            boolean booleanValue = this.zaew.get(api).booleanValue();
            if (client.requiresSignIn()) {
                this.zagd = true;
                if (booleanValue) {
                    this.zaga.add(api.getClientKey());
                } else {
                    this.zagc = false;
                }
            }
            hashMap.put(client, new zaam(this, api, booleanValue));
        }
        if (z) {
            this.zagd = false;
        }
        if (this.zagd) {
            this.zaet.setClientSessionId(Integer.valueOf(System.identityHashCode(this.zaft.zaee)));
            zaat zaatVar = new zaat(this, null);
            Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder = this.zace;
            Context context = this.mContext;
            Looper looper = this.zaft.zaee.getLooper();
            ClientSettings clientSettings = this.zaet;
            this.zagb = abstractClientBuilder.buildClient(context, looper, clientSettings, clientSettings.getSignInOptions(), zaatVar, zaatVar);
        }
        this.zafy = this.zaft.zagz.size();
        this.zagi.add(zabh.zabb().submit(new zaan(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void connect() {
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final boolean disconnect() {
        zaas();
        zab(true);
        this.zaft.zaf(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        this.zaft.zaee.zafc.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void onConnected(Bundle bundle) {
        if (!zac(1)) {
            return;
        }
        if (bundle != null) {
            this.zafz.putAll(bundle);
        }
        if (!zaao()) {
            return;
        }
        zaaq();
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void onConnectionSuspended(int i) {
        zae(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (!zac(1)) {
            return;
        }
        zab(connectionResult, api, z);
        if (!zaao()) {
            return;
        }
        zaaq();
    }
}
