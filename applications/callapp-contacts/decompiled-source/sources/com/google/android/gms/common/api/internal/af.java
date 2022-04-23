package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.internal.a.e;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/af.class */
public final class af<O extends a.d> implements g.a, g.b, by {
    @NotOnlyInitialized

    /* renamed from: a  reason: collision with root package name */
    final a.f f22634a;

    /* renamed from: b  reason: collision with root package name */
    final b<O> f22635b;
    final int e;
    boolean f;
    final /* synthetic */ f i;
    private final bc l;
    private final Queue<bq> j = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    final Set<br> f22636c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    final Map<i.a<?>, as> f22637d = new HashMap();
    private final List<ag> m = new ArrayList();
    ConnectionResult g = null;
    int h = 0;
    private final v k = new v();

    public af(f fVar, f<O> fVar2) {
        Handler handler;
        Context context;
        Handler handler2;
        this.i = fVar;
        handler = fVar.g;
        a.f a2 = fVar2.a(handler.getLooper(), this);
        this.f22634a = a2;
        this.f22635b = fVar2.f22615c;
        this.e = fVar2.e;
        if (a2.requiresSignIn()) {
            context = fVar.p;
            handler2 = fVar.g;
            this.l = new bc(context, handler2, fVar2.g().a());
            return;
        }
        this.l = null;
    }

    private final Feature a(Feature[] featureArr) {
        if (featureArr == null || featureArr.length == 0) {
            return null;
        }
        Feature[] availableFeatures = this.f22634a.getAvailableFeatures();
        Feature[] featureArr2 = availableFeatures;
        if (availableFeatures == null) {
            featureArr2 = new Feature[0];
        }
        androidx.b.a aVar = new androidx.b.a(featureArr2.length);
        for (Feature feature : featureArr2) {
            aVar.put(feature.getName(), Long.valueOf(feature.getVersion()));
        }
        for (Feature feature2 : featureArr) {
            Long l = (Long) aVar.get(feature2.getName());
            if (l == null || l.longValue() < feature2.getVersion()) {
                return feature2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Status status) {
        Handler handler;
        handler = this.i.g;
        o.a(handler);
        a(status, null, false);
    }

    private final void a(Status status, Exception exc, boolean z) {
        Handler handler;
        handler = this.i.g;
        o.a(handler);
        boolean z2 = false;
        boolean z3 = status == null;
        if (exc == null) {
            z2 = true;
        }
        if (z3 != z2) {
            Iterator<bq> it2 = this.j.iterator();
            while (it2.hasNext()) {
                bq next = it2.next();
                if (!z || next.f22699c == 2) {
                    if (status != null) {
                        next.a(status);
                    } else {
                        next.a(exc);
                    }
                    it2.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(af afVar, Status status) {
        afVar.a(status);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(af afVar, ag agVar) {
        if (!afVar.m.contains(agVar) || afVar.f) {
            return;
        }
        if (!afVar.f22634a.isConnected()) {
            afVar.f();
        } else {
            afVar.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(af afVar, ag agVar) {
        Handler handler;
        Handler handler2;
        Feature[] a2;
        if (afVar.m.remove(agVar)) {
            handler = afVar.i.g;
            handler.removeMessages(15, agVar);
            handler2 = afVar.i.g;
            handler2.removeMessages(16, agVar);
            Feature feature = agVar.f22639b;
            ArrayList arrayList = new ArrayList(afVar.j.size());
            for (bq bqVar : afVar.j) {
                if ((bqVar instanceof ap) && (a2 = ((ap) bqVar).a(afVar)) != null && b.a(a2, feature)) {
                    arrayList.add(bqVar);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                bq bqVar2 = (bq) arrayList.get(i);
                afVar.j.remove(bqVar2);
                bqVar2.a(new UnsupportedApiCallException(feature));
            }
        }
    }

    private final boolean b(ConnectionResult connectionResult) {
        Object obj;
        w wVar;
        Set set;
        w wVar2;
        obj = f.f22735b;
        synchronized (obj) {
            wVar = this.i.e;
            if (wVar != null) {
                set = this.i.f;
                if (set.contains(this.f22635b)) {
                    wVar2 = this.i.e;
                    wVar2.b(connectionResult, this.e);
                    return true;
                }
            }
            return false;
        }
    }

    private final boolean b(bq bqVar) {
        boolean z;
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        long j3;
        if (!(bqVar instanceof ap)) {
            c(bqVar);
            return true;
        }
        ap apVar = (ap) bqVar;
        Feature a2 = a(apVar.a((af<?>) this));
        if (a2 == null) {
            c(bqVar);
            return true;
        }
        String name = this.f22634a.getClass().getName();
        String name2 = a2.getName();
        long version = a2.getVersion();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(name2).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(name2);
        sb.append(", ");
        sb.append(version);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        z = this.i.u;
        if (!z || !apVar.b(this)) {
            apVar.a(new UnsupportedApiCallException(a2));
            return true;
        }
        ag agVar = new ag(this.f22635b, a2, null);
        int indexOf = this.m.indexOf(agVar);
        if (indexOf >= 0) {
            ag agVar2 = this.m.get(indexOf);
            handler5 = this.i.g;
            handler5.removeMessages(15, agVar2);
            handler6 = this.i.g;
            handler7 = this.i.g;
            Message obtain = Message.obtain(handler7, 15, agVar2);
            j3 = this.i.i;
            handler6.sendMessageDelayed(obtain, j3);
            return false;
        }
        this.m.add(agVar);
        handler = this.i.g;
        handler2 = this.i.g;
        Message obtain2 = Message.obtain(handler2, 15, agVar);
        j = this.i.i;
        handler.sendMessageDelayed(obtain2, j);
        handler3 = this.i.g;
        handler4 = this.i.g;
        Message obtain3 = Message.obtain(handler4, 16, agVar);
        j2 = this.i.j;
        handler3.sendMessageDelayed(obtain3, j2);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (b(connectionResult)) {
            return false;
        }
        this.i.a(connectionResult, this.e);
        return false;
    }

    private final void c(ConnectionResult connectionResult) {
        for (br brVar : this.f22636c) {
            brVar.a(this.f22635b, connectionResult, m.a(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.f22634a.getEndpointPackageName() : null);
        }
        this.f22636c.clear();
    }

    private final void c(bq bqVar) {
        bqVar.a(this.k, g());
        try {
            bqVar.c(this);
        } catch (DeadObjectException e) {
            a(1);
            this.f22634a.disconnect("DeadObjectException thrown while running ApiCallRunner.");
        } catch (Throwable th) {
            throw new IllegalStateException(String.format("Error in GoogleApi implementation for client %s.", this.f22634a.getClass().getName()), th);
        }
    }

    private final void h() {
        ArrayList arrayList = new ArrayList(this.j);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            bq bqVar = (bq) arrayList.get(i);
            if (this.f22634a.isConnected()) {
                if (b(bqVar)) {
                    this.j.remove(bqVar);
                }
            } else {
                return;
            }
        }
    }

    private final void i() {
        Handler handler;
        Handler handler2;
        if (this.f) {
            handler = this.i.g;
            handler.removeMessages(11, this.f22635b);
            handler2 = this.i.g;
            handler2.removeMessages(9, this.f22635b);
            this.f = false;
        }
    }

    private final void j() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j;
        handler = this.i.g;
        handler.removeMessages(12, this.f22635b);
        handler2 = this.i.g;
        handler3 = this.i.g;
        Message obtainMessage = handler3.obtainMessage(12, this.f22635b);
        j = this.i.k;
        handler2.sendMessageDelayed(obtainMessage, j);
    }

    @Override // com.google.android.gms.common.api.internal.e
    public final void a() {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.i.g;
        if (myLooper == handler.getLooper()) {
            b();
            return;
        }
        handler2 = this.i.g;
        handler2.post(new ab(this));
    }

    @Override // com.google.android.gms.common.api.internal.e
    public final void a(int i) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.i.g;
        if (myLooper == handler.getLooper()) {
            b(i);
            return;
        }
        handler2 = this.i.g;
        handler2.post(new ac(this, i));
    }

    @Override // com.google.android.gms.common.api.internal.l
    public final void a(ConnectionResult connectionResult) {
        a(connectionResult, (Exception) null);
    }

    public final void a(ConnectionResult connectionResult, Exception exc) {
        Handler handler;
        com.google.android.gms.common.internal.af afVar;
        boolean z;
        Status b2;
        Status b3;
        Status b4;
        Handler handler2;
        Handler handler3;
        long j;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.i.g;
        o.a(handler);
        bc bcVar = this.l;
        if (bcVar != null) {
            bcVar.b();
        }
        d();
        afVar = this.i.r;
        afVar.f22838a.clear();
        c(connectionResult);
        if ((this.f22634a instanceof e) && connectionResult.getErrorCode() != 24) {
            this.i.l = true;
            handler5 = this.i.g;
            handler6 = this.i.g;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            status = f.h;
            a(status);
        } else if (this.j.isEmpty()) {
            this.g = connectionResult;
        } else if (exc != null) {
            handler4 = this.i.g;
            o.a(handler4);
            a(null, exc, false);
        } else {
            z = this.i.u;
            if (z) {
                b3 = f.b((b<?>) this.f22635b, connectionResult);
                a(b3, null, true);
                if (!this.j.isEmpty() && !b(connectionResult) && !this.i.a(connectionResult, this.e)) {
                    if (connectionResult.getErrorCode() == 18) {
                        this.f = true;
                    }
                    if (this.f) {
                        handler2 = this.i.g;
                        handler3 = this.i.g;
                        Message obtain = Message.obtain(handler3, 9, this.f22635b);
                        j = this.i.i;
                        handler2.sendMessageDelayed(obtain, j);
                        return;
                    }
                    b4 = f.b((b<?>) this.f22635b, connectionResult);
                    a(b4);
                    return;
                }
                return;
            }
            b2 = f.b((b<?>) this.f22635b, connectionResult);
            a(b2);
        }
    }

    public final void a(bq bqVar) {
        Handler handler;
        handler = this.i.g;
        o.a(handler);
        if (!this.f22634a.isConnected()) {
            this.j.add(bqVar);
            ConnectionResult connectionResult = this.g;
            if (connectionResult == null || !connectionResult.hasResolution()) {
                f();
            } else {
                a(this.g, (Exception) null);
            }
        } else if (b(bqVar)) {
            j();
        } else {
            this.j.add(bqVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(boolean z) {
        Handler handler;
        handler = this.i.g;
        o.a(handler);
        if (!this.f22634a.isConnected() || this.f22637d.size() != 0) {
            return false;
        }
        if (!this.k.a()) {
            this.f22634a.disconnect("Timing out service connection.");
            return true;
        } else if (!z) {
            return false;
        } else {
            j();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        d();
        c(ConnectionResult.RESULT_SUCCESS);
        i();
        Iterator<as> it2 = this.f22637d.values().iterator();
        while (it2.hasNext()) {
            as next = it2.next();
            if (a(next.f22662a.f22751b) != null) {
                it2.remove();
            } else {
                try {
                    next.f22662a.a(this.f22634a, new com.google.android.gms.tasks.i<>());
                } catch (DeadObjectException e) {
                    a(3);
                    this.f22634a.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException e2) {
                    it2.remove();
                }
            }
        }
        h();
        j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        com.google.android.gms.common.internal.af afVar;
        d();
        this.f = true;
        this.k.a(i, this.f22634a.getLastDisconnectMessage());
        handler = this.i.g;
        handler2 = this.i.g;
        Message obtain = Message.obtain(handler2, 9, this.f22635b);
        j = this.i.i;
        handler.sendMessageDelayed(obtain, j);
        handler3 = this.i.g;
        handler4 = this.i.g;
        Message obtain2 = Message.obtain(handler4, 11, this.f22635b);
        j2 = this.i.j;
        handler3.sendMessageDelayed(obtain2, j2);
        afVar = this.i.r;
        afVar.f22838a.clear();
        for (as asVar : this.f22637d.values()) {
            asVar.f22664c.run();
        }
    }

    public final void c() {
        Handler handler;
        handler = this.i.g;
        o.a(handler);
        a(f.f22734a);
        this.k.a(false, f.f22734a);
        for (i.a aVar : (i.a[]) this.f22637d.keySet().toArray(new i.a[0])) {
            a(new bp(aVar, new com.google.android.gms.tasks.i()));
        }
        c(new ConnectionResult(4));
        if (this.f22634a.isConnected()) {
            this.f22634a.onUserSignOut(new ae(this));
        }
    }

    public final void d() {
        Handler handler;
        handler = this.i.g;
        o.a(handler);
        this.g = null;
    }

    public final void e() {
        Handler handler;
        com.google.android.gms.common.b bVar;
        Context context;
        handler = this.i.g;
        o.a(handler);
        if (this.f) {
            i();
            bVar = this.i.q;
            context = this.i.p;
            a(bVar.a(context) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.f22634a.disconnect("Timing out connection while resuming.");
        }
    }

    public final void f() {
        Handler handler;
        com.google.android.gms.common.internal.af afVar;
        Context context;
        handler = this.i.g;
        o.a(handler);
        if (!this.f22634a.isConnected() && !this.f22634a.isConnecting()) {
            try {
                afVar = this.i.r;
                context = this.i.p;
                int a2 = afVar.a(context, this.f22634a);
                if (a2 != 0) {
                    ConnectionResult connectionResult = new ConnectionResult(a2, null);
                    String name = this.f22634a.getClass().getName();
                    String valueOf = String.valueOf(connectionResult);
                    StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35 + String.valueOf(valueOf).length());
                    sb.append("The service for ");
                    sb.append(name);
                    sb.append(" is not available: ");
                    sb.append(valueOf);
                    Log.w("GoogleApiManager", sb.toString());
                    a(connectionResult, (Exception) null);
                    return;
                }
                ai aiVar = new ai(this.i, this.f22634a, this.f22635b);
                if (this.f22634a.requiresSignIn()) {
                    ((bc) o.a(this.l)).a(aiVar);
                }
                try {
                    this.f22634a.connect(aiVar);
                } catch (SecurityException e) {
                    a(new ConnectionResult(10), e);
                }
            } catch (IllegalStateException e2) {
                a(new ConnectionResult(10), e2);
            }
        }
    }

    public final boolean g() {
        return this.f22634a.requiresSignIn();
    }
}
