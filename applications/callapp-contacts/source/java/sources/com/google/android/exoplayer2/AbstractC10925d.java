package com.google.android.exoplayer2;

import com.google.android.exoplayer2.AbstractC10864al;
/* renamed from: com.google.android.exoplayer2.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/d.class */
public abstract class AbstractC10925d implements AbstractC10842ac {

    /* renamed from: a */
    protected final AbstractC10864al.C10867b f35334a = new AbstractC10864al.C10867b();

    /* renamed from: j */
    private int m21929j() {
        int s = mo21117s();
        int i = s;
        if (s == 1) {
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: A_ */
    public final boolean mo21938A_() {
        return mo21122n() == 3 && mo21118r() && mo21121o() == 0;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: b */
    public final void mo21937b() {
        mo21171a(mo21111y(), 0L);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: c */
    public final boolean mo21936c() {
        return mo21932g() != -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: d */
    public final boolean mo21935d() {
        return mo21933f() != -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: e */
    public final void mo21934e() {
        mo21134c(false);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: f */
    public final int mo21933f() {
        AbstractC10864al K = mo21176K();
        if (K.m22178c()) {
            return -1;
        }
        return K.mo20969a(mo21111y(), m21929j(), mo21116t());
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: g */
    public final int mo21932g() {
        AbstractC10864al K = mo21176K();
        if (K.m22178c()) {
            return -1;
        }
        return K.mo20967b(mo21111y(), m21929j(), mo21116t());
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: h */
    public final boolean mo21931h() {
        AbstractC10864al K = mo21176K();
        return !K.m22178c() && K.mo20853a(mo21111y(), this.f35334a, 0L).f35013i;
    }

    /* renamed from: i */
    public final long m21930i() {
        AbstractC10864al K = mo21176K();
        if (K.m22178c()) {
            return -9223372036854775807L;
        }
        return C11158f.m21374a(K.mo20853a(mo21111y(), this.f35334a, 0L).f35021q);
    }
}
