package com.google.android.exoplayer2.trackselection;

import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: com.google.android.exoplayer2.trackselection.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/b.class */
public abstract class AbstractC5401b implements AbstractC5408f {

    /* renamed from: a */
    protected final TrackGroup f17364a;

    /* renamed from: b */
    protected final int f17365b;

    /* renamed from: c */
    protected final int[] f17366c;

    /* renamed from: d */
    private final Format[] f17367d;

    /* renamed from: e */
    private final long[] f17368e;

    /* renamed from: f */
    private int f17369f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.trackselection.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/b$b.class */
    public static final class C5403b implements Comparator<Format> {
        private C5403b() {
        }

        /* renamed from: a */
        public int compare(Format format, Format format2) {
            return format2.f14457h - format.f14457h;
        }
    }

    public AbstractC5401b(TrackGroup trackGroup, int... iArr) {
        C5508e.m18910f(iArr.length > 0);
        this.f17364a = (TrackGroup) C5508e.m18911e(trackGroup);
        int length = iArr.length;
        this.f17365b = length;
        this.f17367d = new Format[length];
        for (int i = 0; i < iArr.length; i++) {
            this.f17367d[i] = trackGroup.m20159a(iArr[i]);
        }
        Arrays.sort(this.f17367d, new C5403b());
        this.f17366c = new int[this.f17365b];
        int i2 = 0;
        while (true) {
            int i3 = this.f17365b;
            if (i2 >= i3) {
                this.f17368e = new long[i3];
                return;
            } else {
                this.f17366c[i2] = trackGroup.m20158b(this.f17367d[i2]);
                i2++;
            }
        }
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: a */
    public final TrackGroup mo19295a() {
        return this.f17364a;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: c */
    public final boolean mo19293c(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean m19308q = m19308q(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.f17365b && !m19308q) {
            m19308q = i2 != i && !m19308q(i2, elapsedRealtime);
            i2++;
        }
        if (!m19308q) {
            return false;
        }
        long[] jArr = this.f17368e;
        jArr[i] = Math.max(jArr[i], C5515h0.m18845a(elapsedRealtime, j, Long.MAX_VALUE));
        return true;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: d */
    public final Format mo19292d(int i) {
        return this.f17367d[i];
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: e */
    public void mo19291e() {
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC5401b abstractC5401b = (AbstractC5401b) obj;
        if (this.f17364a != abstractC5401b.f17364a || !Arrays.equals(this.f17366c, abstractC5401b.f17366c)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: f */
    public void mo19290f() {
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: g */
    public final int mo19289g(int i) {
        return this.f17366c[i];
    }

    public int hashCode() {
        if (this.f17369f == 0) {
            this.f17369f = (System.identityHashCode(this.f17364a) * 31) + Arrays.hashCode(this.f17366c);
        }
        return this.f17369f;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: i */
    public final int mo19287i() {
        return this.f17366c[mo19294b()];
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: j */
    public final Format mo19286j() {
        return this.f17367d[mo19294b()];
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: l */
    public void mo19284l(float f) {
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    public final int length() {
        return this.f17366c.length;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: n */
    public /* synthetic */ void mo19282n() {
        C5407e.m19296a(this);
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: o */
    public final int mo19281o(int i) {
        for (int i2 = 0; i2 < this.f17365b; i2++) {
            if (this.f17366c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: p */
    public final int m19309p(Format format) {
        for (int i = 0; i < this.f17365b; i++) {
            if (this.f17367d[i] == format) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: q */
    public final boolean m19308q(int i, long j) {
        return this.f17368e[i] > j;
    }
}
