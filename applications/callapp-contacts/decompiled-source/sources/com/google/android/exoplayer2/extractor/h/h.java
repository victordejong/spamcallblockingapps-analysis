package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.l;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/h.class */
public final class h implements j {

    /* renamed from: b  reason: collision with root package name */
    private final String f21195b;

    /* renamed from: c  reason: collision with root package name */
    private String f21196c;

    /* renamed from: d  reason: collision with root package name */
    private x f21197d;
    private int f;
    private int g;
    private long h;
    private Format i;
    private int j;
    private long k;

    /* renamed from: a  reason: collision with root package name */
    private final u f21194a = new u(new byte[18]);
    private int e = 0;

    public h(String str) {
        this.f21195b = str;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.e = 0;
        this.f = 0;
        this.g = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.k = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.f21196c = dVar.c();
        this.f21197d = jVar.a(dVar.b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(u uVar) {
        a.a(this.f21197d);
        while (uVar.a() > 0) {
            int i = this.e;
            boolean z = true;
            boolean z2 = false;
            if (i == 0) {
                while (true) {
                    if (uVar.a() <= 0) {
                        break;
                    }
                    int i2 = this.g << 8;
                    this.g = i2;
                    int c2 = i2 | uVar.c();
                    this.g = c2;
                    if (l.a(c2)) {
                        byte[] bArr = this.f21194a.f22335a;
                        int i3 = this.g;
                        bArr[0] = (byte) ((i3 >> 24) & 255);
                        bArr[1] = (byte) ((i3 >> 16) & 255);
                        bArr[2] = (byte) ((i3 >> 8) & 255);
                        bArr[3] = (byte) (i3 & 255);
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
                byte[] bArr2 = this.f21194a.f22335a;
                int min = Math.min(uVar.a(), 18 - this.f);
                uVar.a(bArr2, this.f, min);
                int i4 = this.f + min;
                this.f = i4;
                if (i4 != 18) {
                    z = false;
                }
                if (z) {
                    byte[] bArr3 = this.f21194a.f22335a;
                    if (this.i == null) {
                        Format a2 = l.a(bArr3, this.f21196c, this.f21195b);
                        this.i = a2;
                        this.f21197d.a(a2);
                    }
                    this.j = l.b(bArr3);
                    this.h = (int) ((l.a(bArr3) * 1000000) / this.i.sampleRate);
                    this.f21194a.d(0);
                    this.f21197d.b(this.f21194a, 18);
                    this.e = 2;
                }
            } else if (i == 2) {
                int min2 = Math.min(uVar.a(), this.j - this.f);
                this.f21197d.b(uVar, min2);
                int i5 = this.f + min2;
                this.f = i5;
                int i6 = this.j;
                if (i5 == i6) {
                    this.f21197d.a(this.k, 1, i6, 0, null);
                    this.k += this.h;
                    this.e = 0;
                }
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}
