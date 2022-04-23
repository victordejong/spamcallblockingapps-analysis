package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zai;
import com.google.android.gms.common.internal.zaj;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3257h0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3266m;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3269n0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3270o;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.HandlerC3268n;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaar.class */
public final class zaar extends GoogleApiClient implements zabn {

    /* renamed from: b */
    public final Lock f23205b;

    /* renamed from: c */
    public final zaj f23206c;

    /* renamed from: e */
    public final int f23208e;

    /* renamed from: f */
    public final Context f23209f;

    /* renamed from: g */
    public final Looper f23210g;

    /* renamed from: i */
    public volatile boolean f23212i;

    /* renamed from: j */
    public long f23213j;

    /* renamed from: k */
    public long f23214k;

    /* renamed from: l */
    public final HandlerC3268n f23215l;

    /* renamed from: m */
    public final GoogleApiAvailability f23216m;
    @VisibleForTesting

    /* renamed from: n */
    public zabl f23217n;

    /* renamed from: o */
    public final Map<Api.AnyClientKey<?>, Api.Client> f23218o;

    /* renamed from: p */
    public Set<Scope> f23219p;

    /* renamed from: q */
    public final ClientSettings f23220q;

    /* renamed from: r */
    public final Map<Api<?>, Boolean> f23221r;

    /* renamed from: s */
    public final Api.AbstractClientBuilder<? extends zad, SignInOptions> f23222s;

    /* renamed from: t */
    public final ListenerHolders f23223t;

    /* renamed from: u */
    public final ArrayList<zaq> f23224u;

    /* renamed from: v */
    public Integer f23225v;

    /* renamed from: w */
    public Set<zaci> f23226w;

    /* renamed from: x */
    public final zacn f23227x;

    /* renamed from: y */
    public final zai f23228y;

    /* renamed from: d */
    public zabm f23207d = null;
    @VisibleForTesting

    /* renamed from: h */
    public final Queue<BaseImplementation.ApiMethodImpl<?, ?>> f23211h = new LinkedList();

    public zaar(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, Map<Api<?>, Boolean> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.AnyClientKey<?>, Api.Client> map2, int i, int i2, ArrayList<zaq> arrayList) {
        this.f23213j = ClientLibraryUtils.m17107a() ? 10000L : 120000L;
        this.f23214k = 5000L;
        this.f23219p = new HashSet();
        this.f23223t = new ListenerHolders();
        this.f23225v = null;
        this.f23226w = null;
        C3266m mVar = new C3266m(this);
        this.f23228y = mVar;
        this.f23209f = context;
        this.f23205b = lock;
        this.f23206c = new zaj(looper, mVar);
        this.f23210g = looper;
        this.f23215l = new HandlerC3268n(this, looper);
        this.f23216m = googleApiAvailability;
        this.f23208e = i;
        if (i >= 0) {
            this.f23225v = Integer.valueOf(i2);
        }
        this.f23221r = map;
        this.f23218o = map2;
        this.f23224u = arrayList;
        this.f23227x = new zacn();
        for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : list) {
            this.f23206c.m17186a(connectionCallbacks);
        }
        for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : list2) {
            this.f23206c.m17185a(onConnectionFailedListener);
        }
        this.f23220q = clientSettings;
        this.f23222s = abstractClientBuilder;
    }

    /* renamed from: a */
    public static int m17555a(Iterable<Api.Client> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.Client client : iterable) {
            boolean z4 = z2;
            if (client.mo8642n()) {
                z4 = true;
            }
            z2 = z4;
            if (client.mo17612e()) {
                z3 = true;
                z2 = z4;
            }
        }
        if (z2) {
            return (!z3 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* renamed from: c */
    public static String m17549c(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    /* renamed from: a */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T m17557a(T t) {
        Api<?> g = t.m17725g();
        boolean containsKey = this.f23218o.containsKey(t.m17724h());
        String d = g != null ? g.m17784d() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(d);
        sb.append(" required for this call.");
        Preconditions.m17283a(containsKey, sb.toString());
        this.f23205b.lock();
        try {
            zabm zabmVar = this.f23207d;
            if (zabmVar == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            } else if (this.f23212i) {
                this.f23211h.add(t);
                while (!this.f23211h.isEmpty()) {
                    BaseImplementation.ApiMethodImpl<?, ?> remove = this.f23211h.remove();
                    this.f23227x.m17489a(remove);
                    remove.m17727c(Status.f23077f);
                }
                this.f23205b.unlock();
                return t;
            } else {
                T t2 = (T) zabmVar.mo17518a(t);
                this.f23205b.unlock();
                return t2;
            }
        } catch (Throwable th) {
            this.f23205b.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: a */
    public final void mo17560a() {
        this.f23205b.lock();
        try {
            boolean z = false;
            if (this.f23208e >= 0) {
                if (this.f23225v != null) {
                    z = true;
                }
                Preconditions.m17279b(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f23225v == null) {
                this.f23225v = Integer.valueOf(m17555a((Iterable<Api.Client>) this.f23218o.values(), false));
            } else if (this.f23225v.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            Integer num = this.f23225v;
            Preconditions.m17288a(num);
            m17559a(num.intValue());
        } finally {
            this.f23205b.unlock();
        }
    }

    /* renamed from: a */
    public final void m17559a(int i) {
        this.f23205b.lock();
        boolean z = true;
        if (i != 3) {
            z = true;
            if (i != 1) {
                z = i == 2;
            }
        }
        try {
            StringBuilder sb = new StringBuilder(33);
            sb.append("Illegal sign-in mode: ");
            sb.append(i);
            Preconditions.m17283a(z, sb.toString());
            m17552b(i);
            m17545h();
        } finally {
            this.f23205b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabn
    /* renamed from: a */
    public final void mo17513a(int i, boolean z) {
        if (i == 1 && !z && !this.f23212i) {
            this.f23212i = true;
            if (this.f23217n == null && !ClientLibraryUtils.m17107a()) {
                try {
                    this.f23217n = this.f23216m.m17817a(this.f23209f.getApplicationContext(), new C3270o(this));
                } catch (SecurityException e) {
                }
            }
            HandlerC3268n nVar = this.f23215l;
            nVar.sendMessageDelayed(nVar.obtainMessage(1), this.f23213j);
            HandlerC3268n nVar2 = this.f23215l;
            nVar2.sendMessageDelayed(nVar2.obtainMessage(2), this.f23214k);
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f23227x.f23273a.toArray(new BasePendingResult[0])) {
            basePendingResult.m17714b(zacn.f23272c);
        }
        this.f23206c.m17189a(i);
        this.f23206c.m17190a();
        if (i == 2) {
            m17545h();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabn
    /* renamed from: a */
    public final void mo17512a(Bundle bundle) {
        while (!this.f23211h.isEmpty()) {
            m17557a((zaar) this.f23211h.remove());
        }
        this.f23206c.m17188a(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.zabn
    /* renamed from: a */
    public final void mo17511a(ConnectionResult connectionResult) {
        if (!this.f23216m.m17802b(this.f23209f, connectionResult.m17834f())) {
            m17547f();
        }
        if (!this.f23212i) {
            this.f23206c.m17187a(connectionResult);
            this.f23206c.m17190a();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: a */
    public final void mo17558a(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f23206c.m17185a(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: a */
    public final void mo17524a(zaci zaciVar) {
        this.f23205b.lock();
        try {
            if (this.f23226w == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.f23226w.remove(zaciVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!m17542k() && this.f23207d != null) {
                this.f23207d.mo17515c();
            }
        } finally {
            this.f23205b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: a */
    public final void mo17554a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f23209f);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f23212i);
        printWriter.append(" mWorkQueue.size()=").print(this.f23211h.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f23227x.f23273a.size());
        zabm zabmVar = this.f23207d;
        if (zabmVar != null) {
            zabmVar.mo17517a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: b */
    public final void mo17553b() {
        this.f23205b.lock();
        try {
            this.f23227x.m17490a();
            if (this.f23207d != null) {
                this.f23207d.mo17516b();
            }
            this.f23223t.m17623a();
            for (BaseImplementation.ApiMethodImpl<?, ?> apiMethodImpl : this.f23211h) {
                apiMethodImpl.m17722a((AbstractC3257h0) null);
                apiMethodImpl.mo17508a();
            }
            this.f23211h.clear();
            if (this.f23207d == null) {
                this.f23205b.unlock();
                return;
            }
            m17547f();
            this.f23206c.m17190a();
            this.f23205b.unlock();
        } catch (Throwable th) {
            this.f23205b.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public final void m17552b(int i) {
        Integer num = this.f23225v;
        if (num == null) {
            this.f23225v = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String c = m17549c(i);
            String c2 = m17549c(this.f23225v.intValue());
            StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 51 + String.valueOf(c2).length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(c);
            sb.append(". Mode was already set to ");
            sb.append(c2);
            throw new IllegalStateException(sb.toString());
        }
        if (this.f23207d == null) {
            boolean z = false;
            boolean z2 = false;
            for (Api.Client client : this.f23218o.values()) {
                boolean z3 = z;
                if (client.mo8642n()) {
                    z3 = true;
                }
                z = z3;
                if (client.mo17612e()) {
                    z2 = true;
                    z = z3;
                }
            }
            int intValue = this.f23225v.intValue();
            if (intValue != 1) {
                if (intValue == 2 && z) {
                    this.f23207d = C3269n0.m27296a(this.f23209f, this, this.f23205b, this.f23210g, this.f23216m, this.f23218o, this.f23220q, this.f23221r, this.f23222s, this.f23224u);
                    return;
                }
            } else if (!z) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            } else if (z2) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            this.f23207d = new zaaz(this.f23209f, this, this.f23205b, this.f23210g, this.f23216m, this.f23218o, this.f23220q, this.f23221r, this.f23222s, this.f23224u, this);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: b */
    public final void mo17551b(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f23206c.m17183b(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: c */
    public final Looper mo17523c() {
        return this.f23210g;
    }

    /* renamed from: e */
    public final boolean m17548e() {
        zabm zabmVar = this.f23207d;
        return zabmVar != null && zabmVar.mo17514d();
    }

    /* renamed from: f */
    public final boolean m17547f() {
        if (!this.f23212i) {
            return false;
        }
        this.f23212i = false;
        this.f23215l.removeMessages(2);
        this.f23215l.removeMessages(1);
        zabl zablVar = this.f23217n;
        if (zablVar == null) {
            return true;
        }
        zablVar.m17521a();
        this.f23217n = null;
        return true;
    }

    /* renamed from: g */
    public final String m17546g() {
        StringWriter stringWriter = new StringWriter();
        mo17554a("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    /* renamed from: h */
    public final void m17545h() {
        this.f23206c.m17184b();
        zabm zabmVar = this.f23207d;
        Preconditions.m17288a(zabmVar);
        zabmVar.mo17519a();
    }

    /* renamed from: i */
    public final void m17544i() {
        this.f23205b.lock();
        try {
            if (this.f23212i) {
                m17545h();
            }
        } finally {
            this.f23205b.unlock();
        }
    }

    /* renamed from: j */
    public final void m17543j() {
        this.f23205b.lock();
        try {
            if (m17547f()) {
                m17545h();
            }
        } finally {
            this.f23205b.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    public final boolean m17542k() {
        this.f23205b.lock();
        try {
            if (this.f23226w == null) {
                this.f23205b.unlock();
                return false;
            }
            boolean isEmpty = this.f23226w.isEmpty();
            this.f23205b.unlock();
            return !isEmpty;
        } catch (Throwable th) {
            this.f23205b.unlock();
            throw th;
        }
    }
}
