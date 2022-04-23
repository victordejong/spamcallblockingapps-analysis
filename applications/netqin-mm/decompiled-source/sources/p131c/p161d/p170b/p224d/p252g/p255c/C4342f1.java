package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzca;
import com.google.android.gms.internal.clearcut.zzdo;
import com.google.android.gms.internal.clearcut.zzfq;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.f1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/f1.class */
public final class C4342f1<T> implements AbstractC4391o1<T> {

    /* renamed from: a */
    public final zzdo f16513a;

    /* renamed from: b */
    public final AbstractC4343f2<?, ?> f16514b;

    /* renamed from: c */
    public final boolean f16515c;

    /* renamed from: d */
    public final AbstractC4321b0<?> f16516d;

    public C4342f1(AbstractC4343f2<?, ?> f2Var, AbstractC4321b0<?> b0Var, zzdo zzdoVar) {
        this.f16514b = f2Var;
        this.f16515c = b0Var.mo25994a(zzdoVar);
        this.f16516d = b0Var;
        this.f16513a = zzdoVar;
    }

    /* renamed from: a */
    public static <T> C4342f1<T> m25919a(AbstractC4343f2<?, ?> f2Var, AbstractC4321b0<?> b0Var, zzdo zzdoVar) {
        return new C4342f1<>(f2Var, b0Var, zzdoVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    public final T mo25745a() {
        return (T) this.f16513a.mo10682e().mo10677u();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    public final void mo25744a(T t) {
        this.f16514b.mo25916a(t);
        this.f16516d.mo25989c(t);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    public final void mo25743a(T t, AbstractC4407r2 r2Var) throws IOException {
        Iterator<Map.Entry<?, Object>> e = this.f16516d.mo25993a(t).m25924e();
        while (e.hasNext()) {
            Map.Entry<?, Object> next = e.next();
            zzca zzcaVar = (zzca) next.getKey();
            if (zzcaVar.mo10714q() != zzfq.MESSAGE || zzcaVar.mo10713t() || zzcaVar.mo10715m()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            r2Var.mo25619a(zzcaVar.zzc(), next instanceof C4380m0 ? ((C4380m0) next).m25806a().m10690b() : next.getValue());
        }
        AbstractC4343f2<?, ?> f2Var = this.f16514b;
        f2Var.mo25909b((AbstractC4343f2<?, ?>) f2Var.mo25907c(t), r2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00eb A[EDGE_INSN: B:56:0x00eb->B:29:0x00eb ?: BREAK  , SYNTHETIC] */
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo25741a(T r8, byte[] r9, int r10, int r11, p131c.p161d.p170b.p224d.p252g.p255c.C4389o r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4342f1.mo25741a(java.lang.Object, byte[], int, int, c.d.b.d.g.c.o):void");
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: a */
    public final boolean mo25742a(T t, T t2) {
        if (!this.f16514b.mo25907c(t).equals(this.f16514b.mo25907c(t2))) {
            return false;
        }
        if (this.f16515c) {
            return this.f16516d.mo25993a(t).equals(this.f16516d.mo25993a(t2));
        }
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: b */
    public final int mo25740b(T t) {
        int hashCode = this.f16514b.mo25907c(t).hashCode();
        int i = hashCode;
        if (this.f16515c) {
            i = (hashCode * 53) + this.f16516d.mo25993a(t).hashCode();
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: b */
    public final void mo25739b(T t, T t2) {
        C4401q1.m25715a(this.f16514b, t, t2);
        if (this.f16515c) {
            C4401q1.m25716a(this.f16516d, t, t2);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: c */
    public final int mo25738c(T t) {
        AbstractC4343f2<?, ?> f2Var = this.f16514b;
        int d = f2Var.mo25905d(f2Var.mo25907c(t)) + 0;
        int i = d;
        if (this.f16515c) {
            i = d + this.f16516d.mo25993a(t).m25922g();
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1
    /* renamed from: d */
    public final boolean mo25737d(T t) {
        return this.f16516d.mo25993a(t).m25925d();
    }
}
