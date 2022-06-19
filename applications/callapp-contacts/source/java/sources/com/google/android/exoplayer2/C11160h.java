package com.google.android.exoplayer2;

import com.google.android.exoplayer2.AbstractC10864al;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
/* renamed from: com.google.android.exoplayer2.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/h.class */
public final class C11160h implements AbstractC11159g {

    /* renamed from: a */
    public long f36544a;

    /* renamed from: b */
    public long f36545b;

    /* renamed from: c */
    private final AbstractC10864al.C10867b f36546c;

    public C11160h() {
        this(FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, 5000L);
    }

    public C11160h(long j, long j2) {
        this.f36545b = j;
        this.f36544a = j2;
        this.f36546c = new AbstractC10864al.C10867b();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: a */
    private static void m21367a(AbstractC10842ac abstractC10842ac, long j) {
        ?? mo21186A = abstractC10842ac.mo21186A() + j;
        long mo21110z = abstractC10842ac.mo21110z();
        char c = mo21186A;
        if (mo21110z != -9223372036854775807L) {
            c = Math.min((long) mo21186A, mo21110z);
        }
        abstractC10842ac.mo21171a(abstractC10842ac.mo21111y(), Math.max((long) c, 0L));
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: a */
    public final boolean mo21371a() {
        return this.f36544a > 0;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: a */
    public final boolean mo21370a(AbstractC10842ac abstractC10842ac) {
        abstractC10842ac.mo21119q();
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: a */
    public final boolean mo21369a(AbstractC10842ac abstractC10842ac, int i) {
        abstractC10842ac.mo21173a(i);
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: a */
    public final boolean mo21368a(AbstractC10842ac abstractC10842ac, int i, long j) {
        abstractC10842ac.mo21171a(i, j);
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: a */
    public final boolean mo21366a(AbstractC10842ac abstractC10842ac, C10840aa c10840aa) {
        abstractC10842ac.mo21168a(c10840aa);
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: a */
    public final boolean mo21365a(AbstractC10842ac abstractC10842ac, boolean z) {
        abstractC10842ac.mo21150a(z);
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: b */
    public final boolean mo21364b() {
        return this.f36545b > 0;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: b */
    public final boolean mo21363b(AbstractC10842ac abstractC10842ac) {
        AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
        if (mo21176K.m22178c() || abstractC10842ac.mo21184C()) {
            return true;
        }
        int mo21111y = abstractC10842ac.mo21111y();
        mo21176K.mo20853a(mo21111y, this.f36546c, 0L);
        int mo21932g = abstractC10842ac.mo21932g();
        boolean z = this.f36546c.m22167a() && !this.f36546c.f35013i;
        if (mo21932g != -1 && (abstractC10842ac.mo21186A() <= 3000 || z)) {
            abstractC10842ac.mo21171a(mo21932g, -9223372036854775807L);
            return true;
        } else if (z) {
            return true;
        } else {
            abstractC10842ac.mo21171a(mo21111y, 0L);
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: b */
    public final boolean mo21362b(AbstractC10842ac abstractC10842ac, boolean z) {
        abstractC10842ac.mo21138b(z);
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: c */
    public final boolean mo21361c(AbstractC10842ac abstractC10842ac) {
        AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
        if (mo21176K.m22178c() || abstractC10842ac.mo21184C()) {
            return true;
        }
        int mo21111y = abstractC10842ac.mo21111y();
        mo21176K.mo20853a(mo21111y, this.f36546c, 0L);
        int mo21933f = abstractC10842ac.mo21933f();
        if (mo21933f != -1) {
            abstractC10842ac.mo21171a(mo21933f, -9223372036854775807L);
            return true;
        } else if (!this.f36546c.m22167a() || !this.f36546c.f35014j) {
            return true;
        } else {
            abstractC10842ac.mo21171a(mo21111y, -9223372036854775807L);
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: d */
    public final boolean mo21360d(AbstractC10842ac abstractC10842ac) {
        if (!mo21371a() || !abstractC10842ac.mo21931h()) {
            return true;
        }
        m21367a(abstractC10842ac, -this.f36544a);
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC11159g
    /* renamed from: e */
    public final boolean mo21359e(AbstractC10842ac abstractC10842ac) {
        if (!mo21364b() || !abstractC10842ac.mo21931h()) {
            return true;
        }
        m21367a(abstractC10842ac, this.f36545b);
        return true;
    }
}
