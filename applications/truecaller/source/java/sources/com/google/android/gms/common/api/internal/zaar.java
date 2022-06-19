package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zae;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24915e;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24921h;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24923i;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24929l;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24913d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaar.class */
public final class zaar implements zaba {

    /* renamed from: a */
    public final zabd f5787a;

    /* renamed from: b */
    public final Lock f5788b;

    /* renamed from: c */
    public final Context f5789c;

    /* renamed from: d */
    public final GoogleApiAvailabilityLight f5790d;

    /* renamed from: e */
    public ConnectionResult f5791e;

    /* renamed from: f */
    public int f5792f;

    /* renamed from: h */
    public int f5794h;

    /* renamed from: k */
    public zae f5797k;

    /* renamed from: l */
    public boolean f5798l;

    /* renamed from: m */
    public boolean f5799m;

    /* renamed from: n */
    public boolean f5800n;

    /* renamed from: o */
    public IAccountAccessor f5801o;

    /* renamed from: p */
    public boolean f5802p;

    /* renamed from: q */
    public boolean f5803q;

    /* renamed from: r */
    public final ClientSettings f5804r;

    /* renamed from: s */
    public final Map<Api<?>, Boolean> f5805s;

    /* renamed from: t */
    public final Api.AbstractClientBuilder<? extends zae, SignInOptions> f5806t;

    /* renamed from: g */
    public int f5793g = 0;

    /* renamed from: i */
    public final Bundle f5795i = new Bundle();

    /* renamed from: j */
    public final Set<Api.AnyClientKey> f5796j = new HashSet();

    /* renamed from: u */
    public final ArrayList<Future<?>> f5807u = new ArrayList<>();

    public zaar(zabd zabdVar, ClientSettings clientSettings, Map<Api<?>, Boolean> map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder, Lock lock, Context context) {
        this.f5787a = zabdVar;
        this.f5804r = clientSettings;
        this.f5805s = map;
        this.f5790d = googleApiAvailabilityLight;
        this.f5806t = abstractClientBuilder;
        this.f5788b = lock;
        this.f5789c = context;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: a */
    public final boolean mo38985a() {
        m39005o();
        m39006n(true);
        this.f5787a.m38977l(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: b */
    public final void mo38984b() {
        this.f5787a.f5839g.clear();
        this.f5799m = false;
        this.f5791e = null;
        this.f5793g = 0;
        this.f5798l = true;
        this.f5800n = false;
        this.f5802p = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.f5805s.keySet()) {
            Api.Client client = this.f5787a.f5838f.get(api.f5690b);
            Objects.requireNonNull(client, "null reference");
            z |= api.f5689a.getPriority() == 1;
            boolean booleanValue = this.f5805s.get(api).booleanValue();
            if (client.requiresSignIn()) {
                this.f5799m = true;
                if (booleanValue) {
                    this.f5796j.add(api.f5690b);
                } else {
                    this.f5798l = false;
                }
            }
            hashMap.put(client, new C24915e(this, api, booleanValue));
        }
        if (z) {
            this.f5799m = false;
        }
        if (this.f5799m) {
            Objects.requireNonNull(this.f5804r, "null reference");
            Objects.requireNonNull(this.f5806t, "null reference");
            this.f5804r.f5949h = Integer.valueOf(System.identityHashCode(this.f5787a.f5846n));
            C24929l c24929l = new C24929l(this);
            Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder = this.f5806t;
            Context context = this.f5789c;
            Looper looper = this.f5787a.f5846n.f5814g;
            ClientSettings clientSettings = this.f5804r;
            this.f5797k = abstractClientBuilder.buildClient(context, looper, clientSettings, (ClientSettings) clientSettings.f5948g, (GoogleApiClient.ConnectionCallbacks) c24929l, (GoogleApiClient.OnConnectionFailedListener) c24929l);
        }
        this.f5794h = this.f5787a.f5838f.size();
        this.f5807u.add(zabe.f5848a.submit(new C24921h(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: c */
    public final void mo38983c() {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo38982d(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: e */
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo38981e(T t) {
        this.f5787a.f5846n.f5815h.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: f */
    public final void mo38980f(int i) {
        m39007m(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: g */
    public final void mo38979g(Bundle bundle) {
        if (!m39004p(1)) {
            return;
        }
        if (bundle != null) {
            this.f5795i.putAll(bundle);
        }
        if (!m39003q()) {
            return;
        }
        m39010j();
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: h */
    public final void mo38978h(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (!m39004p(1)) {
            return;
        }
        m39009k(connectionResult, api, z);
        if (!m39003q()) {
            return;
        }
        m39010j();
    }

    /* renamed from: i */
    public final void m39011i() {
        if (this.f5794h != 0) {
            return;
        }
        if (this.f5799m && !this.f5800n) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        this.f5793g = 1;
        this.f5794h = this.f5787a.f5838f.size();
        for (Api.AnyClientKey<?> anyClientKey : this.f5787a.f5838f.keySet()) {
            if (!this.f5787a.f5839g.containsKey(anyClientKey)) {
                arrayList.add(this.f5787a.f5838f.get(anyClientKey));
            } else if (m39003q()) {
                m39010j();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f5807u.add(zabe.f5848a.submit(new C24923i(this, arrayList)));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: j */
    public final void m39010j() {
        zabd zabdVar = this.f5787a;
        zabdVar.f5833a.lock();
        try {
            zabdVar.f5846n.m38990v();
            zabdVar.f5843k = new zaag(zabdVar);
            zabdVar.f5843k.mo38984b();
            zabdVar.f5834b.signalAll();
            zabdVar.f5833a.unlock();
            zabe.f5848a.execute(new RunnableC24913d(this));
            zae zaeVar = this.f5797k;
            if (zaeVar != null) {
                if (this.f5802p) {
                    IAccountAccessor iAccountAccessor = this.f5801o;
                    Objects.requireNonNull(iAccountAccessor, "null reference");
                    zaeVar.c(iAccountAccessor, this.f5803q);
                }
                m39006n(false);
            }
            for (Api.AnyClientKey<?> anyClientKey : this.f5787a.f5839g.keySet()) {
                Api.Client client = this.f5787a.f5838f.get(anyClientKey);
                Objects.requireNonNull(client, "null reference");
                client.disconnect();
            }
            this.f5787a.f5847o.mo4278b(this.f5795i.isEmpty() ? null : this.f5795i);
        } catch (Throwable th) {
            zabdVar.f5833a.unlock();
            throw th;
        }
    }

    /* renamed from: k */
    public final void m39009k(ConnectionResult connectionResult, Api<?> api, boolean z) {
        int priority = api.f5689a.getPriority();
        if ((!z || connectionResult.m39077o2() || this.f5790d.mo39066a(null, connectionResult.f5663b, null) != null) && (this.f5791e == null || priority < this.f5792f)) {
            this.f5791e = connectionResult;
            this.f5792f = priority;
        }
        this.f5787a.f5839g.put(api.f5690b, connectionResult);
    }

    /* renamed from: l */
    public final void m39008l() {
        this.f5799m = false;
        this.f5787a.f5846n.f5823p = Collections.emptySet();
        for (Api.AnyClientKey<?> anyClientKey : this.f5796j) {
            if (!this.f5787a.f5839g.containsKey(anyClientKey)) {
                this.f5787a.f5839g.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    /* renamed from: m */
    public final void m39007m(ConnectionResult connectionResult) {
        m39005o();
        m39006n(!connectionResult.m39077o2());
        this.f5787a.m38977l(connectionResult);
        this.f5787a.f5847o.mo4277c(connectionResult);
    }

    /* renamed from: n */
    public final void m39006n(boolean z) {
        zae zaeVar = this.f5797k;
        if (zaeVar != null) {
            if (zaeVar.isConnected() && z) {
                zaeVar.b();
            }
            zaeVar.disconnect();
            Objects.requireNonNull(this.f5804r, "null reference");
            this.f5801o = null;
        }
    }

    /* renamed from: o */
    public final void m39005o() {
        ArrayList<Future<?>> arrayList = this.f5807u;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).cancel(true);
        }
        this.f5807u.clear();
    }

    /* renamed from: p */
    public final boolean m39004p(int i) {
        if (this.f5793g != i) {
            zaaz zaazVar = this.f5787a.f5846n;
            Objects.requireNonNull(zaazVar);
            StringWriter stringWriter = new StringWriter();
            zaazVar.mo38998g("", null, new PrintWriter(stringWriter), null);
            stringWriter.toString();
            String.valueOf(this).length();
            String str = "STEP_GETTING_REMOTE_SERVICE";
            String str2 = this.f5793g != 0 ? "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            if (i == 0) {
                str = "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            }
            str2.length();
            str.length();
            new Exception();
            m39007m(new ConnectionResult(8, null));
            return false;
        }
        return true;
    }

    /* renamed from: q */
    public final boolean m39003q() {
        int i = this.f5794h - 1;
        this.f5794h = i;
        if (i > 0) {
            return false;
        }
        if (i >= 0) {
            ConnectionResult connectionResult = this.f5791e;
            if (connectionResult == null) {
                return true;
            }
            this.f5787a.f5845m = this.f5792f;
            m39007m(connectionResult);
            return false;
        }
        zaaz zaazVar = this.f5787a.f5846n;
        Objects.requireNonNull(zaazVar);
        StringWriter stringWriter = new StringWriter();
        zaazVar.mo38998g("", null, new PrintWriter(stringWriter), null);
        stringWriter.toString();
        Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
        m39007m(new ConnectionResult(8, null));
        return false;
    }
}
