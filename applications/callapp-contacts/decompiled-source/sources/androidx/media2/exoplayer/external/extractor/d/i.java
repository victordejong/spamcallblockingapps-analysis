package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/i.class */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private final e f3106a = new e();

    /* renamed from: b  reason: collision with root package name */
    long f3107b;

    /* renamed from: c  reason: collision with root package name */
    int f3108c;

    /* renamed from: d  reason: collision with root package name */
    private q f3109d;
    private androidx.media2.exoplayer.external.extractor.i e;
    private g f;
    private long g;
    private long h;
    private int i;
    private a j;
    private long k;
    private boolean l;
    private boolean m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Format f3110a;

        /* renamed from: b  reason: collision with root package name */
        g f3111b;

        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/i$b.class */
    static final class b implements g {
        private b() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.d.g
        public final long a(h hVar) {
            return -1L;
        }

        @Override // androidx.media2.exoplayer.external.extractor.d.g
        public final o a() {
            return new o.b(-9223372036854775807L);
        }

        @Override // androidx.media2.exoplayer.external.extractor.d.g
        public final void a_(long j) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(h hVar) throws IOException, InterruptedException {
        boolean z = true;
        while (z) {
            if (!this.f3106a.a(hVar)) {
                this.f3108c = 3;
                return -1;
            }
            this.k = hVar.c() - this.f3107b;
            boolean a2 = a(this.f3106a.f3097b, this.f3107b, this.j);
            z = a2;
            if (a2) {
                this.f3107b = hVar.c();
                z = a2;
            }
        }
        this.i = this.j.f3110a.sampleRate;
        if (!this.m) {
            this.f3109d.a(this.j.f3110a);
            this.m = true;
        }
        if (this.j.f3111b != null) {
            this.f = this.j.f3111b;
        } else if (hVar.d() == -1) {
            this.f = new b();
        } else {
            f fVar = this.f3106a.f3096a;
            this.f = new androidx.media2.exoplayer.external.extractor.d.a(this, this.f3107b, hVar.d(), fVar.h + fVar.i, fVar.f3102c, (fVar.f3101b & 4) != 0);
        }
        this.j = null;
        this.f3108c = 2;
        e eVar = this.f3106a;
        if (eVar.f3097b.f4166a.length == 65025) {
            return 0;
        }
        eVar.f3097b.f4166a = Arrays.copyOf(eVar.f3097b.f4166a, Math.max(65025, eVar.f3097b.f4168c));
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(h hVar, n nVar) throws IOException, InterruptedException {
        long a2 = this.f.a(hVar);
        if (a2 >= 0) {
            nVar.f3386a = a2;
            return 1;
        }
        if (a2 < -1) {
            c(-(a2 + 2));
        }
        if (!this.l) {
            this.e.a(this.f.a());
            this.l = true;
        }
        if (this.k > 0 || this.f3106a.a(hVar)) {
            this.k = 0L;
            p pVar = this.f3106a.f3097b;
            long b2 = b(pVar);
            if (b2 >= 0) {
                long j = this.h;
                if (j + b2 >= this.g) {
                    long a3 = a(j);
                    this.f3109d.a(pVar, pVar.f4168c);
                    this.f3109d.a(a3, 1, pVar.f4168c, 0, null);
                    this.g = -1L;
                }
            }
            this.h += b2;
            return 0;
        }
        this.f3108c = 3;
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long a(long j) {
        return (j * 1000000) / this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, long j2) {
        e eVar = this.f3106a;
        eVar.f3096a.a();
        eVar.f3097b.a();
        eVar.f3098c = -1;
        eVar.f3099d = false;
        if (j == 0) {
            a(!this.l);
        } else if (this.f3108c != 0) {
            long b2 = b(j2);
            this.g = b2;
            this.f.a_(b2);
            this.f3108c = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(androidx.media2.exoplayer.external.extractor.i iVar, q qVar) {
        this.e = iVar;
        this.f3109d = qVar;
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        if (z) {
            this.j = new a();
            this.f3107b = 0L;
            this.f3108c = 0;
        } else {
            this.f3108c = 1;
        }
        this.g = -1L;
        this.h = 0L;
    }

    protected abstract boolean a(p pVar, long j, a aVar) throws IOException, InterruptedException;

    /* JADX INFO: Access modifiers changed from: protected */
    public final long b(long j) {
        return (this.i * j) / 1000000;
    }

    protected abstract long b(p pVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(long j) {
        this.h = j;
    }
}
