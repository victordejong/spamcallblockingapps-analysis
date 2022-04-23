package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import p081h.p203i.p204a.p224e.p235d.p236k.C6820c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
/* renamed from: h.i.a.e.d.k.q.v2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/v2.class */
public final class C6936v2 implements AbstractC9132c<Map<C6864e2<?>, String>> {

    /* renamed from: a */
    public final /* synthetic */ C6928t2 f16994a;

    public C6936v2(C6928t2 t2Var) {
        this.f16994a = t2Var;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
    /* renamed from: a */
    public final void mo3743a(@NonNull AbstractC9143h<Map<C6864e2<?>, String>> hVar) {
        Lock lock;
        Lock lock2;
        boolean z;
        Map map;
        ConnectionResult connectionResult;
        Condition condition;
        C6902n0 n0Var;
        ConnectionResult connectionResult2;
        Map map2;
        Map map3;
        ConnectionResult h;
        boolean z2;
        ConnectionResult h2;
        Map map4;
        Map map5;
        boolean a;
        Map map6;
        Map map7;
        Map map8;
        Map map9;
        Map map10;
        lock = this.f16994a.f16974f;
        lock.lock();
        try {
            z = this.f16994a.f16982n;
            if (z) {
                if (hVar.mo16009e()) {
                    C6928t2 t2Var = this.f16994a;
                    map8 = this.f16994a.f16969a;
                    t2Var.f16983o = new ArrayMap(map8.size());
                    map9 = this.f16994a.f16969a;
                    for (C6924s2 s2Var : map9.values()) {
                        map10 = this.f16994a.f16983o;
                        map10.put(s2Var.m21830g(), ConnectionResult.f6495e);
                    }
                } else if (hVar.mo16030a() instanceof C6820c) {
                    C6820c cVar = (C6820c) hVar.mo16030a();
                    z2 = this.f16994a.f16980l;
                    if (z2) {
                        C6928t2 t2Var2 = this.f16994a;
                        map4 = this.f16994a.f16969a;
                        t2Var2.f16983o = new ArrayMap(map4.size());
                        map5 = this.f16994a.f16969a;
                        for (C6924s2 s2Var2 : map5.values()) {
                            Object g = s2Var2.m21830g();
                            ConnectionResult a2 = cVar.m21844a(s2Var2);
                            a = this.f16994a.m21554a(s2Var2, a2);
                            if (a) {
                                map6 = this.f16994a.f16983o;
                                map6.put(g, new ConnectionResult(16));
                            } else {
                                map7 = this.f16994a.f16983o;
                                map7.put(g, a2);
                            }
                        }
                    } else {
                        this.f16994a.f16983o = cVar.m21845a();
                    }
                    C6928t2 t2Var3 = this.f16994a;
                    h2 = this.f16994a.m21536h();
                    t2Var3.f16986r = h2;
                } else {
                    Log.e("ConnectionlessGAC", "Unexpected availability exception", hVar.mo16030a());
                    this.f16994a.f16983o = Collections.emptyMap();
                    this.f16994a.f16986r = new ConnectionResult(8);
                }
                map = this.f16994a.f16984p;
                if (map != null) {
                    map2 = this.f16994a.f16983o;
                    map3 = this.f16994a.f16984p;
                    map2.putAll(map3);
                    C6928t2 t2Var4 = this.f16994a;
                    h = this.f16994a.m21536h();
                    t2Var4.f16986r = h;
                }
                connectionResult = this.f16994a.f16986r;
                if (connectionResult == null) {
                    this.f16994a.m21540f();
                    this.f16994a.m21538g();
                } else {
                    this.f16994a.f16982n = false;
                    n0Var = this.f16994a.f16973e;
                    connectionResult2 = this.f16994a.f16986r;
                    n0Var.mo21581a(connectionResult2);
                }
                condition = this.f16994a.f16977i;
                condition.signalAll();
            }
        } finally {
            lock2 = this.f16994a.f16974f;
            lock2.unlock();
        }
    }
}
