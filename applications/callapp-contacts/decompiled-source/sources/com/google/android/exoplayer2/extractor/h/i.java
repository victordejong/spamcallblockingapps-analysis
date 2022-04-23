package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.u;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/i.class */
public final class i implements j {

    /* renamed from: a  reason: collision with root package name */
    private final List<ad.a> f21198a;

    /* renamed from: b  reason: collision with root package name */
    private final x[] f21199b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f21200c;

    /* renamed from: d  reason: collision with root package name */
    private int f21201d;
    private int e;
    private long f;

    public i(List<ad.a> list) {
        this.f21198a = list;
        this.f21199b = new x[list.size()];
    }

    private boolean a(u uVar, int i) {
        if (uVar.a() == 0) {
            return false;
        }
        if (uVar.c() != i) {
            this.f21200c = false;
        }
        this.f21201d--;
        return this.f21200c;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.f21200c = false;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        if ((i & 4) != 0) {
            this.f21200c = true;
            this.f = j;
            this.e = 0;
            this.f21201d = 2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        for (int i = 0; i < this.f21199b.length; i++) {
            ad.a aVar = this.f21198a.get(i);
            dVar.a();
            x a2 = jVar.a(dVar.b(), 3);
            Format.a aVar2 = new Format.a();
            aVar2.f20603a = dVar.c();
            aVar2.k = "application/dvbsubs";
            aVar2.m = Collections.singletonList(aVar.f21161c);
            aVar2.f20605c = aVar.f21159a;
            a2.a(aVar2.a());
            this.f21199b[i] = a2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(u uVar) {
        x[] xVarArr;
        if (!this.f21200c) {
            return;
        }
        if (this.f21201d != 2 || a(uVar, 32)) {
            if (this.f21201d != 1 || a(uVar, 0)) {
                int i = uVar.f22336b;
                int a2 = uVar.a();
                for (x xVar : this.f21199b) {
                    uVar.d(i);
                    xVar.b(uVar, a2);
                }
                this.e += a2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
        if (this.f21200c) {
            for (x xVar : this.f21199b) {
                xVar.a(this.f, 1, this.e, 0, null);
            }
            this.f21200c = false;
        }
    }
}
