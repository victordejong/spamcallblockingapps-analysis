package com.google.android.exoplayer2.extractor;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final C0424a f20909a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f20910b;

    /* renamed from: c  reason: collision with root package name */
    protected c f20911c;

    /* renamed from: d  reason: collision with root package name */
    private final int f20912d;

    /* renamed from: com.google.android.exoplayer2.extractor.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$a.class */
    public static final class C0424a implements v {

        /* renamed from: a  reason: collision with root package name */
        final d f20917a;

        /* renamed from: b  reason: collision with root package name */
        final long f20918b;

        /* renamed from: c  reason: collision with root package name */
        final long f20919c;

        /* renamed from: d  reason: collision with root package name */
        final long f20920d;
        final long e;
        final long f;
        private final long g;

        public C0424a(d dVar, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f20917a = dVar;
            this.g = j;
            this.f20918b = j2;
            this.f20919c = j3;
            this.f20920d = j4;
            this.e = j5;
            this.f = j6;
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final v.a a(long j) {
            return new v.a(new w(j, c.a(this.f20917a.timeUsToTargetTime(j), this.f20918b, this.f20919c, this.f20920d, this.e, this.f)));
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final boolean a() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final long b() {
            return this.g;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$b.class */
    public static final class b implements d {
        @Override // com.google.android.exoplayer2.extractor.a.d
        public final long timeUsToTargetTime(long j) {
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final long f20921a;

        /* renamed from: b  reason: collision with root package name */
        final long f20922b;

        /* renamed from: c  reason: collision with root package name */
        long f20923c;

        /* renamed from: d  reason: collision with root package name */
        long f20924d;
        long e;
        long f;
        long g;
        private final long h;

        protected c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f20921a = j;
            this.f20922b = j2;
            this.f20923c = j3;
            this.f20924d = j4;
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
            return af.a(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        final void a() {
            this.g = a(this.f20922b, this.f20923c, this.f20924d, this.e, this.f, this.h);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$d.class */
    public interface d {
        long timeUsToTargetTime(long j);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f20925a = new e(-3, -9223372036854775807L, -1);

        /* renamed from: b  reason: collision with root package name */
        private final int f20926b;

        /* renamed from: c  reason: collision with root package name */
        private final long f20927c;

        /* renamed from: d  reason: collision with root package name */
        private final long f20928d;

        private e(int i, long j, long j2) {
            this.f20926b = i;
            this.f20927c = j;
            this.f20928d = j2;
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$f.class */
    public interface f {

        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$f$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(f fVar) {
            }
        }

        e a(i iVar, long j) throws IOException;

        void a();
    }

    public a(d dVar, f fVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f20910b = fVar;
        this.f20912d = i;
        this.f20909a = new C0424a(dVar, j, j2, j3, j4, j5, j6);
    }

    private static int a(i iVar, long j, u uVar) {
        if (j == iVar.c()) {
            return 0;
        }
        uVar.f21328a = j;
        return 1;
    }

    private static boolean a(i iVar, long j) throws IOException {
        long c2 = j - iVar.c();
        if (c2 < 0 || c2 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        iVar.b((int) c2);
        return true;
    }

    private void c() {
        this.f20911c = null;
        this.f20910b.a();
    }

    public final int a(i iVar, u uVar) throws IOException {
        while (true) {
            c cVar = (c) com.google.android.exoplayer2.util.a.a(this.f20911c);
            long j = cVar.e;
            long j2 = cVar.f;
            long j3 = cVar.g;
            if (j2 - j <= this.f20912d) {
                c();
                return a(iVar, j, uVar);
            } else if (!a(iVar, j3)) {
                return a(iVar, j3, uVar);
            } else {
                iVar.a();
                e a2 = this.f20910b.a(iVar, cVar.f20922b);
                int i = a2.f20926b;
                if (i == -3) {
                    c();
                    return a(iVar, j3, uVar);
                } else if (i == -2) {
                    long j4 = a2.f20927c;
                    long j5 = a2.f20928d;
                    cVar.f20923c = j4;
                    cVar.e = j5;
                    cVar.a();
                } else if (i == -1) {
                    long j6 = a2.f20927c;
                    long j7 = a2.f20928d;
                    cVar.f20924d = j6;
                    cVar.f = j7;
                    cVar.a();
                } else if (i == 0) {
                    a(iVar, a2.f20928d);
                    long unused = a2.f20928d;
                    c();
                    return a(iVar, a2.f20928d, uVar);
                } else {
                    throw new IllegalStateException("Invalid case");
                }
            }
        }
    }

    public final v a() {
        return this.f20909a;
    }

    public final void a(long j) {
        c cVar = this.f20911c;
        if (cVar == null || cVar.f20921a != j) {
            this.f20911c = new c(j, this.f20909a.f20917a.timeUsToTargetTime(j), this.f20909a.f20918b, this.f20909a.f20919c, this.f20909a.f20920d, this.f20909a.e, this.f20909a.f);
        }
    }

    public final boolean b() {
        return this.f20911c != null;
    }
}
