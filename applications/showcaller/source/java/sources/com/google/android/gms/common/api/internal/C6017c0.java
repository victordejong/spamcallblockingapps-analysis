package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.C6084b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.AbstractC5996c;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.C5984a.AbstractC5988d;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.C6126f0;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.p270u.C6179e;
import com.google.android.gms.common.util.C6224b;
import com.google.android.gms.tasks.C7968h;
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
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.common.api.internal.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c0.class */
public final class C6017c0<O extends C5984a.AbstractC5988d> implements AbstractC5999d.AbstractC6000a, AbstractC5999d.AbstractC6001b {
    @NotOnlyInitialized

    /* renamed from: e */
    private final C5984a.AbstractC5993f f19231e;

    /* renamed from: f */
    private final C6012b<O> f19232f;

    /* renamed from: j */
    private final int f19236j;

    /* renamed from: k */
    private final BinderC6062s0 f19237k;

    /* renamed from: l */
    private boolean f19238l;

    /* renamed from: p */
    final /* synthetic */ C6025f f19242p;

    /* renamed from: d */
    private final Queue<AbstractC6014b1> f19230d = new LinkedList();

    /* renamed from: h */
    private final Set<C6018c1> f19234h = new HashSet();

    /* renamed from: i */
    private final Map<C6034i<?>, C6053o0> f19235i = new HashMap();

    /* renamed from: m */
    private final List<C6020d0> f19239m = new ArrayList();

    /* renamed from: n */
    private ConnectionResult f19240n = null;

    /* renamed from: o */
    private int f19241o = 0;

    /* renamed from: g */
    private final C6061s f19233g = new C6061s();

    public C6017c0(C6025f c6025f, AbstractC5996c<O> abstractC5996c) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f19242p = c6025f;
        handler = c6025f.f19277w;
        C5984a.AbstractC5993f m17467m = abstractC5996c.m17467m(handler.getLooper(), this);
        this.f19231e = m17467m;
        this.f19232f = abstractC5996c.mo17455c();
        this.f19236j = abstractC5996c.m17466n();
        if (!m17467m.mo5855p()) {
            this.f19237k = null;
            return;
        }
        context = c6025f.f19268n;
        handler2 = c6025f.f19277w;
        this.f19237k = abstractC5996c.m17465o(context, handler2);
    }

    /* renamed from: H */
    public static /* synthetic */ void m17420H(C6017c0 c6017c0, C6020d0 c6020d0) {
        if (c6017c0.f19239m.contains(c6020d0) && !c6017c0.f19238l) {
            if (!c6017c0.f19231e.mo17319b()) {
                c6017c0.m17389z();
            } else {
                c6017c0.m17410e();
            }
        }
    }

    /* renamed from: I */
    public static /* synthetic */ void m17419I(C6017c0 c6017c0, C6020d0 c6020d0) {
        Handler handler;
        Handler handler2;
        Feature feature;
        Feature[] mo17251f;
        if (c6017c0.f19239m.remove(c6020d0)) {
            handler = c6017c0.f19242p.f19277w;
            handler.removeMessages(15, c6020d0);
            handler2 = c6017c0.f19242p.f19277w;
            handler2.removeMessages(16, c6020d0);
            feature = c6020d0.f19251b;
            ArrayList arrayList = new ArrayList(c6017c0.f19230d.size());
            for (AbstractC6014b1 abstractC6014b1 : c6017c0.f19230d) {
                if ((abstractC6014b1 instanceof AbstractC6044l0) && (mo17251f = ((AbstractC6044l0) abstractC6014b1).mo17251f(c6017c0)) != null && C6224b.m16829c(mo17251f, feature)) {
                    arrayList.add(abstractC6014b1);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC6014b1 abstractC6014b12 = (AbstractC6014b1) arrayList.get(i);
                c6017c0.f19230d.remove(abstractC6014b12);
                abstractC6014b12.mo17254b(new UnsupportedApiCallException(feature));
            }
        }
    }

    /* renamed from: b */
    public final void m17413b() {
        m17394u();
        m17402m(ConnectionResult.f19147d);
        m17405j();
        Iterator<C6053o0> it = this.f19235i.values().iterator();
        if (it.hasNext()) {
            AbstractC6043l<C5984a.AbstractC5986b, ?> abstractC6043l = it.next().f19336a;
            throw null;
        }
        m17410e();
        m17404k();
    }

    /* renamed from: c */
    public final void m17412c(int i) {
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        C6126f0 c6126f0;
        m17394u();
        this.f19238l = true;
        this.f19233g.m17279e(i, this.f19231e.mo17309n());
        handler = this.f19242p.f19277w;
        handler2 = this.f19242p.f19277w;
        Message obtain = Message.obtain(handler2, 9, this.f19232f);
        j = this.f19242p.f19262h;
        handler.sendMessageDelayed(obtain, j);
        handler3 = this.f19242p.f19277w;
        handler4 = this.f19242p.f19277w;
        Message obtain2 = Message.obtain(handler4, 11, this.f19232f);
        j2 = this.f19242p.f19263i;
        handler3.sendMessageDelayed(obtain2, j2);
        c6126f0 = this.f19242p.f19270p;
        c6126f0.m17061c();
        for (C6053o0 c6053o0 : this.f19235i.values()) {
            c6053o0.f19337b.run();
        }
    }

    /* renamed from: d */
    private final boolean m17411d(ConnectionResult connectionResult) {
        Object obj;
        C6063t c6063t;
        Set set;
        C6063t c6063t2;
        obj = C6025f.f19260f;
        synchronized (obj) {
            c6063t = this.f19242p.f19274t;
            if (c6063t != null) {
                set = this.f19242p.f19275u;
                if (set.contains(this.f19232f)) {
                    c6063t2 = this.f19242p.f19274t;
                    c6063t2.m17326q(connectionResult, this.f19236j);
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: e */
    private final void m17410e() {
        ArrayList arrayList = new ArrayList(this.f19230d);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC6014b1 abstractC6014b1 = (AbstractC6014b1) arrayList.get(i);
            if (!this.f19231e.mo17319b()) {
                return;
            }
            if (m17409f(abstractC6014b1)) {
                this.f19230d.remove(abstractC6014b1);
            }
        }
    }

    /* renamed from: f */
    private final boolean m17409f(AbstractC6014b1 abstractC6014b1) {
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
        if (!(abstractC6014b1 instanceof AbstractC6044l0)) {
            m17408g(abstractC6014b1);
            return true;
        }
        AbstractC6044l0 abstractC6044l0 = (AbstractC6044l0) abstractC6014b1;
        Feature m17401n = m17401n(abstractC6044l0.mo17251f(this));
        if (m17401n == null) {
            m17408g(abstractC6014b1);
            return true;
        }
        String name = this.f19231e.getClass().getName();
        String m17499k0 = m17401n.m17499k0();
        long m17498l0 = m17401n.m17498l0();
        StringBuilder sb = new StringBuilder(name.length() + 77 + String.valueOf(m17499k0).length());
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(m17499k0);
        sb.append(", ");
        sb.append(m17498l0);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        z = this.f19242p.f19278x;
        if (!z || !abstractC6044l0.mo17250g(this)) {
            abstractC6044l0.mo17254b(new UnsupportedApiCallException(m17401n));
            return true;
        }
        C6020d0 c6020d0 = new C6020d0(this.f19232f, m17401n, null);
        int indexOf = this.f19239m.indexOf(c6020d0);
        if (indexOf >= 0) {
            C6020d0 c6020d02 = this.f19239m.get(indexOf);
            handler5 = this.f19242p.f19277w;
            handler5.removeMessages(15, c6020d02);
            handler6 = this.f19242p.f19277w;
            handler7 = this.f19242p.f19277w;
            Message obtain = Message.obtain(handler7, 15, c6020d02);
            j3 = this.f19242p.f19262h;
            handler6.sendMessageDelayed(obtain, j3);
            return false;
        }
        this.f19239m.add(c6020d0);
        handler = this.f19242p.f19277w;
        handler2 = this.f19242p.f19277w;
        Message obtain2 = Message.obtain(handler2, 15, c6020d0);
        j = this.f19242p.f19262h;
        handler.sendMessageDelayed(obtain2, j);
        handler3 = this.f19242p.f19277w;
        handler4 = this.f19242p.f19277w;
        Message obtain3 = Message.obtain(handler4, 16, c6020d0);
        j2 = this.f19242p.f19263i;
        handler3.sendMessageDelayed(obtain3, j2);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (m17411d(connectionResult)) {
            return false;
        }
        this.f19242p.m17346x(connectionResult, this.f19236j);
        return false;
    }

    /* renamed from: g */
    private final void m17408g(AbstractC6014b1 abstractC6014b1) {
        abstractC6014b1.mo17253c(this.f19233g, m17425C());
        try {
            abstractC6014b1.mo17252d(this);
        } catch (DeadObjectException e) {
            mo17270c0(1);
            this.f19231e.mo17317e("DeadObjectException thrown while running ApiCallRunner.");
        } catch (Throwable th) {
            throw new IllegalStateException(String.format("Error in GoogleApi implementation for client %s.", this.f19231e.getClass().getName()), th);
        }
    }

    /* renamed from: h */
    private final void m17407h(Status status, Exception exc, boolean z) {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        boolean z2 = false;
        boolean z3 = status == null;
        if (exc == null) {
            z2 = true;
        }
        if (z3 != z2) {
            Iterator<AbstractC6014b1> it = this.f19230d.iterator();
            while (it.hasNext()) {
                AbstractC6014b1 next = it.next();
                if (!z || next.f19224a == 2) {
                    if (status != null) {
                        next.mo17255a(status);
                    } else {
                        next.mo17254b(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    /* renamed from: i */
    public final void m17406i(Status status) {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        m17407h(status, null, false);
    }

    /* renamed from: j */
    private final void m17405j() {
        Handler handler;
        Handler handler2;
        if (this.f19238l) {
            handler = this.f19242p.f19277w;
            handler.removeMessages(11, this.f19232f);
            handler2 = this.f19242p.f19277w;
            handler2.removeMessages(9, this.f19232f);
            this.f19238l = false;
        }
    }

    /* renamed from: k */
    private final void m17404k() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j;
        handler = this.f19242p.f19277w;
        handler.removeMessages(12, this.f19232f);
        handler2 = this.f19242p.f19277w;
        handler3 = this.f19242p.f19277w;
        Message obtainMessage = handler3.obtainMessage(12, this.f19232f);
        j = this.f19242p.f19264j;
        handler2.sendMessageDelayed(obtainMessage, j);
    }

    /* renamed from: l */
    public final boolean m17403l(boolean z) {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        if (!this.f19231e.mo17319b() || this.f19235i.size() != 0) {
            return false;
        }
        if (!this.f19233g.m17281c()) {
            this.f19231e.mo17317e("Timing out service connection.");
            return true;
        } else if (!z) {
            return false;
        } else {
            m17404k();
            return false;
        }
    }

    /* renamed from: m */
    private final void m17402m(ConnectionResult connectionResult) {
        for (C6018c1 c6018c1 : this.f19234h) {
            c6018c1.m17387b(this.f19232f, connectionResult, C6147m.m17044a(connectionResult, ConnectionResult.f19147d) ? this.f19231e.mo17315g() : null);
        }
        this.f19234h.clear();
    }

    /* renamed from: n */
    private final Feature m17401n(Feature[] featureArr) {
        if (featureArr == null || featureArr.length == 0) {
            return null;
        }
        Feature[] mo17310m = this.f19231e.mo17310m();
        Feature[] featureArr2 = mo17310m;
        if (mo17310m == null) {
            featureArr2 = new Feature[0];
        }
        C1489a c1489a = new C1489a(featureArr2.length);
        for (Feature feature : featureArr2) {
            c1489a.put(feature.m17499k0(), Long.valueOf(feature.m17498l0()));
        }
        for (Feature feature2 : featureArr) {
            Long l = (Long) c1489a.get(feature2.m17499k0());
            if (l == null || l.longValue() < feature2.m17498l0()) {
                return feature2;
            }
        }
        return null;
    }

    /* renamed from: A */
    public final void m17427A(C6018c1 c6018c1) {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        this.f19234h.add(c6018c1);
    }

    /* renamed from: B */
    public final boolean m17426B() {
        return this.f19231e.mo17319b();
    }

    /* renamed from: C */
    public final boolean m17425C() {
        return this.f19231e.mo5855p();
    }

    /* renamed from: D */
    public final int m17424D() {
        return this.f19236j;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6040k
    /* renamed from: D0 */
    public final void mo17274D0(ConnectionResult connectionResult) {
        m17399p(connectionResult, null);
    }

    /* renamed from: E */
    public final int m17423E() {
        return this.f19241o;
    }

    /* renamed from: F */
    public final void m17422F() {
        this.f19241o++;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6022e
    /* renamed from: J0 */
    public final void mo17273J0(Bundle bundle) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f19242p.f19277w;
        if (myLooper == handler.getLooper()) {
            m17413b();
            return;
        }
        handler2 = this.f19242p.f19277w;
        handler2.post(new RunnableC6073y(this));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6022e
    /* renamed from: c0 */
    public final void mo17270c0(int i) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.f19242p.f19277w;
        if (myLooper == handler.getLooper()) {
            m17412c(i);
            return;
        }
        handler2 = this.f19242p.f19277w;
        handler2.post(new RunnableC6075z(this, i));
    }

    /* renamed from: o */
    public final void m17400o(ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        C5984a.AbstractC5993f abstractC5993f = this.f19231e;
        String name = abstractC5993f.getClass().getName();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(name.length() + 25 + valueOf.length());
        sb.append("onSignInFailed for ");
        sb.append(name);
        sb.append(" with ");
        sb.append(valueOf);
        abstractC5993f.mo17317e(sb.toString());
        m17399p(connectionResult, null);
    }

    /* renamed from: p */
    public final void m17399p(ConnectionResult connectionResult, Exception exc) {
        Handler handler;
        C6126f0 c6126f0;
        boolean z;
        Status m17359k;
        Status m17359k2;
        Status m17359k3;
        Handler handler2;
        Handler handler3;
        long j;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        BinderC6062s0 binderC6062s0 = this.f19237k;
        if (binderC6062s0 != null) {
            binderC6062s0.m17269y4();
        }
        m17394u();
        c6126f0 = this.f19242p.f19270p;
        c6126f0.m17061c();
        m17402m(connectionResult);
        if ((this.f19231e instanceof C6179e) && connectionResult.m17506k0() != 24) {
            this.f19242p.f19265k = true;
            handler5 = this.f19242p.f19277w;
            handler6 = this.f19242p.f19277w;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (connectionResult.m17506k0() == 4) {
            status = C6025f.f19259e;
            m17406i(status);
        } else if (this.f19230d.isEmpty()) {
            this.f19240n = connectionResult;
        } else if (exc != null) {
            handler4 = this.f19242p.f19277w;
            C6155o.m17024d(handler4);
            m17407h(null, exc, false);
        } else {
            z = this.f19242p.f19278x;
            if (!z) {
                m17359k = C6025f.m17359k(this.f19232f, connectionResult);
                m17406i(m17359k);
                return;
            }
            m17359k2 = C6025f.m17359k(this.f19232f, connectionResult);
            m17407h(m17359k2, null, true);
            if (this.f19230d.isEmpty() || m17411d(connectionResult) || this.f19242p.m17346x(connectionResult, this.f19236j)) {
                return;
            }
            if (connectionResult.m17506k0() == 18) {
                this.f19238l = true;
            }
            if (!this.f19238l) {
                m17359k3 = C6025f.m17359k(this.f19232f, connectionResult);
                m17406i(m17359k3);
                return;
            }
            handler2 = this.f19242p.f19277w;
            handler3 = this.f19242p.f19277w;
            Message obtain = Message.obtain(handler3, 9, this.f19232f);
            j = this.f19242p.f19262h;
            handler2.sendMessageDelayed(obtain, j);
        }
    }

    /* renamed from: q */
    public final void m17398q(AbstractC6014b1 abstractC6014b1) {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        if (this.f19231e.mo17319b()) {
            if (m17409f(abstractC6014b1)) {
                m17404k();
                return;
            } else {
                this.f19230d.add(abstractC6014b1);
                return;
            }
        }
        this.f19230d.add(abstractC6014b1);
        ConnectionResult connectionResult = this.f19240n;
        if (connectionResult == null || !connectionResult.m17503n0()) {
            m17389z();
        } else {
            m17399p(this.f19240n, null);
        }
    }

    /* renamed from: r */
    public final void m17397r() {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        m17406i(C6025f.f19258d);
        this.f19233g.m17280d();
        for (C6034i c6034i : (C6034i[]) this.f19235i.keySet().toArray(new C6034i[0])) {
            m17398q(new C6011a1(c6034i, new C7968h()));
        }
        m17402m(new ConnectionResult(4));
        if (this.f19231e.mo17319b()) {
            this.f19231e.mo17313i(new C6013b0(this));
        }
    }

    /* renamed from: s */
    public final C5984a.AbstractC5993f m17396s() {
        return this.f19231e;
    }

    /* renamed from: t */
    public final Map<C6034i<?>, C6053o0> m17395t() {
        return this.f19235i;
    }

    /* renamed from: u */
    public final void m17394u() {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        this.f19240n = null;
    }

    /* renamed from: v */
    public final ConnectionResult m17393v() {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        return this.f19240n;
    }

    /* renamed from: w */
    public final void m17392w() {
        Handler handler;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        if (this.f19238l) {
            m17389z();
        }
    }

    /* renamed from: x */
    public final void m17391x() {
        Handler handler;
        C6084b c6084b;
        Context context;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        if (this.f19238l) {
            m17405j();
            c6084b = this.f19242p.f19269o;
            context = this.f19242p.f19268n;
            m17406i(c6084b.mo17220g(context) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.f19231e.mo17317e("Timing out connection while resuming.");
        }
    }

    /* renamed from: y */
    public final boolean m17390y() {
        return m17403l(true);
    }

    /* renamed from: z */
    public final void m17389z() {
        Handler handler;
        C6126f0 c6126f0;
        Context context;
        handler = this.f19242p.f19277w;
        C6155o.m17024d(handler);
        if (this.f19231e.mo17319b() || this.f19231e.mo17316f()) {
            return;
        }
        try {
            c6126f0 = this.f19242p.f19270p;
            context = this.f19242p.f19268n;
            int m17063a = c6126f0.m17063a(context, this.f19231e);
            if (m17063a == 0) {
                C6026f0 c6026f0 = new C6026f0(this.f19242p, this.f19231e, this.f19232f);
                if (this.f19231e.mo5855p()) {
                    ((BinderC6062s0) C6155o.m17018j(this.f19237k)).m17271a3(c6026f0);
                }
                try {
                    this.f19231e.mo17314h(c6026f0);
                    return;
                } catch (SecurityException e) {
                    m17399p(new ConnectionResult(10), e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(m17063a, null);
            String name = this.f19231e.getClass().getName();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(name.length() + 35 + valueOf.length());
            sb.append("The service for ");
            sb.append(name);
            sb.append(" is not available: ");
            sb.append(valueOf);
            Log.w("GoogleApiManager", sb.toString());
            m17399p(connectionResult, null);
        } catch (IllegalStateException e2) {
            m17399p(new ConnectionResult(10), e2);
        }
    }
}
