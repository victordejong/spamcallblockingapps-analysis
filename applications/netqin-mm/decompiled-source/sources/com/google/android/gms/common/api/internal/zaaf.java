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
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zau;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zam;
import com.google.android.gms.signin.zad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3248d;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3250e;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3258i;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3260j;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3246c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaf.class */
public final class zaaf implements zaaw {

    /* renamed from: a */
    public final zaaz f23183a;

    /* renamed from: b */
    public final Lock f23184b;

    /* renamed from: c */
    public final Context f23185c;

    /* renamed from: d */
    public final GoogleApiAvailabilityLight f23186d;

    /* renamed from: e */
    public ConnectionResult f23187e;

    /* renamed from: f */
    public int f23188f;

    /* renamed from: h */
    public int f23190h;

    /* renamed from: k */
    public zad f23193k;

    /* renamed from: l */
    public boolean f23194l;

    /* renamed from: m */
    public boolean f23195m;

    /* renamed from: n */
    public boolean f23196n;

    /* renamed from: o */
    public IAccountAccessor f23197o;

    /* renamed from: p */
    public boolean f23198p;

    /* renamed from: q */
    public boolean f23199q;

    /* renamed from: r */
    public final ClientSettings f23200r;

    /* renamed from: s */
    public final Map<Api<?>, Boolean> f23201s;

    /* renamed from: t */
    public final Api.AbstractClientBuilder<? extends zad, SignInOptions> f23202t;

    /* renamed from: g */
    public int f23189g = 0;

    /* renamed from: i */
    public final Bundle f23191i = new Bundle();

    /* renamed from: j */
    public final Set<Api.AnyClientKey> f23192j = new HashSet();

    /* renamed from: u */
    public ArrayList<Future<?>> f23203u = new ArrayList<>();

    public zaaf(zaaz zaazVar, ClientSettings clientSettings, Map<Api<?>, Boolean> map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, Lock lock, Context context) {
        this.f23183a = zaazVar;
        this.f23200r = clientSettings;
        this.f23201s = map;
        this.f23186d = googleApiAvailabilityLight;
        this.f23202t = abstractClientBuilder;
        this.f23184b = lock;
        this.f23185c = context;
    }

    /* renamed from: c */
    public static String m17576c(int i) {
        return i != 0 ? i != 1 ? "UNKNOWN" : "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo17538a(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final void mo17541a() {
        this.f23183a.f23235g.clear();
        this.f23195m = false;
        this.f23187e = null;
        this.f23189g = 0;
        this.f23194l = true;
        this.f23196n = false;
        this.f23198p = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.f23201s.keySet()) {
            Api.Client client = this.f23183a.f23234f.get(api.m17785c());
            Preconditions.m17288a(client);
            Api.Client client2 = client;
            z |= api.m17787a().m17779a() == 1;
            boolean booleanValue = this.f23201s.get(api).booleanValue();
            if (client2.mo8642n()) {
                this.f23195m = true;
                if (booleanValue) {
                    this.f23192j.add(api.m17785c());
                } else {
                    this.f23194l = false;
                }
            }
            hashMap.put(client2, new C3250e(this, api, booleanValue));
        }
        if (z) {
            this.f23195m = false;
        }
        if (this.f23195m) {
            Preconditions.m17288a(this.f23200r);
            Preconditions.m17288a(this.f23202t);
            this.f23200r.m17330a(Integer.valueOf(System.identityHashCode(this.f23183a.f23242n)));
            C3260j jVar = new C3260j(this, null);
            Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder = this.f23202t;
            Context context = this.f23185c;
            Looper c = this.f23183a.f23242n.mo17523c();
            ClientSettings clientSettings = this.f23200r;
            this.f23193k = (zad) abstractClientBuilder.mo17783a(context, c, clientSettings, (ClientSettings) clientSettings.m17323h(), (GoogleApiClient.ConnectionCallbacks) jVar, (GoogleApiClient.OnConnectionFailedListener) jVar);
        }
        this.f23190h = this.f23183a.f23234f.size();
        this.f23203u.add(zaba.m17525a().submit(new C3248d(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final void mo17540a(Bundle bundle) {
        if (m17590a(1)) {
            if (bundle != null) {
                this.f23191i.putAll(bundle);
            }
            if (m17577c()) {
                m17571f();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: a */
    public final void mo17539a(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (m17590a(1)) {
            m17580b(connectionResult, api, z);
            if (m17577c()) {
                m17571f();
            }
        }
    }

    /* renamed from: a */
    public final void m17583a(zam zamVar) {
        if (m17590a(0)) {
            ConnectionResult f = zamVar.m8628f();
            if (f.m17830y()) {
                zau i = zamVar.m8627i();
                Preconditions.m17288a(i);
                zau zauVar = i;
                ConnectionResult i2 = zauVar.m17178i();
                if (!i2.m17830y()) {
                    String valueOf = String.valueOf(i2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                    sb.append("Sign-in succeeded with resolve account failure: ");
                    sb.append(valueOf);
                    Log.wtf("GACConnecting", sb.toString(), new Exception());
                    m17581b(i2);
                    return;
                }
                this.f23196n = true;
                IAccountAccessor f2 = zauVar.m17179f();
                Preconditions.m17288a(f2);
                this.f23197o = f2;
                this.f23198p = zauVar.m17177u();
                this.f23199q = zauVar.m17176v();
                m17573e();
            } else if (m17589a(f)) {
                m17569g();
                m17573e();
            } else {
                m17581b(f);
            }
        }
    }

    /* renamed from: a */
    public final void m17582a(boolean z) {
        zad zadVar = this.f23193k;
        if (zadVar != null) {
            if (zadVar.mo17614c() && z) {
                zadVar.mo8626a();
            }
            zadVar.mo10491b();
            ClientSettings clientSettings = this.f23200r;
            Preconditions.m17288a(clientSettings);
            if (clientSettings.m17321j()) {
                this.f23193k = null;
            }
            this.f23197o = null;
        }
    }

    /* renamed from: a */
    public final boolean m17590a(int i) {
        if (this.f23189g == i) {
            return true;
        }
        Log.w("GACConnecting", this.f23183a.f23242n.m17546g());
        String valueOf = String.valueOf(this);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
        sb.append("Unexpected callback in ");
        sb.append(valueOf);
        Log.w("GACConnecting", sb.toString());
        int i2 = this.f23190h;
        StringBuilder sb2 = new StringBuilder(33);
        sb2.append("mRemainingConnections=");
        sb2.append(i2);
        Log.w("GACConnecting", sb2.toString());
        String c = m17576c(this.f23189g);
        String c2 = m17576c(i);
        StringBuilder sb3 = new StringBuilder(String.valueOf(c).length() + 70 + String.valueOf(c2).length());
        sb3.append("GoogleApiClient connecting is in step ");
        sb3.append(c);
        sb3.append(" but received callback for step ");
        sb3.append(c2);
        Log.e("GACConnecting", sb3.toString(), new Exception());
        m17581b(new ConnectionResult(8, null));
        return false;
    }

    /* renamed from: a */
    public final boolean m17589a(ConnectionResult connectionResult) {
        return this.f23194l && !connectionResult.m17831v();
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: b */
    public final void mo17537b() {
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: b */
    public final void mo17536b(int i) {
        m17581b(new ConnectionResult(8, null));
    }

    /* renamed from: b */
    public final void m17581b(ConnectionResult connectionResult) {
        m17567h();
        m17582a(!connectionResult.m17831v());
        this.f23183a.m17533a(connectionResult);
        this.f23183a.f23243o.mo17511a(connectionResult);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        if ((r5.m17831v() || r4.f23186d.m17811a(r5.m17834f()) != null) != false) goto L_0x003a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        if (r0 < r4.f23188f) goto L_0x004e;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17580b(com.google.android.gms.common.ConnectionResult r5, com.google.android.gms.common.api.Api<?> r6, boolean r7) {
        /*
            r4 = this;
            r0 = r6
            com.google.android.gms.common.api.Api$BaseClientBuilder r0 = r0.m17787a()
            int r0 = r0.m17779a()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x003a
            r0 = r5
            boolean r0 = r0.m17831v()
            if (r0 == 0) goto L_0x001d
        L_0x0017:
            r0 = 1
            r10 = r0
            goto L_0x0031
        L_0x001d:
            r0 = r4
            com.google.android.gms.common.GoogleApiAvailabilityLight r0 = r0.f23186d
            r1 = r5
            int r1 = r1.m17834f()
            android.content.Intent r0 = r0.m17811a(r1)
            if (r0 == 0) goto L_0x002e
            goto L_0x0017
        L_0x002e:
            r0 = 0
            r10 = r0
        L_0x0031:
            r0 = r9
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0051
        L_0x003a:
            r0 = r4
            com.google.android.gms.common.ConnectionResult r0 = r0.f23187e
            if (r0 == 0) goto L_0x004e
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r4
            int r1 = r1.f23188f
            if (r0 >= r1) goto L_0x0051
        L_0x004e:
            r0 = 1
            r11 = r0
        L_0x0051:
            r0 = r11
            if (r0 == 0) goto L_0x0061
            r0 = r4
            r1 = r5
            r0.f23187e = r1
            r0 = r4
            r1 = r8
            r0.f23188f = r1
        L_0x0061:
            r0 = r4
            com.google.android.gms.common.api.internal.zaaz r0 = r0.f23183a
            java.util.Map<com.google.android.gms.common.api.Api$AnyClientKey<?>, com.google.android.gms.common.ConnectionResult> r0 = r0.f23235g
            r1 = r6
            com.google.android.gms.common.api.Api$AnyClientKey r1 = r1.m17785c()
            r2 = r5
            java.lang.Object r0 = r0.put(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zaaf.m17580b(com.google.android.gms.common.ConnectionResult, com.google.android.gms.common.api.Api, boolean):void");
    }

    /* renamed from: c */
    public final boolean m17577c() {
        int i = this.f23190h - 1;
        this.f23190h = i;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            Log.w("GACConnecting", this.f23183a.f23242n.m17546g());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            m17581b(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.f23187e;
        if (connectionResult == null) {
            return true;
        }
        this.f23183a.f23241m = this.f23188f;
        m17581b(connectionResult);
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zaaw
    /* renamed from: d */
    public final boolean mo17535d() {
        m17567h();
        m17582a(true);
        this.f23183a.m17533a((ConnectionResult) null);
        return true;
    }

    /* renamed from: e */
    public final void m17573e() {
        if (this.f23190h == 0) {
            if (!this.f23195m || this.f23196n) {
                ArrayList arrayList = new ArrayList();
                this.f23189g = 1;
                this.f23190h = this.f23183a.f23234f.size();
                for (Api.AnyClientKey<?> anyClientKey : this.f23183a.f23234f.keySet()) {
                    if (!this.f23183a.f23235g.containsKey(anyClientKey)) {
                        arrayList.add(this.f23183a.f23234f.get(anyClientKey));
                    } else if (m17577c()) {
                        m17571f();
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.f23203u.add(zaba.m17525a().submit(new C3258i(this, arrayList)));
                }
            }
        }
    }

    /* renamed from: f */
    public final void m17571f() {
        this.f23183a.m17528f();
        zaba.m17525a().execute(new RunnableC3246c(this));
        zad zadVar = this.f23193k;
        if (zadVar != null) {
            if (this.f23198p) {
                IAccountAccessor iAccountAccessor = this.f23197o;
                Preconditions.m17288a(iAccountAccessor);
                zadVar.mo8625a(iAccountAccessor, this.f23199q);
            }
            m17582a(false);
        }
        for (Api.AnyClientKey<?> anyClientKey : this.f23183a.f23235g.keySet()) {
            Api.Client client = this.f23183a.f23234f.get(anyClientKey);
            Preconditions.m17288a(client);
            client.mo10491b();
        }
        this.f23183a.f23243o.mo17512a(this.f23191i.isEmpty() ? null : this.f23191i);
    }

    /* renamed from: g */
    public final void m17569g() {
        this.f23195m = false;
        this.f23183a.f23242n.f23219p = Collections.emptySet();
        for (Api.AnyClientKey<?> anyClientKey : this.f23192j) {
            if (!this.f23183a.f23235g.containsKey(anyClientKey)) {
                this.f23183a.f23235g.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    /* renamed from: h */
    public final void m17567h() {
        ArrayList<Future<?>> arrayList = this.f23203u;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Future<?> future = arrayList.get(i);
            i++;
            future.cancel(true);
        }
        this.f23203u.clear();
    }

    /* renamed from: i */
    public final Set<Scope> m17565i() {
        if (this.f23200r == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.f23200r.m17326e());
        Map<Api<?>, ClientSettings.zaa> f = this.f23200r.m17325f();
        for (Api<?> api : f.keySet()) {
            if (!this.f23183a.f23235g.containsKey(api.m17785c())) {
                hashSet.addAll(f.get(api).f23428a);
            }
        }
        return hashSet;
    }
}
