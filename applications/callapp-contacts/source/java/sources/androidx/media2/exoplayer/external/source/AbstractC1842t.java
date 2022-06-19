package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.source.t */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/t.class */
public interface AbstractC1842t {

    /* renamed from: androidx.media2.exoplayer.external.source.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/t$a.class */
    public static final class C1843a {

        /* renamed from: a */
        public final Object f7356a;

        /* renamed from: b */
        public final int f7357b;

        /* renamed from: c */
        public final int f7358c;

        /* renamed from: d */
        public final long f7359d;

        /* renamed from: e */
        public final int f7360e;

        public C1843a(Object obj) {
            this(obj, -1L);
        }

        public C1843a(Object obj, int i, int i2, long j) {
            this(obj, i, i2, j, -1);
        }

        private C1843a(Object obj, int i, int i2, long j, int i3) {
            this.f7356a = obj;
            this.f7357b = i;
            this.f7358c = i2;
            this.f7359d = j;
            this.f7360e = i3;
        }

        public C1843a(Object obj, long j) {
            this(obj, -1, -1, j, -1);
        }

        public C1843a(Object obj, long j, int i) {
            this(obj, -1, -1, j, i);
        }

        /* renamed from: a */
        public final C1843a m42063a(Object obj) {
            return this.f7356a.equals(obj) ? this : new C1843a(obj, this.f7357b, this.f7358c, this.f7359d, this.f7360e);
        }

        /* renamed from: a */
        public final boolean m42064a() {
            return this.f7357b != -1;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1843a c1843a = (C1843a) obj;
            return this.f7356a.equals(c1843a.f7356a) && this.f7357b == c1843a.f7357b && this.f7358c == c1843a.f7358c && this.f7359d == c1843a.f7359d && this.f7360e == c1843a.f7360e;
        }

        public final int hashCode() {
            return ((((((((this.f7356a.hashCode() + 527) * 31) + this.f7357b) * 31) + this.f7358c) * 31) + ((int) this.f7359d)) * 31) + this.f7360e;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/t$b.class */
    public interface AbstractC1844b {
        /* renamed from: a */
        void mo41802a(AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al);
    }

    /* renamed from: a */
    AbstractC1840s mo42072a(C1843a c1843a, AbstractC1963b abstractC1963b, long j);

    /* renamed from: a */
    void mo42074a(Handler handler, AbstractC1845u abstractC1845u);

    /* renamed from: a */
    void mo42073a(AbstractC1840s abstractC1840s);

    /* renamed from: a */
    void mo42071a(AbstractC1844b abstractC1844b);

    /* renamed from: a */
    void mo42070a(AbstractC1844b abstractC1844b, AbstractC1990w abstractC1990w);

    /* renamed from: a */
    void mo42069a(AbstractC1845u abstractC1845u);

    /* renamed from: b */
    void mo42068b(AbstractC1844b abstractC1844b);

    /* renamed from: c */
    void mo42067c(AbstractC1844b abstractC1844b);

    /* renamed from: e */
    Object mo42066e();

    /* renamed from: f */
    void mo42065f() throws IOException;
}
