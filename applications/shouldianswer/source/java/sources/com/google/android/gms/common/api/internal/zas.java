package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.p014c.C0374a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zas.class */
public final class zas implements zabs {
    private final Context mContext;
    private final Looper zabj;
    private final zaaw zaee;
    private final zabe zaef;
    private final zabe zaeg;
    private final Map<Api.AnyClientKey<?>, zabe> zaeh;
    private final Api.Client zaej;
    private Bundle zaek;
    private final Lock zaeo;
    private final Set<SignInConnectionListener> zaei = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult zael = null;
    private ConnectionResult zaem = null;
    private boolean zaen = false;
    private int zaep = 0;

    private zas(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zaq> arrayList, ArrayList<zaq> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.mContext = context;
        this.zaee = zaawVar;
        this.zaeo = lock;
        this.zabj = looper;
        this.zaej = client;
        this.zaef = new zabe(context, this.zaee, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zau(this, null));
        this.zaeg = new zabe(context, this.zaee, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zav(this, null));
        C0374a c0374a = new C0374a();
        for (Api.AnyClientKey<?> anyClientKey : map2.keySet()) {
            c0374a.put(anyClientKey, this.zaef);
        }
        for (Api.AnyClientKey<?> anyClientKey2 : map.keySet()) {
            c0374a.put(anyClientKey2, this.zaeg);
        }
        this.zaeh = Collections.unmodifiableMap(c0374a);
    }

    public static zas zaa(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, ArrayList<zaq> arrayList) {
        C0374a c0374a = new C0374a();
        C0374a c0374a2 = new C0374a();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (value.providesSignIn()) {
                client = value;
            }
            if (value.requiresSignIn()) {
                c0374a.put(entry.getKey(), value);
            } else {
                c0374a2.put(entry.getKey(), value);
            }
        }
        Preconditions.checkState(!c0374a.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        C0374a c0374a3 = new C0374a();
        C0374a c0374a4 = new C0374a();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> clientKey = api.getClientKey();
            if (c0374a.containsKey(clientKey)) {
                c0374a3.put(api, map2.get(api));
            } else if (!c0374a2.containsKey(clientKey)) {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            } else {
                c0374a4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList<zaq> arrayList4 = arrayList;
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            i++;
            zaq zaqVar = arrayList4.get(i);
            if (c0374a3.containsKey(zaqVar.mApi)) {
                arrayList2.add(zaqVar);
            } else if (!c0374a4.containsKey(zaqVar.mApi)) {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            } else {
                arrayList3.add(zaqVar);
            }
        }
        return new zas(context, zaawVar, lock, looper, googleApiAvailabilityLight, c0374a, c0374a2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, c0374a3, c0374a4);
    }

    public final void zaa(int i, boolean z) {
        this.zaee.zab(i, z);
        this.zaem = null;
        this.zael = null;
    }

    public final void zaa(Bundle bundle) {
        Bundle bundle2 = this.zaek;
        if (bundle2 == null) {
            this.zaek = bundle;
        } else if (bundle == null) {
        } else {
            bundle2.putAll(bundle);
        }
    }

    private final void zaa(ConnectionResult connectionResult) {
        int i = this.zaep;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.zaep = 0;
            }
            this.zaee.zac(connectionResult);
        }
        zay();
        this.zaep = 0;
    }

    private final boolean zaa(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        Api.AnyClientKey<? extends Api.AnyClient> clientKey = apiMethodImpl.getClientKey();
        Preconditions.checkArgument(this.zaeh.containsKey(clientKey), "GoogleApiClient is not configured to use the API required for this call.");
        return this.zaeh.get(clientKey).equals(this.zaeg);
    }

    private final PendingIntent zaaa() {
        if (this.zaej == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, System.identityHashCode(this.zaee), this.zaej.getSignInIntent(), 134217728);
    }

    private static boolean zab(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    public final void zax() {
        if (!zab(this.zael)) {
            if (this.zael != null && zab(this.zaem)) {
                this.zaeg.disconnect();
                zaa(this.zael);
                return;
            }
            ConnectionResult connectionResult = this.zael;
            if (connectionResult == null || this.zaem == null) {
                return;
            }
            if (this.zaeg.zahs < this.zaef.zahs) {
                connectionResult = this.zaem;
            }
            zaa(connectionResult);
        } else if (!zab(this.zaem) && !zaz()) {
            ConnectionResult connectionResult2 = this.zaem;
            if (connectionResult2 == null) {
                return;
            }
            if (this.zaep == 1) {
                zay();
                return;
            }
            zaa(connectionResult2);
            this.zaef.disconnect();
        } else {
            int i = this.zaep;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                    this.zaep = 0;
                }
                this.zaee.zab(this.zaek);
            }
            zay();
            this.zaep = 0;
        }
    }

    private final void zay() {
        for (SignInConnectionListener signInConnectionListener : this.zaei) {
            signInConnectionListener.onComplete();
        }
        this.zaei.clear();
    }

    private final boolean zaz() {
        ConnectionResult connectionResult = this.zaem;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void connect() {
        this.zaep = 2;
        this.zaen = false;
        this.zaem = null;
        this.zael = null;
        this.zaef.connect();
        this.zaeg.connect();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void disconnect() {
        this.zaem = null;
        this.zael = null;
        this.zaep = 0;
        this.zaef.disconnect();
        this.zaeg.disconnect();
        zay();
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.zaeg.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.zaef.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        if (zaa((BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>) t)) {
            if (!zaz()) {
                return (T) this.zaeg.enqueue(t);
            }
            t.setFailedResult(new Status(4, null, zaaa()));
            return t;
        }
        return (T) this.zaef.enqueue(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        if (zaa((BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>) t)) {
            if (!zaz()) {
                return (T) this.zaeg.execute(t);
            }
            t.setFailedResult(new Status(4, null, zaaa()));
            return t;
        }
        return (T) this.zaef.execute(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult getConnectionResult(Api<?> api) {
        return this.zaeh.get(api.getClientKey()).equals(this.zaeg) ? zaz() ? new ConnectionResult(4, zaaa()) : this.zaeg.getConnectionResult(api) : this.zaef.getConnectionResult(api);
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean isConnected() {
        boolean z;
        this.zaeo.lock();
        try {
            if (this.zaef.isConnected()) {
                z = true;
                if (!this.zaeg.isConnected()) {
                    z = true;
                    if (!zaz()) {
                        if (this.zaep == 1) {
                            z = true;
                        }
                    }
                }
                this.zaeo.unlock();
                return z;
            }
            z = false;
            this.zaeo.unlock();
            return z;
        } catch (Throwable th) {
            this.zaeo.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean isConnecting() {
        this.zaeo.lock();
        try {
            boolean z = this.zaep == 2;
            this.zaeo.unlock();
            return z;
        } catch (Throwable th) {
            this.zaeo.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        this.zaeo.lock();
        try {
            if ((!isConnecting() && !isConnected()) || this.zaeg.isConnected()) {
                this.zaeo.unlock();
                return false;
            }
            this.zaei.add(signInConnectionListener);
            if (this.zaep == 0) {
                this.zaep = 1;
            }
            this.zaem = null;
            this.zaeg.connect();
            this.zaeo.unlock();
            return true;
        } catch (Throwable th) {
            this.zaeo.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void maybeSignOut() {
        this.zaeo.lock();
        try {
            boolean isConnecting = isConnecting();
            this.zaeg.disconnect();
            this.zaem = new ConnectionResult(4);
            if (isConnecting) {
                new zap(this.zabj).post(new zat(this));
            } else {
                zay();
            }
        } finally {
            this.zaeo.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zaw() {
        this.zaef.zaw();
        this.zaeg.zaw();
    }
}
