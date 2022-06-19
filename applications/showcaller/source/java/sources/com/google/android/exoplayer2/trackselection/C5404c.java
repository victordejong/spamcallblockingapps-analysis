package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.p251e0.AbstractC5221d;
import com.google.android.exoplayer2.source.p251e0.AbstractC5222e;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.trackselection.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/c.class */
public final class C5404c extends AbstractC5401b {

    /* renamed from: g */
    private final int f17370g;

    /* renamed from: h */
    private final Object f17371h;

    public C5404c(TrackGroup trackGroup, int i, int i2, Object obj) {
        super(trackGroup, i);
        this.f17370g = i2;
        this.f17371h = obj;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: b */
    public int mo19294b() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: h */
    public void mo19288h(long j, long j2, long j3, List<? extends AbstractC5221d> list, AbstractC5222e[] abstractC5222eArr) {
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: k */
    public int mo19285k() {
        return this.f17370g;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5408f
    /* renamed from: m */
    public Object mo19283m() {
        return this.f17371h;
    }
}
