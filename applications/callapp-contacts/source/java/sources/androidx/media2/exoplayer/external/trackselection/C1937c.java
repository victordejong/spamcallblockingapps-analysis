package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.source.TrackGroup;
/* renamed from: androidx.media2.exoplayer.external.trackselection.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/c.class */
public final class C1937c extends AbstractC1934b {

    /* renamed from: a */
    private final int f7806a;

    /* renamed from: f */
    private final Object f7807f;

    public C1937c(TrackGroup trackGroup, int i) {
        this(trackGroup, i, 0, null);
    }

    public C1937c(TrackGroup trackGroup, int i, int i2, Object obj) {
        super(trackGroup, i);
        this.f7806a = i2;
        this.f7807f = obj;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public final int mo41837a() {
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1934b, androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: a */
    public final void mo41833a(long j, long j2, long j3) {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: b */
    public final int mo41832b() {
        return this.f7806a;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1940e
    /* renamed from: c */
    public final Object mo41830c() {
        return this.f7807f;
    }
}
