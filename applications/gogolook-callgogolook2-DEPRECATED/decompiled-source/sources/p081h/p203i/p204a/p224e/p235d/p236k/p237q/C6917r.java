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
/* renamed from: h.i.a.e.d.k.q.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/r.class */
public final class C6917r implements AbstractC9132c<Map<C6864e2<?>, String>> {

    /* renamed from: a */
    public AbstractC6893l f16944a;

    /* renamed from: b */
    public final /* synthetic */ C6928t2 f16945b;

    public C6917r(C6928t2 t2Var, AbstractC6893l lVar) {
        this.f16945b = t2Var;
        this.f16944a = lVar;
    }

    /* renamed from: a */
    public final void m21590a() {
        this.f16944a.onComplete();
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
    /* renamed from: a */
    public final void mo3743a(@NonNull AbstractC9143h<Map<C6864e2<?>, String>> hVar) {
        Lock lock;
        Lock lock2;
        boolean z;
        Map map;
        Map map2;
        ConnectionResult h;
        Condition condition;
        boolean z2;
        Map map3;
        Map map4;
        boolean a;
        Map map5;
        Map map6;
        Map map7;
        Map map8;
        Map map9;
        lock = this.f16945b.f16974f;
        lock.lock();
        try {
            z = this.f16945b.f16982n;
            if (!z) {
                this.f16944a.onComplete();
                return;
            }
            if (hVar.mo16009e()) {
                C6928t2 t2Var = this.f16945b;
                map7 = this.f16945b.f16970b;
                t2Var.f16984p = new ArrayMap(map7.size());
                map8 = this.f16945b.f16970b;
                for (C6924s2 s2Var : map8.values()) {
                    map9 = this.f16945b.f16984p;
                    map9.put(s2Var.m21830g(), ConnectionResult.f6495e);
                }
            } else if (hVar.mo16030a() instanceof C6820c) {
                C6820c cVar = (C6820c) hVar.mo16030a();
                z2 = this.f16945b.f16980l;
                if (z2) {
                    C6928t2 t2Var2 = this.f16945b;
                    map3 = this.f16945b.f16970b;
                    t2Var2.f16984p = new ArrayMap(map3.size());
                    map4 = this.f16945b.f16970b;
                    for (C6924s2 s2Var2 : map4.values()) {
                        Object g = s2Var2.m21830g();
                        ConnectionResult a2 = cVar.m21844a(s2Var2);
                        a = this.f16945b.m21554a(s2Var2, a2);
                        if (a) {
                            map5 = this.f16945b.f16984p;
                            map5.put(g, new ConnectionResult(16));
                        } else {
                            map6 = this.f16945b.f16984p;
                            map6.put(g, a2);
                        }
                    }
                } else {
                    this.f16945b.f16984p = cVar.m21845a();
                }
            } else {
                Log.e("ConnectionlessGAC", "Unexpected availability exception", hVar.mo16030a());
                this.f16945b.f16984p = Collections.emptyMap();
            }
            if (this.f16945b.isConnected()) {
                map = this.f16945b.f16983o;
                map2 = this.f16945b.f16984p;
                map.putAll(map2);
                h = this.f16945b.m21536h();
                if (h == null) {
                    this.f16945b.m21540f();
                    this.f16945b.m21538g();
                    condition = this.f16945b.f16977i;
                    condition.signalAll();
                }
            }
            this.f16944a.onComplete();
        } finally {
            lock2 = this.f16945b.f16974f;
            lock2.unlock();
        }
    }
}
