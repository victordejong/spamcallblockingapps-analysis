package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6819b;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.q.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/s.class */
public final class C6921s {

    /* renamed from: a */
    public final Map<BasePendingResult<?>, Boolean> f16949a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    public final Map<C9145i<?>, Boolean> f16950b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: a */
    public final void m21579a(BasePendingResult<? extends AbstractC6835k> basePendingResult, boolean z) {
        this.f16949a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.m31985a((AbstractC6829g.AbstractC6830a) new C6925t(this, basePendingResult));
    }

    /* renamed from: a */
    public final <TResult> void m21577a(C9145i<TResult> iVar, boolean z) {
        this.f16950b.put(iVar, Boolean.valueOf(z));
        iVar.m16008a().mo16025a(new C6929u(this, iVar));
    }

    /* renamed from: a */
    public final void m21576a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f16949a) {
            hashMap = new HashMap(this.f16949a);
        }
        synchronized (this.f16950b) {
            hashMap2 = new HashMap(this.f16950b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).m31981b(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C9145i) entry2.getKey()).m16005b((Exception) new C6819b(status));
            }
        }
    }

    /* renamed from: a */
    public final boolean m21580a() {
        return !this.f16949a.isEmpty() || !this.f16950b.isEmpty();
    }

    /* renamed from: b */
    public final void m21575b() {
        m21576a(false, C6858e.f16785n);
    }

    /* renamed from: c */
    public final void m21573c() {
        m21576a(true, C6939w1.f17012d);
    }
}
