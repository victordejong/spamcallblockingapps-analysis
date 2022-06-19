package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.p023b.C0428a;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.C11808a.AbstractC11812d;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.internal.C11980af;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.p353a.C11974e;
import com.google.android.gms.common.util.C12098b;
import com.google.android.gms.tasks.C14186i;
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
/* renamed from: com.google.android.gms.common.api.internal.af */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/af.class */
public final class C11838af<O extends C11808a.AbstractC11812d> implements AbstractC11826g.AbstractC11827a, AbstractC11826g.AbstractC11828b, AbstractC11884by {
    @NotOnlyInitialized

    /* renamed from: a */
    final C11808a.AbstractC11817f f39219a;

    /* renamed from: b */
    final C11859b<O> f39220b;

    /* renamed from: e */
    final int f39223e;

    /* renamed from: f */
    boolean f39224f;

    /* renamed from: i */
    final /* synthetic */ C11896f f39227i;

    /* renamed from: l */
    private final BinderC11862bc f39230l;

    /* renamed from: j */
    private final Queue<AbstractC11876bq> f39228j = new LinkedList();

    /* renamed from: c */
    final Set<C11877br> f39221c = new HashSet();

    /* renamed from: d */
    final Map<C11899i.C11900a<?>, C11851as> f39222d = new HashMap();

    /* renamed from: m */
    private final List<C11839ag> f39231m = new ArrayList();

    /* renamed from: g */
    ConnectionResult f39225g = null;

    /* renamed from: h */
    int f39226h = 0;

    /* renamed from: k */
    private final C11916v f39229k = new C11916v();

    public C11838af(C11896f c11896f, AbstractC11823f<O> abstractC11823f) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f39227i = c11896f;
        handler = c11896f.f39351g;
        C11808a.AbstractC11817f m19459a = abstractC11823f.m19459a(handler.getLooper(), this);
        this.f39219a = m19459a;
        this.f39220b = abstractC11823f.f39181c;
        this.f39223e = abstractC11823f.f39183e;
        if (!m19459a.requiresSignIn()) {
            this.f39230l = null;
            return;
        }
        context = c11896f.f39358p;
        handler2 = c11896f.f39351g;
        this.f39230l = new BinderC11862bc(context, handler2, abstractC11823f.m19449g().m19186a());
    }

    /* renamed from: a */
    private final Feature m19422a(Feature[] featureArr) {
        if (featureArr == null || featureArr.length == 0) {
            return null;
        }
        Feature[] availableFeatures = this.f39219a.getAvailableFeatures();
        Feature[] featureArr2 = availableFeatures;
        if (availableFeatures == null) {
            featureArr2 = new Feature[0];
        }
        C0428a c0428a = new C0428a(featureArr2.length);
        for (Feature feature : featureArr2) {
            c0428a.put(feature.getName(), Long.valueOf(feature.getVersion()));
        }
        for (Feature feature2 : featureArr) {
            Long l = (Long) c0428a.get(feature2.getName());
            if (l == null || l.longValue() < feature2.getVersion()) {
                return feature2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m19428a(Status status) {
        Handler handler;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        m19427a(status, null, false);
    }

    /* renamed from: a */
    private final void m19427a(Status status, Exception exc, boolean z) {
        Handler handler;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        boolean z2 = false;
        boolean z3 = status == null;
        if (exc == null) {
            z2 = true;
        }
        if (z3 != z2) {
            Iterator<AbstractC11876bq> it2 = this.f39228j.iterator();
            while (it2.hasNext()) {
                AbstractC11876bq next = it2.next();
                if (!z || next.f39305c == 2) {
                    if (status != null) {
                        next.mo19382a(status);
                    } else {
                        next.mo19380a(exc);
                    }
                    it2.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    /* renamed from: a */
    public static /* synthetic */ void m19425a(C11838af c11838af, C11839ag c11839ag) {
        if (c11838af.f39231m.contains(c11839ag) && !c11838af.f39224f) {
            if (!c11838af.f39219a.isConnected()) {
                c11838af.m19411f();
            } else {
                c11838af.m19409h();
            }
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m19418b(C11838af c11838af, C11839ag c11839ag) {
        Handler handler;
        Handler handler2;
        Feature[] mo19386a;
        if (c11838af.f39231m.remove(c11839ag)) {
            handler = c11838af.f39227i.f39351g;
            handler.removeMessages(15, c11839ag);
            handler2 = c11838af.f39227i.f39351g;
            handler2.removeMessages(16, c11839ag);
            Feature feature = c11839ag.f39233b;
            ArrayList arrayList = new ArrayList(c11838af.f39228j.size());
            for (AbstractC11876bq abstractC11876bq : c11838af.f39228j) {
                if ((abstractC11876bq instanceof AbstractC11848ap) && (mo19386a = ((AbstractC11848ap) abstractC11876bq).mo19386a(c11838af)) != null && C12098b.m19048a(mo19386a, feature)) {
                    arrayList.add(abstractC11876bq);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC11876bq abstractC11876bq2 = (AbstractC11876bq) arrayList.get(i);
                c11838af.f39228j.remove(abstractC11876bq2);
                abstractC11876bq2.mo19380a(new UnsupportedApiCallException(feature));
            }
        }
    }

    /* renamed from: b */
    private final boolean m19419b(ConnectionResult connectionResult) {
        Object obj;
        C11917w c11917w;
        Set set;
        C11917w c11917w2;
        obj = C11896f.f39344b;
        synchronized (obj) {
            c11917w = this.f39227i.f39349e;
            if (c11917w != null) {
                set = this.f39227i.f39350f;
                if (set.contains(this.f39220b)) {
                    c11917w2 = this.f39227i.f39349e;
                    c11917w2.m19370b(connectionResult, this.f39223e);
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: b */
    private final boolean m19417b(AbstractC11876bq abstractC11876bq) {
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
        if (!(abstractC11876bq instanceof AbstractC11848ap)) {
            m19414c(abstractC11876bq);
            return true;
        }
        AbstractC11848ap abstractC11848ap = (AbstractC11848ap) abstractC11876bq;
        Feature m19422a = m19422a(abstractC11848ap.mo19386a((C11838af<?>) this));
        if (m19422a == null) {
            m19414c(abstractC11876bq);
            return true;
        }
        String name = this.f39219a.getClass().getName();
        String name2 = m19422a.getName();
        long version = m19422a.getVersion();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(name2).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(name2);
        sb.append(", ");
        sb.append(version);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        z = this.f39227i.f39363u;
        if (!z || !abstractC11848ap.mo19385b(this)) {
            abstractC11848ap.mo19380a(new UnsupportedApiCallException(m19422a));
            return true;
        }
        C11839ag c11839ag = new C11839ag(this.f39220b, m19422a, null);
        int indexOf = this.f39231m.indexOf(c11839ag);
        if (indexOf >= 0) {
            C11839ag c11839ag2 = this.f39231m.get(indexOf);
            handler5 = this.f39227i.f39351g;
            handler5.removeMessages(15, c11839ag2);
            handler6 = this.f39227i.f39351g;
            handler7 = this.f39227i.f39351g;
            Message obtain = Message.obtain(handler7, 15, c11839ag2);
            j3 = this.f39227i.f39352i;
            handler6.sendMessageDelayed(obtain, j3);
            return false;
        }
        this.f39231m.add(c11839ag);
        handler = this.f39227i.f39351g;
        handler2 = this.f39227i.f39351g;
        Message obtain2 = Message.obtain(handler2, 15, c11839ag);
        j = this.f39227i.f39352i;
        handler.sendMessageDelayed(obtain2, j);
        handler3 = this.f39227i.f39351g;
        handler4 = this.f39227i.f39351g;
        Message obtain3 = Message.obtain(handler4, 16, c11839ag);
        j2 = this.f39227i.f39353j;
        handler3.sendMessageDelayed(obtain3, j2);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (m19419b(connectionResult)) {
            return false;
        }
        this.f39227i.m19354a(connectionResult, this.f39223e);
        return false;
    }

    /* renamed from: c */
    private final void m19415c(ConnectionResult connectionResult) {
        for (C11877br c11877br : this.f39221c) {
            c11877br.m19378a(this.f39220b, connectionResult, C12041m.m19168a(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.f39219a.getEndpointPackageName() : null);
        }
        this.f39221c.clear();
    }

    /* renamed from: c */
    private final void m19414c(AbstractC11876bq abstractC11876bq) {
        abstractC11876bq.mo19381a(this.f39229k, m19410g());
        try {
            abstractC11876bq.mo19379c(this);
        } catch (DeadObjectException e) {
            mo19357a(1);
            this.f39219a.disconnect("DeadObjectException thrown while running ApiCallRunner.");
        } catch (Throwable th) {
            throw new IllegalStateException(String.format("Error in GoogleApi implementation for client %s.", this.f39219a.getClass().getName()), th);
        }
    }

    /* renamed from: h */
    private final void m19409h() {
        ArrayList arrayList = new ArrayList(this.f39228j);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC11876bq abstractC11876bq = (AbstractC11876bq) arrayList.get(i);
            if (!this.f39219a.isConnected()) {
                return;
            }
            if (m19417b(abstractC11876bq)) {
                this.f39228j.remove(abstractC11876bq);
            }
        }
    }

    /* renamed from: i */
    private final void m19408i() {
        Handler handler;
        Handler handler2;
        if (this.f39224f) {
            handler = this.f39227i.f39351g;
            handler.removeMessages(11, this.f39220b);
            handler2 = this.f39227i.f39351g;
            handler2.removeMessages(9, this.f39220b);
            this.f39224f = false;
        }
    }

    /* renamed from: j */
    private final void m19407j() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j;
        handler = this.f39227i.f39351g;
        handler.removeMessages(12, this.f39220b);
        handler2 = this.f39227i.f39351g;
        handler3 = this.f39227i.f39351g;
        Message obtainMessage = handler3.obtainMessage(12, this.f39220b);
        j = this.f39227i.f39354k;
        handler2.sendMessageDelayed(obtainMessage, j);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11895e
    /* renamed from: a */
    public final void mo19358a() {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f39227i.f39351g;
        if (myLooper == handler.getLooper()) {
            m19421b();
            return;
        }
        handler2 = this.f39227i.f39351g;
        handler2.post(new RunnableC11834ab(this));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11895e
    /* renamed from: a */
    public final void mo19357a(int i) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f39227i.f39351g;
        if (myLooper == handler.getLooper()) {
            m19420b(i);
            return;
        }
        handler2 = this.f39227i.f39351g;
        handler2.post(new RunnableC11835ac(this, i));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11904l
    /* renamed from: a */
    public final void mo19318a(ConnectionResult connectionResult) {
        m19429a(connectionResult, (Exception) null);
    }

    /* renamed from: a */
    public final void m19429a(ConnectionResult connectionResult, Exception exc) {
        Handler handler;
        C11980af c11980af;
        boolean z;
        Status m19341b;
        Status m19341b2;
        Status m19341b3;
        Handler handler2;
        Handler handler3;
        long j;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        BinderC11862bc binderC11862bc = this.f39230l;
        if (binderC11862bc != null) {
            binderC11862bc.m19391b();
        }
        m19413d();
        c11980af = this.f39227i.f39360r;
        c11980af.f39487a.clear();
        m19415c(connectionResult);
        if ((this.f39219a instanceof C11974e) && connectionResult.getErrorCode() != 24) {
            this.f39227i.f39355l = true;
            handler5 = this.f39227i.f39351g;
            handler6 = this.f39227i.f39351g;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            status = C11896f.f39345h;
            m19428a(status);
        } else if (this.f39228j.isEmpty()) {
            this.f39225g = connectionResult;
        } else if (exc != null) {
            handler4 = this.f39227i.f39351g;
            C12045o.m19163a(handler4);
            m19427a(null, exc, false);
        } else {
            z = this.f39227i.f39363u;
            if (!z) {
                m19341b = C11896f.m19341b((C11859b<?>) this.f39220b, connectionResult);
                m19428a(m19341b);
                return;
            }
            m19341b2 = C11896f.m19341b((C11859b<?>) this.f39220b, connectionResult);
            m19427a(m19341b2, null, true);
            if (this.f39228j.isEmpty() || m19419b(connectionResult) || this.f39227i.m19354a(connectionResult, this.f39223e)) {
                return;
            }
            if (connectionResult.getErrorCode() == 18) {
                this.f39224f = true;
            }
            if (!this.f39224f) {
                m19341b3 = C11896f.m19341b((C11859b<?>) this.f39220b, connectionResult);
                m19428a(m19341b3);
                return;
            }
            handler2 = this.f39227i.f39351g;
            handler3 = this.f39227i.f39351g;
            Message obtain = Message.obtain(handler3, 9, this.f39220b);
            j = this.f39227i.f39352i;
            handler2.sendMessageDelayed(obtain, j);
        }
    }

    /* renamed from: a */
    public final void m19424a(AbstractC11876bq abstractC11876bq) {
        Handler handler;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        if (this.f39219a.isConnected()) {
            if (m19417b(abstractC11876bq)) {
                m19407j();
                return;
            } else {
                this.f39228j.add(abstractC11876bq);
                return;
            }
        }
        this.f39228j.add(abstractC11876bq);
        ConnectionResult connectionResult = this.f39225g;
        if (connectionResult == null || !connectionResult.hasResolution()) {
            m19411f();
        } else {
            m19429a(this.f39225g, (Exception) null);
        }
    }

    /* renamed from: a */
    public final boolean m19423a(boolean z) {
        Handler handler;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        if (!this.f39219a.isConnected() || this.f39222d.size() != 0) {
            return false;
        }
        if (!this.f39229k.m19311a()) {
            this.f39219a.disconnect("Timing out service connection.");
            return true;
        } else if (!z) {
            return false;
        } else {
            m19407j();
            return false;
        }
    }

    /* renamed from: b */
    public final void m19421b() {
        m19413d();
        m19415c(ConnectionResult.RESULT_SUCCESS);
        m19408i();
        Iterator<C11851as> it2 = this.f39222d.values().iterator();
        while (it2.hasNext()) {
            C11851as next = it2.next();
            if (m19422a(next.f39258a.f39385b) != null) {
                it2.remove();
            } else {
                try {
                    next.f39258a.mo11362a(this.f39219a, new C14186i<>());
                } catch (DeadObjectException e) {
                    mo19357a(3);
                    this.f39219a.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException e2) {
                    it2.remove();
                }
            }
        }
        m19409h();
        m19407j();
    }

    /* renamed from: b */
    public final void m19420b(int i) {
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        C11980af c11980af;
        m19413d();
        this.f39224f = true;
        this.f39229k.m19310a(i, this.f39219a.getLastDisconnectMessage());
        handler = this.f39227i.f39351g;
        handler2 = this.f39227i.f39351g;
        Message obtain = Message.obtain(handler2, 9, this.f39220b);
        j = this.f39227i.f39352i;
        handler.sendMessageDelayed(obtain, j);
        handler3 = this.f39227i.f39351g;
        handler4 = this.f39227i.f39351g;
        Message obtain2 = Message.obtain(handler4, 11, this.f39220b);
        j2 = this.f39227i.f39353j;
        handler3.sendMessageDelayed(obtain2, j2);
        c11980af = this.f39227i.f39360r;
        c11980af.f39487a.clear();
        for (C11851as c11851as : this.f39222d.values()) {
            c11851as.f39260c.run();
        }
    }

    /* renamed from: c */
    public final void m19416c() {
        Handler handler;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        m19428a(C11896f.f39343a);
        this.f39229k.m19309a(false, C11896f.f39343a);
        for (C11899i.C11900a c11900a : (C11899i.C11900a[]) this.f39222d.keySet().toArray(new C11899i.C11900a[0])) {
            m19424a(new C11875bp(c11900a, new C14186i()));
        }
        m19415c(new ConnectionResult(4));
        if (this.f39219a.isConnected()) {
            this.f39219a.onUserSignOut(new C11837ae(this));
        }
    }

    /* renamed from: d */
    public final void m19413d() {
        Handler handler;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        this.f39225g = null;
    }

    /* renamed from: e */
    public final void m19412e() {
        Handler handler;
        C11937b c11937b;
        Context context;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        if (this.f39224f) {
            m19408i();
            c11937b = this.f39227i.f39359q;
            context = this.f39227i.f39358p;
            m19428a(c11937b.mo19275a(context) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.f39219a.disconnect("Timing out connection while resuming.");
        }
    }

    /* renamed from: f */
    public final void m19411f() {
        Handler handler;
        C11980af c11980af;
        Context context;
        handler = this.f39227i.f39351g;
        C12045o.m19163a(handler);
        if (this.f39219a.isConnected() || this.f39219a.isConnecting()) {
            return;
        }
        try {
            c11980af = this.f39227i.f39360r;
            context = this.f39227i.f39358p;
            int m19223a = c11980af.m19223a(context, this.f39219a);
            if (m19223a == 0) {
                C11841ai c11841ai = new C11841ai(this.f39227i, this.f39219a, this.f39220b);
                if (this.f39219a.requiresSignIn()) {
                    ((BinderC11862bc) C12045o.m19162a(this.f39230l)).m19394a(c11841ai);
                }
                try {
                    this.f39219a.connect(c11841ai);
                    return;
                } catch (SecurityException e) {
                    m19429a(new ConnectionResult(10), e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(m19223a, null);
            String name = this.f39219a.getClass().getName();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35 + String.valueOf(valueOf).length());
            sb.append("The service for ");
            sb.append(name);
            sb.append(" is not available: ");
            sb.append(valueOf);
            Log.w("GoogleApiManager", sb.toString());
            m19429a(connectionResult, (Exception) null);
        } catch (IllegalStateException e2) {
            m19429a(new ConnectionResult(10), e2);
        }
    }

    /* renamed from: g */
    public final boolean m19410g() {
        return this.f39219a.requiresSignIn();
    }
}
