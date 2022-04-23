package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/o.class */
public final class o implements j {

    /* renamed from: a  reason: collision with root package name */
    private final u f21242a = new u(10);

    /* renamed from: b  reason: collision with root package name */
    private x f21243b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f21244c;

    /* renamed from: d  reason: collision with root package name */
    private long f21245d;
    private int e;
    private int f;

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.f21244c = false;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        if ((i & 4) != 0) {
            this.f21244c = true;
            this.f21245d = j;
            this.e = 0;
            this.f = 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        x a2 = jVar.a(dVar.b(), 5);
        this.f21243b = a2;
        Format.a aVar = new Format.a();
        aVar.f20603a = dVar.c();
        aVar.k = "application/id3";
        a2.a(aVar.a());
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(u uVar) {
        a.a(this.f21243b);
        if (this.f21244c) {
            int a2 = uVar.a();
            int i = this.f;
            if (i < 10) {
                int min = Math.min(a2, 10 - i);
                System.arraycopy(uVar.f22335a, uVar.f22336b, this.f21242a.f22335a, this.f, min);
                if (this.f + min == 10) {
                    this.f21242a.d(0);
                    if (73 == this.f21242a.c() && 68 == this.f21242a.c() && 51 == this.f21242a.c()) {
                        this.f21242a.e(3);
                        this.e = this.f21242a.n() + 10;
                    } else {
                        n.a("Id3Reader", "Discarding invalid ID3 tag");
                        this.f21244c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(a2, this.e - this.f);
            this.f21243b.b(uVar, min2);
            this.f += min2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
        int i;
        a.a(this.f21243b);
        if (this.f21244c && (i = this.e) != 0 && this.f == i) {
            this.f21243b.a(this.f21245d, 1, i, 0, null);
            this.f21244c = false;
        }
    }
}
