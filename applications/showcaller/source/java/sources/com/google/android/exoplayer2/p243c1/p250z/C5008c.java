package com.google.android.exoplayer2.p243c1.p250z;

import com.google.android.exoplayer2.p243c1.AbstractC4866a;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.C4886b;
import com.google.android.exoplayer2.p243c1.C4983m;
import com.google.android.exoplayer2.util.C5522l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.c1.z.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/z/c.class */
public final class C5008c extends AbstractC4866a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.c1.z.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/z/c$b.class */
    public static final class C5010b implements AbstractC4866a.AbstractC4872f {

        /* renamed from: a */
        private final C5522l f15579a;

        /* renamed from: b */
        private final int f15580b;

        /* renamed from: c */
        private final C4983m.C4984a f15581c;

        private C5010b(C5522l c5522l, int i) {
            this.f15579a = c5522l;
            this.f15580b = i;
            this.f15581c = new C4983m.C4984a();
        }

        /* renamed from: c */
        private long m20931c(AbstractC4979i abstractC4979i) {
            while (abstractC4979i.mo21007c() < abstractC4979i.getLength() - 6 && !C4983m.m20990h(abstractC4979i, this.f15579a, this.f15580b, this.f15581c)) {
                abstractC4979i.mo21006d(1);
            }
            if (abstractC4979i.mo21007c() >= abstractC4979i.getLength() - 6) {
                abstractC4979i.mo21006d((int) (abstractC4979i.getLength() - abstractC4979i.mo21007c()));
                return this.f15579a.f17904j;
            }
            return this.f15581c.f15495a;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4872f
        /* renamed from: a */
        public /* synthetic */ void mo20933a() {
            C4886b.m21271a(this);
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4872f
        /* renamed from: b */
        public AbstractC4866a.C4871e mo20932b(AbstractC4979i abstractC4979i, long j) {
            long mo20999k = abstractC4979i.mo20999k();
            long m20931c = m20931c(abstractC4979i);
            long mo21007c = abstractC4979i.mo21007c();
            abstractC4979i.mo21006d(Math.max(6, this.f15579a.f17897c));
            long m20931c2 = m20931c(abstractC4979i);
            return (m20931c > j || m20931c2 <= j) ? m20931c2 <= j ? AbstractC4866a.C4871e.m21335f(m20931c2, abstractC4979i.mo21007c()) : AbstractC4866a.C4871e.m21337d(m20931c, mo20999k) : AbstractC4866a.C4871e.m21336e(mo21007c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5008c(final C5522l c5522l, int i, long j, long j2) {
        super(new AbstractC4866a.AbstractC4870d() { // from class: com.google.android.exoplayer2.c1.z.b
            @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4870d
            /* renamed from: a */
            public final long mo20934a(long j3) {
                return C5522l.this.m18766k(j3);
            }
        }, new C5010b(c5522l, i), c5522l.m18769h(), 0L, c5522l.f17904j, j, j2, c5522l.m18772e(), Math.max(6, c5522l.f17897c));
        c5522l.getClass();
    }
}
