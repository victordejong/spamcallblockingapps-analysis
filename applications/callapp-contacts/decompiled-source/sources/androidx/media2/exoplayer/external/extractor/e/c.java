package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.a;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/c.class */
public final class c implements m {

    /* renamed from: a  reason: collision with root package name */
    long f3186a;

    /* renamed from: b  reason: collision with root package name */
    private final o f3187b;

    /* renamed from: c  reason: collision with root package name */
    private final p f3188c;

    /* renamed from: d  reason: collision with root package name */
    private final String f3189d;
    private String e;
    private q f;
    private int g;
    private int h;
    private boolean i;
    private long j;
    private Format k;
    private int l;

    public c() {
        this(null);
    }

    public c(String str) {
        o oVar = new o(new byte[128]);
        this.f3187b = oVar;
        this.f3188c = new p(oVar.f4162a);
        this.g = 0;
        this.f3189d = str;
    }

    private boolean a(p pVar, byte[] bArr) {
        int min = Math.min(pVar.b(), 128 - this.h);
        pVar.a(bArr, this.h, min);
        int i = this.h + min;
        this.h = i;
        return i == 128;
    }

    private boolean b(p pVar) {
        while (true) {
            boolean z = false;
            boolean z2 = false;
            if (pVar.b() <= 0) {
                return false;
            }
            if (!this.i) {
                if (pVar.c() == 11) {
                    z2 = true;
                }
                this.i = z2;
            } else {
                int c2 = pVar.c();
                if (c2 == 119) {
                    this.i = false;
                    return true;
                }
                if (c2 == 11) {
                    z = true;
                }
                this.i = z;
            }
        }
    }

    private void c() {
        this.f3187b.a(0);
        a.C0076a a2 = a.a(this.f3187b);
        if (!(this.k != null && a2.f2862d == this.k.channelCount && a2.f2861c == this.k.sampleRate && a2.f2859a == this.k.sampleMimeType)) {
            Format createAudioSampleFormat = Format.createAudioSampleFormat(this.e, a2.f2859a, null, -1, -1, a2.f2862d, a2.f2861c, null, null, 0, this.f3189d);
            this.k = createAudioSampleFormat;
            this.f.a(createAudioSampleFormat);
        }
        this.l = a2.e;
        this.j = (a2.f * 1000000) / this.k.sampleRate;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        this.g = 0;
        this.h = 0;
        this.i = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.f3186a = j;
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
                        int min = Math.min(pVar.b(), this.l - this.h);
                        this.f.a(pVar, min);
                        int i2 = this.h + min;
                        this.h = i2;
                        int i3 = this.l;
                        if (i2 == i3) {
                            this.f.a(this.f3186a, 1, i3, 0, null);
                            this.f3186a += this.j;
                            this.g = 0;
                        }
                    }
                } else if (a(pVar, this.f3188c.f4166a)) {
                    c();
                    this.f3188c.c(0);
                    this.f.a(this.f3188c, 128);
                    this.g = 2;
                }
            } else if (b(pVar)) {
                this.g = 1;
                this.f3188c.f4166a[0] = (byte) 11;
                this.f3188c.f4166a[1] = (byte) 119;
                this.h = 2;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }
}
