package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzdo;
import java.io.IOException;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.c0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/c0.class */
public final class C4326c0 extends AbstractC4321b0<zzcg.C7271a> {
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4321b0
    /* renamed from: a */
    public final int mo25991a(Map.Entry<?, ?> entry) {
        return ((zzcg.C7271a) entry.getKey()).f29246a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4321b0
    /* renamed from: a */
    public final C4341f0<zzcg.C7271a> mo25993a(Object obj) {
        return ((zzcg.zzd) obj).zzjv;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4321b0
    /* renamed from: a */
    public final void mo25995a(AbstractC4407r2 r2Var, Map.Entry<?, ?> entry) throws IOException {
        zzcg.C7271a aVar = (zzcg.C7271a) entry.getKey();
        switch (C4331d0.f16486a[aVar.f29247b.ordinal()]) {
            case 1:
                r2Var.mo25625a(aVar.f29246a, ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                r2Var.mo25624a(aVar.f29246a, ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                r2Var.mo25600d(aVar.f29246a, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                r2Var.mo25597e(aVar.f29246a, ((Long) entry.getValue()).longValue());
                return;
            case 5:
                r2Var.mo25623a(aVar.f29246a, ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                r2Var.mo25622a(aVar.f29246a, ((Long) entry.getValue()).longValue());
                return;
            case 7:
                r2Var.mo25604c(aVar.f29246a, ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                r2Var.mo25613a(aVar.f29246a, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                r2Var.mo25601d(aVar.f29246a, ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                r2Var.mo25595f(aVar.f29246a, ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                r2Var.mo25609b(aVar.f29246a, ((Long) entry.getValue()).longValue());
                return;
            case 12:
                r2Var.mo25598e(aVar.f29246a, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                r2Var.mo25603c(aVar.f29246a, ((Long) entry.getValue()).longValue());
                return;
            case 14:
                r2Var.mo25623a(aVar.f29246a, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                r2Var.mo25620a(aVar.f29246a, (zzbb) entry.getValue());
                return;
            case 16:
                r2Var.mo25617a(aVar.f29246a, (String) entry.getValue());
                return;
            case 17:
                r2Var.mo25608b(aVar.f29246a, entry.getValue(), C4362j1.m25894a().m25893a((Class) entry.getValue().getClass()));
                return;
            case 18:
                r2Var.mo25618a(aVar.f29246a, entry.getValue(), C4362j1.m25894a().m25893a((Class) entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public final void m25992a(Object obj, C4341f0<zzcg.C7271a> f0Var) {
        ((zzcg.zzd) obj).zzjv = f0Var;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4321b0
    /* renamed from: a */
    public final boolean mo25994a(zzdo zzdoVar) {
        return zzdoVar instanceof zzcg.zzd;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4321b0
    /* renamed from: b */
    public final C4341f0<zzcg.C7271a> mo25990b(Object obj) {
        C4341f0<zzcg.C7271a> a = mo25993a(obj);
        C4341f0<zzcg.C7271a> f0Var = a;
        if (a.m25927c()) {
            f0Var = (C4341f0) a.clone();
            m25992a(obj, f0Var);
        }
        return f0Var;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4321b0
    /* renamed from: c */
    public final void mo25989c(Object obj) {
        mo25993a(obj).m25921h();
    }
}
