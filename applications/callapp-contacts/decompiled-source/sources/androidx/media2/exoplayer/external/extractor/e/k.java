package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.s;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/k.class */
public final class k implements m {

    /* renamed from: b  reason: collision with root package name */
    private final String f3211b;

    /* renamed from: c  reason: collision with root package name */
    private String f3212c;

    /* renamed from: d  reason: collision with root package name */
    private q f3213d;
    private int f;
    private int g;
    private long h;
    private Format i;
    private int j;
    private long k;

    /* renamed from: a  reason: collision with root package name */
    private final p f3210a = new p(new byte[18]);
    private int e = 0;

    public k(String str) {
        this.f3211b = str;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        this.e = 0;
        this.f = 0;
        this.g = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.k = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        this.f3212c = dVar.c();
        this.f3213d = iVar.a(dVar.b(), 1);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(p pVar) {
        while (pVar.b() > 0) {
            int i = this.e;
            boolean z = true;
            boolean z2 = false;
            if (i == 0) {
                while (true) {
                    if (pVar.b() <= 0) {
                        break;
                    }
                    int i2 = this.g << 8;
                    this.g = i2;
                    int c2 = i2 | pVar.c();
                    this.g = c2;
                    if (s.a(c2)) {
                        this.f3210a.f4166a[0] = (byte) ((this.g >> 24) & 255);
                        this.f3210a.f4166a[1] = (byte) ((this.g >> 16) & 255);
                        this.f3210a.f4166a[2] = (byte) ((this.g >> 8) & 255);
                        this.f3210a.f4166a[3] = (byte) (this.g & 255);
                        this.f = 4;
                        this.g = 0;
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    this.e = 1;
                }
            } else if (i == 1) {
                byte[] bArr = this.f3210a.f4166a;
                int min = Math.min(pVar.b(), 18 - this.f);
                pVar.a(bArr, this.f, min);
                int i3 = this.f + min;
                this.f = i3;
                if (i3 != 18) {
                    z = false;
                }
                if (z) {
                    byte[] bArr2 = this.f3210a.f4166a;
                    if (this.i == null) {
                        Format a2 = s.a(bArr2, this.f3212c, this.f3211b);
                        this.i = a2;
                        this.f3213d.a(a2);
                    }
                    this.j = s.b(bArr2);
                    this.h = (int) ((s.a(bArr2) * 1000000) / this.i.sampleRate);
                    this.f3210a.c(0);
                    this.f3213d.a(this.f3210a, 18);
                    this.e = 2;
                }
            } else if (i == 2) {
                int min2 = Math.min(pVar.b(), this.j - this.f);
                this.f3213d.a(pVar, min2);
                int i4 = this.f + min2;
                this.f = i4;
                int i5 = this.j;
                if (i4 == i5) {
                    this.f3213d.a(this.k, 1, i5, 0, null);
                    this.k += this.h;
                    this.e = 0;
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }
}
