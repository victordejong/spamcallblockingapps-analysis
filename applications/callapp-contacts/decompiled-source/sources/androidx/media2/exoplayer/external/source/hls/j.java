package androidx.media2.exoplayer.external.source.hls;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.source.ak;
import androidx.media2.exoplayer.external.source.al;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.x;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/j.class */
final class j implements al {

    /* renamed from: a  reason: collision with root package name */
    final int f3666a;

    /* renamed from: b  reason: collision with root package name */
    final k f3667b;

    /* renamed from: c  reason: collision with root package name */
    int f3668c = -1;

    public j(k kVar, int i) {
        this.f3667b = kVar;
        this.f3666a = i;
    }

    private boolean d() {
        int i = this.f3668c;
        return (i == -1 || i == -3 || i == -2) ? false : true;
    }

    @Override // androidx.media2.exoplayer.external.source.al
    public final int a(long j) {
        if (!d()) {
            return 0;
        }
        k kVar = this.f3667b;
        int i = this.f3668c;
        if (kVar.k()) {
            return 0;
        }
        ak akVar = kVar.i[i];
        if (kVar.y && j > akVar.f3578a.e()) {
            return akVar.f3578a.h();
        }
        int a2 = akVar.a(j, true);
        if (a2 != -1) {
            return a2;
        }
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.source.al
    public final int a(x xVar, e eVar, boolean z) {
        if (this.f3668c == -3) {
            eVar.a(4);
            return -4;
        } else if (!d()) {
            return -3;
        } else {
            k kVar = this.f3667b;
            int i = this.f3668c;
            if (kVar.k()) {
                return -3;
            }
            int i2 = 0;
            if (!kVar.e.isEmpty()) {
                int i3 = 0;
                while (true) {
                    boolean z2 = true;
                    if (i3 >= kVar.e.size() - 1) {
                        break;
                    }
                    int i4 = kVar.e.get(i3).j;
                    int length = kVar.i.length;
                    int i5 = 0;
                    while (true) {
                        if (i5 < length) {
                            if (kVar.u[i5] && kVar.i[i5].a() == i4) {
                                z2 = false;
                                break;
                            }
                            i5++;
                        } else {
                            break;
                        }
                    }
                    if (!z2) {
                        break;
                    }
                    i3++;
                }
                ac.a(kVar.e, 0, i3);
                h hVar = kVar.e.get(0);
                Format format = hVar.f3500c;
                if (!format.equals(kVar.p)) {
                    kVar.f3672d.a(kVar.f3669a, format, hVar.f3501d, hVar.e, hVar.f);
                }
                kVar.p = format;
            }
            int a2 = kVar.j[i].a(xVar, eVar, z, kVar.y, kVar.v);
            if (a2 == -5) {
                Format format2 = xVar.f4257c;
                Format format3 = format2;
                if (i == kVar.k) {
                    int a3 = kVar.i[i].a();
                    while (i2 < kVar.e.size() && kVar.e.get(i2).j != a3) {
                        i2++;
                    }
                    format3 = format2.copyWithManifestFormatInfo(i2 < kVar.e.size() ? kVar.e.get(i2).f3500c : kVar.o);
                }
                xVar.f4257c = format3;
            }
            return a2;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.al
    public final boolean a() {
        if (this.f3668c == -3) {
            return true;
        }
        if (!d()) {
            return false;
        }
        k kVar = this.f3667b;
        return !kVar.k() && kVar.j[this.f3668c].a(kVar.y);
    }

    @Override // androidx.media2.exoplayer.external.source.al
    public final void b() throws IOException {
        int i = this.f3668c;
        if (i == -2) {
            throw new SampleQueueMappingException(this.f3667b.r.get(this.f3666a).getFormat(0).sampleMimeType);
        } else if (i == -1) {
            this.f3667b.c();
        } else if (i != -3) {
            k kVar = this.f3667b;
            kVar.c();
            kVar.j[i].b();
        }
    }

    public final void c() {
        a.a(this.f3668c == -1);
        this.f3668c = this.f3667b.a(this.f3666a);
    }
}
