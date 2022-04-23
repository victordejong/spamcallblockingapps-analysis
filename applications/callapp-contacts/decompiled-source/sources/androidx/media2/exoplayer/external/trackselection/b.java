package androidx.media2.exoplayer.external.trackselection;

import android.os.SystemClock;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.util.ac;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/b.class */
public abstract class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f3969a;

    /* renamed from: b  reason: collision with root package name */
    protected final TrackGroup f3970b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f3971c;

    /* renamed from: d  reason: collision with root package name */
    protected final int[] f3972d;
    final Format[] e;
    private int f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/b$a.class */
    static final class a implements Comparator<Format> {
        private a() {
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(Format format, Format format2) {
            return format2.bitrate - format.bitrate;
        }
    }

    public b(TrackGroup trackGroup, int... iArr) {
        int i = 0;
        androidx.media2.exoplayer.external.util.a.b(iArr.length > 0);
        this.f3970b = (TrackGroup) androidx.media2.exoplayer.external.util.a.a(trackGroup);
        int length = iArr.length;
        this.f3971c = length;
        this.e = new Format[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.e[i2] = trackGroup.getFormat(iArr[i2]);
        }
        Arrays.sort(this.e, new a());
        this.f3972d = new int[this.f3971c];
        while (true) {
            int i3 = this.f3971c;
            if (i < i3) {
                this.f3972d[i] = trackGroup.indexOf(this.e[i]);
                i++;
            } else {
                this.f3969a = new long[i3];
                return;
            }
        }
    }

    public final int a(Format format) {
        for (int i = 0; i < this.f3971c; i++) {
            if (this.e[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final Format a(int i) {
        return this.e[i];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public void a(float f) {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public void a(long j, long j2, long j3) {
        i();
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final boolean a(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean b2 = b(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.f3971c && !b2) {
            b2 = i2 != i && !b(i2, elapsedRealtime);
            i2++;
        }
        if (!b2) {
            return false;
        }
        long[] jArr = this.f3969a;
        jArr[i] = Math.max(jArr[i], ac.a(elapsedRealtime, j));
        return true;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int b(int i) {
        return this.f3972d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(int i, long j) {
        return this.f3969a[i] > j;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int c(int i) {
        for (int i2 = 0; i2 < this.f3971c; i2++) {
            if (this.f3972d[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public void d() {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final TrackGroup e() {
        return this.f3970b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3970b == bVar.f3970b && Arrays.equals(this.f3972d, bVar.f3972d);
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int f() {
        return this.f3972d.length;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final Format g() {
        return this.e[a()];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int h() {
        return this.f3972d[a()];
    }

    public int hashCode() {
        if (this.f == 0) {
            this.f = (System.identityHashCode(this.f3970b) * 31) + Arrays.hashCode(this.f3972d);
        }
        return this.f;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final void i() {
        throw new UnsupportedOperationException();
    }
}
