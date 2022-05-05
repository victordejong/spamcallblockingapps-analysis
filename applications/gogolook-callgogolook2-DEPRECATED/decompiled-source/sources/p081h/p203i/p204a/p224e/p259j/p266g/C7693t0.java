package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1;
/* renamed from: h.i.a.e.j.g.t0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/t0.class */
public final class C7693t0 extends AbstractC7686s0<AbstractC7583f1.C7587d> {
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7686s0
    /* renamed from: a */
    public final int mo19798a(Map.Entry<?, ?> entry) {
        return ((AbstractC7583f1.C7587d) entry.getKey()).f17839a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7686s0
    /* renamed from: a */
    public final C7714w0<AbstractC7583f1.C7587d> mo19800a(Object obj) {
        return ((AbstractC7583f1.AbstractC7586c) obj).zzjv;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7686s0
    /* renamed from: a */
    public final void mo19801a(AbstractC7662o4 o4Var, Map.Entry<?, ?> entry) throws IOException {
        AbstractC7583f1.C7587d dVar = (AbstractC7583f1.C7587d) entry.getKey();
        switch (C7700u0.f18037a[dVar.f17840b.ordinal()]) {
            case 1:
                o4Var.mo19921a(dVar.f17839a, ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                o4Var.mo19920a(dVar.f17839a, ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                o4Var.mo19895e(dVar.f17839a, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                o4Var.mo19901c(dVar.f17839a, ((Long) entry.getValue()).longValue());
                return;
            case 5:
                o4Var.mo19896e(dVar.f17839a, ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                o4Var.mo19907b(dVar.f17839a, ((Long) entry.getValue()).longValue());
                return;
            case 7:
                o4Var.mo19919a(dVar.f17839a, ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                o4Var.mo19910a(dVar.f17839a, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                o4Var.mo19908b(dVar.f17839a, ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                o4Var.mo19893f(dVar.f17839a, ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                o4Var.mo19898d(dVar.f17839a, ((Long) entry.getValue()).longValue());
                return;
            case 12:
                o4Var.mo19902c(dVar.f17839a, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                o4Var.mo19918a(dVar.f17839a, ((Long) entry.getValue()).longValue());
                return;
            case 14:
                o4Var.mo19896e(dVar.f17839a, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                o4Var.mo19917a(dVar.f17839a, (AbstractC7539a0) entry.getValue());
                return;
            case 16:
                o4Var.mo19914a(dVar.f17839a, (String) entry.getValue());
                return;
            case 17:
                o4Var.mo19906b(dVar.f17839a, entry.getValue(), C7716w2.m19701a().m19700a((Class) entry.getValue().getClass()));
                return;
            case 18:
                o4Var.mo19915a(dVar.f17839a, entry.getValue(), C7716w2.m19701a().m19700a((Class) entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public final void m19799a(Object obj, C7714w0<AbstractC7583f1.C7587d> w0Var) {
        ((AbstractC7583f1.AbstractC7586c) obj).zzjv = w0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7686s0
    /* renamed from: a */
    public final boolean mo19802a(AbstractC7627k2 k2Var) {
        return k2Var instanceof AbstractC7583f1.AbstractC7586c;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7686s0
    /* renamed from: b */
    public final C7714w0<AbstractC7583f1.C7587d> mo19797b(Object obj) {
        C7714w0<AbstractC7583f1.C7587d> a = mo19800a(obj);
        C7714w0<AbstractC7583f1.C7587d> w0Var = a;
        if (a.m19709c()) {
            w0Var = (C7714w0) a.clone();
            m19799a(obj, w0Var);
        }
        return w0Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7686s0
    /* renamed from: c */
    public final void mo19796c(Object obj) {
        mo19800a(obj).m19703h();
    }
}
