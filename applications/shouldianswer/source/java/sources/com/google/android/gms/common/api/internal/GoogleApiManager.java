package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.p014c.C0374a;
import androidx.p014c.C0376b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GoogleApiAvailabilityCache;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.SimpleClientAdapter;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.signin.zad;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager.class */
public class GoogleApiManager implements Handler.Callback {
    private static GoogleApiManager zaic;
    private final Handler handler;
    private final Context zaid;
    private final GoogleApiAvailability zaie;
    private final GoogleApiAvailabilityCache zaif;
    public static final Status zahx = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zahy = new Status(4, "The user must be signed in to make this API call.");
    private static final Object lock = new Object();
    private long zahz = 5000;
    private long zaia = 120000;
    private long zaib = 10000;
    private final AtomicInteger zaig = new AtomicInteger(1);
    private final AtomicInteger zaih = new AtomicInteger(0);
    private final Map<zai<?>, zaa<?>> zaii = new ConcurrentHashMap(5, 0.75f, 1);
    private zaae zaij = null;
    private final Set<zai<?>> zaik = new C0376b();
    private final Set<zai<?>> zail = new C0376b();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zaa.class */
    public final class zaa<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zar {
        private final zai<O> zafq;
        private final Api.Client zaio;
        private final Api.AnyClient zaip;
        private final zaab zaiq;
        private final int zait;
        private final zace zaiu;
        private boolean zaiv;
        private final Queue<com.google.android.gms.common.api.internal.zab> zain = new LinkedList();
        private final Set<zak> zair = new HashSet();
        private final Map<ListenerHolder.ListenerKey<?>, zabw> zais = new HashMap();
        private final List<zab> zaiw = new ArrayList();
        private ConnectionResult zaix = null;

        public zaa(GoogleApi<O> googleApi) {
            GoogleApiManager.this = r6;
            this.zaio = googleApi.zaa(r6.handler.getLooper(), this);
            Api.Client client = this.zaio;
            if (client instanceof SimpleClientAdapter) {
                this.zaip = ((SimpleClientAdapter) client).getClient();
            } else {
                this.zaip = client;
            }
            this.zafq = googleApi.zak();
            this.zaiq = new zaab();
            this.zait = googleApi.getInstanceId();
            if (this.zaio.requiresSignIn()) {
                this.zaiu = googleApi.zaa(r6.zaid, r6.handler);
            } else {
                this.zaiu = null;
            }
        }

        private final Feature zaa(Feature[] featureArr) {
            if (featureArr == null || featureArr.length == 0) {
                return null;
            }
            Feature[] availableFeatures = this.zaio.getAvailableFeatures();
            Feature[] featureArr2 = availableFeatures;
            if (availableFeatures == null) {
                featureArr2 = new Feature[0];
            }
            C0374a c0374a = new C0374a(featureArr2.length);
            for (Feature feature : featureArr2) {
                c0374a.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                if (!c0374a.containsKey(feature2.getName()) || ((Long) c0374a.get(feature2.getName())).longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
            return null;
        }

        public final void zaa(zab zabVar) {
            if (this.zaiw.contains(zabVar) && !this.zaiv) {
                if (!this.zaio.isConnected()) {
                    connect();
                } else {
                    zabi();
                }
            }
        }

        public final void zab(zab zabVar) {
            Feature[] zab;
            if (this.zaiw.remove(zabVar)) {
                GoogleApiManager.this.handler.removeMessages(15, zabVar);
                GoogleApiManager.this.handler.removeMessages(16, zabVar);
                Feature feature = zabVar.zajc;
                ArrayList arrayList = new ArrayList(this.zain.size());
                for (com.google.android.gms.common.api.internal.zab zabVar2 : this.zain) {
                    if ((zabVar2 instanceof com.google.android.gms.common.api.internal.zac) && (zab = ((com.google.android.gms.common.api.internal.zac) zabVar2).zab((zaa<?>) this)) != null && ArrayUtils.contains(zab, feature)) {
                        arrayList.add(zabVar2);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    i++;
                    com.google.android.gms.common.api.internal.zab zabVar3 = (com.google.android.gms.common.api.internal.zab) arrayList2.get(i);
                    this.zain.remove(zabVar3);
                    zabVar3.zaa(new UnsupportedApiCallException(feature));
                }
            }
        }

        private final boolean zab(com.google.android.gms.common.api.internal.zab zabVar) {
            if (!(zabVar instanceof com.google.android.gms.common.api.internal.zac)) {
                zac(zabVar);
                return true;
            }
            com.google.android.gms.common.api.internal.zac zacVar = (com.google.android.gms.common.api.internal.zac) zabVar;
            Feature zaa = zaa(zacVar.zab((zaa<?>) this));
            if (zaa == null) {
                zac(zabVar);
                return true;
            } else if (!zacVar.zac(this)) {
                zacVar.zaa(new UnsupportedApiCallException(zaa));
                return false;
            } else {
                zab zabVar2 = new zab(this.zafq, zaa, null);
                int indexOf = this.zaiw.indexOf(zabVar2);
                if (indexOf >= 0) {
                    zab zabVar3 = this.zaiw.get(indexOf);
                    GoogleApiManager.this.handler.removeMessages(15, zabVar3);
                    GoogleApiManager.this.handler.sendMessageDelayed(Message.obtain(GoogleApiManager.this.handler, 15, zabVar3), GoogleApiManager.this.zahz);
                    return false;
                }
                this.zaiw.add(zabVar2);
                GoogleApiManager.this.handler.sendMessageDelayed(Message.obtain(GoogleApiManager.this.handler, 15, zabVar2), GoogleApiManager.this.zahz);
                GoogleApiManager.this.handler.sendMessageDelayed(Message.obtain(GoogleApiManager.this.handler, 16, zabVar2), GoogleApiManager.this.zaia);
                ConnectionResult connectionResult = new ConnectionResult(2, null);
                if (zah(connectionResult)) {
                    return false;
                }
                GoogleApiManager.this.zac(connectionResult, this.zait);
                return false;
            }
        }

        public final void zabg() {
            zabl();
            zai(ConnectionResult.RESULT_SUCCESS);
            zabn();
            Iterator<zabw> it = this.zais.values().iterator();
            while (it.hasNext()) {
                zabw next = it.next();
                if (zaa(next.zajx.getRequiredFeatures()) != null) {
                    it.remove();
                } else {
                    try {
                        next.zajx.registerListener(this.zaip, new TaskCompletionSource<>());
                    } catch (DeadObjectException e) {
                        onConnectionSuspended(1);
                        this.zaio.disconnect();
                    } catch (RemoteException e2) {
                        it.remove();
                    }
                }
            }
            zabi();
            zabo();
        }

        public final void zabh() {
            zabl();
            this.zaiv = true;
            this.zaiq.zaai();
            GoogleApiManager.this.handler.sendMessageDelayed(Message.obtain(GoogleApiManager.this.handler, 9, this.zafq), GoogleApiManager.this.zahz);
            GoogleApiManager.this.handler.sendMessageDelayed(Message.obtain(GoogleApiManager.this.handler, 11, this.zafq), GoogleApiManager.this.zaia);
            GoogleApiManager.this.zaif.flush();
        }

        private final void zabi() {
            ArrayList arrayList = new ArrayList(this.zain);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                int i2 = i + 1;
                com.google.android.gms.common.api.internal.zab zabVar = (com.google.android.gms.common.api.internal.zab) obj;
                if (!this.zaio.isConnected()) {
                    return;
                }
                i = i2;
                if (zab(zabVar)) {
                    this.zain.remove(zabVar);
                    i = i2;
                }
            }
        }

        private final void zabn() {
            if (this.zaiv) {
                GoogleApiManager.this.handler.removeMessages(11, this.zafq);
                GoogleApiManager.this.handler.removeMessages(9, this.zafq);
                this.zaiv = false;
            }
        }

        private final void zabo() {
            GoogleApiManager.this.handler.removeMessages(12, this.zafq);
            GoogleApiManager.this.handler.sendMessageDelayed(GoogleApiManager.this.handler.obtainMessage(12, this.zafq), GoogleApiManager.this.zaib);
        }

        private final void zac(com.google.android.gms.common.api.internal.zab zabVar) {
            zabVar.zaa(this.zaiq, requiresSignIn());
            try {
                zabVar.zaa((zaa<?>) this);
            } catch (DeadObjectException e) {
                onConnectionSuspended(1);
                this.zaio.disconnect();
            }
        }

        public final boolean zac(boolean z) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            if (!this.zaio.isConnected() || this.zais.size() != 0) {
                return false;
            }
            if (!this.zaiq.zaag()) {
                this.zaio.disconnect();
                return true;
            } else if (!z) {
                return false;
            } else {
                zabo();
                return false;
            }
        }

        private final boolean zah(ConnectionResult connectionResult) {
            synchronized (GoogleApiManager.lock) {
                if (GoogleApiManager.this.zaij == null || !GoogleApiManager.this.zaik.contains(this.zafq)) {
                    return false;
                }
                GoogleApiManager.this.zaij.zab(connectionResult, this.zait);
                return true;
            }
        }

        private final void zai(ConnectionResult connectionResult) {
            for (zak zakVar : this.zair) {
                String str = null;
                if (Objects.equal(connectionResult, ConnectionResult.RESULT_SUCCESS)) {
                    str = this.zaio.getEndpointPackageName();
                }
                zakVar.zaa(this.zafq, connectionResult, str);
            }
            this.zair.clear();
        }

        public final void connect() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            if (this.zaio.isConnected() || this.zaio.isConnecting()) {
                return;
            }
            int clientAvailability = GoogleApiManager.this.zaif.getClientAvailability(GoogleApiManager.this.zaid, this.zaio);
            if (clientAvailability != 0) {
                onConnectionFailed(new ConnectionResult(clientAvailability, null));
                return;
            }
            zac zacVar = new zac(this.zaio, this.zafq);
            if (this.zaio.requiresSignIn()) {
                this.zaiu.zaa(zacVar);
            }
            this.zaio.connect(zacVar);
        }

        public final int getInstanceId() {
            return this.zait;
        }

        final boolean isConnected() {
            return this.zaio.isConnected();
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public final void onConnected(Bundle bundle) {
            if (Looper.myLooper() == GoogleApiManager.this.handler.getLooper()) {
                zabg();
            } else {
                GoogleApiManager.this.handler.post(new zabj(this));
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public final void onConnectionFailed(ConnectionResult connectionResult) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            zace zaceVar = this.zaiu;
            if (zaceVar != null) {
                zaceVar.zabs();
            }
            zabl();
            GoogleApiManager.this.zaif.flush();
            zai(connectionResult);
            if (connectionResult.getErrorCode() == 4) {
                zac(GoogleApiManager.zahy);
            } else if (this.zain.isEmpty()) {
                this.zaix = connectionResult;
            } else if (zah(connectionResult) || GoogleApiManager.this.zac(connectionResult, this.zait)) {
            } else {
                if (connectionResult.getErrorCode() == 18) {
                    this.zaiv = true;
                }
                if (this.zaiv) {
                    GoogleApiManager.this.handler.sendMessageDelayed(Message.obtain(GoogleApiManager.this.handler, 9, this.zafq), GoogleApiManager.this.zahz);
                    return;
                }
                String zan = this.zafq.zan();
                StringBuilder sb = new StringBuilder(String.valueOf(zan).length() + 38);
                sb.append("API: ");
                sb.append(zan);
                sb.append(" is not available on this device.");
                zac(new Status(17, sb.toString()));
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public final void onConnectionSuspended(int i) {
            if (Looper.myLooper() == GoogleApiManager.this.handler.getLooper()) {
                zabh();
            } else {
                GoogleApiManager.this.handler.post(new zabk(this));
            }
        }

        public final boolean requiresSignIn() {
            return this.zaio.requiresSignIn();
        }

        public final void resume() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            if (this.zaiv) {
                connect();
            }
        }

        @Override // com.google.android.gms.common.api.internal.zar
        public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
            if (Looper.myLooper() == GoogleApiManager.this.handler.getLooper()) {
                onConnectionFailed(connectionResult);
            } else {
                GoogleApiManager.this.handler.post(new zabl(this, connectionResult));
            }
        }

        public final void zaa(com.google.android.gms.common.api.internal.zab zabVar) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            if (this.zaio.isConnected()) {
                if (zab(zabVar)) {
                    zabo();
                    return;
                } else {
                    this.zain.add(zabVar);
                    return;
                }
            }
            this.zain.add(zabVar);
            ConnectionResult connectionResult = this.zaix;
            if (connectionResult == null || !connectionResult.hasResolution()) {
                connect();
            } else {
                onConnectionFailed(this.zaix);
            }
        }

        public final void zaa(zak zakVar) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            this.zair.add(zakVar);
        }

        public final Api.Client zaab() {
            return this.zaio;
        }

        public final void zaav() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            if (this.zaiv) {
                zabn();
                zac(GoogleApiManager.this.zaie.isGooglePlayServicesAvailable(GoogleApiManager.this.zaid) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.zaio.disconnect();
            }
        }

        public final void zabj() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            zac(GoogleApiManager.zahx);
            this.zaiq.zaah();
            for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.zais.keySet().toArray(new ListenerHolder.ListenerKey[this.zais.size()])) {
                zaa(new zah(listenerKey, new TaskCompletionSource()));
            }
            zai(new ConnectionResult(4));
            if (this.zaio.isConnected()) {
                this.zaio.onUserSignOut(new zabm(this));
            }
        }

        public final Map<ListenerHolder.ListenerKey<?>, zabw> zabk() {
            return this.zais;
        }

        public final void zabl() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            this.zaix = null;
        }

        public final ConnectionResult zabm() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            return this.zaix;
        }

        public final boolean zabp() {
            return zac(true);
        }

        final zad zabq() {
            zace zaceVar = this.zaiu;
            if (zaceVar == null) {
                return null;
            }
            return zaceVar.zabq();
        }

        public final void zac(Status status) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            for (com.google.android.gms.common.api.internal.zab zabVar : this.zain) {
                zabVar.zaa(status);
            }
            this.zain.clear();
        }

        public final void zag(ConnectionResult connectionResult) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.handler);
            this.zaio.disconnect();
            onConnectionFailed(connectionResult);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zab.class */
    public static final class zab {
        private final zai<?> zajb;
        private final Feature zajc;

        private zab(zai<?> zaiVar, Feature feature) {
            this.zajb = zaiVar;
            this.zajc = feature;
        }

        /* synthetic */ zab(zai zaiVar, Feature feature, zabi zabiVar) {
            this(zaiVar, feature);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof zab)) {
                return false;
            }
            zab zabVar = (zab) obj;
            return Objects.equal(this.zajb, zabVar.zajb) && Objects.equal(this.zajc, zabVar.zajc);
        }

        public final int hashCode() {
            return Objects.hashCode(this.zajb, this.zajc);
        }

        public final String toString() {
            return Objects.toStringHelper(this).add("key", this.zajb).add("feature", this.zajc).toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zac.class */
    public final class zac implements zach, BaseGmsClient.ConnectionProgressReportCallbacks {
        private final zai<?> zafq;
        private final Api.Client zaio;
        private IAccountAccessor zajd = null;
        private Set<Scope> zaje = null;
        private boolean zajf = false;

        public zac(Api.Client client, zai<?> zaiVar) {
            GoogleApiManager.this = r4;
            this.zaio = client;
            this.zafq = zaiVar;
        }

        public final void zabr() {
            IAccountAccessor iAccountAccessor;
            if (!this.zajf || (iAccountAccessor = this.zajd) == null) {
                return;
            }
            this.zaio.getRemoteService(iAccountAccessor, this.zaje);
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void onReportServiceBinding(ConnectionResult connectionResult) {
            GoogleApiManager.this.handler.post(new zabo(this, connectionResult));
        }

        @Override // com.google.android.gms.common.api.internal.zach
        public final void zaa(IAccountAccessor iAccountAccessor, Set<Scope> set) {
            if (iAccountAccessor == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                zag(new ConnectionResult(4));
                return;
            }
            this.zajd = iAccountAccessor;
            this.zaje = set;
            zabr();
        }

        @Override // com.google.android.gms.common.api.internal.zach
        public final void zag(ConnectionResult connectionResult) {
            ((zaa) GoogleApiManager.this.zaii.get(this.zafq)).zag(connectionResult);
        }
    }

    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.zaid = context;
        this.handler = new zap(looper, this);
        this.zaie = googleApiAvailability;
        this.zaif = new GoogleApiAvailabilityCache(googleApiAvailability);
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public static void reportSignOut() {
        synchronized (lock) {
            if (zaic != null) {
                GoogleApiManager googleApiManager = zaic;
                googleApiManager.zaih.incrementAndGet();
                googleApiManager.handler.sendMessageAtFrontOfQueue(googleApiManager.handler.obtainMessage(10));
            }
        }
    }

    public static GoogleApiManager zab(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (lock) {
            if (zaic == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                zaic = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.getInstance());
            }
            googleApiManager = zaic;
        }
        return googleApiManager;
    }

    private final void zab(GoogleApi<?> googleApi) {
        zai<?> zak = googleApi.zak();
        zaa<?> zaaVar = this.zaii.get(zak);
        zaa<?> zaaVar2 = zaaVar;
        if (zaaVar == null) {
            zaaVar2 = new zaa<>(googleApi);
            this.zaii.put(zak, zaaVar2);
        }
        if (zaaVar2.requiresSignIn()) {
            this.zail.add(zak);
        }
        zaaVar2.connect();
    }

    public static GoogleApiManager zabc() {
        GoogleApiManager googleApiManager;
        synchronized (lock) {
            Preconditions.checkNotNull(zaic, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = zaic;
        }
        return googleApiManager;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        zaa<?> zaaVar;
        char c = 37856;
        switch (message.what) {
            case 1:
                if (((Boolean) message.obj).booleanValue()) {
                    c = 10000;
                }
                this.zaib = c;
                this.handler.removeMessages(12);
                for (zai<?> zaiVar : this.zaii.keySet()) {
                    Handler handler = this.handler;
                    handler.sendMessageDelayed(handler.obtainMessage(12, zaiVar), this.zaib);
                }
                return true;
            case 2:
                zak zakVar = (zak) message.obj;
                for (zai<?> zaiVar2 : zakVar.zap()) {
                    zaa<?> zaaVar2 = this.zaii.get(zaiVar2);
                    if (zaaVar2 == null) {
                        zakVar.zaa(zaiVar2, new ConnectionResult(13), null);
                        return true;
                    } else if (zaaVar2.isConnected()) {
                        zakVar.zaa(zaiVar2, ConnectionResult.RESULT_SUCCESS, zaaVar2.zaab().getEndpointPackageName());
                    } else if (zaaVar2.zabm() != null) {
                        zakVar.zaa(zaiVar2, zaaVar2.zabm(), null);
                    } else {
                        zaaVar2.zaa(zakVar);
                        zaaVar2.connect();
                    }
                }
                return true;
            case 3:
                for (zaa<?> zaaVar3 : this.zaii.values()) {
                    zaaVar3.zabl();
                    zaaVar3.connect();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zabv zabvVar = (zabv) message.obj;
                zaa<?> zaaVar4 = this.zaii.get(zabvVar.zajt.zak());
                zaa<?> zaaVar5 = zaaVar4;
                if (zaaVar4 == null) {
                    zab(zabvVar.zajt);
                    zaaVar5 = this.zaii.get(zabvVar.zajt.zak());
                }
                if (!zaaVar5.requiresSignIn() || this.zaih.get() == zabvVar.zajs) {
                    zaaVar5.zaa(zabvVar.zajr);
                    return true;
                }
                zabvVar.zajr.zaa(zahx);
                zaaVar5.zabj();
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<zaa<?>> it = this.zaii.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        zaaVar = it.next();
                        if (zaaVar.getInstanceId() == i) {
                        }
                    } else {
                        zaaVar = null;
                    }
                }
                if (zaaVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                    return true;
                }
                String errorString = this.zaie.getErrorString(connectionResult.getErrorCode());
                String errorMessage = connectionResult.getErrorMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length());
                sb2.append("Error resolution was canceled by the user, original error message: ");
                sb2.append(errorString);
                sb2.append(": ");
                sb2.append(errorMessage);
                zaaVar.zac(new Status(17, sb2.toString()));
                return true;
            case 6:
                if (!PlatformVersion.isAtLeastIceCreamSandwich() || !(this.zaid.getApplicationContext() instanceof Application)) {
                    return true;
                }
                BackgroundDetector.initialize((Application) this.zaid.getApplicationContext());
                BackgroundDetector.getInstance().addListener(new zabi(this));
                if (BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                    return true;
                }
                this.zaib = 300000L;
                return true;
            case 7:
                zab((GoogleApi) message.obj);
                return true;
            case 9:
                if (!this.zaii.containsKey(message.obj)) {
                    return true;
                }
                this.zaii.get(message.obj).resume();
                return true;
            case 10:
                for (zai<?> zaiVar3 : this.zail) {
                    this.zaii.remove(zaiVar3).zabj();
                }
                this.zail.clear();
                return true;
            case 11:
                if (!this.zaii.containsKey(message.obj)) {
                    return true;
                }
                this.zaii.get(message.obj).zaav();
                return true;
            case 12:
                if (!this.zaii.containsKey(message.obj)) {
                    return true;
                }
                this.zaii.get(message.obj).zabp();
                return true;
            case 14:
                zaaf zaafVar = (zaaf) message.obj;
                zai<?> zak = zaafVar.zak();
                if (!this.zaii.containsKey(zak)) {
                    zaafVar.zaal().setResult(false);
                    return true;
                }
                zaafVar.zaal().setResult(Boolean.valueOf(this.zaii.get(zak).zac(false)));
                return true;
            case 15:
                zab zabVar = (zab) message.obj;
                if (!this.zaii.containsKey(zabVar.zajb)) {
                    return true;
                }
                this.zaii.get(zabVar.zajb).zaa(zabVar);
                return true;
            case 16:
                zab zabVar2 = (zab) message.obj;
                if (!this.zaii.containsKey(zabVar2.zajb)) {
                    return true;
                }
                this.zaii.get(zabVar2.zajb).zab(zabVar2);
                return true;
            default:
                int i2 = message.what;
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }

    public final void maybeSignOut() {
        this.zaih.incrementAndGet();
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(10));
    }

    public final PendingIntent zaa(zai<?> zaiVar, int i) {
        zad zabq;
        zaa<?> zaaVar = this.zaii.get(zaiVar);
        if (zaaVar == null || (zabq = zaaVar.zabq()) == null) {
            return null;
        }
        return PendingIntent.getActivity(this.zaid, i, zabq.getSignInIntent(), 134217728);
    }

    public final <O extends Api.ApiOptions> Task<Boolean> zaa(GoogleApi<O> googleApi, ListenerHolder.ListenerKey<?> listenerKey) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(13, new zabv(zahVar, this.zaih.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> Task<Void> zaa(GoogleApi<O> googleApi, RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaf zafVar = new zaf(new zabw(registerListenerMethod, unregisterListenerMethod), taskCompletionSource);
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(8, new zabv(zafVar, this.zaih.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final Task<Map<zai<?>, String>> zaa(Iterable<? extends GoogleApi<?>> iterable) {
        zak zakVar = new zak(iterable);
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(2, zakVar));
        return zakVar.getTask();
    }

    public final void zaa(ConnectionResult connectionResult, int i) {
        if (!zac(connectionResult, i)) {
            Handler handler = this.handler;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    public final void zaa(GoogleApi<?> googleApi) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final <O extends Api.ApiOptions> void zaa(GoogleApi<O> googleApi, int i, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zae zaeVar = new zae(i, apiMethodImpl);
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(4, new zabv(zaeVar, this.zaih.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void zaa(GoogleApi<O> googleApi, int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zag zagVar = new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(4, new zabv(zagVar, this.zaih.get(), googleApi)));
    }

    public final void zaa(zaae zaaeVar) {
        synchronized (lock) {
            if (this.zaij != zaaeVar) {
                this.zaij = zaaeVar;
                this.zaik.clear();
            }
            this.zaik.addAll(zaaeVar.zaaj());
        }
    }

    public final void zab(zaae zaaeVar) {
        synchronized (lock) {
            if (this.zaij == zaaeVar) {
                this.zaij = null;
                this.zaik.clear();
            }
        }
    }

    public final int zabd() {
        return this.zaig.getAndIncrement();
    }

    public final Task<Boolean> zac(GoogleApi<?> googleApi) {
        zaaf zaafVar = new zaaf(googleApi.zak());
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(14, zaafVar));
        return zaafVar.zaal().getTask();
    }

    final boolean zac(ConnectionResult connectionResult, int i) {
        return this.zaie.zaa(this.zaid, connectionResult, i);
    }

    public final void zao() {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(3));
    }
}
