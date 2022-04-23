package p131c.p161d.p170b.p188c.p198d1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import java.util.Arrays;
import java.util.Comparator;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.d1.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/d1/b.class */
public abstract class AbstractC2773b implements AbstractC2780f {

    /* renamed from: a */
    public final TrackGroup f10117a;

    /* renamed from: b */
    public final int f10118b;

    /* renamed from: c */
    public final int[] f10119c;

    /* renamed from: d */
    public final Format[] f10120d;

    /* renamed from: e */
    public int f10121e;

    /* renamed from: c.d.b.c.d1.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/d1/b$b.class */
    public static final class C2775b implements Comparator<Format> {
        public C2775b() {
        }

        /* renamed from: a */
        public int compare(Format format, Format format2) {
            return format2.f21948e - format.f21948e;
        }
    }

    public AbstractC2773b(TrackGroup trackGroup, int... iArr) {
        int i = 0;
        C2877e.m28731b(iArr.length > 0);
        C2877e.m28737a(trackGroup);
        this.f10117a = trackGroup;
        int length = iArr.length;
        this.f10118b = length;
        this.f10120d = new Format[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f10120d[i2] = trackGroup.m18482a(iArr[i2]);
        }
        Arrays.sort(this.f10120d, new C2775b());
        this.f10119c = new int[this.f10118b];
        while (true) {
            int i3 = this.f10118b;
            if (i < i3) {
                this.f10119c[i] = trackGroup.m18481a(this.f10120d[i]);
                i++;
            } else {
                long[] jArr = new long[i3];
                return;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: a */
    public final Format mo29028a(int i) {
        return this.f10120d[i];
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: a */
    public final TrackGroup mo29030a() {
        return this.f10117a;
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: a */
    public void mo29029a(float f) {
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: b */
    public final int mo29026b(int i) {
        return this.f10119c[i];
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: c */
    public void mo29025c() {
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: d */
    public final Format mo29024d() {
        return this.f10120d[mo29027b()];
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: e */
    public /* synthetic */ void mo29023e() {
        C2779e.m29031a(this);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC2773b bVar = (AbstractC2773b) obj;
        if (this.f10117a != bVar.f10117a || !Arrays.equals(this.f10119c, bVar.f10119c)) {
            z = false;
        }
        return z;
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: f */
    public void mo29022f() {
    }

    public int hashCode() {
        if (this.f10121e == 0) {
            this.f10121e = (System.identityHashCode(this.f10117a) * 31) + Arrays.hashCode(this.f10119c);
        }
        return this.f10121e;
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    public final int length() {
        return this.f10119c.length;
    }
}
