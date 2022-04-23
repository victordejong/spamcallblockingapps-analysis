package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzmx;
import com.google.android.gms.internal.ads.zzna;
import com.google.android.gms.internal.ads.zznl;
import com.google.android.gms.internal.ads.zznm;
import com.google.android.gms.internal.ads.zznp;
import com.google.android.gms.internal.ads.zznq;
import java.io.IOException;
import java.util.IdentityHashMap;
/* renamed from: c.d.b.d.g.a.oe0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/oe0.class */
public final class oe0 implements zzmx, zzna {

    /* renamed from: a */
    public final zzmx[] f14330a;

    /* renamed from: b */
    public final IdentityHashMap<zznm, Integer> f14331b = new IdentityHashMap<>();

    /* renamed from: c */
    public zzna f14332c;

    /* renamed from: d */
    public int f14333d;

    /* renamed from: e */
    public zznp f14334e;

    /* renamed from: f */
    public zzmx[] f14335f;

    /* renamed from: g */
    public zznl f14336g;

    public oe0(zzmx... zzmxVarArr) {
        this.f14330a = zzmxVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzmx, com.google.android.gms.internal.ads.zznl
    /* renamed from: a */
    public final long mo11766a() {
        return this.f14336g.mo11766a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11805a(com.google.android.gms.internal.ads.zzob[] r9, boolean[] r10, com.google.android.gms.internal.ads.zznm[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.oe0.mo11805a(com.google.android.gms.internal.ads.zzob[], boolean[], com.google.android.gms.internal.ads.zznm[], boolean[], long):long");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.zzna
    /* renamed from: a */
    public final void mo11796a(zzmx zzmxVar) {
        int i = this.f14333d - 1;
        this.f14333d = i;
        if (i <= 0) {
            int i2 = 0;
            for (zzmx zzmxVar2 : this.f14330a) {
                i2 += zzmxVar2.mo11799f().f28686a;
            }
            zznq[] zznqVarArr = new zznq[i2];
            int i3 = 0;
            for (zzmx zzmxVar3 : this.f14330a) {
                zznp f = zzmxVar3.mo11799f();
                int i4 = f.f28686a;
                int i5 = 0;
                while (i5 < i4) {
                    zznqVarArr[i3] = f.m11754a(i5);
                    i5++;
                    i3++;
                }
            }
            this.f14334e = new zznp(zznqVarArr);
            this.f14332c.mo11796a((zzmx) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: a */
    public final void mo11806a(zzna zznaVar, long j) {
        this.f14332c = zznaVar;
        zzmx[] zzmxVarArr = this.f14330a;
        this.f14333d = zzmxVarArr.length;
        for (zzmx zzmxVar : zzmxVarArr) {
            zzmxVar.mo11806a(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzno
    /* renamed from: a */
    public final /* synthetic */ void mo11755a(zzmx zzmxVar) {
        if (this.f14334e != null) {
            this.f14332c.mo11755a((zzna) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx, com.google.android.gms.internal.ads.zznl
    /* renamed from: a */
    public final boolean mo11765a(long j) {
        return this.f14336g.mo11765a(j);
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: b */
    public final long mo11804b(long j) {
        long b = this.f14335f[0].mo11804b(j);
        int i = 1;
        while (true) {
            zzmx[] zzmxVarArr = this.f14335f;
            if (i >= zzmxVarArr.length) {
                return b;
            }
            if (zzmxVarArr[i].mo11804b(b) == b) {
                i++;
            } else {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11803c() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.zzmx[] r0 = r0.f14335f
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.mo11803c()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004b
            r0 = -9223372036854775808
            return r0
        L_0x004b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.oe0.mo11803c():long");
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: c */
    public final void mo11802c(long j) {
        for (zzmx zzmxVar : this.f14335f) {
            zzmxVar.mo11802c(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: d */
    public final long mo11801d() {
        zzmx[] zzmxVarArr;
        long d = this.f14330a[0].mo11801d();
        int i = 1;
        while (true) {
            zzmx[] zzmxVarArr2 = this.f14330a;
            if (i >= zzmxVarArr2.length) {
                if (d != -9223372036854775807L) {
                    for (zzmx zzmxVar : this.f14335f) {
                        if (zzmxVar != this.f14330a[0] && zzmxVar.mo11804b(d) != d) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return d;
            } else if (zzmxVarArr2[i].mo11801d() == -9223372036854775807L) {
                i++;
            } else {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: e */
    public final void mo11800e() throws IOException {
        for (zzmx zzmxVar : this.f14330a) {
            zzmxVar.mo11800e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: f */
    public final zznp mo11799f() {
        return this.f14334e;
    }
}
