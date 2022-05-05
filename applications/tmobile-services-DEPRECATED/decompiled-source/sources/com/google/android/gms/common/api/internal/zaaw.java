package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClientEventManager;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.Common;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaw.class */
public final class zaaw extends GoogleApiClient implements zabs {

    /* renamed from: a */
    private final Lock f7181a;

    /* renamed from: b */
    private boolean f7182b;

    /* renamed from: c */
    private final GmsClientEventManager f7183c;

    /* renamed from: d */
    private zabr f7184d;

    /* renamed from: e */
    private final int f7185e;

    /* renamed from: f */
    private final Context f7186f;

    /* renamed from: g */
    private final Looper f7187g;
    @VisibleForTesting

    /* renamed from: h */
    final Queue<BaseImplementation.ApiMethodImpl<?, ?>> f7188h;

    /* renamed from: i */
    private volatile boolean f7189i;

    /* renamed from: j */
    private long f7190j;

    /* renamed from: k */
    private long f7191k;

    /* renamed from: l */
    private final zaaz f7192l;

    /* renamed from: m */
    private final GoogleApiAvailability f7193m;
    @VisibleForTesting

    /* renamed from: n */
    private zabq f7194n;

    /* renamed from: o */
    final Map<Api.AnyClientKey<?>, Api.Client> f7195o;

    /* renamed from: p */
    Set<Scope> f7196p;

    /* renamed from: q */
    private final ClientSettings f7197q;

    /* renamed from: r */
    private final Map<Api<?>, Boolean> f7198r;

    /* renamed from: s */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f7199s;

    /* renamed from: t */
    private final ListenerHolders f7200t;

    /* renamed from: u */
    private final ArrayList<zap> f7201u;

    /* renamed from: v */
    private Integer f7202v;

    /* renamed from: w */
    Set<zack> f7203w;

    /* renamed from: x */
    final zacp f7204x;

    /* renamed from: A */
    private final void m14821A(int i) {
        Integer num = this.f7202v;
        if (num == null) {
            this.f7202v = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String B = m14820B(i);
            String B2 = m14820B(this.f7202v.intValue());
            StringBuilder sb = new StringBuilder(String.valueOf(B).length() + 51 + String.valueOf(B2).length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(B);
            sb.append(". Mode was already set to ");
            sb.append(B2);
            throw new IllegalStateException(sb.toString());
        }
        if (this.f7184d == null) {
            boolean z = false;
            boolean z2 = false;
            for (Api.Client client : this.f7195o.values()) {
                boolean z3 = z;
                if (client.requiresSignIn()) {
                    z3 = true;
                }
                z = z3;
                if (client.providesSignIn()) {
                    z2 = true;
                    z = z3;
                }
            }
            int intValue = this.f7202v.intValue();
            if (intValue != 1) {
                if (intValue == 2 && z) {
                    if (this.f7182b) {
                        this.f7184d = new zav(this.f7186f, this.f7181a, this.f7187g, this.f7193m, this.f7195o, this.f7197q, this.f7198r, this.f7199s, this.f7201u, this, true);
                        return;
                    } else {
                        this.f7184d = zaq.m14709b(this.f7186f, this, this.f7181a, this.f7187g, this.f7193m, this.f7195o, this.f7197q, this.f7198r, this.f7199s, this.f7201u);
                        return;
                    }
                }
            } else if (!z) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            } else if (z2) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            if (!this.f7182b || z2) {
                this.f7184d = new zabe(this.f7186f, this, this.f7181a, this.f7187g, this.f7193m, this.f7195o, this.f7197q, this.f7198r, this.f7199s, this.f7201u, this);
            } else {
                this.f7184d = new zav(this.f7186f, this.f7181a, this.f7187g, this.f7193m, this.f7195o, this.f7197q, this.f7198r, this.f7199s, this.f7201u, this, false);
            }
        }
    }

    /* renamed from: B */
    private static String m14820B(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public final void m14812o() {
        this.f7181a.lock();
        try {
            if (this.f7189i) {
                m14807t();
            }
        } finally {
            this.f7181a.unlock();
        }
    }

    /* renamed from: p */
    public static int m14811p(Iterable<Api.Client> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.Client client : iterable) {
            boolean z4 = z2;
            if (client.requiresSignIn()) {
                z4 = true;
            }
            z2 = z4;
            if (client.providesSignIn()) {
                z3 = true;
                z2 = z4;
            }
        }
        if (z2) {
            return (!z3 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public final void m14810q(GoogleApiClient googleApiClient, StatusPendingResult statusPendingResult, boolean z) {
        Common.f7536d.mo14438a(googleApiClient).mo14771c(new zaba(this, statusPendingResult, z, googleApiClient));
    }

    @GuardedBy
    /* renamed from: t */
    private final void m14807t() {
        this.f7183c.m14554b();
        this.f7184d.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public final void m14806u() {
        this.f7181a.lock();
        try {
            if (m14805v()) {
                m14807t();
            }
        } finally {
            this.f7181a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    @GuardedBy
    /* renamed from: a */
    public final void mo14688a(ConnectionResult connectionResult) {
        if (!this.f7193m.m15061k(this.f7186f, connectionResult.m15094B())) {
            m14805v();
        }
        if (!this.f7189i) {
            this.f7183c.m14553c(connectionResult);
            this.f7183c.m14555a();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    @GuardedBy
    /* renamed from: b */
    public final void mo14687b(Bundle bundle) {
        while (!this.f7188h.isEmpty()) {
            mo14785g(this.f7188h.remove());
        }
        this.f7183c.m14552d(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    @GuardedBy
    /* renamed from: c */
    public final void mo14686c(int i, boolean z) {
        if (i == 1 && !z && !this.f7189i) {
            this.f7189i = true;
            if (this.f7194n == null && !ClientLibraryUtils.m14342a()) {
                try {
                    this.f7194n = this.f7193m.m15075w(this.f7186f.getApplicationContext(), new zabc(this));
                } catch (SecurityException e) {
                }
            }
            zaaz zaazVar = this.f7192l;
            zaazVar.sendMessageDelayed(zaazVar.obtainMessage(1), this.f7190j);
            zaaz zaazVar2 = this.f7192l;
            zaazVar2.sendMessageDelayed(zaazVar2.obtainMessage(2), this.f7191k);
        }
        this.f7204x.m14744b();
        this.f7183c.m14551e(i);
        this.f7183c.m14555a();
        if (i == 2) {
            m14807t();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: d */
    public final void mo14819d() {
        this.f7181a.lock();
        try {
            boolean z = false;
            if (this.f7185e >= 0) {
                if (this.f7202v != null) {
                    z = true;
                }
                Preconditions.m14519o(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f7202v == null) {
                this.f7202v = Integer.valueOf(m14811p(this.f7195o.values(), false));
            } else if (this.f7202v.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            m14815l(this.f7202v.intValue());
        } finally {
            this.f7181a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: e */
    public final void mo14818e() {
        this.f7181a.lock();
        try {
            this.f7204x.m14745a();
            if (this.f7184d != null) {
                this.f7184d.disconnect();
            }
            this.f7200t.m14872b();
            for (BaseImplementation.ApiMethodImpl<?, ?> apiMethodImpl : this.f7188h) {
                apiMethodImpl.m14970m(null);
                apiMethodImpl.mo14772b();
            }
            this.f7188h.clear();
            if (this.f7184d != null) {
                m14805v();
                this.f7183c.m14555a();
            }
        } finally {
            this.f7181a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: f */
    public final void mo14817f(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f7186f);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f7189i);
        printWriter.append(" mWorkQueue.size()=").print(this.f7188h.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f7204x.f7285a.size());
        zabr zabrVar = this.f7184d;
        if (zabrVar != null) {
            zabrVar.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: g */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14785g(@NonNull T t) {
        Preconditions.m14532b(t.m14983v() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.f7195o.containsKey(t.m14983v());
        String b = t.m14984u() != null ? t.m14984u().m15032b() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(b);
        sb.append(" required for this call.");
        Preconditions.m14532b(containsKey, sb.toString());
        this.f7181a.lock();
        try {
            if (this.f7184d == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            } else if (!this.f7189i) {
                return (T) this.f7184d.mo14681d(t);
            } else {
                this.f7188h.add(t);
                while (!this.f7188h.isEmpty()) {
                    BaseImplementation.ApiMethodImpl<?, ?> remove = this.f7188h.remove();
                    this.f7204x.m14743c(remove);
                    remove.m14979z(Status.f7025l);
                }
                return t;
            }
        } finally {
            this.f7181a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: h */
    public final Looper mo14784h() {
        return this.f7187g;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: i */
    public final void mo14816i(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f7183c.m14550f(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: j */
    public final void mo14783j(zack zackVar) {
        this.f7181a.lock();
        try {
            if (this.f7203w == null) {
                this.f7203w = new HashSet();
            }
            this.f7203w.add(zackVar);
        } finally {
            this.f7181a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: k */
    public final void mo14782k(zack zackVar) {
        this.f7181a.lock();
        try {
            if (this.f7203w == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.f7203w.remove(zackVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!m14804w()) {
                this.f7184d.mo14680e();
            }
        } finally {
            this.f7181a.unlock();
        }
    }

    /* renamed from: l */
    public final void m14815l(int i) {
        this.f7181a.lock();
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
            Preconditions.m14532b(z, sb.toString());
            m14821A(i);
            m14807t();
        } finally {
            this.f7181a.unlock();
        }
    }

    /* renamed from: m */
    public final boolean m14814m() {
        zabr zabrVar = this.f7184d;
        return zabrVar != null && zabrVar.isConnected();
    }

    /* renamed from: n */
    public final void m14813n() {
        mo14818e();
        mo14819d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @GuardedBy
    /* renamed from: v */
    public final boolean m14805v() {
        if (!this.f7189i) {
            return false;
        }
        this.f7189i = false;
        this.f7192l.removeMessages(2);
        this.f7192l.removeMessages(1);
        zabq zabqVar = this.f7194n;
        if (zabqVar == null) {
            return true;
        }
        zabqVar.m14781a();
        this.f7194n = null;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* renamed from: w */
    public final boolean m14804w() {
        this.f7181a.lock();
        try {
            if (this.f7203w == null) {
                this.f7181a.unlock();
                return false;
            }
            boolean isEmpty = this.f7203w.isEmpty();
            this.f7181a.unlock();
            return !isEmpty;
        } catch (Throwable th) {
            this.f7181a.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public final String m14803x() {
        StringWriter stringWriter = new StringWriter();
        mo14817f("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }
}
