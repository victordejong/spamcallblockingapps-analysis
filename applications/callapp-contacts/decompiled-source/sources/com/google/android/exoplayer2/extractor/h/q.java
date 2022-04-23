package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.o;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/q.class */
public final class q implements j {

    /* renamed from: a  reason: collision with root package name */
    private final u f21250a;

    /* renamed from: b  reason: collision with root package name */
    private final o.a f21251b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21252c;

    /* renamed from: d  reason: collision with root package name */
    private x f21253d;
    private String e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private long j;
    private int k;
    private long l;

    public q() {
        this(null);
    }

    public q(String str) {
        this.f = 0;
        u uVar = new u(4);
        this.f21250a = uVar;
        uVar.f22335a[0] = (byte) (-1);
        this.f21251b = new o.a();
        this.f21252c = str;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.f = 0;
        this.g = 0;
        this.i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.l = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.e = dVar.c();
        this.f21253d = jVar.a(dVar.b(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(u uVar) {
        a.a(this.f21253d);
        while (uVar.a() > 0) {
            int i = this.f;
            if (i == 0) {
                byte[] bArr = uVar.f22335a;
                int i2 = uVar.f22336b;
                int i3 = uVar.f22337c;
                while (true) {
                    if (i2 >= i3) {
                        uVar.d(i3);
                        break;
                    }
                    boolean z = (bArr[i2] & 255) == 255;
                    boolean z2 = this.i && (bArr[i2] & 224) == 224;
                    this.i = z;
                    if (z2) {
                        uVar.d(i2 + 1);
                        this.i = false;
                        this.f21250a.f22335a[1] = bArr[i2];
                        this.g = 2;
                        this.f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int min = Math.min(uVar.a(), 4 - this.g);
                uVar.a(this.f21250a.f22335a, this.g, min);
                int i4 = this.g + min;
                this.g = i4;
                if (i4 >= 4) {
                    this.f21250a.d(0);
                    if (!this.f21251b.a(this.f21250a.j())) {
                        this.g = 0;
                        this.f = 1;
                    } else {
                        this.k = this.f21251b.f20786c;
                        if (!this.h) {
                            this.j = (this.f21251b.g * 1000000) / this.f21251b.f20787d;
                            Format.a aVar = new Format.a();
                            aVar.f20603a = this.e;
                            aVar.k = this.f21251b.f20785b;
                            aVar.l = 4096;
                            aVar.x = this.f21251b.e;
                            aVar.y = this.f21251b.f20787d;
                            aVar.f20605c = this.f21252c;
                            this.f21253d.a(aVar.a());
                            this.h = true;
                        }
                        this.f21250a.d(0);
                        this.f21253d.b(this.f21250a, 4);
                        this.f = 2;
                    }
                }
            } else if (i == 2) {
                int min2 = Math.min(uVar.a(), this.k - this.g);
                this.f21253d.b(uVar, min2);
                int i5 = this.g + min2;
                this.g = i5;
                int i6 = this.k;
                if (i5 >= i6) {
                    this.f21253d.a(this.l, 1, i6, 0, null);
                    this.l += this.j;
                    this.g = 0;
                    this.f = 0;
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
