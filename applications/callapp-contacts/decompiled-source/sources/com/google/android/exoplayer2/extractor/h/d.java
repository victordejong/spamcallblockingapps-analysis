package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.c;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/d.class */
public final class d implements j {

    /* renamed from: a  reason: collision with root package name */
    long f21180a;

    /* renamed from: b  reason: collision with root package name */
    private final t f21181b;

    /* renamed from: c  reason: collision with root package name */
    private final u f21182c;

    /* renamed from: d  reason: collision with root package name */
    private final String f21183d;
    private String e;
    private x f;
    private int g;
    private int h;
    private boolean i;
    private boolean j;
    private long k;
    private Format l;
    private int m;

    public d() {
        this(null);
    }

    public d(String str) {
        t tVar = new t(new byte[16]);
        this.f21181b = tVar;
        this.f21182c = new u(tVar.f22331a);
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.j = false;
        this.f21183d = str;
    }

    private boolean a(u uVar, byte[] bArr) {
        int min = Math.min(uVar.a(), 16 - this.h);
        uVar.a(bArr, this.h, min);
        int i = this.h + min;
        this.h = i;
        return i == 16;
    }

    private boolean b(u uVar) {
        int c2;
        boolean z;
        while (true) {
            z = false;
            boolean z2 = false;
            if (uVar.a() <= 0) {
                return false;
            }
            if (!this.i) {
                if (uVar.c() == 172) {
                    z2 = true;
                }
                this.i = z2;
            } else {
                c2 = uVar.c();
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

    @RequiresNonNull({"output"})
    private void c() {
        this.f21181b.a(0);
        c.a a2 = c.a(this.f21181b);
        if (this.l == null || a2.f20740c != this.l.channelCount || a2.f20739b != this.l.sampleRate || !"audio/ac4".equals(this.l.sampleMimeType)) {
            Format.a aVar = new Format.a();
            aVar.f20603a = this.e;
            aVar.k = "audio/ac4";
            aVar.x = a2.f20740c;
            aVar.y = a2.f20739b;
            aVar.f20605c = this.f21183d;
            Format a3 = aVar.a();
            this.l = a3;
            this.f.a(a3);
        }
        this.m = a2.f20741d;
        this.k = (a2.e * 1000000) / this.l.sampleRate;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.j = false;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.f21180a = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.e = dVar.c();
        this.f = jVar.a(dVar.b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(u uVar) {
        a.a(this.f);
        while (uVar.a() > 0) {
            int i = this.g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(uVar.a(), this.m - this.h);
                        this.f.b(uVar, min);
                        int i2 = this.h + min;
                        this.h = i2;
                        int i3 = this.m;
                        if (i2 == i3) {
                            this.f.a(this.f21180a, 1, i3, 0, null);
                            this.f21180a += this.k;
                            this.g = 0;
                        }
                    }
                } else if (a(uVar, this.f21182c.f22335a)) {
                    c();
                    this.f21182c.d(0);
                    this.f.b(this.f21182c, 16);
                    this.g = 2;
                }
            } else if (b(uVar)) {
                this.g = 1;
                this.f21182c.f22335a[0] = (byte) (-84);
                this.f21182c.f22335a[1] = (byte) (this.j ? 65 : 64);
                this.h = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}
