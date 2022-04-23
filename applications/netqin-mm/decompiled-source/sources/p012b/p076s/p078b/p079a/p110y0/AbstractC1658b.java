package p012b.p076s.p078b.p079a.p110y0;

import android.os.SystemClock;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1591e;
/* renamed from: b.s.b.a.y0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y0/b.class */
public abstract class AbstractC1658b implements AbstractC1668i {

    /* renamed from: a */
    public final TrackGroup f6832a;

    /* renamed from: b */
    public final int f6833b;

    /* renamed from: c */
    public final int[] f6834c;

    /* renamed from: d */
    public final Format[] f6835d;

    /* renamed from: e */
    public final long[] f6836e;

    /* renamed from: f */
    public int f6837f;

    /* renamed from: b.s.b.a.y0.b$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/b$b.class */
    public static final class C1660b implements Comparator<Format> {
        public C1660b() {
        }

        /* renamed from: a */
        public int compare(Format format, Format format2) {
            return format2.f1558e - format.f1558e;
        }
    }

    public AbstractC1658b(TrackGroup trackGroup, int... iArr) {
        int i = 0;
        C1160a.m34518b(iArr.length > 0);
        C1160a.m34522a(trackGroup);
        this.f6832a = trackGroup;
        int length = iArr.length;
        this.f6833b = length;
        this.f6835d = new Format[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f6835d[i2] = trackGroup.m37992a(iArr[i2]);
        }
        Arrays.sort(this.f6835d, new C1660b());
        this.f6834c = new int[this.f6833b];
        while (true) {
            int i3 = this.f6833b;
            if (i < i3) {
                this.f6834c[i] = trackGroup.m37991a(this.f6835d[i]);
                i++;
            } else {
                this.f6836e = new long[i3];
                return;
            }
        }
    }

    /* renamed from: a */
    public final int m32441a(Format format) {
        for (int i = 0; i < this.f6833b; i++) {
            if (this.f6835d[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public final Format mo32423a(int i) {
        return this.f6835d[i];
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public final TrackGroup mo32425a() {
        return this.f6832a;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public void mo32424a(float f) {
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public void mo32421a(long j, long j2, long j3) {
        AbstractC1667h.m32427a(this, j, j2, j3);
        throw null;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public void mo32420a(long j, long j2, long j3, List list, AbstractC1591e[] eVarArr) {
        AbstractC1667h.m32426a(this, j, j2, j3, list, eVarArr);
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public final boolean mo32422a(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean b = m32440b(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.f6833b && !b) {
            b = i2 != i && !m32440b(i2, elapsedRealtime);
            i2++;
        }
        if (!b) {
            return false;
        }
        long[] jArr = this.f6836e;
        jArr[i] = Math.max(jArr[i], C1167d0.m34490a(elapsedRealtime, j, Long.MAX_VALUE));
        return true;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: b */
    public final int mo32418b(int i) {
        return this.f6834c[i];
    }

    /* renamed from: b */
    public final boolean m32440b(int i, long j) {
        return this.f6836e[i] > j;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: c */
    public final int mo32416c(int i) {
        for (int i2 = 0; i2 < this.f6833b; i2++) {
            if (this.f6834c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: c */
    public void mo32417c() {
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: d */
    public final Format mo32415d() {
        return this.f6835d[mo32419b()];
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: e */
    public void mo32414e() {
        AbstractC1667h.m32428a(this);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC1658b bVar = (AbstractC1658b) obj;
        if (this.f6832a != bVar.f6832a || !Arrays.equals(this.f6834c, bVar.f6834c)) {
            z = false;
        }
        return z;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: f */
    public void mo32413f() {
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: g */
    public final int mo32412g() {
        return this.f6834c[mo32419b()];
    }

    public int hashCode() {
        if (this.f6837f == 0) {
            this.f6837f = (System.identityHashCode(this.f6832a) * 31) + Arrays.hashCode(this.f6834c);
        }
        return this.f6837f;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    public final int length() {
        return this.f6834c.length;
    }
}
