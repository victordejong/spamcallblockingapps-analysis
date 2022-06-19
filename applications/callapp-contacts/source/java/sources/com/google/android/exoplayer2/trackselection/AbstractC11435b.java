package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.C11593a;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.trackselection.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/b.class */
public abstract class AbstractC11435b implements AbstractC11436c {

    /* renamed from: a */
    protected final TrackGroup f37808a;

    /* renamed from: b */
    protected final int f37809b;

    /* renamed from: c */
    protected final int[] f37810c;

    /* renamed from: d */
    private final Format[] f37811d;

    /* renamed from: e */
    private final long[] f37812e;

    /* renamed from: f */
    private int f37813f;

    public AbstractC11435b(TrackGroup trackGroup, int... iArr) {
        C11593a.m20019b(iArr.length > 0);
        this.f37808a = (TrackGroup) C11593a.m20020b(trackGroup);
        int length = iArr.length;
        this.f37809b = length;
        this.f37811d = new Format[length];
        for (int i = 0; i < iArr.length; i++) {
            this.f37811d[i] = trackGroup.getFormat(iArr[i]);
        }
        Arrays.sort(this.f37811d, _$$Lambda$b$3WlfJ0njjS74BQZuAfFpC7_kDA8.INSTANCE);
        this.f37810c = new int[this.f37809b];
        int i2 = 0;
        while (true) {
            int i3 = this.f37809b;
            if (i2 >= i3) {
                this.f37812e = new long[i3];
                return;
            } else {
                this.f37810c[i2] = trackGroup.indexOf(this.f37811d[i2]);
                i2++;
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m20571a(Format format, Format format2) {
        return format2.bitrate - format.bitrate;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11442f
    /* renamed from: a */
    public final int mo20560a(Format format) {
        for (int i = 0; i < this.f37809b; i++) {
            if (this.f37811d[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11442f
    /* renamed from: a */
    public final Format mo20561a(int i) {
        return this.f37811d[i];
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: a */
    public void mo20570a(float f) {
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11442f
    /* renamed from: b */
    public final int mo20559b(int i) {
        return this.f37810c[i];
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: b */
    public void mo20569b() {
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: c */
    public void mo20568c() {
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11442f
    /* renamed from: d */
    public final TrackGroup mo20558d() {
        return this.f37808a;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11442f
    /* renamed from: e */
    public final int mo20557e() {
        return this.f37810c.length;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC11435b abstractC11435b = (AbstractC11435b) obj;
        return this.f37808a == abstractC11435b.f37808a && Arrays.equals(this.f37810c, abstractC11435b.f37810c);
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: f */
    public final Format mo20567f() {
        return this.f37811d[mo20565a()];
    }

    public int hashCode() {
        if (this.f37813f == 0) {
            this.f37813f = (System.identityHashCode(this.f37808a) * 31) + Arrays.hashCode(this.f37810c);
        }
        return this.f37813f;
    }
}
