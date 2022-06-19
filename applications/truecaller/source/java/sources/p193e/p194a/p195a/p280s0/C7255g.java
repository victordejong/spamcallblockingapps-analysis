package p193e.p194a.p195a.p280s0;

import android.os.Build;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7156p;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
/* renamed from: e.a.a.s0.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/s0/g.class */
public class C7255g extends C7256h {

    /* renamed from: n */
    public boolean f23188n;

    public C7255g(AbstractC7201a abstractC7201a, AbstractC19230g abstractC19230g, String str, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC6392i0 abstractC6392i0, String str2, AbstractC19219a0 abstractC19219a0, AbstractC7156p abstractC7156p, AbstractC7249d abstractC7249d, AbstractC19510i0 abstractC19510i0, String str3, String str4) {
        super(abstractC7201a, abstractC19230g, str, abstractC19854f, abstractC6392i0, abstractC19219a0, abstractC7156p, abstractC7249d, abstractC19510i0, str3, str4);
    }

    @Override // p193e.p194a.p195a.p280s0.C7256h, p193e.p194a.p195a.p280s0.AbstractC7254f
    /* renamed from: Hj */
    public void mo29899Hj() {
        int i = 1;
        this.f23188n = true;
        PV pv = this.f57683a;
        if (pv != 0) {
            AbstractC7257i abstractC7257i = (AbstractC7257i) pv;
            if (!Build.MANUFACTURER.equalsIgnoreCase("xiaomi")) {
                i = 2;
            }
            if (abstractC7257i.mo29883na(i)) {
                return;
            }
            ((AbstractC7257i) this.f57683a).mo29881z8();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.C7256h
    /* renamed from: Mj */
    public void mo29894Mj(AbstractC7257i abstractC7257i) {
        this.f57683a = abstractC7257i;
        String str = this.f23200m;
        if (str == null) {
            m29892Oj();
        } else {
            abstractC7257i.mo29886d2(str);
        }
        this.f23193f.mo31125W2(true);
    }

    @Override // p193e.p194a.p195a.p280s0.C7256h
    /* renamed from: Nj */
    public void mo29893Nj() {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC7257i) pv).mo29885e2(Build.MANUFACTURER.equalsIgnoreCase("xiaomi") ? 1 : 2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.s0.i, PV] */
    @Override // p193e.p194a.p195a.p280s0.C7256h, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC7257i) obj;
        this.f57683a = r0;
        String str = this.f23200m;
        if (str == null) {
            m29892Oj();
        } else {
            r0.mo29886d2(str);
        }
        this.f23193f.mo31125W2(true);
    }

    @Override // p193e.p194a.p195a.p280s0.C7256h, p193e.p194a.p195a.p280s0.AbstractC7254f
    public void onResume() {
        PV pv;
        if (!this.f23188n || (pv = this.f57683a) == 0) {
            return;
        }
        ((AbstractC7257i) pv).mo29881z8();
    }
}
