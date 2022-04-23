package androidx.media2.exoplayer.external.extractor;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final C0077a f3004a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f3005b;

    /* renamed from: c  reason: collision with root package name */
    protected c f3006c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3007d;

    /* renamed from: androidx.media2.exoplayer.external.extractor.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$a.class */
    public static final class C0077a implements o {

        /* renamed from: a  reason: collision with root package name */
        final d f3008a;

        /* renamed from: b  reason: collision with root package name */
        final long f3009b;

        /* renamed from: c  reason: collision with root package name */
        final long f3010c;

        /* renamed from: d  reason: collision with root package name */
        final long f3011d;
        final long e;
        final long f;
        private final long g;

        public C0077a(d dVar, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f3008a = dVar;
            this.g = j;
            this.f3009b = j2;
            this.f3010c = j3;
            this.f3011d = j4;
            this.e = j5;
            this.f = j6;
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final o.a a(long j) {
            return new o.a(new p(j, c.a(this.f3008a.a(j), this.f3009b, this.f3010c, this.f3011d, this.e, this.f)));
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final long b() {
            return this.g;
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final boolean j_() {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$b.class */
    public static final class b implements d {
        @Override // androidx.media2.exoplayer.external.extractor.a.d
        public final long a(long j) {
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final long f3017a;

        /* renamed from: b  reason: collision with root package name */
        final long f3018b;

        /* renamed from: c  reason: collision with root package name */
        long f3019c;

        /* renamed from: d  reason: collision with root package name */
        long f3020d;
        long e;
        long f;
        long g;
        private final long h;

        protected c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f3017a = j;
            this.f3018b = j2;
            this.f3019c = j3;
            this.f3020d = j4;
            this.e = j5;
            this.f = j6;
            this.h = j7;
            this.g = a(j2, j3, j4, j5, j6, j7);
        }

        protected static long a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return ac.a(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        final void a() {
            this.g = a(this.f3018b, this.f3019c, this.f3020d, this.e, this.f, this.h);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$d.class */
    public interface d {
        long a(long j);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f3021a = new e(-3, -9223372036854775807L, -1);

        /* renamed from: b  reason: collision with root package name */
        private final int f3022b;

        /* renamed from: c  reason: collision with root package name */
        private final long f3023c;

        /* renamed from: d  reason: collision with root package name */
        private final long f3024d;

        private e(int i, long j, long j2) {
            this.f3022b = i;
            this.f3023c = j;
            this.f3024d = j2;
        }

        public static e a(long j) {
            return new e(0, -9223372036854775807L, j);
        }

        public static e a(long j, long j2) {
            return new e(-1, j, j2);
        }

        public static e b(long j, long j2) {
            return new e(-2, j, j2);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$f.class */
    public interface f {
        e a(h hVar, long j) throws IOException, InterruptedException;

        void a();
    }

    public a(d dVar, f fVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f3005b = fVar;
        this.f3007d = i;
        this.f3004a = new C0077a(dVar, j, j2, j3, j4, j5, j6);
    }

    private static int a(h hVar, long j, n nVar) {
        if (j == hVar.c()) {
            return 0;
        }
        nVar.f3386a = j;
        return 1;
    }

    private static boolean a(h hVar, long j) throws IOException, InterruptedException {
        long c2 = j - hVar.c();
        if (c2 < 0 || c2 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        hVar.b((int) c2);
        return true;
    }

    private void c() {
        this.f3006c = null;
        this.f3005b.a();
    }

    public final int a(h hVar, n nVar) throws InterruptedException, IOException {
        f fVar = (f) androidx.media2.exoplayer.external.util.a.a(this.f3005b);
        while (true) {
            c cVar = (c) androidx.media2.exoplayer.external.util.a.a(this.f3006c);
            long j = cVar.e;
            long j2 = cVar.f;
            long j3 = cVar.g;
            if (j2 - j <= this.f3007d) {
                c();
                return a(hVar, j, nVar);
            } else if (!a(hVar, j3)) {
                return a(hVar, j3, nVar);
            } else {
                hVar.a();
                e a2 = fVar.a(hVar, cVar.f3018b);
                int i = a2.f3022b;
                if (i == -3) {
                    c();
                    return a(hVar, j3, nVar);
                } else if (i == -2) {
                    long j4 = a2.f3023c;
                    long j5 = a2.f3024d;
                    cVar.f3019c = j4;
                    cVar.e = j5;
                    cVar.a();
                } else if (i == -1) {
                    long j6 = a2.f3023c;
                    long j7 = a2.f3024d;
                    cVar.f3020d = j6;
                    cVar.f = j7;
                    cVar.a();
                } else if (i == 0) {
                    long unused = a2.f3024d;
                    c();
                    a(hVar, a2.f3024d);
                    return a(hVar, a2.f3024d, nVar);
                } else {
                    throw new IllegalStateException("Invalid case");
                }
            }
        }
    }

    public final o a() {
        return this.f3004a;
    }

    public final void a(long j) {
        c cVar = this.f3006c;
        if (cVar == null || cVar.f3017a != j) {
            this.f3006c = new c(j, this.f3004a.f3008a.a(j), this.f3004a.f3009b, this.f3004a.f3010c, this.f3004a.f3011d, this.f3004a.e, this.f3004a.f);
        }
    }

    public final boolean b() {
        return this.f3006c != null;
    }
}
