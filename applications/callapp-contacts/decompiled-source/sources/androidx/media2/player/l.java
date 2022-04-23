package androidx.media2.player;

import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.text.g;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.x;
import java.util.Arrays;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/l.class */
public final class l extends androidx.media2.exoplayer.external.b {

    /* renamed from: a  reason: collision with root package name */
    final b f4469a;
    private boolean k;
    private boolean l;
    private boolean[] m;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f4470b = new Handler(Looper.myLooper());

    /* renamed from: c  reason: collision with root package name */
    private final p f4471c = new p();

    /* renamed from: d  reason: collision with root package name */
    private final SortedMap<Long, byte[]> f4472d = new TreeMap();
    private final x e = new x();
    private final g f = new g();
    private final a g = new a();
    private final a h = new a();
    private final int[] i = new int[2];
    private final p j = new p();
    private int n = -1;
    private int o = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f4476a = new byte[3];

        /* renamed from: b  reason: collision with root package name */
        public int f4477b;

        a() {
        }

        public final void a(byte b2, byte b3) {
            int i = this.f4477b;
            byte[] bArr = this.f4476a;
            if (i + 2 > bArr.length) {
                this.f4476a = Arrays.copyOf(bArr, bArr.length * 2);
            }
            byte[] bArr2 = this.f4476a;
            int i2 = this.f4477b;
            int i3 = i2 + 1;
            this.f4477b = i3;
            bArr2[i2] = b2;
            this.f4477b = i3 + 1;
            bArr2[i3] = b3;
        }

        public final boolean a() {
            return this.f4477b > 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/l$b.class */
    public interface b {
        void a(int i, int i2);

        void a(byte[] bArr, long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(b bVar) {
        super(3);
        this.f4469a = bVar;
    }

    private void A() {
        this.f4472d.clear();
        this.g.f4477b = 0;
        this.h.f4477b = 0;
        this.l = false;
        this.k = false;
    }

    private void a(a aVar, long j) {
        this.j.a(aVar.f4476a, aVar.f4477b);
        aVar.f4477b = 0;
        int c2 = this.j.c() & 31;
        int i = c2;
        if (c2 == 0) {
            i = 64;
        }
        if (this.j.f4168c == i * 2) {
            while (this.j.b() >= 2) {
                int c3 = this.j.c();
                int i2 = (c3 & 224) >> 5;
                int i3 = c3 & 31;
                int i4 = i2;
                if (i2 == 7) {
                    int c4 = this.j.c() & 63;
                    i4 = c4;
                    if (c4 < 7) {
                        return;
                    }
                }
                if (this.j.b() >= i3) {
                    if (i3 > 0) {
                        b(1, i4);
                        if (this.n == 1 && this.o == i4) {
                            byte[] bArr = new byte[i3];
                            this.j.a(bArr, 0, i3);
                            this.f4472d.put(Long.valueOf(j), bArr);
                        } else {
                            this.j.d(i3);
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    private void b(final int i, final int i2) {
        int i3 = (i << 6) + i2;
        boolean[] zArr = this.m;
        if (!zArr[i3]) {
            zArr[i3] = true;
            this.f4470b.post(new Runnable() { // from class: androidx.media2.player.l.1
                @Override // java.lang.Runnable
                public final void run() {
                    l.this.f4469a.a(i, i2);
                }
            });
        }
    }

    @Override // androidx.media2.exoplayer.external.ah
    public final int a(Format format) {
        String str = format.sampleMimeType;
        return ("application/cea-608".equals(str) || "application/cea-708".equals(str) || "text/vtt".equals(str)) ? 4 : 0;
    }

    public final void a(int i, int i2) {
        synchronized (this) {
            this.n = i;
            this.o = i2;
            A();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v150 */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v181 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.ag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r7, long r9) {
        /*
            Method dump skipped, instructions count: 855
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.l.a(long, long):void");
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(long j, boolean z) {
        synchronized (this) {
            A();
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(Format[] formatArr, long j) throws ExoPlaybackException {
        super.a(formatArr, j);
        this.m = new boolean[128];
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean y() {
        return this.l && this.f4472d.isEmpty();
    }

    public final void z() {
        synchronized (this) {
            a(-1, -1);
        }
    }
}
