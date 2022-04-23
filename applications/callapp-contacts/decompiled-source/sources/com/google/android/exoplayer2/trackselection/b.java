package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/b.class */
public abstract class b implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final TrackGroup f21927a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f21928b;

    /* renamed from: c  reason: collision with root package name */
    protected final int[] f21929c;

    /* renamed from: d  reason: collision with root package name */
    private final Format[] f21930d;
    private final long[] e;
    private int f;

    public b(TrackGroup trackGroup, int... iArr) {
        int i = 0;
        a.b(iArr.length > 0);
        this.f21927a = (TrackGroup) a.b(trackGroup);
        int length = iArr.length;
        this.f21928b = length;
        this.f21930d = new Format[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f21930d[i2] = trackGroup.getFormat(iArr[i2]);
        }
        Arrays.sort(this.f21930d, _$$Lambda$b$3WlfJ0njjS74BQZuAfFpC7_kDA8.INSTANCE);
        this.f21929c = new int[this.f21928b];
        while (true) {
            int i3 = this.f21928b;
            if (i < i3) {
                this.f21929c[i] = trackGroup.indexOf(this.f21930d[i]);
                i++;
            } else {
                this.e = new long[i3];
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Format format, Format format2) {
        return format2.bitrate - format.bitrate;
    }

    @Override // com.google.android.exoplayer2.trackselection.f
    public final int a(Format format) {
        for (int i = 0; i < this.f21928b; i++) {
            if (this.f21930d[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.f
    public final Format a(int i) {
        return this.f21930d[i];
    }

    @Override // com.google.android.exoplayer2.trackselection.c
    public void a(float f) {
    }

    @Override // com.google.android.exoplayer2.trackselection.f
    public final int b(int i) {
        return this.f21929c[i];
    }

    @Override // com.google.android.exoplayer2.trackselection.c
    public void b() {
    }

    @Override // com.google.android.exoplayer2.trackselection.c
    public void c() {
    }

    @Override // com.google.android.exoplayer2.trackselection.f
    public final TrackGroup d() {
        return this.f21927a;
    }

    @Override // com.google.android.exoplayer2.trackselection.f
    public final int e() {
        return this.f21929c.length;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f21927a == bVar.f21927a && Arrays.equals(this.f21929c, bVar.f21929c);
    }

    @Override // com.google.android.exoplayer2.trackselection.c
    public final Format f() {
        return this.f21930d[a()];
    }

    public int hashCode() {
        if (this.f == 0) {
            this.f = (System.identityHashCode(this.f21927a) * 31) + Arrays.hashCode(this.f21929c);
        }
        return this.f;
    }
}
