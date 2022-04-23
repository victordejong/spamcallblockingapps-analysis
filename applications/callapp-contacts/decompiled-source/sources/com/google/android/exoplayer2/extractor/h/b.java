package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.b;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/b.class */
public final class b implements j {

    /* renamed from: a  reason: collision with root package name */
    long f21172a;

    /* renamed from: b  reason: collision with root package name */
    private final t f21173b;

    /* renamed from: c  reason: collision with root package name */
    private final u f21174c;

    /* renamed from: d  reason: collision with root package name */
    private final String f21175d;
    private String e;
    private x f;
    private int g;
    private int h;
    private boolean i;
    private long j;
    private Format k;
    private int l;

    public b() {
        this(null);
    }

    public b(String str) {
        t tVar = new t(new byte[128]);
        this.f21173b = tVar;
        this.f21174c = new u(tVar.f22331a);
        this.g = 0;
        this.f21175d = str;
    }

    private boolean a(u uVar, byte[] bArr) {
        int min = Math.min(uVar.a(), 128 - this.h);
        uVar.a(bArr, this.h, min);
        int i = this.h + min;
        this.h = i;
        return i == 128;
    }

    private boolean b(u uVar) {
        while (true) {
            boolean z = false;
            boolean z2 = false;
            if (uVar.a() <= 0) {
                return false;
            }
            if (!this.i) {
                if (uVar.c() == 11) {
                    z2 = true;
                }
                this.i = z2;
            } else {
                int c2 = uVar.c();
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

    @RequiresNonNull({"output"})
    private void c() {
        this.f21173b.a(0);
        b.a a2 = com.google.android.exoplayer2.audio.b.a(this.f21173b);
        if (this.k == null || a2.f20736d != this.k.channelCount || a2.f20735c != this.k.sampleRate || !af.a((Object) a2.f20733a, (Object) this.k.sampleMimeType)) {
            Format.a aVar = new Format.a();
            aVar.f20603a = this.e;
            aVar.k = a2.f20733a;
            aVar.x = a2.f20736d;
            aVar.y = a2.f20735c;
            aVar.f20605c = this.f21175d;
            Format a3 = aVar.a();
            this.k = a3;
            this.f.a(a3);
        }
        this.l = a2.e;
        this.j = (a2.f * 1000000) / this.k.sampleRate;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.g = 0;
        this.h = 0;
        this.i = false;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.f21172a = j;
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
                        int min = Math.min(uVar.a(), this.l - this.h);
                        this.f.b(uVar, min);
                        int i2 = this.h + min;
                        this.h = i2;
                        int i3 = this.l;
                        if (i2 == i3) {
                            this.f.a(this.f21172a, 1, i3, 0, null);
                            this.f21172a += this.j;
                            this.g = 0;
                        }
                    }
                } else if (a(uVar, this.f21174c.f22335a)) {
                    c();
                    this.f21174c.d(0);
                    this.f.b(this.f21174c, 128);
                    this.g = 2;
                }
            } else if (b(uVar)) {
                this.g = 1;
                this.f21174c.f22335a[0] = (byte) 11;
                this.f21174c.f22335a[1] = (byte) 119;
                this.h = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}
