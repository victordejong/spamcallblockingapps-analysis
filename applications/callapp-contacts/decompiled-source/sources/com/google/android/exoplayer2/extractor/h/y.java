package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/y.class */
public final class y implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final x f21279a;

    /* renamed from: b  reason: collision with root package name */
    private final u f21280b = new u(32);

    /* renamed from: c  reason: collision with root package name */
    private int f21281c;

    /* renamed from: d  reason: collision with root package name */
    private int f21282d;
    private boolean e;
    private boolean f;

    public y(x xVar) {
        this.f21279a = xVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h.ad
    public final void a() {
        this.f = true;
    }

    @Override // com.google.android.exoplayer2.extractor.h.ad
    public final void a(ad adVar, j jVar, ad.d dVar) {
        this.f21279a.a(adVar, jVar, dVar);
        this.f = true;
    }

    @Override // com.google.android.exoplayer2.extractor.h.ad
    public final void a(u uVar, int i) {
        boolean z = (i & 1) != 0;
        int c2 = z ? uVar.f22336b + uVar.c() : 0;
        if (this.f) {
            if (z) {
                this.f = false;
                uVar.d(c2);
                this.f21282d = 0;
            } else {
                return;
            }
        }
        while (uVar.a() > 0) {
            int i2 = this.f21282d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int c3 = uVar.c();
                    uVar.d(uVar.f22336b - 1);
                    if (c3 == 255) {
                        this.f = true;
                        return;
                    }
                }
                int min = Math.min(uVar.a(), 3 - this.f21282d);
                uVar.a(this.f21280b.f22335a, this.f21282d, min);
                int i3 = this.f21282d + min;
                this.f21282d = i3;
                if (i3 == 3) {
                    this.f21280b.d(0);
                    this.f21280b.c(3);
                    this.f21280b.e(1);
                    int c4 = this.f21280b.c();
                    int c5 = this.f21280b.c();
                    this.e = (c4 & 128) != 0;
                    this.f21281c = (((c4 & 15) << 8) | c5) + 3;
                    int length = this.f21280b.f22335a.length;
                    int i4 = this.f21281c;
                    if (length < i4) {
                        this.f21280b.b(Math.min(4098, Math.max(i4, this.f21280b.f22335a.length * 2)));
                    }
                }
            } else {
                int min2 = Math.min(uVar.a(), this.f21281c - this.f21282d);
                uVar.a(this.f21280b.f22335a, this.f21282d, min2);
                int i5 = this.f21282d + min2;
                this.f21282d = i5;
                int i6 = this.f21281c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.e) {
                        this.f21280b.c(i6);
                    } else if (af.b(this.f21280b.f22335a, this.f21281c, -1) != 0) {
                        this.f = true;
                        return;
                    } else {
                        this.f21280b.c(this.f21281c - 4);
                    }
                    this.f21280b.d(0);
                    this.f21279a.a(this.f21280b);
                    this.f21282d = 0;
                }
            }
        }
    }
}
