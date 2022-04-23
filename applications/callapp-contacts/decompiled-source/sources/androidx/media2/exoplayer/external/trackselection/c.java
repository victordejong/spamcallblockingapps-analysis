package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.source.TrackGroup;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/c.class */
public final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private final int f3973a;
    private final Object f;

    public c(TrackGroup trackGroup, int i) {
        this(trackGroup, i, 0, null);
    }

    public c(TrackGroup trackGroup, int i, int i2, Object obj) {
        super(trackGroup, i);
        this.f3973a = i2;
        this.f = obj;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int a() {
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.b, androidx.media2.exoplayer.external.trackselection.e
    public final void a(long j, long j2, long j3) {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int b() {
        return this.f3973a;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final Object c() {
        return this.f;
    }
}
