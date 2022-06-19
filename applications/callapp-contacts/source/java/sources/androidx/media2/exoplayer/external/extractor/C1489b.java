package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.extractor.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b.class */
public final class C1489b implements AbstractC1637o {

    /* renamed from: a */
    public final int f5644a;

    /* renamed from: b */
    public final int[] f5645b;

    /* renamed from: c */
    public final long[] f5646c;

    /* renamed from: d */
    public final long[] f5647d;

    /* renamed from: e */
    public final long[] f5648e;

    /* renamed from: f */
    private final long f5649f;

    public C1489b(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f5645b = iArr;
        this.f5646c = jArr;
        this.f5647d = jArr2;
        this.f5648e = jArr3;
        int length = iArr.length;
        this.f5644a = length;
        if (length > 0) {
            this.f5649f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f5649f = 0L;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: a */
    public final AbstractC1637o.C1638a mo42504a(long j) {
        int m41645a = C1996ac.m41645a(this.f5648e, j, true);
        C1640p c1640p = new C1640p(this.f5648e[m41645a], this.f5646c[m41645a]);
        if (c1640p.f6506b >= j || m41645a == this.f5644a - 1) {
            return new AbstractC1637o.C1638a(c1640p);
        }
        int i = m41645a + 1;
        return new AbstractC1637o.C1638a(c1640p, new C1640p(this.f5648e[i], this.f5646c[i]));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: b */
    public final long mo42503b() {
        return this.f5649f;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
    /* renamed from: j_ */
    public final boolean mo42502j_() {
        return true;
    }

    public final String toString() {
        int i = this.f5644a;
        String arrays = Arrays.toString(this.f5645b);
        String arrays2 = Arrays.toString(this.f5646c);
        String arrays3 = Arrays.toString(this.f5648e);
        String arrays4 = Arrays.toString(this.f5647d);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 71 + String.valueOf(arrays2).length() + String.valueOf(arrays3).length() + String.valueOf(arrays4).length());
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        sb.append(", offsets=");
        sb.append(arrays2);
        sb.append(", timeUs=");
        sb.append(arrays3);
        sb.append(", durationsUs=");
        sb.append(arrays4);
        sb.append(")");
        return sb.toString();
    }
}
