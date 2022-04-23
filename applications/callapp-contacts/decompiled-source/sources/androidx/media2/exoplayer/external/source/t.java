package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.upstream.w;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/t.class */
public interface t {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/t$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Object f3748a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3749b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3750c;

        /* renamed from: d  reason: collision with root package name */
        public final long f3751d;
        public final int e;

        public a(Object obj) {
            this(obj, -1L);
        }

        public a(Object obj, int i, int i2, long j) {
            this(obj, i, i2, j, -1);
        }

        private a(Object obj, int i, int i2, long j, int i3) {
            this.f3748a = obj;
            this.f3749b = i;
            this.f3750c = i2;
            this.f3751d = j;
            this.e = i3;
        }

        public a(Object obj, long j) {
            this(obj, -1, -1, j, -1);
        }

        public a(Object obj, long j, int i) {
            this(obj, -1, -1, j, i);
        }

        public final a a(Object obj) {
            return this.f3748a.equals(obj) ? this : new a(obj, this.f3749b, this.f3750c, this.f3751d, this.e);
        }

        public final boolean a() {
            return this.f3749b != -1;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3748a.equals(aVar.f3748a) && this.f3749b == aVar.f3749b && this.f3750c == aVar.f3750c && this.f3751d == aVar.f3751d && this.e == aVar.e;
        }

        public final int hashCode() {
            return ((((((((this.f3748a.hashCode() + 527) * 31) + this.f3749b) * 31) + this.f3750c) * 31) + ((int) this.f3751d)) * 31) + this.e;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/t$b.class */
    public interface b {
        void a(t tVar, al alVar);
    }

    s a(a aVar, androidx.media2.exoplayer.external.upstream.b bVar, long j);

    void a(Handler handler, u uVar);

    void a(s sVar);

    void a(b bVar);

    void a(b bVar, w wVar);

    void a(u uVar);

    void b(b bVar);

    void c(b bVar);

    Object e();

    void f() throws IOException;
}
