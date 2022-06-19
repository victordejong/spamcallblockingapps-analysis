package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.p251e0.AbstractC5221d;
import com.google.android.exoplayer2.source.p251e0.AbstractC5222e;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.trackselection.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/f.class */
public interface AbstractC5408f {

    /* renamed from: com.google.android.exoplayer2.trackselection.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/f$a.class */
    public static final class C5409a {

        /* renamed from: a */
        public final TrackGroup f17380a;

        /* renamed from: b */
        public final int[] f17381b;

        /* renamed from: c */
        public final int f17382c;

        /* renamed from: d */
        public final Object f17383d;

        public C5409a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public C5409a(TrackGroup trackGroup, int[] iArr, int i, Object obj) {
            this.f17380a = trackGroup;
            this.f17381b = iArr;
            this.f17382c = i;
            this.f17383d = obj;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.f$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/f$b.class */
    public interface AbstractC5410b {
        /* renamed from: a */
        AbstractC5408f[] mo19280a(C5409a[] c5409aArr, AbstractC5473f abstractC5473f);
    }

    /* renamed from: a */
    TrackGroup mo19295a();

    /* renamed from: b */
    int mo19294b();

    /* renamed from: c */
    boolean mo19293c(int i, long j);

    /* renamed from: d */
    Format mo19292d(int i);

    /* renamed from: e */
    void mo19291e();

    /* renamed from: f */
    void mo19290f();

    /* renamed from: g */
    int mo19289g(int i);

    /* renamed from: h */
    void mo19288h(long j, long j2, long j3, List<? extends AbstractC5221d> list, AbstractC5222e[] abstractC5222eArr);

    /* renamed from: i */
    int mo19287i();

    /* renamed from: j */
    Format mo19286j();

    /* renamed from: k */
    int mo19285k();

    /* renamed from: l */
    void mo19284l(float f);

    int length();

    /* renamed from: m */
    Object mo19283m();

    /* renamed from: n */
    void mo19282n();

    /* renamed from: o */
    int mo19281o(int i);
}
