package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
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
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zal;
import com.google.android.gms.common.internal.zaz;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.internal.base.zap;
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
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p012b.p035f.C0780a;
import p012b.p035f.C0782b;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3276r;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3285w;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3278s;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3280t;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3282u;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3286x;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager.class */
public class GoogleApiManager implements Handler.Callback {

    /* renamed from: o */
    public static final Status f23112o = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: p */
    public static final Status f23113p = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: q */
    public static final Object f23114q = new Object();

    /* renamed from: r */
    public static GoogleApiManager f23115r;

    /* renamed from: d */
    public final Context f23119d;

    /* renamed from: e */
    public final GoogleApiAvailability f23120e;

    /* renamed from: f */
    public final zal f23121f;
    @NotOnlyInitialized

    /* renamed from: m */
    public final Handler f23128m;

    /* renamed from: n */
    public volatile boolean f23129n;

    /* renamed from: a */
    public long f23116a = 5000;

    /* renamed from: b */
    public long f23117b = 120000;

    /* renamed from: c */
    public long f23118c = 10000;

    /* renamed from: g */
    public final AtomicInteger f23122g = new AtomicInteger(1);

    /* renamed from: h */
    public final AtomicInteger f23123h = new AtomicInteger(0);

    /* renamed from: i */
    public final Map<ApiKey<?>, zaa<?>> f23124i = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: j */
    public zay f23125j = null;

    /* renamed from: k */
    public final Set<ApiKey<?>> f23126k = new C0782b();

    /* renamed from: l */
    public final Set<ApiKey<?>> f23127l = new C0782b();

    /* renamed from: com.google.android.gms.common.api.internal.GoogleApiManager$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$a.class */
    public final class C7230a implements zacd, BaseGmsClient.ConnectionProgressReportCallbacks {

        /* renamed from: a */
        public final Api.Client f23130a;

        /* renamed from: b */
        public final ApiKey<?> f23131b;

        /* renamed from: c */
        public IAccountAccessor f23132c = null;

        /* renamed from: d */
        public Set<Scope> f23133d = null;

        /* renamed from: e */
        public boolean f23134e = false;

        public C7230a(Api.Client client, ApiKey<?> apiKey) {
            this.f23130a = client;
            this.f23131b = apiKey;
        }

        /* renamed from: a */
        public final void m17683a() {
            IAccountAccessor iAccountAccessor;
            if (this.f23134e && (iAccountAccessor = this.f23132c) != null) {
                this.f23130a.mo17618a(iAccountAccessor, this.f23133d);
            }
        }

        @Override // com.google.android.gms.common.api.internal.zacd
        /* renamed from: a */
        public final void mo17502a(ConnectionResult connectionResult) {
            zaa zaaVar = (zaa) GoogleApiManager.this.f23124i.get(this.f23131b);
            if (zaaVar != null) {
                zaaVar.m17674a(connectionResult);
            }
        }

        @Override // com.google.android.gms.common.api.internal.zacd
        /* renamed from: a */
        public final void mo17501a(IAccountAccessor iAccountAccessor, Set<Scope> set) {
            if (iAccountAccessor == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                mo17502a(new ConnectionResult(4));
                return;
            }
            this.f23132c = iAccountAccessor;
            this.f23133d = set;
            m17683a();
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        /* renamed from: b */
        public final void mo17343b(ConnectionResult connectionResult) {
            GoogleApiManager.this.f23128m.post(new RunnableC3286x(this, connectionResult));
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.GoogleApiManager$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$b.class */
    public static final class C7231b {

        /* renamed from: a */
        public final ApiKey<?> f23136a;

        /* renamed from: b */
        public final Feature f23137b;

        public C7231b(ApiKey<?> apiKey, Feature feature) {
            this.f23136a = apiKey;
            this.f23137b = feature;
        }

        public /* synthetic */ C7231b(ApiKey apiKey, Feature feature, C3276r rVar) {
            this(apiKey, feature);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof C7231b)) {
                return false;
            }
            C7231b bVar = (C7231b) obj;
            return Objects.m17295a(this.f23136a, bVar.f23136a) && Objects.m17295a(this.f23137b, bVar.f23137b);
        }

        public final int hashCode() {
            return Objects.m17294a(this.f23136a, this.f23137b);
        }

        public final String toString() {
            Objects.ToStringHelper a = Objects.m17296a(this);
            a.m17293a("key", this.f23136a);
            a.m17293a("feature", this.f23137b);
            return a.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zaa.class */
    public final class zaa<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zap {
        @NotOnlyInitialized

        /* renamed from: b */
        public final Api.Client f23139b;

        /* renamed from: c */
        public final Api.AnyClient f23140c;

        /* renamed from: d */
        public final ApiKey<O> f23141d;

        /* renamed from: e */
        public final zav f23142e;

        /* renamed from: h */
        public final int f23145h;

        /* renamed from: i */
        public final zacc f23146i;

        /* renamed from: j */
        public boolean f23147j;

        /* renamed from: a */
        public final Queue<zab> f23138a = new LinkedList();

        /* renamed from: f */
        public final Set<zaj> f23143f = new HashSet();

        /* renamed from: g */
        public final Map<ListenerHolder.ListenerKey<?>, zabs> f23144g = new HashMap();

        /* renamed from: k */
        public final List<C7231b> f23148k = new ArrayList();

        /* renamed from: l */
        public ConnectionResult f23149l = null;

        public zaa(GoogleApi<O> googleApi) {
            Api.Client a = googleApi.m17773a(GoogleApiManager.this.f23128m.getLooper(), this);
            this.f23139b = a;
            if (!(a instanceof zaz)) {
                this.f23140c = a;
                this.f23141d = googleApi.mo17755a();
                this.f23142e = new zav();
                this.f23145h = googleApi.m17766e();
                if (this.f23139b.mo8642n()) {
                    this.f23146i = googleApi.m17774a(GoogleApiManager.this.f23119d, GoogleApiManager.this.f23128m);
                } else {
                    this.f23146i = null;
                }
            } else {
                zaz zazVar = (zaz) a;
                zaz.m17171a();
                throw null;
            }
        }

        /* renamed from: a */
        public final Feature m17661a(Feature[] featureArr) {
            if (featureArr == null || featureArr.length == 0) {
                return null;
            }
            Feature[] k = this.f23139b.mo17607k();
            Feature[] featureArr2 = k;
            if (k == null) {
                featureArr2 = new Feature[0];
            }
            C0780a aVar = new C0780a(featureArr2.length);
            for (Feature feature : featureArr2) {
                aVar.put(feature.m17828f(), Long.valueOf(feature.m17827i()));
            }
            for (Feature feature2 : featureArr) {
                Long l = (Long) aVar.get(feature2.m17828f());
                if (l == null || l.longValue() < feature2.m17827i()) {
                    return feature2;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final void m17676a() {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            m17672a(GoogleApiManager.f23112o);
            this.f23142e.m17459b();
            for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.f23144g.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
                m17664a(new zag(listenerKey, new TaskCompletionSource()));
            }
            m17653c(new ConnectionResult(4));
            if (this.f23139b.mo17614c()) {
                this.f23139b.mo17619a(new C3285w(this));
            }
        }

        /* renamed from: a */
        public final void m17675a(int i) {
            m17650d();
            this.f23147j = true;
            this.f23142e.m17464a(i, this.f23139b.mo17606l());
            GoogleApiManager.this.f23128m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f23128m, 9, this.f23141d), GoogleApiManager.this.f23116a);
            GoogleApiManager.this.f23128m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f23128m, 11, this.f23141d), GoogleApiManager.this.f23117b);
            GoogleApiManager.this.f23121f.m17182a();
            for (zabs zabsVar : this.f23144g.values()) {
                zabsVar.f23255c.run();
            }
        }

        /* renamed from: a */
        public final void m17674a(ConnectionResult connectionResult) {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            Api.Client client = this.f23139b;
            String name = this.f23140c.getClass().getName();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(valueOf).length());
            sb.append("onSignInFailed for ");
            sb.append(name);
            sb.append(" with ");
            sb.append(valueOf);
            client.mo17617a(sb.toString());
            onConnectionFailed(connectionResult);
        }

        @Override // com.google.android.gms.common.api.internal.zap
        /* renamed from: a */
        public final void mo17468a(ConnectionResult connectionResult, Api<?> api, boolean z) {
            if (Looper.myLooper() == GoogleApiManager.this.f23128m.getLooper()) {
                onConnectionFailed(connectionResult);
            } else {
                GoogleApiManager.this.f23128m.post(new RunnableC3280t(this, connectionResult));
            }
        }

        /* renamed from: a */
        public final void m17673a(ConnectionResult connectionResult, Exception exc) {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            zacc zaccVar = this.f23146i;
            if (zaccVar != null) {
                zaccVar.m17507W();
            }
            m17650d();
            GoogleApiManager.this.f23121f.m17182a();
            m17653c(connectionResult);
            if (connectionResult.m17834f() == 4) {
                m17672a(GoogleApiManager.f23113p);
            } else if (this.f23138a.isEmpty()) {
                this.f23149l = connectionResult;
            } else if (exc != null) {
                Preconditions.m17290a(GoogleApiManager.this.f23128m);
                m17671a((Status) null, exc, false);
            } else if (!GoogleApiManager.this.f23129n) {
                m17672a(m17649d(connectionResult));
            } else {
                m17671a(m17649d(connectionResult), (Exception) null, true);
                if (!this.f23138a.isEmpty() && !m17659b(connectionResult) && !GoogleApiManager.this.m17705a(connectionResult, this.f23145h)) {
                    if (connectionResult.m17834f() == 18) {
                        this.f23147j = true;
                    }
                    if (this.f23147j) {
                        GoogleApiManager.this.f23128m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f23128m, 9, this.f23141d), GoogleApiManager.this.f23116a);
                    } else {
                        m17672a(m17649d(connectionResult));
                    }
                }
            }
        }

        /* renamed from: a */
        public final void m17672a(Status status) {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            m17671a(status, (Exception) null, false);
        }

        /* renamed from: a */
        public final void m17671a(Status status, Exception exc, boolean z) {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            boolean z2 = true;
            boolean z3 = status == null;
            if (exc != null) {
                z2 = false;
            }
            if (z3 != z2) {
                Iterator<zab> it = this.f23138a.iterator();
                while (it.hasNext()) {
                    zab next = it.next();
                    if (!z || next.f23244a == 2) {
                        if (status != null) {
                            next.mo17487a(status);
                        } else {
                            next.mo17484a(exc);
                        }
                        it.remove();
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Status XOR exception should be null");
        }

        /* renamed from: a */
        public final void m17670a(C7231b bVar) {
            if (!this.f23148k.contains(bVar) || this.f23147j) {
                return;
            }
            if (!this.f23139b.mo17614c()) {
                m17644i();
            } else {
                m17639n();
            }
        }

        /* renamed from: a */
        public final void m17664a(zab zabVar) {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            if (!this.f23139b.mo17614c()) {
                this.f23138a.add(zabVar);
                ConnectionResult connectionResult = this.f23149l;
                if (connectionResult == null || !connectionResult.m17831v()) {
                    m17644i();
                } else {
                    onConnectionFailed(this.f23149l);
                }
            } else if (m17655b(zabVar)) {
                m17637p();
            } else {
                this.f23138a.add(zabVar);
            }
        }

        /* renamed from: a */
        public final void m17663a(zaj zajVar) {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            this.f23143f.add(zajVar);
        }

        /* renamed from: a */
        public final boolean m17662a(boolean z) {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            if (!this.f23139b.mo17614c() || this.f23144g.size() != 0) {
                return false;
            }
            if (!this.f23142e.m17465a()) {
                this.f23139b.mo17617a("Timing out service connection.");
                return true;
            } else if (!z) {
                return false;
            } else {
                m17637p();
                return false;
            }
        }

        /* renamed from: b */
        public final Api.Client m17660b() {
            return this.f23139b;
        }

        /* renamed from: b */
        public final void m17658b(C7231b bVar) {
            Feature[] b;
            if (this.f23148k.remove(bVar)) {
                GoogleApiManager.this.f23128m.removeMessages(15, bVar);
                GoogleApiManager.this.f23128m.removeMessages(16, bVar);
                Feature feature = bVar.f23137b;
                ArrayList arrayList = new ArrayList(this.f23138a.size());
                for (zab zabVar : this.f23138a) {
                    if ((zabVar instanceof zad) && (b = ((zad) zabVar).mo17483b((zaa<?>) this)) != null && ArrayUtils.m17113a(b, feature)) {
                        arrayList.add(zabVar);
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    zab zabVar2 = (zab) obj;
                    this.f23138a.remove(zabVar2);
                    zabVar2.mo17484a(new UnsupportedApiCallException(feature));
                }
            }
        }

        /* renamed from: b */
        public final boolean m17659b(ConnectionResult connectionResult) {
            synchronized (GoogleApiManager.f23114q) {
                if (GoogleApiManager.this.f23125j == null || !GoogleApiManager.this.f23126k.contains(this.f23141d)) {
                    return false;
                }
                GoogleApiManager.this.f23125j.m17470b(connectionResult, this.f23145h);
                return true;
            }
        }

        /* renamed from: b */
        public final boolean m17655b(zab zabVar) {
            if (!(zabVar instanceof zad)) {
                m17651c(zabVar);
                return true;
            }
            zad zadVar = (zad) zabVar;
            Feature a = m17661a(zadVar.mo17483b((zaa<?>) this));
            if (a == null) {
                m17651c(zabVar);
                return true;
            }
            String name = this.f23140c.getClass().getName();
            String f = a.m17828f();
            long i = a.m17827i();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(f).length());
            sb.append(name);
            sb.append(" could not execute call because it requires feature (");
            sb.append(f);
            sb.append(", ");
            sb.append(i);
            sb.append(").");
            Log.w("GoogleApiManager", sb.toString());
            if (!GoogleApiManager.this.f23129n || !zadVar.mo17482c(this)) {
                zadVar.mo17484a(new UnsupportedApiCallException(a));
                return true;
            }
            C7231b bVar = new C7231b(this.f23141d, a, null);
            int indexOf = this.f23148k.indexOf(bVar);
            if (indexOf >= 0) {
                C7231b bVar2 = this.f23148k.get(indexOf);
                GoogleApiManager.this.f23128m.removeMessages(15, bVar2);
                GoogleApiManager.this.f23128m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f23128m, 15, bVar2), GoogleApiManager.this.f23116a);
                return false;
            }
            this.f23148k.add(bVar);
            GoogleApiManager.this.f23128m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f23128m, 15, bVar), GoogleApiManager.this.f23116a);
            GoogleApiManager.this.f23128m.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f23128m, 16, bVar), GoogleApiManager.this.f23117b);
            ConnectionResult connectionResult = new ConnectionResult(2, null);
            if (m17659b(connectionResult)) {
                return false;
            }
            GoogleApiManager.this.m17705a(connectionResult, this.f23145h);
            return false;
        }

        /* renamed from: c */
        public final Map<ListenerHolder.ListenerKey<?>, zabs> m17654c() {
            return this.f23144g;
        }

        /* renamed from: c */
        public final void m17653c(ConnectionResult connectionResult) {
            for (zaj zajVar : this.f23143f) {
                String str = null;
                if (Objects.m17295a(connectionResult, ConnectionResult.f23006e)) {
                    str = this.f23139b.mo17610h();
                }
                zajVar.m17475a(this.f23141d, connectionResult, str);
            }
            this.f23143f.clear();
        }

        /* renamed from: c */
        public final void m17651c(zab zabVar) {
            zabVar.mo17485a(this.f23142e, m17642k());
            try {
                zabVar.mo17486a((zaa<?>) this);
            } catch (DeadObjectException e) {
                onConnectionSuspended(1);
                this.f23139b.mo17617a("DeadObjectException thrown while running ApiCallRunner.");
            } catch (Throwable th) {
                throw new IllegalStateException(String.format("Error in GoogleApi implementation for client %s.", this.f23140c.getClass().getName()), th);
            }
        }

        /* renamed from: d */
        public final Status m17649d(ConnectionResult connectionResult) {
            String a = this.f23141d.m17739a();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 63 + String.valueOf(valueOf).length());
            sb.append("API: ");
            sb.append(a);
            sb.append(" is not available on this device. Connection failed with: ");
            sb.append(valueOf);
            return new Status(17, sb.toString());
        }

        /* renamed from: d */
        public final void m17650d() {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            this.f23149l = null;
        }

        /* renamed from: e */
        public final ConnectionResult m17648e() {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            return this.f23149l;
        }

        /* renamed from: f */
        public final void m17647f() {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            if (this.f23147j) {
                m17644i();
            }
        }

        /* renamed from: g */
        public final void m17646g() {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            if (this.f23147j) {
                m17638o();
                m17672a(GoogleApiManager.this.f23120e.mo17799c(GoogleApiManager.this.f23119d) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f23139b.mo17617a("Timing out connection while resuming.");
            }
        }

        /* renamed from: h */
        public final boolean m17645h() {
            return m17662a(true);
        }

        /* renamed from: i */
        public final void m17644i() {
            Preconditions.m17290a(GoogleApiManager.this.f23128m);
            if (!this.f23139b.mo17614c() && !this.f23139b.mo17611g()) {
                try {
                    int a = GoogleApiManager.this.f23121f.m17181a(GoogleApiManager.this.f23119d, this.f23139b);
                    if (a != 0) {
                        ConnectionResult connectionResult = new ConnectionResult(a, null);
                        String name = this.f23140c.getClass().getName();
                        String valueOf = String.valueOf(connectionResult);
                        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35 + String.valueOf(valueOf).length());
                        sb.append("The service for ");
                        sb.append(name);
                        sb.append(" is not available: ");
                        sb.append(valueOf);
                        Log.w("GoogleApiManager", sb.toString());
                        onConnectionFailed(connectionResult);
                        return;
                    }
                    C7230a aVar = new C7230a(this.f23139b, this.f23141d);
                    if (this.f23139b.mo8642n()) {
                        zacc zaccVar = this.f23146i;
                        Preconditions.m17288a(zaccVar);
                        zaccVar.m17504a(aVar);
                    }
                    try {
                        this.f23139b.mo17620a(aVar);
                    } catch (SecurityException e) {
                        m17673a(new ConnectionResult(10), e);
                    }
                } catch (IllegalStateException e2) {
                    m17673a(new ConnectionResult(10), e2);
                }
            }
        }

        /* renamed from: j */
        public final boolean m17643j() {
            return this.f23139b.mo17614c();
        }

        /* renamed from: k */
        public final boolean m17642k() {
            return this.f23139b.mo8642n();
        }

        /* renamed from: l */
        public final int m17641l() {
            return this.f23145h;
        }

        /* renamed from: m */
        public final void m17640m() {
            m17650d();
            m17653c(ConnectionResult.f23006e);
            m17638o();
            Iterator<zabs> it = this.f23144g.values().iterator();
            while (it.hasNext()) {
                zabs next = it.next();
                if (m17661a(next.f23253a.m17601c()) != null) {
                    it.remove();
                } else {
                    try {
                        next.f23253a.m17603a(this.f23140c, new TaskCompletionSource<>());
                    } catch (DeadObjectException e) {
                        onConnectionSuspended(3);
                        this.f23139b.mo17617a("DeadObjectException thrown while calling register listener method.");
                    } catch (RemoteException e2) {
                        it.remove();
                    }
                }
            }
            m17639n();
            m17637p();
        }

        /* renamed from: n */
        public final void m17639n() {
            ArrayList arrayList = new ArrayList(this.f23138a);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                int i2 = i + 1;
                zab zabVar = (zab) obj;
                if (this.f23139b.mo17614c()) {
                    i = i2;
                    if (m17655b(zabVar)) {
                        this.f23138a.remove(zabVar);
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        /* renamed from: o */
        public final void m17638o() {
            if (this.f23147j) {
                GoogleApiManager.this.f23128m.removeMessages(11, this.f23141d);
                GoogleApiManager.this.f23128m.removeMessages(9, this.f23141d);
                this.f23147j = false;
            }
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public final void onConnected(Bundle bundle) {
            if (Looper.myLooper() == GoogleApiManager.this.f23128m.getLooper()) {
                m17640m();
            } else {
                GoogleApiManager.this.f23128m.post(new RunnableC3278s(this));
            }
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        public final void onConnectionFailed(ConnectionResult connectionResult) {
            m17673a(connectionResult, (Exception) null);
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public final void onConnectionSuspended(int i) {
            if (Looper.myLooper() == GoogleApiManager.this.f23128m.getLooper()) {
                m17675a(i);
            } else {
                GoogleApiManager.this.f23128m.post(new RunnableC3282u(this, i));
            }
        }

        /* renamed from: p */
        public final void m17637p() {
            GoogleApiManager.this.f23128m.removeMessages(12, this.f23141d);
            GoogleApiManager.this.f23128m.sendMessageDelayed(GoogleApiManager.this.f23128m.obtainMessage(12, this.f23141d), GoogleApiManager.this.f23118c);
        }
    }

    @KeepForSdk
    public GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.f23129n = true;
        this.f23119d = context;
        this.f23128m = new zap(looper, this);
        this.f23120e = googleApiAvailability;
        this.f23121f = new zal(googleApiAvailability);
        if (DeviceProperties.m17087a(context)) {
            this.f23129n = false;
        }
        Handler handler = this.f23128m;
        handler.sendMessage(handler.obtainMessage(6));
    }

    /* renamed from: a */
    public static GoogleApiManager m17706a(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (f23114q) {
            if (f23115r == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f23115r = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.m17826a());
            }
            googleApiManager = f23115r;
        }
        return googleApiManager;
    }

    /* renamed from: a */
    public final int m17707a() {
        return this.f23122g.getAndIncrement();
    }

    /* renamed from: a */
    public final void m17704a(GoogleApi<?> googleApi) {
        Handler handler = this.f23128m;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    /* renamed from: a */
    public final <O extends Api.ApiOptions> void m17703a(GoogleApi<O> googleApi, int i, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zaf zafVar = new zaf(i, apiMethodImpl);
        Handler handler = this.f23128m;
        handler.sendMessage(handler.obtainMessage(4, new zabr(zafVar, this.f23123h.get(), googleApi)));
    }

    /* renamed from: a */
    public final <O extends Api.ApiOptions, ResultT> void m17702a(GoogleApi<O> googleApi, int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zah zahVar = new zah(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.f23128m;
        handler.sendMessage(handler.obtainMessage(4, new zabr(zahVar, this.f23123h.get(), googleApi)));
    }

    /* renamed from: a */
    public final void m17700a(zay zayVar) {
        synchronized (f23114q) {
            if (this.f23125j != zayVar) {
                this.f23125j = zayVar;
                this.f23126k.clear();
            }
            this.f23126k.addAll(zayVar.m17452h());
        }
    }

    /* renamed from: a */
    public final boolean m17705a(ConnectionResult connectionResult, int i) {
        return this.f23120e.m17818a(this.f23119d, connectionResult, i);
    }

    /* renamed from: b */
    public final zaa<?> m17697b(GoogleApi<?> googleApi) {
        ApiKey<?> a = googleApi.mo17755a();
        zaa<?> zaaVar = this.f23124i.get(a);
        zaa<?> zaaVar2 = zaaVar;
        if (zaaVar == null) {
            zaaVar2 = new zaa<>(googleApi);
            this.f23124i.put(a, zaaVar2);
        }
        if (zaaVar2.m17642k()) {
            this.f23127l.add(a);
        }
        zaaVar2.m17644i();
        return zaaVar2;
    }

    /* renamed from: b */
    public final void m17699b() {
        Handler handler = this.f23128m;
        handler.sendMessage(handler.obtainMessage(3));
    }

    /* renamed from: b */
    public final void m17698b(ConnectionResult connectionResult, int i) {
        if (!m17705a(connectionResult, i)) {
            Handler handler = this.f23128m;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    /* renamed from: b */
    public final void m17695b(zay zayVar) {
        synchronized (f23114q) {
            if (this.f23125j == zayVar) {
                this.f23125j = null;
                this.f23126k.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02dc  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r7) {
        /*
            Method dump skipped, instructions count: 1180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.GoogleApiManager.handleMessage(android.os.Message):boolean");
    }
}
