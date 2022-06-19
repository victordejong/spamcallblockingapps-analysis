package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zaag;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zabd;
import com.google.android.gms.common.api.internal.zabu;
import com.google.android.gms.common.api.internal.zas;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zae;
import com.tenor.android.core.constant.StringConstant;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import p1727n3.p1788g.AbstractC26181g;
import p1727n3.p1788g.C26174a;
/* renamed from: e.m.a.f.e.a.a.x0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/x0.class */
public final class C24954x0 implements zabu {

    /* renamed from: a */
    public final Context f69881a;

    /* renamed from: b */
    public final zaaz f69882b;

    /* renamed from: c */
    public final Looper f69883c;

    /* renamed from: d */
    public final zabd f69884d;

    /* renamed from: e */
    public final zabd f69885e;

    /* renamed from: f */
    public final Map<Api.AnyClientKey<?>, zabd> f69886f;

    /* renamed from: h */
    public final Api.Client f69888h;

    /* renamed from: i */
    public Bundle f69889i;

    /* renamed from: m */
    public final Lock f69893m;

    /* renamed from: g */
    public final Set<SignInConnectionListener> f69887g = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: j */
    public ConnectionResult f69890j = null;

    /* renamed from: k */
    public ConnectionResult f69891k = null;

    /* renamed from: l */
    public boolean f69892l = false;

    /* renamed from: n */
    public int f69894n = 0;

    public C24954x0(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zas> arrayList, ArrayList<zas> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.f69881a = context;
        this.f69882b = zaazVar;
        this.f69893m = lock;
        this.f69883c = looper;
        this.f69888h = client;
        this.f69884d = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new C24950v0(this));
        this.f69885e = new zabd(context, zaazVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new C24952w0(this));
        C26174a c26174a = new C26174a();
        Iterator it = ((AbstractC26181g.C26184c) ((C26174a) map2).keySet()).iterator();
        while (true) {
            AbstractC26181g.C26182a c26182a = (AbstractC26181g.C26182a) it;
            if (!c26182a.hasNext()) {
                break;
            }
            c26174a.put((Api.AnyClientKey) c26182a.next(), this.f69884d);
        }
        Iterator it2 = ((AbstractC26181g.C26184c) ((C26174a) map).keySet()).iterator();
        while (true) {
            AbstractC26181g.C26182a c26182a2 = (AbstractC26181g.C26182a) it2;
            if (!c26182a2.hasNext()) {
                this.f69886f = Collections.unmodifiableMap(c26174a);
                return;
            }
            c26174a.put((Api.AnyClientKey) c26182a2.next(), this.f69885e);
        }
    }

    /* renamed from: p */
    public static boolean m4260p(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.m39076p2();
    }

    /* renamed from: q */
    public static void m4259q(C24954x0 c24954x0) {
        ConnectionResult connectionResult;
        if (!m4260p(c24954x0.f69890j)) {
            if (c24954x0.f69890j != null && m4260p(c24954x0.f69891k)) {
                c24954x0.f69885e.mo4275a();
                ConnectionResult connectionResult2 = c24954x0.f69890j;
                Objects.requireNonNull(connectionResult2, "null reference");
                c24954x0.m4258r(connectionResult2);
                return;
            }
            ConnectionResult connectionResult3 = c24954x0.f69890j;
            if (connectionResult3 == null || (connectionResult = c24954x0.f69891k) == null) {
                return;
            }
            if (c24954x0.f69885e.f5845m < c24954x0.f69884d.f5845m) {
                connectionResult3 = connectionResult;
            }
            c24954x0.m4258r(connectionResult3);
        } else if (!m4260p(c24954x0.f69891k) && !c24954x0.m4263m()) {
            ConnectionResult connectionResult4 = c24954x0.f69891k;
            if (connectionResult4 == null) {
                return;
            }
            if (c24954x0.f69894n == 1) {
                c24954x0.m4264l();
                return;
            }
            c24954x0.m4258r(connectionResult4);
            c24954x0.f69884d.mo4275a();
        } else {
            int i = c24954x0.f69894n;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                    c24954x0.f69894n = 0;
                }
                zaaz zaazVar = c24954x0.f69882b;
                Objects.requireNonNull(zaazVar, "null reference");
                zaazVar.mo4278b(c24954x0.f69889i);
            }
            c24954x0.m4264l();
            c24954x0.f69894n = 0;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: a */
    public final void mo4275a() {
        this.f69891k = null;
        this.f69890j = null;
        this.f69894n = 0;
        this.f69884d.mo4275a();
        this.f69885e.mo4275a();
        m4264l();
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: b */
    public final boolean mo4274b(SignInConnectionListener signInConnectionListener) {
        this.f69893m.lock();
        try {
            if ((!mo4267i() && !mo4268h()) || (this.f69885e.f5843k instanceof zaag)) {
                this.f69893m.unlock();
                return false;
            }
            this.f69887g.add(signInConnectionListener);
            if (this.f69894n == 0) {
                this.f69894n = 1;
            }
            this.f69891k = null;
            this.f69885e.f5843k.mo38983c();
            this.f69893m.unlock();
            return true;
        } catch (Throwable th) {
            this.f69893m.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: c */
    public final void mo4273c() {
        this.f69894n = 2;
        this.f69892l = false;
        this.f69891k = null;
        this.f69890j = null;
        this.f69884d.f5843k.mo38983c();
        this.f69885e.f5843k.mo38983c();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo4272d(T t) {
        if (m4262n(t)) {
            if (!m4263m()) {
                return (T) this.f69885e.mo4272d(t);
            }
            t.setFailedResult(new Status(4, null, m4261o()));
            return t;
        }
        return (T) this.f69884d.mo4272d(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: e */
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo4271e(T t) {
        if (!m4262n(t)) {
            this.f69884d.mo4271e(t);
            return t;
        } else if (m4263m()) {
            t.setFailedResult(new Status(4, null, m4261o()));
            return t;
        } else {
            this.f69885e.mo4271e(t);
            return t;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: f */
    public final void mo4270f() {
        this.f69884d.mo4270f();
        this.f69885e.mo4270f();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: g */
    public final void mo4269g() {
        this.f69893m.lock();
        try {
            boolean mo4267i = mo4267i();
            this.f69885e.mo4275a();
            this.f69891k = new ConnectionResult(4);
            if (mo4267i) {
                new zap(this.f69883c).post(new RunnableC24948u0(this));
            } else {
                m4264l();
            }
        } finally {
            this.f69893m.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        if (r3.f69894n == 1) goto L13;
     */
    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4268h() {
        /*
            r3 = this;
            r0 = r3
            java.util.concurrent.locks.Lock r0 = r0.f69893m
            r0.lock()
            r0 = r3
            com.google.android.gms.common.api.internal.zabd r0 = r0.f69884d     // Catch: java.lang.Throwable -> L4b
            com.google.android.gms.common.api.internal.zaba r0 = r0.f5843k     // Catch: java.lang.Throwable -> L4b
            boolean r0 = r0 instanceof com.google.android.gms.common.api.internal.zaag     // Catch: java.lang.Throwable -> L4b
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L40
            r0 = r3
            com.google.android.gms.common.api.internal.zabd r0 = r0.f69885e     // Catch: java.lang.Throwable -> L4b
            com.google.android.gms.common.api.internal.zaba r0 = r0.f5843k     // Catch: java.lang.Throwable -> L4b
            boolean r0 = r0 instanceof com.google.android.gms.common.api.internal.zaag     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L3e
            r0 = r3
            boolean r0 = r0.m4263m()     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L3e
            r0 = r3
            int r0 = r0.f69894n     // Catch: java.lang.Throwable -> L4b
            r7 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L40
        L3e:
            r0 = 1
            r6 = r0
        L40:
            r0 = r3
            java.util.concurrent.locks.Lock r0 = r0.f69893m
            r0.unlock()
            r0 = r6
            return r0
        L4b:
            r8 = move-exception
            r0 = r3
            java.util.concurrent.locks.Lock r0 = r0.f69893m
            r0.unlock()
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24954x0.mo4268h():boolean");
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: i */
    public final boolean mo4267i() {
        this.f69893m.lock();
        try {
            boolean z = this.f69894n == 2;
            this.f69893m.unlock();
            return z;
        } catch (Throwable th) {
            this.f69893m.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: j */
    public final void mo4266j(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(StringConstant.COLON);
        this.f69885e.mo4266j(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(StringConstant.COLON);
        this.f69884d.mo4266j(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: k */
    public final ConnectionResult mo4265k(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: l */
    public final void m4264l() {
        for (SignInConnectionListener signInConnectionListener : this.f69887g) {
            signInConnectionListener.mo39018a();
        }
        this.f69887g.clear();
    }

    /* renamed from: m */
    public final boolean m4263m() {
        ConnectionResult connectionResult = this.f69891k;
        return connectionResult != null && connectionResult.f5663b == 4;
    }

    /* renamed from: n */
    public final boolean m4262n(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        zabd zabdVar = this.f69886f.get(apiMethodImpl.getClientKey());
        Preconditions.m38897k(zabdVar, "GoogleApiClient is not configured to use the API required for this call.");
        return zabdVar.equals(this.f69885e);
    }

    /* renamed from: o */
    public final PendingIntent m4261o() {
        if (this.f69888h == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f69881a, System.identityHashCode(this.f69882b), this.f69888h.getSignInIntent(), 134217728);
    }

    /* renamed from: r */
    public final void m4258r(ConnectionResult connectionResult) {
        int i = this.f69894n;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f69894n = 0;
            }
            this.f69882b.mo4277c(connectionResult);
        }
        m4264l();
        this.f69894n = 0;
    }
}
