package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zae;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zax.class */
public final class zax implements zabu {
    private final Context zaa;
    private final zaaz zab;
    private final Looper zac;
    private final zabd zad;
    private final zabd zae;
    private final Map<Api.AnyClientKey<?>, zabd> zaf;
    private final Api.Client zah;
    private Bundle zai;
    private final Lock zam;
    private final Set<SignInConnectionListener> zag = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult zaj = null;
    private ConnectionResult zak = null;
    private boolean zal = false;
    private int zan = 0;

    private zax(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zas> arrayList, ArrayList<zas> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.zaa = context;
        this.zab = zaazVar;
        this.zam = lock;
        this.zac = looper;
        this.zah = client;
        this.zad = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zav(this, null));
        this.zae = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zaw(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (Api.AnyClientKey<?> anyClientKey : map2.keySet()) {
            arrayMap.put(anyClientKey, this.zad);
        }
        for (Api.AnyClientKey<?> anyClientKey2 : map.keySet()) {
            arrayMap.put(anyClientKey2, this.zae);
        }
        this.zaf = Collections.unmodifiableMap(arrayMap);
    }

    private final void zaA() {
        for (SignInConnectionListener signInConnectionListener : this.zag) {
            signInConnectionListener.onComplete();
        }
        this.zag.clear();
    }

    private final boolean zaB() {
        ConnectionResult connectionResult = this.zak;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    private final boolean zaC(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        zabd zabdVar = this.zaf.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabdVar, "GoogleApiClient is not configured to use the API required for this call.");
        return zabdVar.equals(this.zae);
    }

    private final PendingIntent zaD() {
        if (this.zah == null) {
            return null;
        }
        return PendingIntent.getActivity(this.zaa, System.identityHashCode(this.zab), this.zah.getSignInIntent(), 134217728);
    }

    private static boolean zaE(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    public static zax zaa(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder, ArrayList<zas> arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (true == value.providesSignIn()) {
                client = value;
            }
            if (value.requiresSignIn()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        Preconditions.checkState(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> zac = api.zac();
            if (arrayMap.containsKey(zac)) {
                arrayMap3.put(api, map2.get(api));
            } else if (!arrayMap2.containsKey(zac)) {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            } else {
                arrayMap4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zas zasVar = arrayList.get(i);
            if (arrayMap3.containsKey(zasVar.zaa)) {
                arrayList2.add(zasVar);
            } else if (!arrayMap4.containsKey(zasVar.zaa)) {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            } else {
                arrayList3.add(zasVar);
            }
        }
        return new zax(context, zaazVar, lock, looper, googleApiAvailabilityLight, arrayMap, arrayMap2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    public static /* synthetic */ void zap(zax zaxVar) {
        ConnectionResult connectionResult;
        if (!zaE(zaxVar.zaj)) {
            if (zaxVar.zaj != null && zaE(zaxVar.zak)) {
                zaxVar.zae.zah();
                zaxVar.zaz((ConnectionResult) Preconditions.checkNotNull(zaxVar.zaj));
                return;
            }
            ConnectionResult connectionResult2 = zaxVar.zaj;
            if (connectionResult2 == null || (connectionResult = zaxVar.zak) == null) {
                return;
            }
            if (zaxVar.zae.zaf < zaxVar.zad.zaf) {
                connectionResult2 = connectionResult;
            }
            zaxVar.zaz(connectionResult2);
        } else if (!zaE(zaxVar.zak) && !zaxVar.zaB()) {
            ConnectionResult connectionResult3 = zaxVar.zak;
            if (connectionResult3 == null) {
                return;
            }
            if (zaxVar.zan == 1) {
                zaxVar.zaA();
                return;
            }
            zaxVar.zaz(connectionResult3);
            zaxVar.zad.zah();
        } else {
            int i = zaxVar.zan;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                    zaxVar.zan = 0;
                }
                ((zaaz) Preconditions.checkNotNull(zaxVar.zab)).zaa(zaxVar.zai);
            }
            zaxVar.zaA();
            zaxVar.zan = 0;
        }
    }

    public static /* synthetic */ void zaq(zax zaxVar, Bundle bundle) {
        Bundle bundle2 = zaxVar.zai;
        if (bundle2 == null) {
            zaxVar.zai = bundle;
        } else if (bundle == null) {
        } else {
            bundle2.putAll(bundle);
        }
    }

    public static /* synthetic */ void zav(zax zaxVar, int i, boolean z) {
        zaxVar.zab.zac(i, z);
        zaxVar.zak = null;
        zaxVar.zaj = null;
    }

    private final void zaz(ConnectionResult connectionResult) {
        int i = this.zan;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.zan = 0;
            }
            this.zab.zab(connectionResult);
        }
        zaA();
        this.zan = 0;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zab(T t) {
        if (!zaC(t)) {
            this.zad.zab(t);
            return t;
        } else if (zaB()) {
            t.setFailedResult(new Status(4, (String) null, zaD()));
            return t;
        } else {
            this.zae.zab(t);
            return t;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zac(T t) {
        if (zaC(t)) {
            if (!zaB()) {
                return (T) this.zae.zac(t);
            }
            t.setFailedResult(new Status(4, (String) null, zaD()));
            return t;
        }
        return (T) this.zad.zac(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zad(Api<?> api) {
        return Objects.equal(this.zaf.get(api.zac()), this.zae) ? zaB() ? new ConnectionResult(4, zaD()) : this.zae.zad(api) : this.zad.zad(api);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zae() {
        this.zan = 2;
        this.zal = false;
        this.zak = null;
        this.zaj = null;
        this.zad.zae();
        this.zae.zae();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zaf() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final ConnectionResult zag(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zah() {
        this.zak = null;
        this.zaj = null;
        this.zan = 0;
        this.zad.zah();
        this.zae.zah();
        zaA();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (r3.zan == 1) goto L13;
     */
    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zai() {
        /*
            r3 = this;
            r0 = r3
            java.util.concurrent.locks.Lock r0 = r0.zam
            r0.lock()
            r0 = r3
            com.google.android.gms.common.api.internal.zabd r0 = r0.zad     // Catch: java.lang.Throwable -> L45
            boolean r0 = r0.zai()     // Catch: java.lang.Throwable -> L45
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L3a
            r0 = r3
            com.google.android.gms.common.api.internal.zabd r0 = r0.zae     // Catch: java.lang.Throwable -> L45
            boolean r0 = r0.zai()     // Catch: java.lang.Throwable -> L45
            if (r0 != 0) goto L38
            r0 = r3
            boolean r0 = r0.zaB()     // Catch: java.lang.Throwable -> L45
            if (r0 != 0) goto L38
            r0 = r3
            int r0 = r0.zan     // Catch: java.lang.Throwable -> L45
            r7 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L3a
        L38:
            r0 = 1
            r6 = r0
        L3a:
            r0 = r3
            java.util.concurrent.locks.Lock r0 = r0.zam
            r0.unlock()
            r0 = r6
            return r0
        L45:
            r8 = move-exception
            r0 = r3
            java.util.concurrent.locks.Lock r0 = r0.zam
            r0.unlock()
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zax.zai():boolean");
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zaj() {
        this.zam.lock();
        try {
            boolean z = this.zan == 2;
            this.zam.unlock();
            return z;
        } catch (Throwable th) {
            this.zam.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabu
    public final boolean zak(SignInConnectionListener signInConnectionListener) {
        this.zam.lock();
        try {
            if ((!zaj() && !zai()) || this.zae.zai()) {
                this.zam.unlock();
                return false;
            }
            this.zag.add(signInConnectionListener);
            if (this.zan == 0) {
                this.zan = 1;
            }
            this.zak = null;
            this.zae.zae();
            this.zam.unlock();
            return true;
        } catch (Throwable th) {
            this.zam.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zal() {
        this.zad.zal();
        this.zae.zal();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zam() {
        this.zam.lock();
        try {
            boolean zaj = zaj();
            this.zae.zah();
            this.zak = new ConnectionResult(4);
            if (zaj) {
                new zap(this.zac).post(new zau(this));
            } else {
                zaA();
            }
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zan(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.zae.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.zad.zan(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }
}
