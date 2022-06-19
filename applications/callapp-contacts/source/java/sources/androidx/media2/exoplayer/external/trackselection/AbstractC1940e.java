package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
/* renamed from: androidx.media2.exoplayer.external.trackselection.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/e.class */
public interface AbstractC1940e {

    /* renamed from: androidx.media2.exoplayer.external.trackselection.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/e$a.class */
    public static final class C1941a {

        /* renamed from: a */
        public final TrackGroup f7816a;

        /* renamed from: b */
        public final int[] f7817b;

        /* renamed from: c */
        public final int f7818c;

        /* renamed from: d */
        public final Object f7819d;

        public C1941a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public C1941a(TrackGroup trackGroup, int[] iArr, int i, Object obj) {
            this.f7816a = trackGroup;
            this.f7817b = iArr;
            this.f7818c = i;
            this.f7819d = obj;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.trackselection.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/e$b.class */
    public interface AbstractC1942b {
        /* renamed from: a */
        AbstractC1940e[] mo41822a(C1941a[] c1941aArr, AbstractC1964c abstractC1964c);
    }

    /* renamed from: a */
    int mo41837a();

    /* renamed from: a */
    Format mo41835a(int i);

    /* renamed from: a */
    void mo41836a(float f);

    /* renamed from: a */
    void mo41833a(long j, long j2, long j3);

    /* renamed from: a */
    boolean mo41834a(int i, long j);

    /* renamed from: b */
    int mo41832b();

    /* renamed from: b */
    int mo41831b(int i);

    /* renamed from: c */
    int mo41829c(int i);

    /* renamed from: c */
    Object mo41830c();

    /* renamed from: d */
    void mo41828d();

    /* renamed from: e */
    TrackGroup mo41827e();

    /* renamed from: f */
    int mo41826f();

    /* renamed from: g */
    Format mo41825g();

    /* renamed from: h */
    int mo41824h();

    @Deprecated
    /* renamed from: i */
    void mo41823i();
}
