package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.p014c.C0374a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zax.class */
public final class zax implements zabs {
    private final Looper zabj;
    private final GoogleApiManager zabm;
    private final Lock zaeo;
    private final ClientSettings zaet;
    private final Map<Api<?>, Boolean> zaew;
    private final zaaw zaex;
    private final GoogleApiAvailabilityLight zaey;
    private final Condition zaez;
    private final boolean zafa;
    private final boolean zafb;
    private boolean zafd;
    private Map<zai<?>, ConnectionResult> zafe;
    private Map<zai<?>, ConnectionResult> zaff;
    private zaaa zafg;
    private ConnectionResult zafh;
    private final Map<Api.AnyClientKey<?>, zaw<?>> zaeu = new HashMap();
    private final Map<Api.AnyClientKey<?>, zaw<?>> zaev = new HashMap();
    private final Queue<BaseImplementation.ApiMethodImpl<?, ?>> zafc = new LinkedList();

    public zax(Context context, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, ArrayList<zaq> arrayList, zaaw zaawVar, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        this.zaeo = lock;
        this.zabj = looper;
        this.zaez = lock.newCondition();
        this.zaey = googleApiAvailabilityLight;
        this.zaex = zaawVar;
        this.zaew = map2;
        this.zaet = clientSettings;
        this.zafa = z;
        HashMap hashMap = new HashMap();
        for (Api<?> api : map2.keySet()) {
            hashMap.put(api.getClientKey(), api);
        }
        HashMap hashMap2 = new HashMap();
        ArrayList<zaq> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            zaq zaqVar = arrayList2.get(i);
            hashMap2.put(zaqVar.mApi, zaqVar);
        }
        Iterator<Map.Entry<Api.AnyClientKey<?>, Api.Client>> it = map.entrySet().iterator();
        boolean z5 = true;
        boolean z6 = true;
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            z2 = z8;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<Api.AnyClientKey<?>, Api.Client> next = it.next();
            Api api2 = (Api) hashMap.get(next.getKey());
            Api.Client value = next.getValue();
            if (!value.requiresGooglePlayServices()) {
                boolean z9 = z7;
                z4 = z2;
                z3 = z9;
                z6 = false;
            } else if (!this.zaew.get(api2).booleanValue()) {
                z4 = true;
                z3 = true;
            } else {
                z4 = z2;
                z3 = true;
            }
            zaw<?> zawVar = new zaw<>(context, api2, looper, value, (zaq) hashMap2.get(api2), clientSettings, abstractClientBuilder);
            this.zaeu.put(next.getKey(), zawVar);
            if (value.requiresSignIn()) {
                this.zaev.put(next.getKey(), zawVar);
            }
            boolean z10 = z4;
            z7 = z3;
            z8 = z10;
        }
        this.zafb = (!z7 || z6 || z2) ? false : z5;
        this.zabm = GoogleApiManager.zabc();
    }

    private final ConnectionResult zaa(Api.AnyClientKey<?> anyClientKey) {
        this.zaeo.lock();
        try {
            zaw<?> zawVar = this.zaeu.get(anyClientKey);
            if (this.zafe != null && zawVar != null) {
                return this.zafe.get(zawVar.zak());
            }
            this.zaeo.unlock();
            return null;
        } finally {
            this.zaeo.unlock();
        }
    }

    public final boolean zaa(zaw<?> zawVar, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && this.zaew.get(zawVar.getApi()).booleanValue() && zawVar.zaab().requiresGooglePlayServices() && this.zaey.isUserResolvableError(connectionResult.getErrorCode());
    }

    /* JADX WARN: Finally extract failed */
    private final boolean zaac() {
        ConnectionResult zaa;
        this.zaeo.lock();
        try {
            if (this.zafd && this.zafa) {
                Iterator<Api.AnyClientKey<?>> it = this.zaev.keySet().iterator();
                do {
                    if (!it.hasNext()) {
                        this.zaeo.unlock();
                        return true;
                    }
                    zaa = zaa(it.next());
                    if (zaa == null) {
                        break;
                    }
                } while (zaa.isSuccess());
                this.zaeo.unlock();
                return false;
            }
            this.zaeo.unlock();
            return false;
        } catch (Throwable th) {
            this.zaeo.unlock();
            throw th;
        }
    }

    public final void zaad() {
        ClientSettings clientSettings = this.zaet;
        if (clientSettings == null) {
            this.zaex.zaha = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map<Api<?>, ClientSettings.OptionalApiSettings> optionalApiSettings = this.zaet.getOptionalApiSettings();
        for (Api<?> api : optionalApiSettings.keySet()) {
            ConnectionResult connectionResult = getConnectionResult(api);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(optionalApiSettings.get(api).mScopes);
            }
        }
        this.zaex.zaha = hashSet;
    }

    public final void zaae() {
        while (!this.zafc.isEmpty()) {
            execute(this.zafc.remove());
        }
        this.zaex.zab((Bundle) null);
    }

    public final ConnectionResult zaaf() {
        ConnectionResult connectionResult = null;
        int i = 0;
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        for (zaw<?> zawVar : this.zaeu.values()) {
            Api<?> api = zawVar.getApi();
            ConnectionResult connectionResult3 = this.zafe.get(zawVar.zak());
            if (!connectionResult3.isSuccess() && (!this.zaew.get(api).booleanValue() || connectionResult3.hasResolution() || this.zaey.isUserResolvableError(connectionResult3.getErrorCode()))) {
                if (connectionResult3.getErrorCode() != 4 || !this.zafa) {
                    int priority = api.zah().getPriority();
                    if (connectionResult == null || i > priority) {
                        connectionResult = connectionResult3;
                        i = priority;
                    }
                } else {
                    int priority2 = api.zah().getPriority();
                    if (connectionResult2 == null || i2 > priority2) {
                        connectionResult2 = connectionResult3;
                        i2 = priority2;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }

    private final <T extends BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>> boolean zab(T t) {
        Api.AnyClientKey<?> clientKey = t.getClientKey();
        ConnectionResult zaa = zaa(clientKey);
        if (zaa == null || zaa.getErrorCode() != 4) {
            return false;
        }
        t.setFailedResult(new Status(4, null, this.zabm.zaa(this.zaeu.get(clientKey).zak(), System.identityHashCode(this.zaex))));
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.zaez.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.zafh;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        char nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.zaez.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.zafh;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void connect() {
        this.zaeo.lock();
        try {
            if (this.zafd) {
                return;
            }
            this.zafd = true;
            this.zafe = null;
            this.zaff = null;
            this.zafg = null;
            this.zafh = null;
            this.zabm.zao();
            this.zabm.zaa(this.zaeu.values()).addOnCompleteListener(new HandlerExecutor(this.zabj), new zaz(this));
        } finally {
            this.zaeo.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void disconnect() {
        this.zaeo.lock();
        try {
            this.zafd = false;
            this.zafe = null;
            this.zaff = null;
            if (this.zafg != null) {
                this.zafg.cancel();
                this.zafg = null;
            }
            this.zafh = null;
            while (!this.zafc.isEmpty()) {
                BaseImplementation.ApiMethodImpl<?, ?> remove = this.zafc.remove();
                remove.zaa((zacs) null);
                remove.cancel();
            }
            this.zaez.signalAll();
        } finally {
            this.zaeo.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        if (!this.zafa || !zab((zax) t)) {
            if (!isConnected()) {
                this.zafc.add(t);
                return t;
            }
            this.zaex.zahf.zab(t);
            return (T) this.zaeu.get(t.getClientKey()).doRead((zaw<?>) t);
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        Api.AnyClientKey<A> clientKey = t.getClientKey();
        if (!this.zafa || !zab((zax) t)) {
            this.zaex.zahf.zab(t);
            return (T) this.zaeu.get(clientKey).doWrite((zaw<?>) t);
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final ConnectionResult getConnectionResult(Api<?> api) {
        return zaa(api.getClientKey());
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabs
    public final boolean isConnected() {
        boolean z;
        this.zaeo.lock();
        try {
            if (this.zafe != null) {
                if (this.zafh == null) {
                    z = true;
                    this.zaeo.unlock();
                    return z;
                }
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
        boolean z;
        this.zaeo.lock();
        try {
            if (this.zafe == null) {
                if (this.zafd) {
                    z = true;
                    this.zaeo.unlock();
                    return z;
                }
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
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        this.zaeo.lock();
        try {
            if (!this.zafd || zaac()) {
                this.zaeo.unlock();
                return false;
            }
            this.zabm.zao();
            this.zafg = new zaaa(this, signInConnectionListener);
            this.zabm.zaa(this.zaev.values()).addOnCompleteListener(new HandlerExecutor(this.zabj), this.zafg);
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
            this.zabm.maybeSignOut();
            if (this.zafg != null) {
                this.zafg.cancel();
                this.zafg = null;
            }
            if (this.zaff == null) {
                this.zaff = new C0374a(this.zaev.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (zaw<?> zawVar : this.zaev.values()) {
                this.zaff.put(zawVar.zak(), connectionResult);
            }
            if (this.zafe != null) {
                this.zafe.putAll(this.zaff);
            }
        } finally {
            this.zaeo.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zaw() {
    }
}
