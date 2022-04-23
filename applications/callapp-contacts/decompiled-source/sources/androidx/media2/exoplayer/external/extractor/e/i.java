package androidx.media2.exoplayer.external.extractor.e;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.f;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.c;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/i.class */
public final class i implements m {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f3204c = {73, 68, 51};

    /* renamed from: a  reason: collision with root package name */
    long f3205a;

    /* renamed from: b  reason: collision with root package name */
    long f3206b;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3207d;
    private final o e;
    private final p f;
    private final String g;
    private String h;
    private q i;
    private q j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private int p;
    private int q;
    private int r;
    private boolean s;
    private int t;
    private q u;
    private long v;

    public i(boolean z) {
        this(z, null);
    }

    public i(boolean z, String str) {
        this.e = new o(new byte[7]);
        this.f = new p(Arrays.copyOf(f3204c, 10));
        d();
        this.p = -1;
        this.q = -1;
        this.f3205a = -9223372036854775807L;
        this.f3207d = z;
        this.g = str;
    }

    private void a(q qVar, long j, int i, int i2) {
        this.k = 4;
        this.l = i;
        this.u = qVar;
        this.v = j;
        this.t = i2;
    }

    private static boolean a(byte b2, byte b3) {
        return a(((b2 & 255) << 8) | (b3 & 255));
    }

    public static boolean a(int i) {
        return (i & 65526) == 65520;
    }

    private boolean a(p pVar, int i) {
        pVar.c(i + 1);
        if (!b(pVar, this.e.f4162a, 1)) {
            return false;
        }
        this.e.a(4);
        int c2 = this.e.c(1);
        int i2 = this.p;
        if (i2 != -1 && c2 != i2) {
            return false;
        }
        if (this.q != -1) {
            if (!b(pVar, this.e.f4162a, 1)) {
                return true;
            }
            this.e.a(2);
            if (this.e.c(4) != this.q) {
                return false;
            }
            pVar.c(i + 2);
        }
        if (!b(pVar, this.e.f4162a, 4)) {
            return true;
        }
        this.e.a(14);
        int c3 = this.e.c(13);
        if (c3 <= 6) {
            return false;
        }
        int i3 = i + c3;
        int i4 = i3 + 1;
        if (i4 >= pVar.f4168c) {
            return true;
        }
        if (a(pVar.f4166a[i3], pVar.f4166a[i4])) {
            return this.p == -1 || ((pVar.f4166a[i4] & 8) >> 3) == c2;
        }
        return false;
    }

    private boolean a(p pVar, byte[] bArr, int i) {
        int min = Math.min(pVar.b(), i - this.l);
        pVar.a(bArr, this.l, min);
        int i2 = this.l + min;
        this.l = i2;
        return i2 == i;
    }

    private void b(p pVar) {
        byte[] bArr = pVar.f4166a;
        int i = pVar.f4167b;
        int i2 = pVar.f4168c;
        while (i < i2) {
            int i3 = i + 1;
            int i4 = bArr[i] & 255;
            if (this.m != 512 || !a((byte) -1, (byte) i4) || (!this.o && !a(pVar, i3 - 2))) {
                int i5 = this.m;
                int i6 = i4 | i5;
                if (i6 == 329) {
                    this.m = 768;
                    i = i3;
                } else if (i6 == 511) {
                    this.m = 512;
                    i = i3;
                } else if (i6 == 836) {
                    this.m = 1024;
                    i = i3;
                } else if (i6 != 1075) {
                    i = i3;
                    if (i5 != 256) {
                        this.m = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                        i = i3 - 1;
                    }
                } else {
                    e();
                    pVar.c(i3);
                    return;
                }
            } else {
                this.r = (i4 & 8) >> 3;
                boolean z = true;
                if ((i4 & 1) != 0) {
                    z = false;
                }
                this.n = z;
                if (!this.o) {
                    g();
                } else {
                    f();
                }
                pVar.c(i3);
                return;
            }
        }
        pVar.c(i);
    }

    private static boolean b(p pVar, byte[] bArr, int i) {
        if (pVar.b() < i) {
            return false;
        }
        pVar.a(bArr, 0, i);
        return true;
    }

    private void c(p pVar) {
        if (pVar.b() != 0) {
            this.e.f4162a[0] = pVar.f4166a[pVar.f4167b];
            this.e.a(2);
            int c2 = this.e.c(4);
            int i = this.q;
            if (i == -1 || c2 == i) {
                if (!this.o) {
                    this.o = true;
                    this.p = this.r;
                    this.q = c2;
                }
                f();
                return;
            }
            c();
        }
    }

    private void d() {
        this.k = 0;
        this.l = 0;
        this.m = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    private void d(p pVar) {
        int min = Math.min(pVar.b(), this.t - this.l);
        this.u.a(pVar, min);
        int i = this.l + min;
        this.l = i;
        int i2 = this.t;
        if (i == i2) {
            this.u.a(this.f3206b, 1, i2, 0, null);
            this.f3206b += this.v;
            d();
        }
    }

    private void e() {
        this.k = 2;
        this.l = f3204c.length;
        this.t = 0;
        this.f.c(0);
    }

    private void f() {
        this.k = 3;
        this.l = 0;
    }

    private void g() {
        this.k = 1;
        this.l = 0;
    }

    private void h() {
        this.j.a(this.f, 10);
        this.f.c(6);
        a(this.j, 0L, 10, this.f.m() + 10);
    }

    private void i() throws ParserException {
        this.e.a(0);
        if (!this.s) {
            int c2 = this.e.c(2) + 1;
            int i = c2;
            if (c2 != 2) {
                StringBuilder sb = new StringBuilder(61);
                sb.append("Detected audio object type: ");
                sb.append(c2);
                sb.append(", but assuming AAC LC.");
                j.a("AdtsReader", sb.toString());
                i = 2;
            }
            this.e.b(5);
            byte[] a2 = c.a(i, this.q, this.e.c(3));
            Pair<Integer, Integer> a3 = c.a(a2);
            Format createAudioSampleFormat = Format.createAudioSampleFormat(this.h, "audio/mp4a-latm", null, -1, -1, ((Integer) a3.second).intValue(), ((Integer) a3.first).intValue(), Collections.singletonList(a2), null, 0, this.g);
            this.f3205a = 1024000000 / createAudioSampleFormat.sampleRate;
            this.i.a(createAudioSampleFormat);
            this.s = true;
        } else {
            this.e.b(10);
        }
        this.e.b(4);
        int c3 = (this.e.c(13) - 2) - 5;
        int i2 = c3;
        if (this.n) {
            i2 = c3 - 2;
        }
        a(this.i, this.f3205a, 0, i2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        c();
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.f3206b = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(androidx.media2.exoplayer.external.extractor.i iVar, ah.d dVar) {
        dVar.a();
        this.h = dVar.c();
        this.i = iVar.a(dVar.b(), 1);
        if (this.f3207d) {
            dVar.a();
            q a2 = iVar.a(dVar.b(), 4);
            this.j = a2;
            a2.a(Format.createSampleFormat(dVar.c(), "application/id3", null, -1, null));
            return;
        }
        this.j = new f();
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(p pVar) throws ParserException {
        while (pVar.b() > 0) {
            int i = this.k;
            if (i == 0) {
                b(pVar);
            } else if (i == 1) {
                c(pVar);
            } else if (i != 2) {
                if (i == 3) {
                    if (a(pVar, this.e.f4162a, this.n ? 7 : 5)) {
                        i();
                    }
                } else if (i == 4) {
                    d(pVar);
                } else {
                    throw new IllegalStateException();
                }
            } else if (a(pVar, this.f.f4166a, 10)) {
                h();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.o = false;
        d();
    }
}
