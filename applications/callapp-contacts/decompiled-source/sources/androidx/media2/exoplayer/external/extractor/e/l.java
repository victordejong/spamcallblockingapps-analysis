package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/l.class */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final List<ah.a> f3214a;

    /* renamed from: b  reason: collision with root package name */
    private final q[] f3215b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3216c;

    /* renamed from: d  reason: collision with root package name */
    private int f3217d;
    private int e;
    private long f;

    public l(List<ah.a> list) {
        this.f3214a = list;
        this.f3215b = new q[list.size()];
    }

    private boolean a(p pVar, int i) {
        if (pVar.b() == 0) {
            return false;
        }
        if (pVar.c() != i) {
            this.f3216c = false;
        }
        this.f3217d--;
        return this.f3216c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        this.f3216c = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        if ((i & 4) != 0) {
            this.f3216c = true;
            this.f = j;
            this.e = 0;
            this.f3217d = 2;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        for (int i = 0; i < this.f3215b.length; i++) {
            ah.a aVar = this.f3214a.get(i);
            dVar.a();
            q a2 = iVar.a(dVar.b(), 3);
            a2.a(Format.createImageSampleFormat(dVar.c(), "application/dvbsubs", null, -1, 0, Collections.singletonList(aVar.f3174c), aVar.f3172a, null));
            this.f3215b[i] = a2;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(p pVar) {
        q[] qVarArr;
        if (!this.f3216c) {
            return;
        }
        if (this.f3217d != 2 || a(pVar, 32)) {
            if (this.f3217d != 1 || a(pVar, 0)) {
                int i = pVar.f4167b;
                int b2 = pVar.b();
                for (q qVar : this.f3215b) {
                    pVar.c(i);
                    qVar.a(pVar, b2);
                }
                this.e += b2;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
        if (this.f3216c) {
            for (q qVar : this.f3215b) {
                qVar.a(this.f, 1, this.e, 0, null);
            }
            this.f3216c = false;
        }
    }
}
