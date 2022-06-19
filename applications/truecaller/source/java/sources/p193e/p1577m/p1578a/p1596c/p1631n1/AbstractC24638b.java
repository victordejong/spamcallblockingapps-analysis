package p193e.p1577m.p1578a.p1596c.p1631n1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.n1.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/b.class */
public abstract class AbstractC24638b implements AbstractC24645f {

    /* renamed from: a */
    public final TrackGroup f69011a;

    /* renamed from: b */
    public final int f69012b;

    /* renamed from: c */
    public final int[] f69013c;

    /* renamed from: d */
    public final Format[] f69014d;

    /* renamed from: e */
    public int f69015e;

    /* renamed from: e.m.a.c.n1.b$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/b$b.class */
    public static final class C24640b implements Comparator<Format> {
        public C24640b(C24639a c24639a) {
        }

        @Override // java.util.Comparator
        public int compare(Format format, Format format2) {
            return format2.f4843e - format.f4843e;
        }
    }

    public AbstractC24638b(TrackGroup trackGroup, int... iArr) {
        C26232y.m2286x(iArr.length > 0);
        Objects.requireNonNull(trackGroup);
        this.f69011a = trackGroup;
        int length = iArr.length;
        this.f69012b = length;
        this.f69014d = new Format[length];
        for (int i = 0; i < iArr.length; i++) {
            this.f69014d[i] = trackGroup.f5000b[iArr[i]];
        }
        Arrays.sort(this.f69014d, new C24640b(null));
        this.f69013c = new int[this.f69012b];
        int i2 = 0;
        while (true) {
            int i3 = this.f69012b;
            if (i2 >= i3) {
                long[] jArr = new long[i3];
                return;
            }
            int[] iArr2 = this.f69013c;
            Format format = this.f69014d[i2];
            int i4 = 0;
            while (true) {
                Format[] formatArr = trackGroup.f5000b;
                if (i4 >= formatArr.length) {
                    i4 = -1;
                    break;
                } else if (format == formatArr[i4]) {
                    break;
                } else {
                    i4++;
                }
            }
            iArr2[i2] = i4;
            i2++;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: a */
    public void mo4802a() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: b */
    public void mo4801b() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: d */
    public final int mo4799d(int i) {
        return this.f69013c[i];
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: e */
    public /* synthetic */ void mo4798e() {
        C24644e.m4803a(this);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC24638b abstractC24638b = (AbstractC24638b) obj;
        if (this.f69011a != abstractC24638b.f69011a || !Arrays.equals(this.f69013c, abstractC24638b.f69013c)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: f */
    public final TrackGroup mo4797f() {
        return this.f69011a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: g */
    public final Format mo4796g() {
        return this.f69014d[mo4800c()];
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: h */
    public final Format mo4795h(int i) {
        return this.f69014d[i];
    }

    public int hashCode() {
        if (this.f69015e == 0) {
            this.f69015e = Arrays.hashCode(this.f69013c) + (System.identityHashCode(this.f69011a) * 31);
        }
        return this.f69015e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    /* renamed from: i */
    public void mo4794i(float f) {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f
    public final int length() {
        return this.f69013c.length;
    }
}
