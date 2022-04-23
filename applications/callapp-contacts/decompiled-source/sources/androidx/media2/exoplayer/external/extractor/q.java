package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/q.class */
public interface q {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/q$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3394a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f3395b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3396c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3397d;

        public a(int i, byte[] bArr, int i2, int i3) {
            this.f3394a = i;
            this.f3395b = bArr;
            this.f3396c = i2;
            this.f3397d = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3394a == aVar.f3394a && this.f3396c == aVar.f3396c && this.f3397d == aVar.f3397d && Arrays.equals(this.f3395b, aVar.f3395b);
        }

        public final int hashCode() {
            return (((((this.f3394a * 31) + Arrays.hashCode(this.f3395b)) * 31) + this.f3396c) * 31) + this.f3397d;
        }
    }

    int a(h hVar, int i, boolean z) throws IOException, InterruptedException;

    void a(long j, int i, int i2, int i3, a aVar);

    void a(Format format);

    void a(p pVar, int i);
}
