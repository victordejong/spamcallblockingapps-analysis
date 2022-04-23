package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.util.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ae.class */
final class ae implements s, s.a {

    /* renamed from: a  reason: collision with root package name */
    public final s[] f3539a;

    /* renamed from: c  reason: collision with root package name */
    private final g f3541c;
    private s.a e;
    private TrackGroupArray f;
    private am h;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<s> f3542d = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final IdentityHashMap<al, Integer> f3540b = new IdentityHashMap<>();
    private s[] g = new s[0];

    public ae(g gVar, s... sVarArr) {
        this.f3541c = gVar;
        this.f3539a = sVarArr;
        this.h = gVar.a(new am[0]);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long a(long j, aj ajVar) {
        s[] sVarArr = this.g;
        return (sVarArr.length > 0 ? sVarArr[0] : this.f3539a[0]).a(j, ajVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.source.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(androidx.media2.exoplayer.external.trackselection.e[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.al[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ae.a(androidx.media2.exoplayer.external.trackselection.e[], boolean[], androidx.media2.exoplayer.external.source.al[], boolean[], long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final void a(long j) {
        this.h.a(j);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(long j, boolean z) {
        for (s sVar : this.g) {
            sVar.a(j, z);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.am.a
    public final /* bridge */ /* synthetic */ void a(s sVar) {
        ((s.a) a.a(this.e)).a((s.a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(s.a aVar, long j) {
        this.e = aVar;
        Collections.addAll(this.f3542d, this.f3539a);
        for (s sVar : this.f3539a) {
            sVar.a(this, j);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(s sVar) {
        this.f3542d.remove(sVar);
        if (this.f3542d.isEmpty()) {
            int i = 0;
            for (s sVar2 : this.f3539a) {
                i += sVar2.b().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i];
            int i2 = 0;
            for (s sVar3 : this.f3539a) {
                TrackGroupArray b2 = sVar3.b();
                int i3 = b2.length;
                int i4 = 0;
                while (i4 < i3) {
                    trackGroupArr[i2] = b2.get(i4);
                    i4++;
                    i2++;
                }
            }
            this.f = new TrackGroupArray(trackGroupArr);
            ((s.a) a.a(this.e)).a((s) this);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long b(long j) {
        long b2 = this.g[0].b(j);
        int i = 1;
        while (true) {
            s[] sVarArr = this.g;
            if (i >= sVarArr.length) {
                return b2;
            }
            if (sVarArr[i].b(b2) == b2) {
                i++;
            } else {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final TrackGroupArray b() {
        return (TrackGroupArray) a.a(this.f);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long c() {
        s[] sVarArr;
        long c2 = this.f3539a[0].c();
        int i = 1;
        while (true) {
            s[] sVarArr2 = this.f3539a;
            if (i >= sVarArr2.length) {
                if (c2 != -9223372036854775807L) {
                    for (s sVar : this.g) {
                        if (sVar != this.f3539a[0] && sVar.b(c2) != c2) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                }
                return c2;
            } else if (sVarArr2[i].c() == -9223372036854775807L) {
                i++;
            } else {
                throw new IllegalStateException("Child reported discontinuity.");
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final boolean c(long j) {
        if (this.f3542d.isEmpty()) {
            return this.h.c(j);
        }
        int size = this.f3542d.size();
        for (int i = 0; i < size; i++) {
            this.f3542d.get(i).c(j);
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long d() {
        return this.h.d();
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long e() {
        return this.h.e();
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void k_() throws IOException {
        for (s sVar : this.f3539a) {
            sVar.k_();
        }
    }
}
