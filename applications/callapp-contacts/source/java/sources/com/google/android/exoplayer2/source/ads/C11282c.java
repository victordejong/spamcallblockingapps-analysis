package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.source.AbstractC11302j;
import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.source.ads.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/c.class */
public final class C11282c extends AbstractC11302j {

    /* renamed from: c */
    private final C11278a f37035c;

    public C11282c(AbstractC10864al abstractC10864al, C11278a c11278a) {
        super(abstractC10864al);
        C11593a.m20019b(abstractC10864al.mo20946b() == 1);
        C11593a.m20019b(abstractC10864al.mo20949a() == 1);
        this.f37035c = c11278a;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final AbstractC10864al.C10866a mo20947a(int i, AbstractC10864al.C10866a c10866a, boolean z) {
        this.f37105a.mo20947a(i, c10866a, z);
        c10866a.m22174a(c10866a.f34998a, c10866a.f34999b, c10866a.f35000c, c10866a.f35001d == -9223372036854775807L ? this.f37035c.f37030g : c10866a.f35001d, c10866a.f35002e, this.f37035c);
        return c10866a;
    }
}
