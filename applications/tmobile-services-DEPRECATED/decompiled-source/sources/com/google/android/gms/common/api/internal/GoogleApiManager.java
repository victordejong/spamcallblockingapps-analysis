package com.google.android.gms.common.api.internal;

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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.HasApiKey;
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
import com.google.android.gms.internal.base.zar;
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
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager.class */
public class GoogleApiManager implements Handler.Callback {

    /* renamed from: n */
    public static final Status f7064n = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: o */
    private static final Status f7065o = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: p */
    private static final Object f7066p = new Object();
    @GuardedBy

    /* renamed from: q */
    private static GoogleApiManager f7067q;

    /* renamed from: d */
    private final Context f7071d;

    /* renamed from: e */
    private final GoogleApiAvailability f7072e;

    /* renamed from: f */
    private final GoogleApiAvailabilityCache f7073f;

    /* renamed from: m */
    private final Handler f7080m;

    /* renamed from: a */
    private long f7068a = 5000;

    /* renamed from: b */
    private long f7069b = 120000;

    /* renamed from: c */
    private long f7070c = 10000;

    /* renamed from: g */
    private final AtomicInteger f7074g = new AtomicInteger(1);

    /* renamed from: h */
    private final AtomicInteger f7075h = new AtomicInteger(0);

    /* renamed from: i */
    private final Map<ApiKey<?>, zaa<?>> f7076i = new ConcurrentHashMap(5, 0.75f, 1);
    @GuardedBy

    /* renamed from: j */
    private zaad f7077j = null;
    @GuardedBy

    /* renamed from: k */
    private final Set<ApiKey<?>> f7078k = new ArraySet();

    /* renamed from: l */
    private final Set<ApiKey<?>> f7079l = new ArraySet();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zaa.class */
    public final class zaa<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zar {

        /* renamed from: b */
        private final Api.Client f7082b;

        /* renamed from: c */
        private final Api.AnyClient f7083c;

        /* renamed from: d */
        private final ApiKey<O> f7084d;

        /* renamed from: e */
        private final zaz f7085e;

        /* renamed from: h */
        private final int f7088h;

        /* renamed from: i */
        private final zace f7089i;

        /* renamed from: j */
        private boolean f7090j;

        /* renamed from: a */
        private final Queue<com.google.android.gms.common.api.internal.zac> f7081a = new LinkedList();

        /* renamed from: f */
        private final Set<zaj> f7086f = new HashSet();

        /* renamed from: g */
        private final Map<ListenerHolder.ListenerKey<?>, zabv> f7087g = new HashMap();

        /* renamed from: k */
        private final List<zac> f7091k = new ArrayList();

        /* renamed from: l */
        private ConnectionResult f7092l = null;

        @WorkerThread
        public zaa(GoogleApi<O> googleApi) {
            Api.Client zaa = googleApi.zaa(GoogleApiManager.this.f7080m.getLooper(), this);
            this.f7082b = zaa;
            if (zaa instanceof SimpleClientAdapter) {
                this.f7083c = ((SimpleClientAdapter) zaa).m14503e();
            } else {
                this.f7083c = zaa;
            }
            this.f7084d = googleApi.getApiKey();
            this.f7085e = new zaz();
            this.f7088h = googleApi.getInstanceId();
            if (this.f7082b.requiresSignIn()) {
                this.f7089i = googleApi.zaa(GoogleApiManager.this.f7071d, GoogleApiManager.this.f7080m);
            } else {
                this.f7089i = null;
            }
        }

        @WorkerThread
        /* renamed from: B */
        private final void m14931B() {
            if (this.f7090j) {
                GoogleApiManager.this.f7080m.removeMessages(11, this.f7084d);
                GoogleApiManager.this.f7080m.removeMessages(9, this.f7084d);
                this.f7090j = false;
            }
        }

        /* renamed from: C */
        private final void m14930C() {
            GoogleApiManager.this.f7080m.removeMessages(12, this.f7084d);
            GoogleApiManager.this.f7080m.sendMessageDelayed(GoogleApiManager.this.f7080m.obtainMessage(12, this.f7084d), GoogleApiManager.this.f7070c);
        }

        @WorkerThread
        /* renamed from: G */
        private final void m14926G(com.google.android.gms.common.api.internal.zac zacVar) {
            zacVar.mo14737c(this.f7085e, m14915h());
            try {
                zacVar.mo14738f(this);
            } catch (DeadObjectException e) {
                mo14715a(1);
                this.f7082b.disconnect();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        /* renamed from: H */
        public final boolean m14925H(boolean z) {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            if (!this.f7082b.isConnected() || this.f7087g.size() != 0) {
                return false;
            }
            if (!this.f7085e.m14653e()) {
                this.f7082b.disconnect();
                return true;
            } else if (!z) {
                return false;
            } else {
                m14930C();
                return false;
            }
        }

        @WorkerThread
        /* renamed from: M */
        private final boolean m14920M(@NonNull ConnectionResult connectionResult) {
            synchronized (GoogleApiManager.f7066p) {
                if (GoogleApiManager.this.f7077j == null || !GoogleApiManager.this.f7078k.contains(this.f7084d)) {
                    return false;
                }
                GoogleApiManager.this.f7077j.m14721n(connectionResult, this.f7088h);
                return true;
            }
        }

        @WorkerThread
        /* renamed from: N */
        private final void m14919N(ConnectionResult connectionResult) {
            for (zaj zajVar : this.f7086f) {
                String str = null;
                if (Objects.m14537a(connectionResult, ConnectionResult.f6965j)) {
                    str = this.f7082b.getEndpointPackageName();
                }
                zajVar.m14729b(this.f7084d, connectionResult, str);
            }
            this.f7086f.clear();
        }

        @Nullable
        @WorkerThread
        /* renamed from: j */
        private final Feature m14913j(@Nullable Feature[] featureArr) {
            if (featureArr == null || featureArr.length == 0) {
                return null;
            }
            Feature[] availableFeatures = this.f7082b.getAvailableFeatures();
            Feature[] featureArr2 = availableFeatures;
            if (availableFeatures == null) {
                featureArr2 = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(featureArr2.length);
            for (Feature feature : featureArr2) {
                arrayMap.put(feature.getName(), Long.valueOf(feature.m15087B()));
            }
            for (Feature feature2 : featureArr) {
                if (!arrayMap.containsKey(feature2.getName()) || ((Long) arrayMap.get(feature2.getName())).longValue() < feature2.m15087B()) {
                    return feature2;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        /* renamed from: l */
        public final void m14911l(zac zacVar) {
            if (!this.f7091k.contains(zacVar) || this.f7090j) {
                return;
            }
            if (!this.f7082b.isConnected()) {
                m14918d();
            } else {
                m14900w();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        /* renamed from: s */
        public final void m14904s(zac zacVar) {
            Feature[] g;
            if (this.f7091k.remove(zacVar)) {
                GoogleApiManager.this.f7080m.removeMessages(15, zacVar);
                GoogleApiManager.this.f7080m.removeMessages(16, zacVar);
                Feature feature = zacVar.f7101b;
                ArrayList arrayList = new ArrayList(this.f7081a.size());
                for (com.google.android.gms.common.api.internal.zac zacVar2 : this.f7081a) {
                    if ((zacVar2 instanceof com.google.android.gms.common.api.internal.zab) && (g = ((com.google.android.gms.common.api.internal.zab) zacVar2).mo14736g(this)) != null && ArrayUtils.m14354b(g, feature)) {
                        arrayList.add(zacVar2);
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    com.google.android.gms.common.api.internal.zac zacVar3 = (com.google.android.gms.common.api.internal.zac) obj;
                    this.f7081a.remove(zacVar3);
                    zacVar3.mo14739d(new UnsupportedApiCallException(feature));
                }
            }
        }

        @WorkerThread
        /* renamed from: t */
        private final boolean m14903t(com.google.android.gms.common.api.internal.zac zacVar) {
            if (!(zacVar instanceof com.google.android.gms.common.api.internal.zab)) {
                m14926G(zacVar);
                return true;
            }
            com.google.android.gms.common.api.internal.zab zabVar = (com.google.android.gms.common.api.internal.zab) zacVar;
            Feature j = m14913j(zabVar.mo14736g(this));
            if (j == null) {
                m14926G(zacVar);
                return true;
            } else if (zabVar.mo14735h(this)) {
                zac zacVar2 = new zac(this.f7084d, j, null);
                int indexOf = this.f7091k.indexOf(zacVar2);
                if (indexOf >= 0) {
                    zac zacVar3 = this.f7091k.get(indexOf);
                    GoogleApiManager.this.f7080m.removeMessages(15, zacVar3);
                    GoogleApiManager.this.f7080m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f7080m, 15, zacVar3), GoogleApiManager.this.f7068a);
                    return false;
                }
                this.f7091k.add(zacVar2);
                GoogleApiManager.this.f7080m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f7080m, 15, zacVar2), GoogleApiManager.this.f7068a);
                GoogleApiManager.this.f7080m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f7080m, 16, zacVar2), GoogleApiManager.this.f7069b);
                ConnectionResult connectionResult = new ConnectionResult(2, null);
                if (m14920M(connectionResult)) {
                    return false;
                }
                GoogleApiManager.this.m14938u(connectionResult, this.f7088h);
                return false;
            } else {
                zabVar.mo14739d(new UnsupportedApiCallException(j));
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        /* renamed from: u */
        public final void m14902u() {
            m14897z();
            m14919N(ConnectionResult.f6965j);
            m14931B();
            Iterator<zabv> it = this.f7087g.values().iterator();
            while (it.hasNext()) {
                zabv next = it.next();
                if (m14913j(next.f7249a.m14869c()) != null) {
                    it.remove();
                } else {
                    try {
                        next.f7249a.mo14775d(this.f7083c, new TaskCompletionSource<>());
                    } catch (DeadObjectException e) {
                        mo14715a(1);
                        this.f7082b.disconnect();
                    } catch (RemoteException e2) {
                        it.remove();
                    }
                }
            }
            m14900w();
            m14930C();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        /* renamed from: v */
        public final void m14901v() {
            m14897z();
            this.f7090j = true;
            this.f7085e.m14651g();
            GoogleApiManager.this.f7080m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f7080m, 9, this.f7084d), GoogleApiManager.this.f7068a);
            GoogleApiManager.this.f7080m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f7080m, 11, this.f7084d), GoogleApiManager.this.f7069b);
            GoogleApiManager.this.f7073f.m14543a();
        }

        @WorkerThread
        /* renamed from: w */
        private final void m14900w() {
            ArrayList arrayList = new ArrayList(this.f7081a);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                int i2 = i + 1;
                com.google.android.gms.common.api.internal.zac zacVar = (com.google.android.gms.common.api.internal.zac) obj;
                if (this.f7082b.isConnected()) {
                    i = i2;
                    if (m14903t(zacVar)) {
                        this.f7081a.remove(zacVar);
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        @WorkerThread
        /* renamed from: A */
        public final ConnectionResult m14932A() {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            return this.f7092l;
        }

        @WorkerThread
        /* renamed from: D */
        public final boolean m14929D() {
            return m14925H(true);
        }

        /* renamed from: E */
        final com.google.android.gms.signin.zac m14928E() {
            zace zaceVar = this.f7089i;
            if (zaceVar == null) {
                return null;
            }
            return zaceVar.m14766T0();
        }

        @WorkerThread
        /* renamed from: F */
        public final void m14927F(Status status) {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            for (com.google.android.gms.common.api.internal.zac zacVar : this.f7081a) {
                zacVar.mo14740b(status);
            }
            this.f7081a.clear();
        }

        @WorkerThread
        /* renamed from: L */
        public final void m14921L(@NonNull ConnectionResult connectionResult) {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            this.f7082b.disconnect();
            mo14711f(connectionResult);
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        /* renamed from: a */
        public final void mo14715a(int i) {
            if (Looper.myLooper() == GoogleApiManager.this.f7080m.getLooper()) {
                m14901v();
            } else {
                GoogleApiManager.this.f7080m.post(new zabk(this));
            }
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        /* renamed from: b */
        public final void mo14714b(@Nullable Bundle bundle) {
            if (Looper.myLooper() == GoogleApiManager.this.f7080m.getLooper()) {
                m14902u();
            } else {
                GoogleApiManager.this.f7080m.post(new zabi(this));
            }
        }

        @Override // com.google.android.gms.common.api.internal.zar
        /* renamed from: c */
        public final void mo14689c(ConnectionResult connectionResult, Api<?> api, boolean z) {
            if (Looper.myLooper() == GoogleApiManager.this.f7080m.getLooper()) {
                mo14711f(connectionResult);
            } else {
                GoogleApiManager.this.f7080m.post(new zabj(this, connectionResult));
            }
        }

        @WorkerThread
        /* renamed from: d */
        public final void m14918d() {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            if (!this.f7082b.isConnected() && !this.f7082b.isConnecting()) {
                int b = GoogleApiManager.this.f7073f.m14542b(GoogleApiManager.this.f7071d, this.f7082b);
                if (b != 0) {
                    mo14711f(new ConnectionResult(b, null));
                    return;
                }
                zab zabVar = new zab(this.f7082b, this.f7084d);
                if (this.f7082b.requiresSignIn()) {
                    this.f7089i.m14767S0(zabVar);
                }
                this.f7082b.connect(zabVar);
            }
        }

        /* renamed from: e */
        public final int m14917e() {
            return this.f7088h;
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        @WorkerThread
        /* renamed from: f */
        public final void mo14711f(@NonNull ConnectionResult connectionResult) {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            zace zaceVar = this.f7089i;
            if (zaceVar != null) {
                zaceVar.m14765U0();
            }
            m14897z();
            GoogleApiManager.this.f7073f.m14543a();
            m14919N(connectionResult);
            if (connectionResult.m15094B() == 4) {
                m14927F(GoogleApiManager.f7065o);
            } else if (this.f7081a.isEmpty()) {
                this.f7092l = connectionResult;
            } else if (!m14920M(connectionResult) && !GoogleApiManager.this.m14938u(connectionResult, this.f7088h)) {
                if (connectionResult.m15094B() == 18) {
                    this.f7090j = true;
                }
                if (this.f7090j) {
                    GoogleApiManager.this.f7080m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f7080m, 9, this.f7084d), GoogleApiManager.this.f7068a);
                    return;
                }
                String a = this.f7084d.m14993a();
                String valueOf = String.valueOf(connectionResult);
                StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 63 + String.valueOf(valueOf).length());
                sb.append("API: ");
                sb.append(a);
                sb.append(" is not available on this device. Connection failed with: ");
                sb.append(valueOf);
                m14927F(new Status(17, sb.toString()));
            }
        }

        /* renamed from: g */
        final boolean m14916g() {
            return this.f7082b.isConnected();
        }

        /* renamed from: h */
        public final boolean m14915h() {
            return this.f7082b.requiresSignIn();
        }

        @WorkerThread
        /* renamed from: i */
        public final void m14914i() {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            if (this.f7090j) {
                m14918d();
            }
        }

        @WorkerThread
        /* renamed from: m */
        public final void m14910m(com.google.android.gms.common.api.internal.zac zacVar) {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            if (!this.f7082b.isConnected()) {
                this.f7081a.add(zacVar);
                ConnectionResult connectionResult = this.f7092l;
                if (connectionResult == null || !connectionResult.m15091Y()) {
                    m14918d();
                } else {
                    mo14711f(this.f7092l);
                }
            } else if (m14903t(zacVar)) {
                m14930C();
            } else {
                this.f7081a.add(zacVar);
            }
        }

        @WorkerThread
        /* renamed from: n */
        public final void m14909n(zaj zajVar) {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            this.f7086f.add(zajVar);
        }

        /* renamed from: p */
        public final Api.Client m14907p() {
            return this.f7082b;
        }

        @WorkerThread
        /* renamed from: q */
        public final void m14906q() {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            if (this.f7090j) {
                m14931B();
                m14927F(GoogleApiManager.this.f7072e.mo15063i(GoogleApiManager.this.f7071d) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f7082b.disconnect();
            }
        }

        @WorkerThread
        /* renamed from: x */
        public final void m14899x() {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            m14927F(GoogleApiManager.f7064n);
            this.f7085e.m14652f();
            for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.f7087g.keySet().toArray(new ListenerHolder.ListenerKey[this.f7087g.size()])) {
                m14910m(new zah(listenerKey, new TaskCompletionSource()));
            }
            m14919N(new ConnectionResult(4));
            if (this.f7082b.isConnected()) {
                this.f7082b.onUserSignOut(new zabm(this));
            }
        }

        /* renamed from: y */
        public final Map<ListenerHolder.ListenerKey<?>, zabv> m14898y() {
            return this.f7087g;
        }

        @WorkerThread
        /* renamed from: z */
        public final void m14897z() {
            Preconditions.m14530d(GoogleApiManager.this.f7080m);
            this.f7092l = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zab.class */
    public final class zab implements zacf, BaseGmsClient.ConnectionProgressReportCallbacks {

        /* renamed from: a */
        private final Api.Client f7094a;

        /* renamed from: b */
        private final ApiKey<?> f7095b;

        /* renamed from: c */
        private IAccountAccessor f7096c = null;

        /* renamed from: d */
        private Set<Scope> f7097d = null;

        /* renamed from: e */
        private boolean f7098e = false;

        public zab(Api.Client client, ApiKey<?> apiKey) {
            this.f7094a = client;
            this.f7095b = apiKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        /* renamed from: g */
        public final void m14893g() {
            IAccountAccessor iAccountAccessor;
            if (this.f7098e && (iAccountAccessor = this.f7096c) != null) {
                this.f7094a.getRemoteService(iAccountAccessor, this.f7097d);
            }
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        /* renamed from: a */
        public final void mo14593a(@NonNull ConnectionResult connectionResult) {
            GoogleApiManager.this.f7080m.post(new zabo(this, connectionResult));
        }

        @Override // com.google.android.gms.common.api.internal.zacf
        @WorkerThread
        /* renamed from: b */
        public final void mo14763b(IAccountAccessor iAccountAccessor, Set<Scope> set) {
            if (iAccountAccessor == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                mo14762c(new ConnectionResult(4));
                return;
            }
            this.f7096c = iAccountAccessor;
            this.f7097d = set;
            m14893g();
        }

        @Override // com.google.android.gms.common.api.internal.zacf
        @WorkerThread
        /* renamed from: c */
        public final void mo14762c(ConnectionResult connectionResult) {
            ((zaa) GoogleApiManager.this.f7076i.get(this.f7095b)).m14921L(connectionResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zac.class */
    public static final class zac {

        /* renamed from: a */
        private final ApiKey<?> f7100a;

        /* renamed from: b */
        private final Feature f7101b;

        private zac(ApiKey<?> apiKey, Feature feature) {
            this.f7100a = apiKey;
            this.f7101b = feature;
        }

        /* synthetic */ zac(ApiKey apiKey, Feature feature, zabh zabhVar) {
            this(apiKey, feature);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof zac)) {
                return false;
            }
            zac zacVar = (zac) obj;
            return Objects.m14537a(this.f7100a, zacVar.f7100a) && Objects.m14537a(this.f7101b, zacVar.f7101b);
        }

        public final int hashCode() {
            return Objects.m14536b(this.f7100a, this.f7101b);
        }

        public final String toString() {
            Objects.ToStringHelper c = Objects.m14535c(this);
            c.m14534a("key", this.f7100a);
            c.m14534a("feature", this.f7101b);
            return c.toString();
        }
    }

    @KeepForSdk
    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.f7071d = context;
        this.f7080m = new zar(looper, this);
        this.f7072e = googleApiAvailability;
        this.f7073f = new GoogleApiAvailabilityCache(googleApiAvailability);
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(6));
    }

    /* renamed from: l */
    public static GoogleApiManager m14947l(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (f7066p) {
            if (f7067q == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f7067q = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.m15080r());
            }
            googleApiManager = f7067q;
        }
        return googleApiManager;
    }

    @WorkerThread
    /* renamed from: m */
    private final void m14946m(GoogleApi<?> googleApi) {
        ApiKey<?> apiKey = googleApi.getApiKey();
        zaa<?> zaaVar = this.f7076i.get(apiKey);
        zaa<?> zaaVar2 = zaaVar;
        if (zaaVar == null) {
            zaaVar2 = new zaa<>(googleApi);
            this.f7076i.put(apiKey, zaaVar2);
        }
        if (zaaVar2.m14915h()) {
            this.f7079l.add(apiKey);
        }
        zaaVar2.m14918d();
    }

    /* renamed from: o */
    public static GoogleApiManager m14944o() {
        GoogleApiManager googleApiManager;
        synchronized (f7066p) {
            Preconditions.m14522l(f7067q, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = f7067q;
        }
        return googleApiManager;
    }

    /* renamed from: C */
    public final void m14959C() {
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final PendingIntent m14958a(ApiKey<?> apiKey, int i) {
        com.google.android.gms.signin.zac E;
        zaa<?> zaaVar = this.f7076i.get(apiKey);
        if (zaaVar == null || (E = zaaVar.m14928E()) == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f7071d, i, E.getSignInIntent(), 134217728);
    }

    /* renamed from: c */
    public final <O extends Api.ApiOptions> Task<Boolean> m14956c(@NonNull GoogleApi<O> googleApi, @NonNull ListenerHolder.ListenerKey<?> listenerKey) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(13, new zabu(zahVar, this.f7075h.get(), googleApi)));
        return taskCompletionSource.m10830a();
    }

    /* renamed from: d */
    public final <O extends Api.ApiOptions> Task<Void> m14955d(@NonNull GoogleApi<O> googleApi, @NonNull RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, @NonNull UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zag zagVar = new zag(new zabv(registerListenerMethod, unregisterListenerMethod), taskCompletionSource);
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(8, new zabu(zagVar, this.f7075h.get(), googleApi)));
        return taskCompletionSource.m10830a();
    }

    /* renamed from: e */
    public final Task<Map<ApiKey<?>, String>> m14954e(Iterable<? extends HasApiKey<?>> iterable) {
        zaj zajVar = new zaj(iterable);
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(2, zajVar));
        return zajVar.m14730a();
    }

    /* renamed from: f */
    public final void m14953f(ConnectionResult connectionResult, int i) {
        if (!m14938u(connectionResult, i)) {
            Handler handler = this.f7080m;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    /* renamed from: g */
    public final void m14952g(GoogleApi<?> googleApi) {
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    /* renamed from: h */
    public final <O extends Api.ApiOptions> void m14951h(GoogleApi<O> googleApi, int i, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zad zadVar = new zad(i, apiMethodImpl);
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(4, new zabu(zadVar, this.f7075h.get(), googleApi)));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02d8  */
    @Override // android.os.Handler.Callback
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r7) {
        /*
            Method dump skipped, instructions count: 1196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.GoogleApiManager.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: i */
    public final <O extends Api.ApiOptions, ResultT> void m14950i(GoogleApi<O> googleApi, int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zaf zafVar = new zaf(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(4, new zabu(zafVar, this.f7075h.get(), googleApi)));
    }

    /* renamed from: j */
    public final void m14949j(@NonNull zaad zaadVar) {
        synchronized (f7066p) {
            if (this.f7077j != zaadVar) {
                this.f7077j = zaadVar;
                this.f7078k.clear();
            }
            this.f7078k.addAll(zaadVar.m14859r());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public final void m14945n(@NonNull zaad zaadVar) {
        synchronized (f7066p) {
            if (this.f7077j == zaadVar) {
                this.f7077j = null;
                this.f7078k.clear();
            }
        }
    }

    /* renamed from: p */
    public final int m14943p() {
        return this.f7074g.getAndIncrement();
    }

    /* renamed from: t */
    public final Task<Boolean> m14939t(GoogleApi<?> googleApi) {
        zaae zaaeVar = new zaae(googleApi.getApiKey());
        Handler handler = this.f7080m;
        handler.sendMessage(handler.obtainMessage(14, zaaeVar));
        return zaaeVar.m14856b().m10830a();
    }

    /* renamed from: u */
    final boolean m14938u(ConnectionResult connectionResult, int i) {
        return this.f7072e.m15084C(this.f7071d, connectionResult, i);
    }
}
