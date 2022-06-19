package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.zap;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zae;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p1727n3.p1788g.C26174a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24906a0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24953x;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24955y;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24918f0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24947u;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24949v;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabl.class */
public final class zabl<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zat {
    @NotOnlyInitialized

    /* renamed from: b */
    public final Api.Client f5850b;

    /* renamed from: c */
    public final ApiKey<O> f5851c;

    /* renamed from: g */
    public final int f5855g;

    /* renamed from: h */
    public final zaco f5856h;

    /* renamed from: i */
    public boolean f5857i;

    /* renamed from: m */
    public final /* synthetic */ GoogleApiManager f5861m;

    /* renamed from: a */
    public final Queue<zai> f5849a = new LinkedList();

    /* renamed from: e */
    public final Set<zal> f5853e = new HashSet();

    /* renamed from: f */
    public final Map<ListenerHolder.ListenerKey<?>, zacc> f5854f = new HashMap();

    /* renamed from: j */
    public final List<C24955y> f5858j = new ArrayList();

    /* renamed from: k */
    public ConnectionResult f5859k = null;

    /* renamed from: l */
    public int f5860l = 0;

    /* renamed from: d */
    public final zaaa f5852d = new zaaa();

    public zabl(GoogleApiManager googleApiManager, GoogleApi<O> googleApi) {
        this.f5861m = googleApiManager;
        Api.Client zaa = googleApi.zaa(googleApiManager.f5759n.getLooper(), this);
        this.f5850b = zaa;
        this.f5851c = googleApi.getApiKey();
        this.f5855g = googleApi.zab();
        if (zaa.requiresSignIn()) {
            this.f5856h = googleApi.zac(googleApiManager.f5750e, googleApiManager.f5759n);
        } else {
            this.f5856h = null;
        }
    }

    /* renamed from: a */
    public final void m38976a() {
        m38960q();
        m38965l(ConnectionResult.f5661e);
        m38968i();
        Iterator<zacc> it = this.f5854f.values().iterator();
        while (it.hasNext()) {
            zacc next = it.next();
            if (m38964m(next.f5868a.f5770b) != null) {
                it.remove();
            } else {
                try {
                    next.f5868a.m39019a(this.f5850b, new TaskCompletionSource<>());
                } catch (DeadObjectException e) {
                    onConnectionSuspended(3);
                    this.f5850b.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException e2) {
                    it.remove();
                }
            }
        }
        m38973d();
        m38967j();
    }

    /* renamed from: b */
    public final void m38975b(int i) {
        m38960q();
        this.f5857i = true;
        zaaa zaaaVar = this.f5852d;
        String lastDisconnectMessage = this.f5850b.getLastDisconnectMessage();
        Objects.requireNonNull(zaaaVar);
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (lastDisconnectMessage != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(lastDisconnectMessage);
        }
        zaaaVar.m39013a(true, new Status(20, sb.toString()));
        Handler handler = this.f5861m.f5759n;
        Message obtain = Message.obtain(handler, 9, this.f5851c);
        Objects.requireNonNull(this.f5861m);
        handler.sendMessageDelayed(obtain, 5000L);
        Handler handler2 = this.f5861m.f5759n;
        Message obtain2 = Message.obtain(handler2, 11, this.f5851c);
        Objects.requireNonNull(this.f5861m);
        handler2.sendMessageDelayed(obtain2, 120000L);
        this.f5861m.f5752g.f6024a.clear();
        for (zacc zaccVar : this.f5854f.values()) {
            zaccVar.f5870c.run();
        }
    }

    /* renamed from: c */
    public final boolean m38974c(ConnectionResult connectionResult) {
        synchronized (GoogleApiManager.f5744r) {
            GoogleApiManager googleApiManager = this.f5861m;
            if (googleApiManager.f5756k == null || !googleApiManager.f5757l.contains(this.f5851c)) {
                return false;
            }
            this.f5861m.f5756k.m38926o(connectionResult, this.f5855g);
            return true;
        }
    }

    /* renamed from: d */
    public final void m38973d() {
        ArrayList arrayList = new ArrayList(this.f5849a);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zai zaiVar = (zai) arrayList.get(i);
            if (!this.f5850b.isConnected()) {
                return;
            }
            if (m38972e(zaiVar)) {
                this.f5849a.remove(zaiVar);
            }
        }
    }

    /* renamed from: e */
    public final boolean m38972e(zai zaiVar) {
        if (!(zaiVar instanceof zac)) {
            m38971f(zaiVar);
            return true;
        }
        zac zacVar = (zac) zaiVar;
        Feature m38964m = m38964m(zacVar.mo38941f(this));
        if (m38964m == null) {
            m38971f(zaiVar);
            return true;
        }
        String name = this.f5850b.getClass().getName();
        String str = m38964m.f5669a;
        name.length();
        String.valueOf(str).length();
        if (!this.f5861m.f5760o || !zacVar.mo38940g(this)) {
            zacVar.mo4285b(new UnsupportedApiCallException(m38964m));
            return true;
        }
        C24955y c24955y = new C24955y(this.f5851c, m38964m);
        int indexOf = this.f5858j.indexOf(c24955y);
        if (indexOf >= 0) {
            C24955y c24955y2 = this.f5858j.get(indexOf);
            this.f5861m.f5759n.removeMessages(15, c24955y2);
            Handler handler = this.f5861m.f5759n;
            Message obtain = Message.obtain(handler, 15, c24955y2);
            Objects.requireNonNull(this.f5861m);
            handler.sendMessageDelayed(obtain, 5000L);
            return false;
        }
        this.f5858j.add(c24955y);
        Handler handler2 = this.f5861m.f5759n;
        Message obtain2 = Message.obtain(handler2, 15, c24955y);
        Objects.requireNonNull(this.f5861m);
        handler2.sendMessageDelayed(obtain2, 5000L);
        Handler handler3 = this.f5861m.f5759n;
        Message obtain3 = Message.obtain(handler3, 16, c24955y);
        Objects.requireNonNull(this.f5861m);
        handler3.sendMessageDelayed(obtain3, 120000L);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (m38974c(connectionResult)) {
            return false;
        }
        this.f5861m.m39027j(connectionResult, this.f5855g);
        return false;
    }

    /* renamed from: f */
    public final void m38971f(zai zaiVar) {
        zaiVar.mo38939c(this.f5852d, m38958s());
        try {
            zaiVar.mo4284d(this);
        } catch (DeadObjectException e) {
            onConnectionSuspended(1);
            this.f5850b.disconnect("DeadObjectException thrown while running ApiCallRunner.");
        } catch (Throwable th) {
            throw new IllegalStateException(String.format("Error in GoogleApi implementation for client %s.", this.f5850b.getClass().getName()), th);
        }
    }

    /* renamed from: g */
    public final void m38970g(Status status, Exception exc, boolean z) {
        Preconditions.m38904d(this.f5861m.f5759n);
        boolean z2 = false;
        boolean z3 = status == null;
        if (exc == null) {
            z2 = true;
        }
        if (z3 != z2) {
            Iterator<zai> it = this.f5849a.iterator();
            while (it.hasNext()) {
                zai next = it.next();
                if (!z || next.f5897a == 2) {
                    if (status != null) {
                        next.mo4286a(status);
                    } else {
                        next.mo4285b(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    /* renamed from: h */
    public final void m38969h(Status status) {
        Preconditions.m38904d(this.f5861m.f5759n);
        m38970g(status, null, false);
    }

    /* renamed from: i */
    public final void m38968i() {
        if (this.f5857i) {
            this.f5861m.f5759n.removeMessages(11, this.f5851c);
            this.f5861m.f5759n.removeMessages(9, this.f5851c);
            this.f5857i = false;
        }
    }

    /* renamed from: j */
    public final void m38967j() {
        this.f5861m.f5759n.removeMessages(12, this.f5851c);
        Handler handler = this.f5861m.f5759n;
        handler.sendMessageDelayed(handler.obtainMessage(12, this.f5851c), this.f5861m.f5746a);
    }

    /* renamed from: k */
    public final boolean m38966k(boolean z) {
        Preconditions.m38904d(this.f5861m.f5759n);
        if (!this.f5850b.isConnected() || this.f5854f.size() != 0) {
            return false;
        }
        zaaa zaaaVar = this.f5852d;
        if (!(!zaaaVar.f5780a.isEmpty() || !zaaaVar.f5781b.isEmpty())) {
            this.f5850b.disconnect("Timing out service connection.");
            return true;
        } else if (!z) {
            return false;
        } else {
            m38967j();
            return false;
        }
    }

    /* renamed from: l */
    public final void m38965l(ConnectionResult connectionResult) {
        Iterator<zal> it = this.f5853e.iterator();
        if (!it.hasNext()) {
            this.f5853e.clear();
            return;
        }
        zal next = it.next();
        if (com.google.android.gms.common.internal.Objects.m38910a(connectionResult, ConnectionResult.f5661e)) {
            this.f5850b.getEndpointPackageName();
        }
        Objects.requireNonNull(next);
        throw null;
    }

    /* renamed from: m */
    public final Feature m38964m(Feature[] featureArr) {
        if (featureArr == null || featureArr.length == 0) {
            return null;
        }
        Feature[] availableFeatures = this.f5850b.getAvailableFeatures();
        Feature[] featureArr2 = availableFeatures;
        if (availableFeatures == null) {
            featureArr2 = new Feature[0];
        }
        C26174a c26174a = new C26174a(featureArr2.length);
        for (Feature feature : featureArr2) {
            c26174a.put(feature.f5669a, Long.valueOf(feature.m39073o2()));
        }
        for (Feature feature2 : featureArr) {
            Long l = (Long) c26174a.get(feature2.f5669a);
            if (l == null || l.longValue() < feature2.m39073o2()) {
                return feature2;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.zat
    /* renamed from: m1 */
    public final void mo38924m1(ConnectionResult connectionResult, Api<?> api, boolean z) {
        throw null;
    }

    /* renamed from: n */
    public final void m38963n(ConnectionResult connectionResult, Exception exc) {
        zae zaeVar;
        Preconditions.m38904d(this.f5861m.f5759n);
        zaco zacoVar = this.f5856h;
        if (zacoVar != null && (zaeVar = zacoVar.f5878f) != null) {
            zaeVar.disconnect();
        }
        m38960q();
        this.f5861m.f5752g.f6024a.clear();
        m38965l(connectionResult);
        if ((this.f5850b instanceof zap) && connectionResult.f5663b != 24) {
            GoogleApiManager googleApiManager = this.f5861m;
            googleApiManager.f5747b = true;
            Handler handler = googleApiManager.f5759n;
            handler.sendMessageDelayed(handler.obtainMessage(19), 300000L);
        }
        if (connectionResult.f5663b == 4) {
            m38969h(GoogleApiManager.f5743q);
        } else if (this.f5849a.isEmpty()) {
            this.f5859k = connectionResult;
        } else if (exc != null) {
            Preconditions.m38904d(this.f5861m.f5759n);
            m38970g(null, exc, false);
        } else if (!this.f5861m.f5760o) {
            Status m39033d = GoogleApiManager.m39033d(this.f5851c, connectionResult);
            Preconditions.m38904d(this.f5861m.f5759n);
            m38970g(m39033d, null, false);
        } else {
            m38970g(GoogleApiManager.m39033d(this.f5851c, connectionResult), null, true);
            if (this.f5849a.isEmpty() || m38974c(connectionResult) || this.f5861m.m39027j(connectionResult, this.f5855g)) {
                return;
            }
            if (connectionResult.f5663b == 18) {
                this.f5857i = true;
            }
            if (!this.f5857i) {
                Status m39033d2 = GoogleApiManager.m39033d(this.f5851c, connectionResult);
                Preconditions.m38904d(this.f5861m.f5759n);
                m38970g(m39033d2, null, false);
                return;
            }
            Handler handler2 = this.f5861m.f5759n;
            Message obtain = Message.obtain(handler2, 9, this.f5851c);
            Objects.requireNonNull(this.f5861m);
            handler2.sendMessageDelayed(obtain, 5000L);
        }
    }

    /* renamed from: o */
    public final void m38962o(zai zaiVar) {
        Preconditions.m38904d(this.f5861m.f5759n);
        if (this.f5850b.isConnected()) {
            if (m38972e(zaiVar)) {
                m38967j();
                return;
            } else {
                this.f5849a.add(zaiVar);
                return;
            }
        }
        this.f5849a.add(zaiVar);
        ConnectionResult connectionResult = this.f5859k;
        if (connectionResult == null || !connectionResult.m39077o2()) {
            m38959r();
        } else {
            m38963n(this.f5859k, null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        if (Looper.myLooper() == this.f5861m.f5759n.getLooper()) {
            m38976a();
        } else {
            this.f5861m.f5759n.post(new RunnableC24947u(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        m38963n(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        if (Looper.myLooper() == this.f5861m.f5759n.getLooper()) {
            m38975b(i);
        } else {
            this.f5861m.f5759n.post(new RunnableC24949v(this, i));
        }
    }

    /* renamed from: p */
    public final void m38961p() {
        Preconditions.m38904d(this.f5861m.f5759n);
        Status status = GoogleApiManager.f5742p;
        m38969h(status);
        zaaa zaaaVar = this.f5852d;
        Objects.requireNonNull(zaaaVar);
        zaaaVar.m39013a(false, status);
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.f5854f.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            m38962o(new zah(listenerKey, new TaskCompletionSource()));
        }
        m38965l(new ConnectionResult(4));
        if (this.f5850b.isConnected()) {
            this.f5850b.onUserSignOut(new C24953x(this));
        }
    }

    /* renamed from: q */
    public final void m38960q() {
        Preconditions.m38904d(this.f5861m.f5759n);
        this.f5859k = null;
    }

    /* renamed from: r */
    public final void m38959r() {
        Preconditions.m38904d(this.f5861m.f5759n);
        if (this.f5850b.isConnected() || this.f5850b.isConnecting()) {
            return;
        }
        try {
            GoogleApiManager googleApiManager = this.f5861m;
            int m38825a = googleApiManager.f5752g.m38825a(googleApiManager.f5750e, this.f5850b);
            if (m38825a != 0) {
                ConnectionResult connectionResult = new ConnectionResult(m38825a, null);
                String name = this.f5850b.getClass().getName();
                String valueOf = String.valueOf(connectionResult);
                name.length();
                valueOf.length();
                m38963n(connectionResult, null);
                return;
            }
            GoogleApiManager googleApiManager2 = this.f5861m;
            Api.Client client = this.f5850b;
            C24906a0 c24906a0 = new C24906a0(googleApiManager2, client, this.f5851c);
            if (client.requiresSignIn()) {
                zaco zacoVar = this.f5856h;
                Objects.requireNonNull(zacoVar, "null reference");
                zae zaeVar = zacoVar.f5878f;
                if (zaeVar != null) {
                    zaeVar.disconnect();
                }
                zacoVar.f5877e.f5949h = Integer.valueOf(System.identityHashCode(zacoVar));
                Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder = zacoVar.f5875c;
                Context context = zacoVar.f5873a;
                Looper looper = zacoVar.f5874b.getLooper();
                ClientSettings clientSettings = zacoVar.f5877e;
                zacoVar.f5878f = abstractClientBuilder.buildClient(context, looper, clientSettings, (ClientSettings) clientSettings.f5948g, (GoogleApiClient.ConnectionCallbacks) zacoVar, (GoogleApiClient.OnConnectionFailedListener) zacoVar);
                zacoVar.f5879g = c24906a0;
                Set<Scope> set = zacoVar.f5876d;
                if (set == null || set.isEmpty()) {
                    zacoVar.f5874b.post(new RunnableC24918f0(zacoVar));
                } else {
                    zacoVar.f5878f.a();
                }
            }
            try {
                this.f5850b.connect(c24906a0);
            } catch (SecurityException e) {
                m38963n(new ConnectionResult(10), e);
            }
        } catch (IllegalStateException e2) {
            m38963n(new ConnectionResult(10), e2);
        }
    }

    /* renamed from: s */
    public final boolean m38958s() {
        return this.f5850b.requiresSignIn();
    }
}
