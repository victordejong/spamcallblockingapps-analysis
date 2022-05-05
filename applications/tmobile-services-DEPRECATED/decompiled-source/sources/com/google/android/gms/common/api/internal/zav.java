package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zav.class */
public final class zav implements zabr {

    /* renamed from: c */
    private final Map<Api<?>, Boolean> f7340c;

    /* renamed from: d */
    private final GoogleApiManager f7341d;

    /* renamed from: e */
    private final zaaw f7342e;

    /* renamed from: f */
    private final Lock f7343f;

    /* renamed from: g */
    private final Looper f7344g;

    /* renamed from: h */
    private final GoogleApiAvailabilityLight f7345h;

    /* renamed from: i */
    private final Condition f7346i;

    /* renamed from: j */
    private final ClientSettings f7347j;

    /* renamed from: k */
    private final boolean f7348k;

    /* renamed from: l */
    private final boolean f7349l;
    @GuardedBy

    /* renamed from: n */
    private boolean f7351n;
    @GuardedBy

    /* renamed from: o */
    private Map<ApiKey<?>, ConnectionResult> f7352o;
    @GuardedBy

    /* renamed from: p */
    private Map<ApiKey<?>, ConnectionResult> f7353p;
    @GuardedBy

    /* renamed from: q */
    private zaaa f7354q;
    @GuardedBy

    /* renamed from: r */
    private ConnectionResult f7355r;

    /* renamed from: a */
    private final Map<Api.AnyClientKey<?>, zaw<?>> f7338a = new HashMap();

    /* renamed from: b */
    private final Map<Api.AnyClientKey<?>, zaw<?>> f7339b = new HashMap();

    /* renamed from: m */
    private final Queue<BaseImplementation.ApiMethodImpl<?, ?>> f7350m = new LinkedList();

    public zav(Context context, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, ArrayList<zap> arrayList, zaaw zaawVar, boolean z) {
        this.f7343f = lock;
        this.f7344g = looper;
        this.f7346i = lock.newCondition();
        this.f7345h = googleApiAvailabilityLight;
        this.f7342e = zaawVar;
        this.f7340c = map2;
        this.f7347j = clientSettings;
        this.f7348k = z;
        HashMap hashMap = new HashMap();
        for (Api<?> api : map2.keySet()) {
            hashMap.put(api.m15033a(), api);
        }
        HashMap hashMap2 = new HashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            zap zapVar = arrayList.get(i);
            i++;
            zap zapVar2 = zapVar;
            hashMap2.put(zapVar2.f7319a, zapVar2);
        }
        boolean z2 = false;
        boolean z3 = true;
        boolean z4 = false;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api api2 = (Api) hashMap.get(entry.getKey());
            Api.Client value = entry.getValue();
            if (value.requiresGooglePlayServices()) {
                z3 = z3;
                if (!this.f7340c.get(api2).booleanValue()) {
                    z2 = true;
                    z4 = true;
                } else {
                    z2 = true;
                }
            } else {
                z2 = z2;
                z3 = false;
            }
            zaw<?> zawVar = new zaw<>(context, api2, looper, value, (zap) hashMap2.get(api2), clientSettings, abstractClientBuilder);
            this.f7338a.put(entry.getKey(), zawVar);
            if (value.requiresSignIn()) {
                this.f7339b.put(entry.getKey(), zawVar);
            }
        }
        this.f7349l = z2 && !z3 && !z4;
        this.f7341d = GoogleApiManager.m14944o();
    }

    @Nullable
    /* renamed from: b */
    private final ConnectionResult m14683b(@NonNull Api.AnyClientKey<?> anyClientKey) {
        this.f7343f.lock();
        try {
            zaw<?> zawVar = this.f7338a.get(anyClientKey);
            if (this.f7352o != null && zawVar != null) {
                return this.f7352o.get(zawVar.getApiKey());
            }
            this.f7343f.unlock();
            return null;
        } finally {
            this.f7343f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final boolean m14675j(zaw<?> zawVar, ConnectionResult connectionResult) {
        return !connectionResult.m15090d0() && !connectionResult.m15091Y() && this.f7340c.get(zawVar.getApi()).booleanValue() && zawVar.m14658a().requiresGooglePlayServices() && this.f7345h.mo15059m(connectionResult.m15094B());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: k */
    public final void m14674k() {
        if (this.f7347j == null) {
            this.f7342e.f7196p = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(this.f7347j.m14575h());
        Map<Api<?>, ClientSettings.OptionalApiSettings> e = this.f7347j.m14578e();
        for (Api<?> api : e.keySet()) {
            ConnectionResult a = m14684a(api);
            if (a != null && a.m15090d0()) {
                hashSet.addAll(e.get(api).f7481a);
            }
        }
        this.f7342e.f7196p = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: l */
    public final void m14673l() {
        while (!this.f7350m.isEmpty()) {
            mo14681d(this.f7350m.remove());
        }
        this.f7342e.mo14687b(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    @GuardedBy
    /* renamed from: m */
    public final ConnectionResult m14672m() {
        int i = 0;
        ConnectionResult connectionResult = null;
        ConnectionResult connectionResult2 = null;
        int i2 = 0;
        for (zaw<?> zawVar : this.f7338a.values()) {
            Api<?> api = zawVar.getApi();
            ConnectionResult connectionResult3 = this.f7352o.get(zawVar.getApiKey());
            if (!connectionResult3.m15090d0() && (!this.f7340c.get(api).booleanValue() || connectionResult3.m15091Y() || this.f7345h.mo15059m(connectionResult3.m15094B()))) {
                if (connectionResult3.m15094B() != 4 || !this.f7348k) {
                    int priority = api.m15031c().getPriority();
                    if (connectionResult == null || i > priority) {
                        connectionResult = connectionResult3;
                        i = priority;
                    }
                } else {
                    int priority2 = api.m15031c().getPriority();
                    if (connectionResult2 == null || i2 > priority2) {
                        connectionResult2 = connectionResult3;
                        i2 = priority2;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }

    /* renamed from: o */
    private final <T extends BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>> boolean m14670o(@NonNull T t) {
        Api.AnyClientKey<?> v = t.m14983v();
        ConnectionResult b = m14683b(v);
        if (b == null || b.m15094B() != 4) {
            return false;
        }
        t.m14979z(new Status(4, null, this.f7341d.m14958a(this.f7338a.get(v).getApiKey(), System.identityHashCode(this.f7342e))));
        return true;
    }

    @Nullable
    /* renamed from: a */
    public final ConnectionResult m14684a(@NonNull Api<?> api) {
        return m14683b(api.m15033a());
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void connect() {
        this.f7343f.lock();
        try {
            if (!this.f7351n) {
                this.f7351n = true;
                this.f7352o = null;
                this.f7353p = null;
                this.f7354q = null;
                this.f7355r = null;
                this.f7341d.m14959C();
                this.f7341d.m14954e(this.f7338a.values()).mo10793c(new HandlerExecutor(this.f7344g), new zax(this, null));
            }
        } finally {
            this.f7343f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14681d(@NonNull T t) {
        Api.AnyClientKey<A> v = t.m14983v();
        if (this.f7348k && m14670o(t)) {
            return t;
        }
        this.f7342e.f7204x.m14743c(t);
        return (T) this.f7338a.get(v).doWrite((zaw<?>) t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void disconnect() {
        this.f7343f.lock();
        try {
            this.f7351n = false;
            this.f7352o = null;
            this.f7353p = null;
            if (this.f7354q != null) {
                this.f7354q.m14862a();
                this.f7354q = null;
            }
            this.f7355r = null;
            while (!this.f7350m.isEmpty()) {
                BaseImplementation.ApiMethodImpl<?, ?> remove = this.f7350m.remove();
                remove.m14970m(null);
                remove.mo14772b();
            }
            this.f7346i.signalAll();
        } finally {
            this.f7343f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    /* renamed from: e */
    public final void mo14680e() {
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnected() {
        boolean z;
        this.f7343f.lock();
        try {
            if (this.f7352o != null) {
                if (this.f7355r == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f7343f.unlock();
        }
    }
}
