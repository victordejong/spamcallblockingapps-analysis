package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.C11139p;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.C11222a;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.extractor.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/n.class */
public final class C11136n {

    /* renamed from: com.google.android.exoplayer2.extractor.n$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/n$a.class */
    public static final class C11137a {

        /* renamed from: a */
        public C11139p f36475a;

        public C11137a(C11139p c11139p) {
            this.f36475a = c11139p;
        }
    }

    private C11136n() {
    }

    /* renamed from: a */
    public static C11139p.C11140a m21416a(C11628u c11628u) {
        long[] jArr;
        long[] jArr2;
        c11628u.m19799e(1);
        int m19796g = c11628u.m19796g();
        long j = c11628u.f38734b;
        long j2 = m19796g;
        int i = m19796g / 18;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        int i2 = 0;
        while (true) {
            jArr = jArr3;
            jArr2 = jArr4;
            if (i2 >= i) {
                break;
            }
            long m19790l = c11628u.m19790l();
            if (m19790l == -1) {
                jArr = Arrays.copyOf(jArr3, i2);
                jArr2 = Arrays.copyOf(jArr4, i2);
                break;
            }
            jArr3[i2] = m19790l;
            jArr4[i2] = c11628u.m19790l();
            c11628u.m19799e(2);
            i2++;
        }
        c11628u.m19799e((int) ((j + j2) - c11628u.f38734b));
        return new C11139p.C11140a(jArr, jArr2);
    }

    /* renamed from: a */
    public static Metadata m21417a(AbstractC11121i abstractC11121i, boolean z) throws IOException {
        Metadata m21390a = new C11143s().m21390a(abstractC11121i, z ? null : C11222a.f36780a);
        if (m21390a == null || m21390a.length() == 0) {
            return null;
        }
        return m21390a;
    }
}
