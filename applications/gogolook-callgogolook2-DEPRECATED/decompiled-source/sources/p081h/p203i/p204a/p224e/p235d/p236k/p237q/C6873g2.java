package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p236k.C6820c;
import p081h.p203i.p204a.p224e.p235d.p236k.C6822e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.q.g2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/g2.class */
public final class C6873g2 {

    /* renamed from: d */
    public int f16850d;

    /* renamed from: b */
    public final ArrayMap<C6864e2<?>, String> f16848b = new ArrayMap<>();

    /* renamed from: c */
    public final C9145i<Map<C6864e2<?>, String>> f16849c = new C9145i<>();

    /* renamed from: e */
    public boolean f16851e = false;

    /* renamed from: a */
    public final ArrayMap<C6864e2<?>, ConnectionResult> f16847a = new ArrayMap<>();

    public C6873g2(Iterable<? extends C6822e<?>> iterable) {
        Iterator<? extends C6822e<?>> it = iterable.iterator();
        while (it.hasNext()) {
            this.f16847a.put(((C6822e) it.next()).m21830g(), null);
        }
        this.f16850d = this.f16847a.keySet().size();
    }

    /* renamed from: a */
    public final AbstractC9143h<Map<C6864e2<?>, String>> m21677a() {
        return this.f16849c.m16008a();
    }

    /* renamed from: a */
    public final void m21676a(C6864e2<?> e2Var, ConnectionResult connectionResult, @Nullable String str) {
        this.f16847a.put(e2Var, connectionResult);
        this.f16848b.put(e2Var, str);
        this.f16850d--;
        if (!connectionResult.m32001K()) {
            this.f16851e = true;
        }
        if (this.f16850d != 0) {
            return;
        }
        if (this.f16851e) {
            this.f16849c.m16007a(new C6820c(this.f16847a));
            return;
        }
        this.f16849c.m16006a((C9145i<Map<C6864e2<?>, String>>) this.f16848b);
    }

    /* renamed from: b */
    public final Set<C6864e2<?>> m21675b() {
        return this.f16847a.keySet();
    }
}
