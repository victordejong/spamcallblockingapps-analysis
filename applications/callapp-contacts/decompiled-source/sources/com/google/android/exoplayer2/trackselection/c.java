package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/c.class */
public interface c extends f {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TrackGroup f21931a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f21932b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21933c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f21934d;

        public a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public a(TrackGroup trackGroup, int[] iArr, int i, Object obj) {
            this.f21931a = trackGroup;
            this.f21932b = iArr;
            this.f21933c = i;
            this.f21934d = obj;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/c$b.class */
    public interface b {
        c[] a(a[] aVarArr, com.google.android.exoplayer2.upstream.c cVar);
    }

    int a();

    void a(float f);

    void b();

    void c();

    Format f();
}
