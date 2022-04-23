package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.m;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/s.class */
public final class s implements m {

    /* renamed from: a  reason: collision with root package name */
    private final p f3254a;

    /* renamed from: b  reason: collision with root package name */
    private final m f3255b;

    /* renamed from: c  reason: collision with root package name */
    private final String f3256c;

    /* renamed from: d  reason: collision with root package name */
    private String f3257d;
    private q e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private long j;
    private int k;
    private long l;

    public s() {
        this(null);
    }

    public s(String str) {
        this.f = 0;
        p pVar = new p(4);
        this.f3254a = pVar;
        pVar.f4166a[0] = (byte) (-1);
        this.f3255b = new m();
        this.f3256c = str;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        this.f = 0;
        this.g = 0;
        this.i = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.l = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        this.f3257d = dVar.c();
        this.e = iVar.a(dVar.b(), 1);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(p pVar) {
        while (pVar.b() > 0) {
            int i = this.f;
            if (i == 0) {
                byte[] bArr = pVar.f4166a;
                int i2 = pVar.f4167b;
                int i3 = pVar.f4168c;
                while (true) {
                    if (i2 >= i3) {
                        pVar.c(i3);
                        break;
                    }
                    boolean z = (bArr[i2] & 255) == 255;
                    boolean z2 = this.i && (bArr[i2] & 224) == 224;
                    this.i = z;
                    if (z2) {
                        pVar.c(i2 + 1);
                        this.i = false;
                        this.f3254a.f4166a[1] = bArr[i2];
                        this.g = 2;
                        this.f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int min = Math.min(pVar.b(), 4 - this.g);
                pVar.a(this.f3254a.f4166a, this.g, min);
                int i4 = this.g + min;
                this.g = i4;
                if (i4 >= 4) {
                    this.f3254a.c(0);
                    if (!m.a(this.f3254a.i(), this.f3255b)) {
                        this.g = 0;
                        this.f = 1;
                    } else {
                        this.k = this.f3255b.f3311c;
                        if (!this.h) {
                            this.j = (this.f3255b.g * 1000000) / this.f3255b.f3312d;
                            this.e.a(Format.createAudioSampleFormat(this.f3257d, this.f3255b.f3310b, null, -1, 4096, this.f3255b.e, this.f3255b.f3312d, null, null, 0, this.f3256c));
                            this.h = true;
                        }
                        this.f3254a.c(0);
                        this.e.a(this.f3254a, 4);
                        this.f = 2;
                    }
                }
            } else if (i == 2) {
                int min2 = Math.min(pVar.b(), this.k - this.g);
                this.e.a(pVar, min2);
                int i5 = this.g + min2;
                this.g = i5;
                int i6 = this.k;
                if (i5 >= i6) {
                    this.e.a(this.l, 1, i6, 0, null);
                    this.l += this.j;
                    this.g = 0;
                    this.f = 0;
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
