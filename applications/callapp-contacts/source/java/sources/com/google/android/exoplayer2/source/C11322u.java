package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C10855ai;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
/* renamed from: com.google.android.exoplayer2.source.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/u.class */
final class C11322u implements AbstractC11312p, AbstractC11312p.AbstractC11313a {

    /* renamed from: a */
    final AbstractC11312p[] f37159a;

    /* renamed from: c */
    private final AbstractC11297f f37161c;

    /* renamed from: e */
    private AbstractC11312p.AbstractC11313a f37163e;

    /* renamed from: f */
    private TrackGroupArray f37164f;

    /* renamed from: h */
    private AbstractC11270ab f37166h;

    /* renamed from: d */
    private final ArrayList<AbstractC11312p> f37162d = new ArrayList<>();

    /* renamed from: b */
    private final IdentityHashMap<AbstractC11269aa, Integer> f37160b = new IdentityHashMap<>();

    /* renamed from: g */
    private AbstractC11312p[] f37165g = new AbstractC11312p[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.source.u$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/u$a.class */
    public static final class C11323a implements AbstractC11312p, AbstractC11312p.AbstractC11313a {

        /* renamed from: a */
        final AbstractC11312p f37167a;

        /* renamed from: b */
        private final long f37168b;

        /* renamed from: c */
        private AbstractC11312p.AbstractC11313a f37169c;

        public C11323a(AbstractC11312p abstractC11312p, long j) {
            this.f37167a = abstractC11312p;
            this.f37168b = j;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: D_ */
        public final void mo20908D_() throws IOException {
            this.f37167a.mo20908D_();
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: a */
        public final long mo20903a(long j, C10855ai c10855ai) {
            return this.f37167a.mo20903a(j - this.f37168b, c10855ai) + this.f37168b;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: a */
        public final long mo20895a(AbstractC11436c[] abstractC11436cArr, boolean[] zArr, AbstractC11269aa[] abstractC11269aaArr, boolean[] zArr2, long j) {
            AbstractC11269aa[] abstractC11269aaArr2 = new AbstractC11269aa[abstractC11269aaArr.length];
            int i = 0;
            while (true) {
                AbstractC11269aa abstractC11269aa = null;
                if (i >= abstractC11269aaArr.length) {
                    break;
                }
                C11324b c11324b = (C11324b) abstractC11269aaArr[i];
                if (c11324b != null) {
                    abstractC11269aa = c11324b.f37170a;
                }
                abstractC11269aaArr2[i] = abstractC11269aa;
                i++;
            }
            long mo20895a = this.f37167a.mo20895a(abstractC11436cArr, zArr, abstractC11269aaArr2, zArr2, j - this.f37168b);
            for (int i2 = 0; i2 < abstractC11269aaArr.length; i2++) {
                AbstractC11269aa abstractC11269aa2 = abstractC11269aaArr2[i2];
                if (abstractC11269aa2 == null) {
                    abstractC11269aaArr[i2] = null;
                } else if (abstractC11269aaArr[i2] == null || ((C11324b) abstractC11269aaArr[i2]).f37170a != abstractC11269aa2) {
                    abstractC11269aaArr[i2] = new C11324b(abstractC11269aa2, this.f37168b);
                }
            }
            return mo20895a + this.f37168b;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
        /* renamed from: a */
        public final void mo20904a(long j) {
            this.f37167a.mo20904a(j - this.f37168b);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: a */
        public final void mo20902a(long j, boolean z) {
            this.f37167a.mo20902a(j - this.f37168b, z);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11270ab.AbstractC11271a
        /* renamed from: a */
        public final /* synthetic */ void mo20916a(AbstractC11312p abstractC11312p) {
            ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37169c)).mo20916a((AbstractC11312p.AbstractC11313a) this);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: a */
        public final void mo20900a(AbstractC11312p.AbstractC11313a abstractC11313a, long j) {
            this.f37169c = abstractC11313a;
            this.f37167a.mo20900a(this, j - this.f37168b);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p.AbstractC11313a
        /* renamed from: a */
        public final void mo20915a(AbstractC11312p abstractC11312p) {
            ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37169c)).mo20915a((AbstractC11312p) this);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: b */
        public final long mo20891b(long j) {
            return this.f37167a.mo20891b(j - this.f37168b) + this.f37168b;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: b */
        public final TrackGroupArray mo20893b() {
            return this.f37167a.mo20893b();
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p
        /* renamed from: c */
        public final long mo20888c() {
            long mo20888c = this.f37167a.mo20888c();
            if (mo20888c == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return mo20888c + this.f37168b;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
        /* renamed from: c */
        public final boolean mo20887c(long j) {
            return this.f37167a.mo20887c(j - this.f37168b);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
        /* renamed from: d */
        public final long mo20885d() {
            long mo20885d = this.f37167a.mo20885d();
            if (mo20885d == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return mo20885d + this.f37168b;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
        /* renamed from: e */
        public final long mo20883e() {
            long mo20883e = this.f37167a.mo20883e();
            if (mo20883e == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return mo20883e + this.f37168b;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
        /* renamed from: f */
        public final boolean mo20881f() {
            return this.f37167a.mo20881f();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.u$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/u$b.class */
    static final class C11324b implements AbstractC11269aa {

        /* renamed from: a */
        final AbstractC11269aa f37170a;

        /* renamed from: b */
        private final long f37171b;

        public C11324b(AbstractC11269aa abstractC11269aa, long j) {
            this.f37170a = abstractC11269aa;
            this.f37171b = j;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final int mo20864a(long j) {
            return this.f37170a.mo20864a(j - this.f37171b);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final int mo20863a(C11258q c11258q, DecoderInputBuffer decoderInputBuffer, boolean z) {
            int mo20863a = this.f37170a.mo20863a(c11258q, decoderInputBuffer, z);
            if (mo20863a == -4) {
                decoderInputBuffer.f35338e = Math.max(0L, decoderInputBuffer.f35338e + this.f37171b);
            }
            return mo20863a;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final boolean mo20865a() {
            return this.f37170a.mo20865a();
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: b */
        public final void mo20862b() throws IOException {
            this.f37170a.mo20862b();
        }
    }

    public C11322u(AbstractC11297f abstractC11297f, long[] jArr, AbstractC11312p... abstractC11312pArr) {
        this.f37161c = abstractC11297f;
        this.f37159a = abstractC11312pArr;
        this.f37166h = abstractC11297f.mo20972a(new AbstractC11270ab[0]);
        for (int i = 0; i < abstractC11312pArr.length; i++) {
            if (jArr[i] != 0) {
                this.f37159a[i] = new C11323a(abstractC11312pArr[i], jArr[i]);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: D_ */
    public final void mo20908D_() throws IOException {
        for (AbstractC11312p abstractC11312p : this.f37159a) {
            abstractC11312p.mo20908D_();
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20903a(long j, C10855ai c10855ai) {
        AbstractC11312p[] abstractC11312pArr = this.f37165g;
        return (abstractC11312pArr.length > 0 ? abstractC11312pArr[0] : this.f37159a[0]).mo20903a(j, c10855ai);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [com.google.android.exoplayer2.source.p[]] */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.exoplayer2.source.p] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20895a(AbstractC11436c[] abstractC11436cArr, boolean[] zArr, AbstractC11269aa[] abstractC11269aaArr, boolean[] zArr2, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        int[] iArr = new int[abstractC11436cArr.length];
        int[] iArr2 = new int[abstractC11436cArr.length];
        for (int i = 0; i < abstractC11436cArr.length; i++) {
            Integer num = abstractC11269aaArr[i] == null ? null : this.f37160b.get(abstractC11269aaArr[i]);
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            if (abstractC11436cArr[i] != null) {
                TrackGroup d = abstractC11436cArr[i].mo20558d();
                int i2 = 0;
                while (true) {
                    AbstractC11312p[] abstractC11312pArr = this.f37159a;
                    if (i2 >= abstractC11312pArr.length) {
                        break;
                    } else if (abstractC11312pArr[i2].mo20893b().indexOf(d) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.f37160b.clear();
        int length = abstractC11436cArr.length;
        AbstractC11269aa[] abstractC11269aaArr2 = new AbstractC11269aa[length];
        AbstractC11269aa[] abstractC11269aaArr3 = new AbstractC11269aa[abstractC11436cArr.length];
        AbstractC11436c[] abstractC11436cArr2 = new AbstractC11436c[abstractC11436cArr.length];
        ArrayList arrayList = new ArrayList(this.f37159a.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.f37159a.length) {
            for (int i4 = 0; i4 < abstractC11436cArr.length; i4++) {
                abstractC11269aaArr3[i4] = iArr[i4] == i3 ? abstractC11269aaArr[i4] : null;
                abstractC11436cArr2[i4] = iArr2[i4] == i3 ? abstractC11436cArr[i4] : null;
            }
            ?? mo20895a = this.f37159a[i3].mo20895a(abstractC11436cArr2, zArr, abstractC11269aaArr3, zArr2, z4);
            if (i3 == 0) {
                z = mo20895a;
            } else {
                int i5 = (mo20895a > z4 ? 1 : (mo20895a == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions.");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= abstractC11436cArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    AbstractC11269aa abstractC11269aa = (AbstractC11269aa) C11593a.m20020b(abstractC11269aaArr3[i6]);
                    abstractC11269aaArr2[i6] = abstractC11269aaArr3[i6];
                    this.f37160b.put(abstractC11269aa, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (abstractC11269aaArr3[i6] != null) {
                            z6 = false;
                        }
                        C11593a.m20019b(z6);
                        z3 = z2;
                    }
                }
                i6++;
                z5 = z3;
            }
            if (z2) {
                arrayList.add(this.f37159a[i3]);
            }
            i3++;
            z4 = z;
        }
        System.arraycopy(abstractC11269aaArr2, 0, abstractC11269aaArr, 0, length);
        AbstractC11312p[] abstractC11312pArr2 = (AbstractC11312p[]) arrayList.toArray(new AbstractC11312p[0]);
        this.f37165g = abstractC11312pArr2;
        this.f37166h = this.f37161c.mo20972a(abstractC11312pArr2);
        return z4 == true ? 1 : 0;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: a */
    public final void mo20904a(long j) {
        this.f37166h.mo20904a(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20902a(long j, boolean z) {
        for (AbstractC11312p abstractC11312p : this.f37165g) {
            abstractC11312p.mo20902a(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab.AbstractC11271a
    /* renamed from: a */
    public final /* synthetic */ void mo20916a(AbstractC11312p abstractC11312p) {
        ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37163e)).mo20916a((AbstractC11312p.AbstractC11313a) this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20900a(AbstractC11312p.AbstractC11313a abstractC11313a, long j) {
        this.f37163e = abstractC11313a;
        Collections.addAll(this.f37162d, this.f37159a);
        for (AbstractC11312p abstractC11312p : this.f37159a) {
            abstractC11312p.mo20900a(this, j);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p.AbstractC11313a
    /* renamed from: a */
    public final void mo20915a(AbstractC11312p abstractC11312p) {
        this.f37162d.remove(abstractC11312p);
        if (!this.f37162d.isEmpty()) {
            return;
        }
        int i = 0;
        for (AbstractC11312p abstractC11312p2 : this.f37159a) {
            i += abstractC11312p2.mo20893b().length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i];
        int i2 = 0;
        for (AbstractC11312p abstractC11312p3 : this.f37159a) {
            TrackGroupArray mo20893b = abstractC11312p3.mo20893b();
            int i3 = mo20893b.length;
            int i4 = 0;
            while (i4 < i3) {
                trackGroupArr[i2] = mo20893b.get(i4);
                i4++;
                i2++;
            }
        }
        this.f37164f = new TrackGroupArray(trackGroupArr);
        ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37163e)).mo20915a((AbstractC11312p) this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final long mo20891b(long j) {
        long mo20891b = this.f37165g[0].mo20891b(j);
        int i = 1;
        while (true) {
            AbstractC11312p[] abstractC11312pArr = this.f37165g;
            if (i < abstractC11312pArr.length) {
                if (abstractC11312pArr[i].mo20891b(mo20891b) != mo20891b) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
                i++;
            } else {
                return mo20891b;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final TrackGroupArray mo20893b() {
        return (TrackGroupArray) C11593a.m20020b(this.f37164f);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: c */
    public final long mo20888c() {
        AbstractC11312p abstractC11312p;
        AbstractC11312p[] abstractC11312pArr = this.f37165g;
        int length = abstractC11312pArr.length;
        char c = 1;
        int i = 0;
        while (i < length) {
            AbstractC11312p abstractC11312p2 = abstractC11312pArr[i];
            char mo20888c = abstractC11312p2.mo20888c();
            if (mo20888c == -9223372036854775807L) {
                mo20888c = c;
                if (c == -9223372036854775807L) {
                    continue;
                } else if (abstractC11312p2.mo20891b(c) != c) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                } else {
                    mo20888c = c;
                }
            } else if (c == -9223372036854775807L) {
                AbstractC11312p[] abstractC11312pArr2 = this.f37165g;
                int length2 = abstractC11312pArr2.length;
                for (int i2 = 0; i2 < length2 && (abstractC11312p = abstractC11312pArr2[i2]) != abstractC11312p2; i2++) {
                    if (abstractC11312p.mo20891b(mo20888c) != mo20888c) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
            } else if (mo20888c != c) {
                throw new IllegalStateException("Conflicting discontinuities.");
            } else {
                mo20888c = c;
            }
            i++;
            c = mo20888c;
        }
        return c;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: c */
    public final boolean mo20887c(long j) {
        if (!this.f37162d.isEmpty()) {
            int size = this.f37162d.size();
            for (int i = 0; i < size; i++) {
                this.f37162d.get(i).mo20887c(j);
            }
            return false;
        }
        return this.f37166h.mo20887c(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: d */
    public final long mo20885d() {
        return this.f37166h.mo20885d();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: e */
    public final long mo20883e() {
        return this.f37166h.mo20883e();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: f */
    public final boolean mo20881f() {
        return this.f37166h.mo20881f();
    }
}
