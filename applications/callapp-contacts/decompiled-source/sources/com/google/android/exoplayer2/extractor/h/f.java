package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/f.class */
public final class f implements j {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f21188c = {73, 68, 51};

    /* renamed from: a  reason: collision with root package name */
    long f21189a;

    /* renamed from: b  reason: collision with root package name */
    long f21190b;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f21191d;
    private final t e;
    private final u f;
    private final String g;
    private String h;
    private x i;
    private x j;
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
    private x u;
    private long v;

    public f(boolean z) {
        this(z, null);
    }

    public f(boolean z, String str) {
        this.e = new t(new byte[7]);
        this.f = new u(Arrays.copyOf(f21188c, 10));
        d();
        this.p = -1;
        this.q = -1;
        this.f21189a = -9223372036854775807L;
        this.f21191d = z;
        this.g = str;
    }

    private void a(x xVar, long j, int i, int i2) {
        this.k = 4;
        this.l = i;
        this.u = xVar;
        this.v = j;
        this.t = i2;
    }

    private static boolean a(byte b2) {
        return a((b2 & 255) | 65280);
    }

    public static boolean a(int i) {
        return (i & 65526) == 65520;
    }

    private boolean a(u uVar, int i) {
        uVar.d(i + 1);
        if (!b(uVar, this.e.f22331a, 1)) {
            return false;
        }
        this.e.a(4);
        int c2 = this.e.c(1);
        int i2 = this.p;
        if (i2 != -1 && c2 != i2) {
            return false;
        }
        if (this.q != -1) {
            if (!b(uVar, this.e.f22331a, 1)) {
                return true;
            }
            this.e.a(2);
            if (this.e.c(4) != this.q) {
                return false;
            }
            uVar.d(i + 2);
        }
        if (!b(uVar, this.e.f22331a, 4)) {
            return true;
        }
        this.e.a(14);
        int c3 = this.e.c(13);
        if (c3 < 7) {
            return false;
        }
        byte[] bArr = uVar.f22335a;
        int i3 = uVar.f22337c;
        int i4 = i + c3;
        if (i4 >= i3) {
            return true;
        }
        if (bArr[i4] == -1) {
            int i5 = i4 + 1;
            if (i5 == i3) {
                return true;
            }
            return a(bArr[i5]) && ((bArr[i5] & 8) >> 3) == c2;
        } else if (bArr[i4] != 73) {
            return false;
        } else {
            int i6 = i4 + 1;
            if (i6 == i3) {
                return true;
            }
            if (bArr[i6] != 68) {
                return false;
            }
            int i7 = i4 + 2;
            return i7 == i3 || bArr[i7] == 51;
        }
    }

    private boolean a(u uVar, byte[] bArr, int i) {
        int min = Math.min(uVar.a(), i - this.l);
        uVar.a(bArr, this.l, min);
        int i2 = this.l + min;
        this.l = i2;
        return i2 == i;
    }

    private void b(u uVar) {
        byte[] bArr = uVar.f22335a;
        int i = uVar.f22336b;
        int i2 = uVar.f22337c;
        while (i < i2) {
            int i3 = i + 1;
            int i4 = bArr[i] & 255;
            if (this.m != 512 || !a((byte) i4) || (!this.o && !a(uVar, i3 - 2))) {
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
                    uVar.d(i3);
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
                uVar.d(i3);
                return;
            }
        }
        uVar.d(i);
    }

    private static boolean b(u uVar, byte[] bArr, int i) {
        if (uVar.a() < i) {
            return false;
        }
        uVar.a(bArr, 0, i);
        return true;
    }

    private void c(u uVar) {
        if (uVar.a() != 0) {
            this.e.f22331a[0] = uVar.f22335a[uVar.f22336b];
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

    @RequiresNonNull({"currentOutput"})
    private void d(u uVar) {
        int min = Math.min(uVar.a(), this.t - this.l);
        this.u.b(uVar, min);
        int i = this.l + min;
        this.l = i;
        int i2 = this.t;
        if (i == i2) {
            this.u.a(this.f21190b, 1, i2, 0, null);
            this.f21190b += this.v;
            d();
        }
    }

    private void e() {
        this.k = 2;
        this.l = f21188c.length;
        this.t = 0;
        this.f.d(0);
    }

    private void f() {
        this.k = 3;
        this.l = 0;
    }

    private void g() {
        this.k = 1;
        this.l = 0;
    }

    @RequiresNonNull({"id3Output"})
    private void h() {
        this.j.b(this.f, 10);
        this.f.d(6);
        a(this.j, 0L, 10, this.f.n() + 10);
    }

    @RequiresNonNull({"output"})
    private void i() throws ParserException {
        this.e.a(0);
        if (!this.s) {
            int c2 = this.e.c(2) + 1;
            int i = c2;
            if (c2 != 2) {
                n.a("AdtsReader", "Detected audio object type: " + c2 + ", but assuming AAC LC.");
                i = 2;
            }
            this.e.b(5);
            byte[] a2 = a.a(i, this.q, this.e.c(3));
            a.C0421a a3 = a.a(a2);
            Format.a aVar = new Format.a();
            aVar.f20603a = this.h;
            aVar.k = "audio/mp4a-latm";
            aVar.h = a3.f20728c;
            aVar.x = a3.f20727b;
            aVar.y = a3.f20726a;
            aVar.m = Collections.singletonList(a2);
            aVar.f20605c = this.g;
            Format a4 = aVar.a();
            this.f21189a = 1024000000 / a4.sampleRate;
            this.i.a(a4);
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
        a(this.i, this.f21189a, 0, i2);
    }

    @EnsuresNonNull({"output", "currentOutput", "id3Output"})
    private void j() {
        com.google.android.exoplayer2.util.a.b(this.i);
        af.a(this.u);
        af.a(this.j);
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        c();
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.f21190b = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.h = dVar.c();
        x a2 = jVar.a(dVar.b(), 1);
        this.i = a2;
        this.u = a2;
        if (this.f21191d) {
            dVar.a();
            x a3 = jVar.a(dVar.b(), 5);
            this.j = a3;
            Format.a aVar = new Format.a();
            aVar.f20603a = dVar.c();
            aVar.k = "application/id3";
            a3.a(aVar.a());
            return;
        }
        this.j = new g();
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(u uVar) throws ParserException {
        j();
        while (uVar.a() > 0) {
            int i = this.k;
            if (i == 0) {
                b(uVar);
            } else if (i == 1) {
                c(uVar);
            } else if (i != 2) {
                if (i == 3) {
                    if (a(uVar, this.e.f22331a, this.n ? 7 : 5)) {
                        i();
                    }
                } else if (i == 4) {
                    d(uVar);
                } else {
                    throw new IllegalStateException();
                }
            } else if (a(uVar, this.f.f22335a, 10)) {
                h();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.o = false;
        d();
    }
}
