package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
/* renamed from: androidx.media2.exoplayer.external.source.ae */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ae.class */
final class C1739ae implements AbstractC1840s, AbstractC1840s.AbstractC1841a {

    /* renamed from: a */
    public final AbstractC1840s[] f6815a;

    /* renamed from: c */
    private final AbstractC1770g f6817c;

    /* renamed from: e */
    private AbstractC1840s.AbstractC1841a f6819e;

    /* renamed from: f */
    private TrackGroupArray f6820f;

    /* renamed from: h */
    private AbstractC1757am f6822h;

    /* renamed from: d */
    private final ArrayList<AbstractC1840s> f6818d = new ArrayList<>();

    /* renamed from: b */
    private final IdentityHashMap<AbstractC1756al, Integer> f6816b = new IdentityHashMap<>();

    /* renamed from: g */
    private AbstractC1840s[] f6821g = new AbstractC1840s[0];

    public C1739ae(AbstractC1770g abstractC1770g, AbstractC1840s... abstractC1840sArr) {
        this.f6817c = abstractC1770g;
        this.f6815a = abstractC1840sArr;
        this.f6822h = abstractC1770g.mo42120a(new AbstractC1757am[0]);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42085a(long j, C1378aj c1378aj) {
        AbstractC1840s[] abstractC1840sArr = this.f6821g;
        return (abstractC1840sArr.length > 0 ? abstractC1840sArr[0] : this.f6815a[0]).mo42085a(j, c1378aj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [androidx.media2.exoplayer.external.source.s[]] */
    /* JADX WARN: Type inference failed for: r0v38, types: [androidx.media2.exoplayer.external.source.s] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42082a(AbstractC1940e[] abstractC1940eArr, boolean[] zArr, AbstractC1756al[] abstractC1756alArr, boolean[] zArr2, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        int[] iArr = new int[abstractC1940eArr.length];
        int[] iArr2 = new int[abstractC1940eArr.length];
        for (int i = 0; i < abstractC1940eArr.length; i++) {
            iArr[i] = abstractC1756alArr[i] == null ? -1 : this.f6816b.get(abstractC1756alArr[i]).intValue();
            iArr2[i] = -1;
            if (abstractC1940eArr[i] != null) {
                TrackGroup mo41827e = abstractC1940eArr[i].mo41827e();
                int i2 = 0;
                while (true) {
                    AbstractC1840s[] abstractC1840sArr = this.f6815a;
                    if (i2 >= abstractC1840sArr.length) {
                        break;
                    } else if (abstractC1840sArr[i2].mo42081b().indexOf(mo41827e) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.f6816b.clear();
        int length = abstractC1940eArr.length;
        AbstractC1756al[] abstractC1756alArr2 = new AbstractC1756al[length];
        AbstractC1756al[] abstractC1756alArr3 = new AbstractC1756al[abstractC1940eArr.length];
        AbstractC1940e[] abstractC1940eArr2 = new AbstractC1940e[abstractC1940eArr.length];
        ArrayList arrayList = new ArrayList(this.f6815a.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.f6815a.length) {
            for (int i4 = 0; i4 < abstractC1940eArr.length; i4++) {
                abstractC1756alArr3[i4] = iArr[i4] == i3 ? abstractC1756alArr[i4] : null;
                AbstractC1940e abstractC1940e = null;
                if (iArr2[i4] == i3) {
                    abstractC1940e = abstractC1940eArr[i4];
                }
                abstractC1940eArr2[i4] = abstractC1940e;
            }
            ?? mo42082a = this.f6815a[i3].mo42082a(abstractC1940eArr2, zArr, abstractC1756alArr3, zArr2, z4);
            if (i3 == 0) {
                z = mo42082a;
            } else {
                int i5 = (mo42082a > z4 ? 1 : (mo42082a == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions.");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= abstractC1940eArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    AbstractC1756al abstractC1756al = (AbstractC1756al) C1993a.m41690a(abstractC1756alArr3[i6]);
                    abstractC1756alArr2[i6] = abstractC1756alArr3[i6];
                    this.f6816b.put(abstractC1756al, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (abstractC1756alArr3[i6] != null) {
                            z6 = false;
                        }
                        C1993a.m41686b(z6);
                        z3 = z2;
                    }
                }
                i6++;
                z5 = z3;
            }
            if (z2) {
                arrayList.add(this.f6815a[i3]);
            }
            i3++;
            z4 = z;
        }
        System.arraycopy(abstractC1756alArr2, 0, abstractC1756alArr, 0, length);
        AbstractC1840s[] abstractC1840sArr2 = new AbstractC1840s[arrayList.size()];
        this.f6821g = abstractC1840sArr2;
        arrayList.toArray(abstractC1840sArr2);
        this.f6822h = this.f6817c.mo42120a(this.f6821g);
        return z4 == true ? 1 : 0;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    public final void mo42086a(long j) {
        this.f6822h.mo42086a(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42084a(long j, boolean z) {
        for (AbstractC1840s abstractC1840s : this.f6821g) {
            abstractC1840s.mo42084a(j, z);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am.AbstractC1758a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo41806a(AbstractC1840s abstractC1840s) {
        ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(this.f6819e)).mo41806a((AbstractC1840s.AbstractC1841a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42083a(AbstractC1840s.AbstractC1841a abstractC1841a, long j) {
        this.f6819e = abstractC1841a;
        Collections.addAll(this.f6818d, this.f6815a);
        for (AbstractC1840s abstractC1840s : this.f6815a) {
            abstractC1840s.mo42083a(this, j);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s.AbstractC1841a
    /* renamed from: a */
    public final void mo41805a(AbstractC1840s abstractC1840s) {
        this.f6818d.remove(abstractC1840s);
        if (!this.f6818d.isEmpty()) {
            return;
        }
        int i = 0;
        for (AbstractC1840s abstractC1840s2 : this.f6815a) {
            i += abstractC1840s2.mo42081b().length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i];
        int i2 = 0;
        for (AbstractC1840s abstractC1840s3 : this.f6815a) {
            TrackGroupArray mo42081b = abstractC1840s3.mo42081b();
            int i3 = mo42081b.length;
            int i4 = 0;
            while (i4 < i3) {
                trackGroupArr[i2] = mo42081b.get(i4);
                i4++;
                i2++;
            }
        }
        this.f6820f = new TrackGroupArray(trackGroupArr);
        ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(this.f6819e)).mo41805a((AbstractC1840s) this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final long mo42080b(long j) {
        long mo42080b = this.f6821g[0].mo42080b(j);
        int i = 1;
        while (true) {
            AbstractC1840s[] abstractC1840sArr = this.f6821g;
            if (i < abstractC1840sArr.length) {
                if (abstractC1840sArr[i].mo42080b(mo42080b) != mo42080b) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
                i++;
            } else {
                return mo42080b;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final TrackGroupArray mo42081b() {
        return (TrackGroupArray) C1993a.m41690a(this.f6820f);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: c */
    public final long mo42079c() {
        AbstractC1840s[] abstractC1840sArr;
        long mo42079c = this.f6815a[0].mo42079c();
        int i = 1;
        while (true) {
            AbstractC1840s[] abstractC1840sArr2 = this.f6815a;
            if (i >= abstractC1840sArr2.length) {
                if (mo42079c != -9223372036854775807L) {
                    for (AbstractC1840s abstractC1840s : this.f6821g) {
                        if (abstractC1840s != this.f6815a[0] && abstractC1840s.mo42080b(mo42079c) != mo42079c) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                }
                return mo42079c;
            } else if (abstractC1840sArr2[i].mo42079c() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity.");
            } else {
                i++;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    public final boolean mo42078c(long j) {
        if (!this.f6818d.isEmpty()) {
            int size = this.f6818d.size();
            for (int i = 0; i < size; i++) {
                this.f6818d.get(i).mo42078c(j);
            }
            return false;
        }
        return this.f6822h.mo42078c(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    public final long mo42077d() {
        return this.f6822h.mo42077d();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    public final long mo42076e() {
        return this.f6822h.mo42076e();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: k_ */
    public final void mo42075k_() throws IOException {
        for (AbstractC1840s abstractC1840s : this.f6815a) {
            abstractC1840s.mo42075k_();
        }
    }
}
