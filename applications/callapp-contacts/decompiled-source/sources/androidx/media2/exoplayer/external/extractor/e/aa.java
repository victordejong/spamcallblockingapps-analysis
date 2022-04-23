package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/aa.class */
public final class aa implements ah {

    /* renamed from: a  reason: collision with root package name */
    private final z f3145a;

    /* renamed from: b  reason: collision with root package name */
    private final p f3146b = new p(32);

    /* renamed from: c  reason: collision with root package name */
    private int f3147c;

    /* renamed from: d  reason: collision with root package name */
    private int f3148d;
    private boolean e;
    private boolean f;

    public aa(z zVar) {
        this.f3145a = zVar;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.ah
    public final void a() {
        this.f = true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.ah
    public final void a(p pVar, int i) {
        boolean z = (i & 1) != 0;
        int c2 = z ? pVar.f4167b + pVar.c() : 0;
        if (this.f) {
            if (z) {
                this.f = false;
                pVar.c(c2);
                this.f3148d = 0;
            } else {
                return;
            }
        }
        while (pVar.b() > 0) {
            int i2 = this.f3148d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int c3 = pVar.c();
                    pVar.c(pVar.f4167b - 1);
                    if (c3 == 255) {
                        this.f = true;
                        return;
                    }
                }
                int min = Math.min(pVar.b(), 3 - this.f3148d);
                pVar.a(this.f3146b.f4166a, this.f3148d, min);
                int i3 = this.f3148d + min;
                this.f3148d = i3;
                if (i3 == 3) {
                    this.f3146b.a(3);
                    this.f3146b.d(1);
                    int c4 = this.f3146b.c();
                    int c5 = this.f3146b.c();
                    this.e = (c4 & 128) != 0;
                    this.f3147c = (((c4 & 15) << 8) | c5) + 3;
                    if (this.f3146b.f4166a.length < this.f3147c) {
                        byte[] bArr = this.f3146b.f4166a;
                        this.f3146b.a(Math.min(4098, Math.max(this.f3147c, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f3146b.f4166a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(pVar.b(), this.f3147c - this.f3148d);
                pVar.a(this.f3146b.f4166a, this.f3148d, min2);
                int i4 = this.f3148d + min2;
                this.f3148d = i4;
                int i5 = this.f3147c;
                if (i4 != i5) {
                    continue;
                } else {
                    if (!this.e) {
                        this.f3146b.a(i5);
                    } else if (ac.b(this.f3146b.f4166a, this.f3147c, -1) != 0) {
                        this.f = true;
                        return;
                    } else {
                        this.f3146b.a(this.f3147c - 4);
                    }
                    this.f3145a.a(this.f3146b);
                    this.f3148d = 0;
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.ah
    public final void a(z zVar, i iVar, ah.d dVar) {
        this.f3145a.a(zVar, iVar, dVar);
        this.f = true;
    }
}
