package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.IdentityHashMap;
/* renamed from: com.google.android.gms.internal.ads.lg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lg.class */
final class C6700lg implements AbstractC6589ig, AbstractC6551hg {

    /* renamed from: d */
    public final AbstractC6589ig[] f26091d;

    /* renamed from: e */
    private final IdentityHashMap<AbstractC6996tg, Integer> f26092e = new IdentityHashMap<>();

    /* renamed from: f */
    private AbstractC6551hg f26093f;

    /* renamed from: g */
    private int f26094g;

    /* renamed from: h */
    private C7181yg f26095h;

    /* renamed from: i */
    private AbstractC6589ig[] f26096i;

    /* renamed from: j */
    private AbstractC7070vg f26097j;

    public C6700lg(AbstractC6589ig... abstractC6589igArr) {
        this.f26091d = abstractC6589igArr;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6551hg
    /* renamed from: a */
    public final void mo11984a(AbstractC6589ig abstractC6589ig) {
        int i = this.f26094g - 1;
        this.f26094g = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (AbstractC6589ig abstractC6589ig2 : this.f26091d) {
            i2 += abstractC6589ig2.mo13560m().f32493b;
        }
        C7144xg[] c7144xgArr = new C7144xg[i2];
        int i3 = 0;
        for (AbstractC6589ig abstractC6589ig3 : this.f26091d) {
            C7181yg mo13560m = abstractC6589ig3.mo13560m();
            int i4 = mo13560m.f32493b;
            int i5 = 0;
            while (i5 < i4) {
                c7144xgArr[i3] = mo13560m.m8834a(i5);
                i5++;
                i3++;
            }
        }
        this.f26095h = new C7181yg(c7144xgArr);
        this.f26093f.mo11984a(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7033ug
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10332b(AbstractC6589ig abstractC6589ig) {
        if (this.f26095h == null) {
            return;
        }
        this.f26093f.mo10332b(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig, com.google.android.gms.internal.ads.AbstractC7070vg
    /* renamed from: d */
    public final boolean mo9595d(long j) {
        return this.f26097j.mo9595d(j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: e */
    public final long mo13565e(long j) {
        long mo13565e = this.f26096i[0].mo13565e(j);
        int i = 1;
        while (true) {
            AbstractC6589ig[] abstractC6589igArr = this.f26096i;
            if (i < abstractC6589igArr.length) {
                if (abstractC6589igArr[i].mo13565e(mo13565e) != mo13565e) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
                i++;
            } else {
                return mo13565e;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.gms.internal.ads.ig[]] */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.google.android.gms.internal.ads.ig] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: i */
    public final long mo13564i(C6329bh[] c6329bhArr, boolean[] zArr, AbstractC6996tg[] abstractC6996tgArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        boolean z2;
        boolean z3;
        int length2 = c6329bhArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = c6329bhArr.length;
            if (i >= length) {
                break;
            }
            AbstractC6996tg abstractC6996tg = abstractC6996tgArr[i];
            iArr[i] = abstractC6996tg == null ? -1 : this.f26092e.get(abstractC6996tg).intValue();
            iArr2[i] = -1;
            C6329bh c6329bh = c6329bhArr[i];
            if (c6329bh != null) {
                C7144xg m16377a = c6329bh.m16377a();
                int i2 = 0;
                while (true) {
                    AbstractC6589ig[] abstractC6589igArr = this.f26091d;
                    if (i2 >= abstractC6589igArr.length) {
                        break;
                    } else if (abstractC6589igArr[i2].mo13560m().m8833b(m16377a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            i++;
        }
        this.f26092e.clear();
        AbstractC6996tg[] abstractC6996tgArr2 = new AbstractC6996tg[length];
        AbstractC6996tg[] abstractC6996tgArr3 = new AbstractC6996tg[length];
        C6329bh[] c6329bhArr2 = new C6329bh[length];
        ArrayList arrayList = new ArrayList(this.f26091d.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.f26091d.length) {
            for (int i4 = 0; i4 < c6329bhArr.length; i4++) {
                abstractC6996tgArr3[i4] = iArr[i4] == i3 ? abstractC6996tgArr[i4] : null;
                C6329bh c6329bh2 = null;
                if (iArr2[i4] == i3) {
                    c6329bh2 = c6329bhArr[i4];
                }
                c6329bhArr2[i4] = c6329bh2;
            }
            ?? mo13564i = this.f26091d[i3].mo13564i(c6329bhArr2, zArr, abstractC6996tgArr3, zArr2, z4);
            if (i3 == 0) {
                z = mo13564i;
            } else {
                int i5 = (mo13564i > z4 ? 1 : (mo13564i == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= c6329bhArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    C6367ci.m16039d(abstractC6996tgArr3[i6] != null);
                    AbstractC6996tg abstractC6996tg2 = abstractC6996tgArr3[i6];
                    abstractC6996tgArr2[i6] = abstractC6996tg2;
                    this.f26092e.put(abstractC6996tg2, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (abstractC6996tgArr3[i6] != null) {
                            z6 = false;
                        }
                        C6367ci.m16039d(z6);
                        z3 = z2;
                    }
                }
                i6++;
                z5 = z3;
            }
            if (z2) {
                arrayList.add(this.f26091d[i3]);
            }
            i3++;
            z4 = z;
        }
        System.arraycopy(abstractC6996tgArr2, 0, abstractC6996tgArr, 0, length);
        AbstractC6589ig[] abstractC6589igArr2 = new AbstractC6589ig[arrayList.size()];
        this.f26096i = abstractC6589igArr2;
        arrayList.toArray(abstractC6589igArr2);
        this.f26097j = new C7106wf(this.f26096i);
        return z4 == true ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: j */
    public final void mo13563j() {
        for (AbstractC6589ig abstractC6589ig : this.f26091d) {
            abstractC6589ig.mo13563j();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: k */
    public final long mo13562k() {
        char c;
        AbstractC6589ig[] abstractC6589igArr = this.f26096i;
        int length = abstractC6589igArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo13562k = abstractC6589igArr[i].mo13562k();
            char c2 = c;
            if (mo13562k != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo13562k);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: l */
    public final long mo13561l() {
        AbstractC6589ig[] abstractC6589igArr;
        long mo13561l = this.f26091d[0].mo13561l();
        int i = 1;
        while (true) {
            AbstractC6589ig[] abstractC6589igArr2 = this.f26091d;
            if (i >= abstractC6589igArr2.length) {
                if (mo13561l != -9223372036854775807L) {
                    for (AbstractC6589ig abstractC6589ig : this.f26096i) {
                        if (abstractC6589ig != this.f26091d[0] && abstractC6589ig.mo13565e(mo13561l) != mo13561l) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return mo13561l;
            } else if (abstractC6589igArr2[i].mo13561l() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity");
            } else {
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: m */
    public final C7181yg mo13560m() {
        return this.f26095h;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: n */
    public final void mo13559n(AbstractC6551hg abstractC6551hg, long j) {
        this.f26093f = abstractC6551hg;
        AbstractC6589ig[] abstractC6589igArr = this.f26091d;
        this.f26094g = abstractC6589igArr.length;
        for (AbstractC6589ig abstractC6589ig : abstractC6589igArr) {
            abstractC6589ig.mo13559n(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: o */
    public final void mo13558o(long j) {
        for (AbstractC6589ig abstractC6589ig : this.f26096i) {
            abstractC6589ig.mo13558o(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig, com.google.android.gms.internal.ads.AbstractC7070vg
    public final long zza() {
        return this.f26097j.zza();
    }
}
