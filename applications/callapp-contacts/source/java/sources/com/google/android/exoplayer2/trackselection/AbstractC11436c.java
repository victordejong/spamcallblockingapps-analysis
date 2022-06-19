package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
/* renamed from: com.google.android.exoplayer2.trackselection.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/c.class */
public interface AbstractC11436c extends AbstractC11442f {

    /* renamed from: com.google.android.exoplayer2.trackselection.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/c$a.class */
    public static final class C11437a {

        /* renamed from: a */
        public final TrackGroup f37814a;

        /* renamed from: b */
        public final int[] f37815b;

        /* renamed from: c */
        public final int f37816c;

        /* renamed from: d */
        public final Object f37817d;

        public C11437a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public C11437a(TrackGroup trackGroup, int[] iArr, int i, Object obj) {
            this.f37814a = trackGroup;
            this.f37815b = iArr;
            this.f37816c = i;
            this.f37817d = obj;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.c$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/c$b.class */
    public interface AbstractC11438b {
        /* renamed from: a */
        AbstractC11436c[] mo20566a(C11437a[] c11437aArr, AbstractC11534c abstractC11534c);
    }

    /* renamed from: a */
    int mo20565a();

    /* renamed from: a */
    void mo20570a(float f);

    /* renamed from: b */
    void mo20569b();

    /* renamed from: c */
    void mo20568c();

    /* renamed from: f */
    Format mo20567f();
}
