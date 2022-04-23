package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.source.TrackGroup;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/d.class */
public final class d extends b {

    /* renamed from: d  reason: collision with root package name */
    private final int f21935d;
    private final Object e;

    public d(TrackGroup trackGroup, int i) {
        this(trackGroup, i, 0, null);
    }

    public d(TrackGroup trackGroup, int i, int i2, Object obj) {
        super(trackGroup, i);
        this.f21935d = i2;
        this.e = obj;
    }

    @Override // com.google.android.exoplayer2.trackselection.c
    public final int a() {
        return 0;
    }
}
