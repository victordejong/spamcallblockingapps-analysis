package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.b;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/f.class */
public final class f implements m {

    /* renamed from: a  reason: collision with root package name */
    long f3195a;

    /* renamed from: b  reason: collision with root package name */
    private final o f3196b;

    /* renamed from: c  reason: collision with root package name */
    private final p f3197c;

    /* renamed from: d  reason: collision with root package name */
    private final String f3198d;
    private String e;
    private q f;
    private int g;
    private int h;
    private boolean i;
    private boolean j;
    private long k;
    private Format l;
    private int m;

    public f() {
        this(null);
    }

    public f(String str) {
        o oVar = new o(new byte[16]);
        this.f3196b = oVar;
        this.f3197c = new p(oVar.f4162a);
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.j = false;
        this.f3198d = str;
    }

    private boolean a(p pVar, byte[] bArr) {
        int min = Math.min(pVar.b(), 16 - this.h);
        pVar.a(bArr, this.h, min);
        int i = this.h + min;
        this.h = i;
        return i == 16;
    }

    private boolean b(p pVar) {
        int c2;
        boolean z;
        while (true) {
            z = false;
            boolean z2 = false;
            if (pVar.b() <= 0) {
                return false;
            }
            if (!this.i) {
                if (pVar.c() == 172) {
                    z2 = true;
                }
                this.i = z2;
            } else {
                c2 = pVar.c();
                this.i = c2 == 172;
                if (c2 == 64 || c2 == 65) {
                    break;
                }
            }
        }
        if (c2 == 65) {
            z = true;
        }
        this.j = z;
        return true;
    }

    private void c() {
        this.f3196b.a(0);
        b.a a2 = b.a(this.f3196b);
        if (this.l == null || a2.f2866c != this.l.channelCount || a2.f2865b != this.l.sampleRate || !"audio/ac4".equals(this.l.sampleMimeType)) {
            Format createAudioSampleFormat = Format.createAudioSampleFormat(this.e, "audio/ac4", null, -1, -1, a2.f2866c, a2.f2865b, null, null, 0, this.f3198d);
            this.l = createAudioSampleFormat;
            this.f.a(createAudioSampleFormat);
        }
        this.m = a2.f2867d;
        this.k = (a2.e * 1000000) / this.l.sampleRate;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.j = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.f3195a = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        this.e = dVar.c();
        this.f = iVar.a(dVar.b(), 1);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(p pVar) {
        while (pVar.b() > 0) {
            int i = this.g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(pVar.b(), this.m - this.h);
                        this.f.a(pVar, min);
                        int i2 = this.h + min;
                        this.h = i2;
                        int i3 = this.m;
                        if (i2 == i3) {
                            this.f.a(this.f3195a, 1, i3, 0, null);
                            this.f3195a += this.k;
                            this.g = 0;
                        }
                    }
                } else if (a(pVar, this.f3197c.f4166a)) {
                    c();
                    this.f3197c.c(0);
                    this.f.a(this.f3197c, 16);
                    this.g = 2;
                }
            } else if (b(pVar)) {
                this.g = 1;
                this.f3197c.f4166a[0] = (byte) (-84);
                this.f3197c.f4166a[1] = (byte) (this.j ? 65 : 64);
                this.h = 2;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }
}
