package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.C11222a;
import com.google.android.exoplayer2.util.C11628u;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/s.class */
public final class C11143s {

    /* renamed from: a */
    private final C11628u f36496a = new C11628u(10);

    /* renamed from: a */
    public final Metadata m21390a(AbstractC11121i abstractC11121i, C11222a.AbstractC11223a abstractC11223a) throws IOException {
        int i;
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                abstractC11121i.mo21394d(this.f36496a.f38733a, 0, 10);
                this.f36496a.m19801d(0);
                if (this.f36496a.m19796g() != 4801587) {
                    break;
                }
                this.f36496a.m19799e(3);
                int m19788n = this.f36496a.m19788n();
                int i3 = m19788n + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.f36496a.f38733a, 0, bArr, 0, 10);
                    abstractC11121i.mo21394d(bArr, 10, m19788n);
                    metadata = new C11222a(abstractC11223a).m21197a(bArr, i3);
                } else {
                    abstractC11121i.mo21397c(m19788n);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        abstractC11121i.mo21406a();
        abstractC11121i.mo21397c(i);
        return metadata;
    }
}
