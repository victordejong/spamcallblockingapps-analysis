package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzjj;
import com.google.android.gms.internal.measurement.zzju;
/* renamed from: c.d.b.d.g.f.l4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/l4.class */
public final class C4539l4 implements AbstractC4630z3 {

    /* renamed from: a */
    public final zzjj f16807a;

    /* renamed from: b */
    public final String f16808b;

    /* renamed from: c */
    public final Object[] f16809c;

    /* renamed from: d */
    public final int f16810d;

    public C4539l4(zzjj zzjjVar, String str, Object[] objArr) {
        this.f16807a = zzjjVar;
        this.f16808b = str;
        this.f16809c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f16810d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f16810d = i | (charAt2 << i2);
                return;
            }
        }
    }

    /* renamed from: a */
    public final String m25386a() {
        return this.f16808b;
    }

    /* renamed from: b */
    public final Object[] m25385b() {
        return this.f16809c;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4630z3
    public final int zza() {
        return (this.f16810d & 1) == 1 ? zzju.f29517a : zzju.f29518b;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4630z3
    public final boolean zzb() {
        return (this.f16810d & 2) == 2;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4630z3
    public final zzjj zzc() {
        return this.f16807a;
    }
}
