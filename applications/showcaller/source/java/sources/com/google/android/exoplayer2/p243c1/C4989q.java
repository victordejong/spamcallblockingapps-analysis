package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.C5147b;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
/* renamed from: com.google.android.exoplayer2.c1.q */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/q.class */
public final class C4989q {

    /* renamed from: a */
    private final C5536v f15502a = new C5536v(10);

    /* renamed from: a */
    public Metadata m20971a(AbstractC4979i abstractC4979i, C5147b.AbstractC5148a abstractC5148a) {
        int i;
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                abstractC4979i.mo21000j(this.f15502a.f17941a, 0, 10);
                this.f15502a.m18680M(0);
                if (this.f15502a.m18690C() != 4801587) {
                    break;
                }
                this.f15502a.m18679N(3);
                int m18654y = this.f15502a.m18654y();
                int i3 = m18654y + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.f15502a.f17941a, 0, bArr, 0, 10);
                    abstractC4979i.mo21000j(bArr, 10, m18654y);
                    metadata = new C5147b(abstractC5148a).m20342c(bArr, i3);
                } else {
                    abstractC4979i.mo21006d(m18654y);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        abstractC4979i.mo21003g();
        abstractC4979i.mo21006d(i);
        return metadata;
    }
}
