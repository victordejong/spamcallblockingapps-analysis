package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.IdentityHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqi.class */
final class dqi implements dqd, dqe {

    /* renamed from: a */
    public final dqe[] f15378a;

    /* renamed from: b */
    private final IdentityHashMap<dqo, Integer> f15379b = new IdentityHashMap<>();

    /* renamed from: c */
    private dqd f15380c;

    /* renamed from: d */
    private int f15381d;

    /* renamed from: e */
    private dqv f15382e;

    /* renamed from: f */
    private dqe[] f15383f;

    /* renamed from: g */
    private dqr f15384g;

    public dqi(dqe... dqeVarArr) {
        this.f15378a = dqeVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: a */
    public final long mo8891a(dre[] dreVarArr, boolean[] zArr, dqo[] dqoVarArr, boolean[] zArr2, long j) {
        char c;
        boolean z;
        int[] iArr = new int[dreVarArr.length];
        int[] iArr2 = new int[dreVarArr.length];
        for (int i = 0; i < dreVarArr.length; i++) {
            iArr[i] = dqoVarArr[i] == null ? -1 : this.f15379b.get(dqoVarArr[i]).intValue();
            iArr2[i] = -1;
            if (dreVarArr[i] != null) {
                dqs mo8827a = dreVarArr[i].mo8827a();
                int i2 = 0;
                while (true) {
                    if (i2 >= this.f15378a.length) {
                        break;
                    } else if (this.f15378a[i2].mo8887d().m8834a(mo8827a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.f15379b.clear();
        dqo[] dqoVarArr2 = new dqo[dreVarArr.length];
        dqo[] dqoVarArr3 = new dqo[dreVarArr.length];
        dre[] dreVarArr2 = new dre[dreVarArr.length];
        ArrayList arrayList = new ArrayList(this.f15378a.length);
        int i3 = 0;
        char c2 = j;
        while (true) {
            char c3 = c2;
            if (i3 >= this.f15378a.length) {
                System.arraycopy(dqoVarArr2, 0, dqoVarArr, 0, dqoVarArr2.length);
                this.f15383f = new dqe[arrayList.size()];
                arrayList.toArray(this.f15383f);
                this.f15384g = new dpq(this.f15383f);
                return c3;
            }
            for (int i4 = 0; i4 < dreVarArr.length; i4++) {
                dqoVarArr3[i4] = iArr[i4] == i3 ? dqoVarArr[i4] : null;
                dreVarArr2[i4] = iArr2[i4] == i3 ? dreVarArr[i4] : null;
            }
            ?? mo8891a = this.f15378a[i3].mo8891a(dreVarArr2, zArr, dqoVarArr3, zArr2, c3);
            if (i3 == 0) {
                c = mo8891a;
            } else {
                c = c3;
                if (mo8891a != c3) {
                    throw new IllegalStateException("Children enabled at different positions");
                }
            }
            boolean z2 = false;
            int i5 = 0;
            while (i5 < dreVarArr.length) {
                if (iArr2[i5] == i3) {
                    drz.m8770b(dqoVarArr3[i5] != null);
                    dqoVarArr2[i5] = dqoVarArr3[i5];
                    z = true;
                    this.f15379b.put(dqoVarArr3[i5], Integer.valueOf(i3));
                } else {
                    z = z2;
                    if (iArr[i5] == i3) {
                        drz.m8770b(dqoVarArr3[i5] == null);
                        z = z2;
                    }
                }
                i5++;
                z2 = z;
            }
            if (z2) {
                arrayList.add(this.f15378a[i3]);
            }
            i3++;
            c2 = c;
        }
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: a */
    public final void mo8893a(dqd dqdVar, long j) {
        this.f15380c = dqdVar;
        this.f15381d = this.f15378a.length;
        for (dqe dqeVar : this.f15378a) {
            dqeVar.mo8893a(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.dqd
    /* renamed from: a */
    public final void mo8892a(dqe dqeVar) {
        int i = this.f15381d - 1;
        this.f15381d = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (dqe dqeVar2 : this.f15378a) {
            i2 += dqeVar2.mo8887d().f15438b;
        }
        dqs[] dqsVarArr = new dqs[i2];
        int i3 = 0;
        for (dqe dqeVar3 : this.f15378a) {
            dqv mo8887d = dqeVar3.mo8887d();
            int i4 = mo8887d.f15438b;
            int i5 = 0;
            while (i5 < i4) {
                dqsVarArr[i3] = mo8887d.m8835a(i5);
                i5++;
                i3++;
            }
        }
        this.f15382e = new dqv(dqsVarArr);
        this.f15380c.mo8892a((dqe) this);
    }

    @Override // com.google.android.gms.internal.ads.dqq
    /* renamed from: a */
    public final /* synthetic */ void mo8845a(dqe dqeVar) {
        if (this.f15382e != null) {
            this.f15380c.mo8845a((dqd) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.dqe, com.google.android.gms.internal.ads.dqr
    /* renamed from: a */
    public final boolean mo8844a(long j) {
        return this.f15384g.mo8844a(j);
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: b */
    public final void mo8890b(long j) {
        for (dqe dqeVar : this.f15383f) {
            dqeVar.mo8890b(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: c */
    public final long mo8888c(long j) {
        long mo8888c = this.f15383f[0].mo8888c(j);
        for (int i = 1; i < this.f15383f.length; i++) {
            if (this.f15383f[i].mo8888c(mo8888c) != mo8888c) {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
        return mo8888c;
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: c */
    public final void mo8889c() {
        for (dqe dqeVar : this.f15378a) {
            dqeVar.mo8889c();
        }
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: d */
    public final dqv mo8887d() {
        return this.f15382e;
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: e */
    public final long mo8886e() {
        dqe[] dqeVarArr;
        long mo8886e = this.f15378a[0].mo8886e();
        for (int i = 1; i < this.f15378a.length; i++) {
            if (this.f15378a[i].mo8886e() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
        if (mo8886e != -9223372036854775807L) {
            for (dqe dqeVar : this.f15383f) {
                if (dqeVar != this.f15378a[0] && dqeVar.mo8888c(mo8886e) != mo8886e) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
            }
        }
        return mo8886e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: f */
    public final long mo8885f() {
        char c;
        dqe[] dqeVarArr = this.f15383f;
        int length = dqeVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo8885f = dqeVarArr[i].mo8885f();
            char c2 = c;
            if (mo8885f != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo8885f);
            }
            i++;
            r0 = c2;
        }
        char c3 = c;
        if (c == Long.MAX_VALUE) {
            c3 = 0;
        }
        return c3;
    }

    @Override // com.google.android.gms.internal.ads.dqe, com.google.android.gms.internal.ads.dqr
    /* renamed from: n_ */
    public final long mo8843n_() {
        return this.f15384g.mo8843n_();
    }
}
