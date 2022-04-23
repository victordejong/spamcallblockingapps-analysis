package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhi;
import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zziq;
import com.google.android.gms.internal.measurement.zzjb;
import com.google.android.gms.internal.measurement.zzjj;
import com.google.android.gms.internal.measurement.zzlp;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.y2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/y2.class */
public final class C4623y2 implements AbstractC4582r5 {

    /* renamed from: a */
    public final zzhi f16937a;

    public C4623y2(zzhi zzhiVar) {
        zzia.m9636a(zzhiVar, "output");
        zzhi zzhiVar2 = zzhiVar;
        this.f16937a = zzhiVar2;
        zzhiVar2.f29489a = this;
    }

    /* renamed from: a */
    public static C4623y2 m25150a(zzhi zzhiVar) {
        C4623y2 y2Var = zzhiVar.f29489a;
        return y2Var != null ? y2Var : new C4623y2(zzhiVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25163a(int i, double d) throws IOException {
        this.f16937a.m9759a(i, d);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25162a(int i, float f) throws IOException {
        this.f16937a.m9758a(i, f);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25161a(int i, int i2) throws IOException {
        this.f16937a.mo9685b(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25160a(int i, long j) throws IOException {
        this.f16937a.mo9697a(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final <K, V> void mo25159a(int i, C4600u3<K, V> u3Var, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f16937a.mo9698a(i, 2);
            this.f16937a.mo9686b(zzjb.m9623a(u3Var, entry.getKey(), entry.getValue()));
            zzjb.m9622a(this.f16937a, u3Var, entry.getKey(), entry.getValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25158a(int i, zzgp zzgpVar) throws IOException {
        this.f16937a.mo9696a(i, zzgpVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25157a(int i, Object obj) throws IOException {
        if (obj instanceof zzgp) {
            this.f16937a.mo9684b(i, (zzgp) obj);
        } else {
            this.f16937a.mo9695a(i, (zzjj) obj);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25156a(int i, Object obj, AbstractC4560o4 o4Var) throws IOException {
        this.f16937a.mo9694a(i, (zzjj) obj, o4Var);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25155a(int i, String str) throws IOException {
        this.f16937a.mo9693a(i, str);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25154a(int i, List<zzgp> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f16937a.mo9696a(i, list.get(i2));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25153a(int i, List<?> list, AbstractC4560o4 o4Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo25156a(i, list.get(i2), o4Var);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25152a(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9736b(list.get(i3).booleanValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.m9753a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9692a(i, list.get(i5).booleanValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: a */
    public final void mo25151a(int i, boolean z) throws IOException {
        this.f16937a.mo9692a(i, z);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: b */
    public final void mo25149b(int i, int i2) throws IOException {
        this.f16937a.mo9685b(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: b */
    public final void mo25148b(int i, long j) throws IOException {
        this.f16937a.m9746b(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: b */
    public final void mo25147b(int i, Object obj, AbstractC4560o4 o4Var) throws IOException {
        zzhi zzhiVar = this.f16937a;
        zzhiVar.mo9698a(i, 3);
        o4Var.mo25349a((AbstractC4560o4) ((zzjj) obj), (AbstractC4582r5) zzhiVar.f29489a);
        zzhiVar.mo9698a(i, 4);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: b */
    public final void mo25146b(int i, List<String> list) throws IOException {
        if (list instanceof zziq) {
            zziq zziqVar = (zziq) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object zzb = zziqVar.zzb(i2);
                if (zzb instanceof String) {
                    this.f16937a.mo9693a(i, (String) zzb);
                } else {
                    this.f16937a.mo9696a(i, (zzgp) zzb);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f16937a.mo9693a(i, list.get(i3));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: b */
    public final void mo25145b(int i, List<?> list, AbstractC4560o4 o4Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo25147b(i, list.get(i2), o4Var);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: b */
    public final void mo25144b(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9722f(list.get(i3).intValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9699a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9685b(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: c */
    public final void mo25143c(int i, int i2) throws IOException {
        this.f16937a.m9729d(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: c */
    public final void mo25142c(int i, long j) throws IOException {
        this.f16937a.mo9681c(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: c */
    public final void mo25141c(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9705k(list.get(i3).intValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9699a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9685b(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: d */
    public final void mo25140d(int i, int i2) throws IOException {
        this.f16937a.mo9677e(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: d */
    public final void mo25139d(int i, long j) throws IOException {
        this.f16937a.mo9681c(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: d */
    public final void mo25138d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9726d(list.get(i3).longValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9691a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9697a(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: e */
    public final void mo25137e(int i, int i2) throws IOException {
        this.f16937a.mo9682c(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: e */
    public final void mo25136e(int i, long j) throws IOException {
        this.f16937a.mo9697a(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: e */
    public final void mo25135e(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9711h(list.get(i3).longValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9680c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9681c(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: f */
    public final void mo25134f(int i, int i2) throws IOException {
        this.f16937a.mo9677e(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: f */
    public final void mo25133f(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9710i(list.get(i3).intValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9678d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9677e(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: g */
    public final void mo25132g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9718g(list.get(i3).intValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9686b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9682c(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: h */
    public final void mo25131h(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9707j(list.get(i3).intValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9678d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9677e(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: i */
    public final void mo25130i(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9715g(list.get(i3).longValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9680c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9681c(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: j */
    public final void mo25129j(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9719f(list.get(i3).longValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.m9740b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.m9746b(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: k */
    public final void mo25128k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9723e(list.get(i3).longValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.mo9691a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.mo9697a(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: l */
    public final void mo25127l(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9714h(list.get(i3).intValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.m9733c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.m9729d(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: m */
    public final void mo25126m(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9750b(list.get(i3).doubleValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.m9761a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.m9759a(i, list.get(i5).doubleValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    /* renamed from: n */
    public final void mo25125n(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f16937a.mo9698a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhi.m9749b(list.get(i3).floatValue());
            }
            this.f16937a.mo9686b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16937a.m9760a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16937a.m9758a(i, list.get(i5).floatValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    public final int zza() {
        return zzlp.f29528a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    public final void zza(int i) throws IOException {
        this.f16937a.mo9698a(i, 3);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5
    public final void zzb(int i) throws IOException {
        this.f16937a.mo9698a(i, 4);
    }
}
