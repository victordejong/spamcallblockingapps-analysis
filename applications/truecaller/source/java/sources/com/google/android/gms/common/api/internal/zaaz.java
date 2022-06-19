package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zaj;
import com.google.android.gms.common.internal.zak;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zae;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24933n;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24937p;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24954x0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.HandlerC24935o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaaz.class */
public final class zaaz extends GoogleApiClient implements zabt {

    /* renamed from: b */
    public final Lock f5809b;

    /* renamed from: c */
    public final zak f5810c;

    /* renamed from: e */
    public final int f5812e;

    /* renamed from: f */
    public final Context f5813f;

    /* renamed from: g */
    public final Looper f5814g;

    /* renamed from: i */
    public volatile boolean f5816i;

    /* renamed from: l */
    public final HandlerC24935o f5819l;

    /* renamed from: m */
    public final GoogleApiAvailability f5820m;
    @VisibleForTesting

    /* renamed from: n */
    public zabr f5821n;

    /* renamed from: o */
    public final Map<Api.AnyClientKey<?>, Api.Client> f5822o;

    /* renamed from: q */
    public final ClientSettings f5824q;

    /* renamed from: r */
    public final Map<Api<?>, Boolean> f5825r;

    /* renamed from: s */
    public final Api.AbstractClientBuilder<? extends zae, SignInOptions> f5826s;

    /* renamed from: u */
    public final ArrayList<zas> f5828u;

    /* renamed from: v */
    public Integer f5829v;

    /* renamed from: x */
    public final zacx f5831x;

    /* renamed from: y */
    public final zaj f5832y;

    /* renamed from: d */
    public zabu f5811d = null;
    @VisibleForTesting

    /* renamed from: h */
    public final Queue<BaseImplementation.ApiMethodImpl<?, ?>> f5815h = new LinkedList();

    /* renamed from: j */
    public long f5817j = 120000;

    /* renamed from: k */
    public long f5818k = 5000;

    /* renamed from: p */
    public Set<Scope> f5823p = new HashSet();

    /* renamed from: t */
    public final ListenerHolders f5827t = new ListenerHolders();

    /* renamed from: w */
    public Set<zacv> f5830w = null;

    public zaaz(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder, Map<Api<?>, Boolean> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.AnyClientKey<?>, Api.Client> map2, int i, int i2, ArrayList<zas> arrayList) {
        this.f5829v = null;
        C24933n c24933n = new C24933n(this);
        this.f5832y = c24933n;
        this.f5813f = context;
        this.f5809b = lock;
        this.f5810c = new zak(looper, c24933n);
        this.f5814g = looper;
        this.f5819l = new HandlerC24935o(this, looper);
        this.f5820m = googleApiAvailability;
        this.f5812e = i;
        if (i >= 0) {
            this.f5829v = Integer.valueOf(i2);
        }
        this.f5825r = map;
        this.f5822o = map2;
        this.f5828u = arrayList;
        this.f5831x = new zacx();
        for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : list) {
            this.f5810c.m38827b(connectionCallbacks);
        }
        for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : list2) {
            this.f5810c.m38826c(onConnectionFailedListener);
        }
        this.f5824q = clientSettings;
        this.f5826s = abstractClientBuilder;
    }

    /* renamed from: w */
    public static int m38989w(Iterable<Api.Client> iterable, boolean z) {
        boolean z2;
        Iterator<Api.Client> it = iterable.iterator();
        boolean z3 = false;
        boolean z4 = false;
        while (true) {
            z2 = z4;
            if (!it.hasNext()) {
                break;
            }
            Api.Client next = it.next();
            z3 |= next.requiresSignIn();
            z4 = z2 | next.providesSignIn();
        }
        if (z3) {
            return (!z2 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* renamed from: x */
    public static String m38988x(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    /* renamed from: y */
    public static /* synthetic */ void m38987y(zaaz zaazVar) {
        zaazVar.f5809b.lock();
        try {
            if (zaazVar.f5816i) {
                zaazVar.m39002A();
            }
        } finally {
            zaazVar.f5809b.unlock();
        }
    }

    /* renamed from: A */
    public final void m39002A() {
        this.f5810c.f6019e = true;
        zabu zabuVar = this.f5811d;
        Objects.requireNonNull(zabuVar, "null reference");
        zabuVar.mo4273c();
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: a */
    public final void mo4279a(int i, boolean z) {
        int i2 = i;
        if (i == 1) {
            if (!z && !this.f5816i) {
                this.f5816i = true;
                if (this.f5821n == null) {
                    try {
                        this.f5821n = this.f5820m.m39069i(this.f5813f.getApplicationContext(), new C24937p(this));
                    } catch (SecurityException e) {
                    }
                }
                HandlerC24935o handlerC24935o = this.f5819l;
                handlerC24935o.sendMessageDelayed(handlerC24935o.obtainMessage(1), this.f5817j);
                HandlerC24935o handlerC24935o2 = this.f5819l;
                handlerC24935o2.sendMessageDelayed(handlerC24935o2.obtainMessage(2), this.f5818k);
            }
            i2 = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f5831x.f5889a.toArray(new BasePendingResult[0])) {
            basePendingResult.forceFailureUnlessReady(zacx.f5888c);
        }
        zak zakVar = this.f5810c;
        Preconditions.m38903e(zakVar.f6022h, "onUnintentionalDisconnection must only be called on the Handler thread");
        zakVar.f6022h.removeMessages(1);
        synchronized (zakVar.f6023i) {
            zakVar.f6021g = true;
            ArrayList arrayList = new ArrayList(zakVar.f6016b);
            int i3 = zakVar.f6020f.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!zakVar.f6019e || zakVar.f6020f.get() != i3) {
                    break;
                } else if (zakVar.f6016b.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i2);
                }
            }
            zakVar.f6017c.clear();
            zakVar.f6021g = false;
        }
        this.f5810c.m38828a();
        if (i2 == 2) {
            m39002A();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: b */
    public final void mo4278b(Bundle bundle) {
        while (!this.f5815h.isEmpty()) {
            mo38956i(this.f5815h.remove());
        }
        zak zakVar = this.f5810c;
        Preconditions.m38903e(zakVar.f6022h, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (zakVar.f6023i) {
            boolean z = true;
            Preconditions.m38896l(!zakVar.f6021g);
            zakVar.f6022h.removeMessages(1);
            zakVar.f6021g = true;
            if (zakVar.f6017c.size() != 0) {
                z = false;
            }
            Preconditions.m38896l(z);
            ArrayList arrayList = new ArrayList(zakVar.f6016b);
            int i = zakVar.f6020f.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!zakVar.f6019e || !zakVar.f6015a.isConnected() || zakVar.f6020f.get() != i) {
                    break;
                } else if (!zakVar.f6017c.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            zakVar.f6017c.clear();
            zakVar.f6021g = false;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    /* renamed from: c */
    public final void mo4277c(ConnectionResult connectionResult) {
        GoogleApiAvailability googleApiAvailability = this.f5820m;
        Context context = this.f5813f;
        int i = connectionResult.f5663b;
        Objects.requireNonNull(googleApiAvailability);
        if (!GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i)) {
            m38990v();
        }
        if (!this.f5816i) {
            zak zakVar = this.f5810c;
            Preconditions.m38903e(zakVar.f6022h, "onConnectionFailure must only be called on the Handler thread");
            zakVar.f6022h.removeMessages(1);
            synchronized (zakVar.f6023i) {
                ArrayList arrayList = new ArrayList(zakVar.f6018d);
                int i2 = zakVar.f6020f.get();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) it.next();
                    if (zakVar.f6019e && zakVar.f6020f.get() == i2) {
                        if (zakVar.f6018d.contains(onConnectionFailedListener)) {
                            onConnectionFailedListener.onConnectionFailed(connectionResult);
                        }
                    }
                }
            }
            this.f5810c.m38828a();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: d */
    public final ConnectionResult mo39001d(long j, TimeUnit timeUnit) {
        Preconditions.m38895m(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        Preconditions.m38897k(timeUnit, "TimeUnit must not be null");
        this.f5809b.lock();
        try {
            Integer num = this.f5829v;
            if (num == null) {
                this.f5829v = Integer.valueOf(m38989w(this.f5822o.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            Integer num2 = this.f5829v;
            Objects.requireNonNull(num2, "null reference");
            m38986z(num2.intValue());
            this.f5810c.f6019e = true;
            zabu zabuVar = this.f5811d;
            Objects.requireNonNull(zabuVar, "null reference");
            return zabuVar.mo4265k(j, timeUnit);
        } finally {
            this.f5809b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: e */
    public final void mo39000e() {
        boolean z;
        this.f5809b.lock();
        try {
            if (this.f5812e >= 0) {
                Preconditions.m38895m(this.f5829v != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f5829v;
                if (num == null) {
                    this.f5829v = Integer.valueOf(m38989w(this.f5822o.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            Integer num2 = this.f5829v;
            Objects.requireNonNull(num2, "null reference");
            int intValue = num2.intValue();
            this.f5809b.lock();
            if (intValue != 3 && intValue != 1) {
                if (intValue != 2) {
                    z = false;
                    StringBuilder sb = new StringBuilder(33);
                    sb.append("Illegal sign-in mode: ");
                    sb.append(intValue);
                    Preconditions.m38906b(z, sb.toString());
                    m38986z(intValue);
                    m39002A();
                    this.f5809b.unlock();
                }
                intValue = 2;
            }
            z = true;
            StringBuilder sb2 = new StringBuilder(33);
            sb2.append("Illegal sign-in mode: ");
            sb2.append(intValue);
            Preconditions.m38906b(z, sb2.toString());
            m38986z(intValue);
            m39002A();
            this.f5809b.unlock();
        } finally {
            this.f5809b.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: f */
    public final void mo38999f() {
        Lock lock;
        this.f5809b.lock();
        try {
            this.f5831x.m38942a();
            zabu zabuVar = this.f5811d;
            if (zabuVar != null) {
                zabuVar.mo4275a();
            }
            ListenerHolders listenerHolders = this.f5827t;
            for (ListenerHolder<?> listenerHolder : listenerHolders.f5768a) {
                listenerHolder.m39023a();
            }
            listenerHolders.f5768a.clear();
            for (BaseImplementation.ApiMethodImpl<?, ?> apiMethodImpl : this.f5815h) {
                apiMethodImpl.zan(null);
                apiMethodImpl.cancel();
            }
            this.f5815h.clear();
            if (this.f5811d == null) {
                lock = this.f5809b;
            } else {
                m38990v();
                this.f5810c.m38828a();
                lock = this.f5809b;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.f5809b.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: g */
    public final void mo38998g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f5813f);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f5816i);
        printWriter.append(" mWorkQueue.size()=").print(this.f5815h.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f5831x.f5889a.size());
        zabu zabuVar = this.f5811d;
        if (zabuVar != null) {
            zabuVar.mo4266j(str, fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl] */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: h */
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo38957h(T t) {
        Lock lock;
        Api<?> api = t.getApi();
        boolean containsKey = this.f5822o.containsKey(t.getClientKey());
        String str = api != null ? api.f5691c : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(str);
        sb.append(" required for this call.");
        Preconditions.m38906b(containsKey, sb.toString());
        this.f5809b.lock();
        try {
            zabu zabuVar = this.f5811d;
            if (zabuVar == null) {
                this.f5815h.add(t);
                lock = this.f5809b;
            } else {
                t = zabuVar.mo4271e(t);
                lock = this.f5809b;
            }
            lock.unlock();
            return t;
        } catch (Throwable th) {
            this.f5809b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.common.api.internal.BaseImplementation$ApiMethodImpl] */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: i */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo38956i(T t) {
        Lock lock;
        Api<?> api = t.getApi();
        boolean containsKey = this.f5822o.containsKey(t.getClientKey());
        String str = api != null ? api.f5691c : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(str);
        sb.append(" required for this call.");
        Preconditions.m38906b(containsKey, sb.toString());
        this.f5809b.lock();
        try {
            zabu zabuVar = this.f5811d;
            if (zabuVar == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (this.f5816i) {
                this.f5815h.add(t);
                while (!this.f5815h.isEmpty()) {
                    BaseImplementation.ApiMethodImpl<?, ?> remove = this.f5815h.remove();
                    zacx zacxVar = this.f5831x;
                    zacxVar.f5889a.add(remove);
                    remove.zan(zacxVar.f5890b);
                    remove.setFailedResult(Status.f5724h);
                }
                lock = this.f5809b;
            } else {
                t = zabuVar.mo4272d(t);
                lock = this.f5809b;
            }
            lock.unlock();
            return t;
        } catch (Throwable th) {
            this.f5809b.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: k */
    public final <C extends Api.Client> C mo38997k(Api.AnyClientKey<C> anyClientKey) {
        C c = (C) this.f5822o.get(anyClientKey);
        Preconditions.m38897k(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: l */
    public final Context mo38955l() {
        return this.f5813f;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: m */
    public final Looper mo38954m() {
        return this.f5814g;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: n */
    public final boolean mo38996n() {
        zabu zabuVar = this.f5811d;
        return zabuVar != null && zabuVar.mo4268h();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: o */
    public final boolean mo38995o() {
        zabu zabuVar = this.f5811d;
        return zabuVar != null && zabuVar.mo4267i();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: p */
    public final boolean mo38994p(SignInConnectionListener signInConnectionListener) {
        zabu zabuVar = this.f5811d;
        return zabuVar != null && zabuVar.mo4274b(signInConnectionListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: q */
    public final void mo38993q() {
        zabu zabuVar = this.f5811d;
        if (zabuVar != null) {
            zabuVar.mo4269g();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: r */
    public final void mo38992r(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zak zakVar = this.f5810c;
        Objects.requireNonNull(zakVar);
        Objects.requireNonNull(connectionCallbacks, "null reference");
        synchronized (zakVar.f6023i) {
            if (!zakVar.f6016b.remove(connectionCallbacks)) {
                String.valueOf(connectionCallbacks).length();
            } else if (zakVar.f6021g) {
                zakVar.f6017c.add(connectionCallbacks);
            }
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: s */
    public final void mo38991s(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zak zakVar = this.f5810c;
        Objects.requireNonNull(zakVar);
        Objects.requireNonNull(onConnectionFailedListener, "null reference");
        synchronized (zakVar.f6023i) {
            if (!zakVar.f6018d.remove(onConnectionFailedListener)) {
                String.valueOf(onConnectionFailedListener).length();
            }
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: t */
    public final void mo38953t(zacv zacvVar) {
        this.f5809b.lock();
        try {
            if (this.f5830w == null) {
                this.f5830w = new HashSet();
            }
            this.f5830w.add(zacvVar);
        } finally {
            this.f5809b.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0079, code lost:
        if ((!r0) == false) goto L19;
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo38952u(com.google.android.gms.common.api.internal.zacv r5) {
        /*
            r4 = this;
            r0 = r4
            java.util.concurrent.locks.Lock r0 = r0.f5809b
            r0.lock()
            r0 = r4
            java.util.Set<com.google.android.gms.common.api.internal.zacv> r0 = r0.f5830w     // Catch: java.lang.Throwable -> La1
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L28
            java.lang.Exception r0 = new java.lang.Exception     // Catch: java.lang.Throwable -> La1
            r5 = r0
            r0 = r5
            r0.<init>()     // Catch: java.lang.Throwable -> La1
            java.lang.String r0 = "GoogleApiClientImpl"
            java.lang.String r1 = "Attempted to remove pending transform when no transforms are registered."
            r2 = r5
            int r0 = android.util.Log.wtf(r0, r1, r2)     // Catch: java.lang.Throwable -> La1
            goto L8b
        L28:
            r0 = r6
            r1 = r5
            boolean r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> La1
            if (r0 != 0) goto L48
            java.lang.Exception r0 = new java.lang.Exception     // Catch: java.lang.Throwable -> La1
            r5 = r0
            r0 = r5
            r0.<init>()     // Catch: java.lang.Throwable -> La1
            java.lang.String r0 = "GoogleApiClientImpl"
            java.lang.String r1 = "Failed to remove pending transform - this may lead to memory leaks!"
            r2 = r5
            int r0 = android.util.Log.wtf(r0, r1, r2)     // Catch: java.lang.Throwable -> La1
            goto L8b
        L48:
            r0 = r4
            java.util.concurrent.locks.Lock r0 = r0.f5809b     // Catch: java.lang.Throwable -> La1
            r0.lock()     // Catch: java.lang.Throwable -> La1
            r0 = r4
            java.util.Set<com.google.android.gms.common.api.internal.zacv> r0 = r0.f5830w     // Catch: java.lang.Throwable -> L95
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L66
            r0 = r4
            java.util.concurrent.locks.Lock r0 = r0.f5809b     // Catch: java.lang.Throwable -> La1
            r0.unlock()     // Catch: java.lang.Throwable -> La1
            goto L7c
        L66:
            r0 = r5
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L95
            r7 = r0
            r0 = r4
            java.util.concurrent.locks.Lock r0 = r0.f5809b     // Catch: java.lang.Throwable -> La1
            r0.unlock()     // Catch: java.lang.Throwable -> La1
            r0 = r7
            r1 = 1
            r0 = r0 ^ r1
            if (r0 != 0) goto L8b
        L7c:
            r0 = r4
            com.google.android.gms.common.api.internal.zabu r0 = r0.f5811d     // Catch: java.lang.Throwable -> La1
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L8b
            r0 = r5
            r0.mo4270f()     // Catch: java.lang.Throwable -> La1
        L8b:
            r0 = r4
            java.util.concurrent.locks.Lock r0 = r0.f5809b
            r0.unlock()
            return
        L95:
            r5 = move-exception
            r0 = r4
            java.util.concurrent.locks.Lock r0 = r0.f5809b     // Catch: java.lang.Throwable -> La1
            r0.unlock()     // Catch: java.lang.Throwable -> La1
            r0 = r5
            throw r0     // Catch: java.lang.Throwable -> La1
        La1:
            r5 = move-exception
            r0 = r4
            java.util.concurrent.locks.Lock r0 = r0.f5809b
            r0.unlock()
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zaaz.mo38952u(com.google.android.gms.common.api.internal.zacv):void");
    }

    /* renamed from: v */
    public final boolean m38990v() {
        if (!this.f5816i) {
            return false;
        }
        this.f5816i = false;
        this.f5819l.removeMessages(2);
        this.f5819l.removeMessages(1);
        zabr zabrVar = this.f5821n;
        if (zabrVar == null) {
            return true;
        }
        zabrVar.m38951a();
        this.f5821n = null;
        return true;
    }

    /* renamed from: z */
    public final void m38986z(int i) {
        boolean z;
        Integer num = this.f5829v;
        if (num == null) {
            this.f5829v = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String m38988x = m38988x(i);
            String m38988x2 = m38988x(this.f5829v.intValue());
            throw new IllegalStateException(C22128a.m8606k(new StringBuilder(m38988x.length() + 51 + m38988x2.length()), "Cannot use sign-in mode: ", m38988x, ". Mode was already set to ", m38988x2));
        }
        if (this.f5811d != null) {
            return;
        }
        Iterator<Api.Client> it = this.f5822o.values().iterator();
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            z = z3;
            if (!it.hasNext()) {
                break;
            }
            Api.Client next = it.next();
            z2 |= next.requiresSignIn();
            z3 = z | next.providesSignIn();
        }
        int intValue = this.f5829v.intValue();
        if (intValue != 1) {
            if (intValue == 2 && z2) {
                Context context = this.f5813f;
                Lock lock = this.f5809b;
                Looper looper = this.f5814g;
                GoogleApiAvailability googleApiAvailability = this.f5820m;
                Map<Api.AnyClientKey<?>, Api.Client> map = this.f5822o;
                ClientSettings clientSettings = this.f5824q;
                Map<Api<?>, Boolean> map2 = this.f5825r;
                Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder = this.f5826s;
                ArrayList<zas> arrayList = this.f5828u;
                C26174a c26174a = new C26174a();
                C26174a c26174a2 = new C26174a();
                Api.Client client = null;
                for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
                    Api.Client value = entry.getValue();
                    if (true == value.providesSignIn()) {
                        client = value;
                    }
                    if (value.requiresSignIn()) {
                        c26174a.put(entry.getKey(), value);
                    } else {
                        c26174a2.put(entry.getKey(), value);
                    }
                }
                Preconditions.m38895m(!c26174a.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
                C26174a c26174a3 = new C26174a();
                C26174a c26174a4 = new C26174a();
                for (Api<?> api : map2.keySet()) {
                    Api.ClientKey<?> clientKey = api.f5690b;
                    if (c26174a.containsKey(clientKey)) {
                        c26174a3.put(api, map2.get(api));
                    } else if (!c26174a2.containsKey(clientKey)) {
                        throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
                    } else {
                        c26174a4.put(api, map2.get(api));
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    zas zasVar = arrayList.get(i2);
                    if (c26174a3.containsKey(zasVar.f5903a)) {
                        arrayList2.add(zasVar);
                    } else if (!c26174a4.containsKey(zasVar.f5903a)) {
                        throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
                    } else {
                        arrayList3.add(zasVar);
                    }
                }
                this.f5811d = new C24954x0(context, this, lock, looper, googleApiAvailability, c26174a, c26174a2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, c26174a3, c26174a4);
                return;
            }
        } else if (!z2) {
            throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
        } else {
            if (z) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
        }
        this.f5811d = new zabd(this.f5813f, this, this.f5809b, this.f5814g, this.f5820m, this.f5822o, this.f5824q, this.f5825r, this.f5826s, this.f5828u, this);
    }
}
