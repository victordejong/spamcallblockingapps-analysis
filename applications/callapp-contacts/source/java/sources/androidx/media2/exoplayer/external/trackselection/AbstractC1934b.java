package androidx.media2.exoplayer.external.trackselection;

import android.os.SystemClock;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: androidx.media2.exoplayer.external.trackselection.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/b.class */
public abstract class AbstractC1934b implements AbstractC1940e {

    /* renamed from: a */
    private final long[] f7800a;

    /* renamed from: b */
    protected final TrackGroup f7801b;

    /* renamed from: c */
    protected final int f7802c;

    /* renamed from: d */
    protected final int[] f7803d;

    /* renamed from: e */
    final Format[] f7804e;

    /* renamed from: f */
    private int f7805f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.trackselection.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/b$a.class */
    public static final class C1936a implements Comparator<Format> {
        private C1936a() {
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(Format format, Format format2) {
            return format2.bitrate - format.bitrate;
        }
    }

    public AbstractC1934b(TrackGroup trackGroup, int... iArr) {
        C1993a.m41686b(iArr.length > 0);
        this.f7801b = (TrackGroup) C1993a.m41690a(trackGroup);
        int length = iArr.length;
        this.f7802c = length;
        this.f7804e = new Format[length];
        for (int i = 0; i < iArr.length; i++) {
            this.f7804e[i] = trackGroup.getFormat(iArr[i]);
        }
        Arrays.sort(this.f7804e, new C1936a());
        this.f7803d = new int[this.f7802c];
        int i2 = 0;
        while (true) {
            int i3 = this.f7802c;
            if (i2 >= i3) {
                this.f7800a = new long[i3];
                return;
            } else {
                this.f7803d[i2] = trackGroup.indexOf(this.f7804e[i2]);
                i2++;
            }
        }
    }

    /* renamed from: a */
    public final int m41840a(Format format) {
        for (int i = 0; i < this.f7802c; i++) {
            if (this.f7804e[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public final Format mo41835a(int i) {
        return this.f7804e[i];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public void mo41836a(float f) {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public void mo41833a(long j, long j2, long j3) {
        mo41823i();
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public final boolean mo41834a(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean m41839b = m41839b(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.f7802c && !m41839b) {
            m41839b = i2 != i && !m41839b(i2, elapsedRealtime);
            i2++;
        }
        if (!m41839b) {
            return false;
        }
        long[] jArr = this.f7800a;
        jArr[i] = Math.max(jArr[i], C1996ac.m41672a(elapsedRealtime, j));
        return true;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: b */
    public final int mo41831b(int i) {
        return this.f7803d[i];
    }

    /* renamed from: b */
    public final boolean m41839b(int i, long j) {
        return this.f7800a[i] > j;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: c */
    public final int mo41829c(int i) {
        for (int i2 = 0; i2 < this.f7802c; i2++) {
            if (this.f7803d[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: d */
    public void mo41828d() {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: e */
    public final TrackGroup mo41827e() {
        return this.f7801b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC1934b abstractC1934b = (AbstractC1934b) obj;
        return this.f7801b == abstractC1934b.f7801b && Arrays.equals(this.f7803d, abstractC1934b.f7803d);
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: f */
    public final int mo41826f() {
        return this.f7803d.length;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: g */
    public final Format mo41825g() {
        return this.f7804e[mo41837a()];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: h */
    public final int mo41824h() {
        return this.f7803d[mo41837a()];
    }

    public int hashCode() {
        if (this.f7805f == 0) {
            this.f7805f = (System.identityHashCode(this.f7801b) * 31) + Arrays.hashCode(this.f7803d);
        }
        return this.f7805f;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: i */
    public final void mo41823i() {
        throw new UnsupportedOperationException();
    }
}
