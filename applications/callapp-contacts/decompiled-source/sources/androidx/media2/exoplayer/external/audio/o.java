package androidx.media2.exoplayer.external.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.util.ac;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    final a f2910a;

    /* renamed from: b  reason: collision with root package name */
    AudioTrack f2911b;

    /* renamed from: c  reason: collision with root package name */
    int f2912c;

    /* renamed from: d  reason: collision with root package name */
    int f2913d;
    n e;
    int f;
    boolean g;
    long h;
    long i;
    boolean j;
    boolean k;
    long l;
    long m;
    long n;
    long o;
    long p;
    private final long[] q;
    private long r;
    private long s;
    private Method t;
    private long u;
    private int v;
    private int w;
    private long x;
    private long y;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/o$a.class */
    public interface a {
        void a(int i, long j);

        void a(long j);

        void a(long j, long j2, long j3, long j4);

        void b(long j, long j2, long j3, long j4);
    }

    public o(a aVar) {
        this.f2910a = (a) androidx.media2.exoplayer.external.util.a.a(aVar);
        if (ac.f4119a >= 18) {
            try {
                this.t = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.q = new long[10];
    }

    private long e() {
        return d(d());
    }

    public final int a(long j) {
        return this.f2913d - ((int) (j - (d() * this.f2912c)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02e0 A[Catch: Exception -> 0x02f3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02f3, blocks: (B:78:0x029b, B:81:0x02e0), top: B:111:0x029b }] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(boolean r11) {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.o.a(boolean):long");
    }

    public final boolean a() {
        return ((AudioTrack) androidx.media2.exoplayer.external.util.a.a(this.f2911b)).getPlayState() == 3;
    }

    public final void b() {
        c();
        this.f2911b = null;
        this.e = null;
    }

    public final void b(long j) {
        this.x = d();
        this.o = SystemClock.elapsedRealtime() * 1000;
        this.y = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.r = 0L;
        this.w = 0;
        this.v = 0;
        this.s = 0L;
    }

    public final boolean c(long j) {
        if (j > d()) {
            return true;
        }
        return this.g && ((AudioTrack) androidx.media2.exoplayer.external.util.a.a(this.f2911b)).getPlayState() == 2 && (d() > 0L ? 1 : (d() == 0L ? 0 : -1)) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long d() {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.o.d():long");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long d(long j) {
        return (j * 1000000) / this.f;
    }
}
