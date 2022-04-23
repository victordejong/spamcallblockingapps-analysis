package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.util.ac;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b.class */
public final class b implements o {

    /* renamed from: a  reason: collision with root package name */
    public final int f3025a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f3026b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f3027c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f3028d;
    public final long[] e;
    private final long f;

    public b(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f3026b = iArr;
        this.f3027c = jArr;
        this.f3028d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.f3025a = length;
        if (length > 0) {
            this.f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f = 0L;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final o.a a(long j) {
        int a2 = ac.a(this.e, j, true);
        p pVar = new p(this.e[a2], this.f3027c[a2]);
        if (pVar.f3392b >= j || a2 == this.f3025a - 1) {
            return new o.a(pVar);
        }
        int i = a2 + 1;
        return new o.a(pVar, new p(this.e[i], this.f3027c[i]));
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final long b() {
        return this.f;
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final boolean j_() {
        return true;
    }

    public final String toString() {
        int i = this.f3025a;
        String arrays = Arrays.toString(this.f3026b);
        String arrays2 = Arrays.toString(this.f3027c);
        String arrays3 = Arrays.toString(this.e);
        String arrays4 = Arrays.toString(this.f3028d);
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
