package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.source.C11305l;
import com.google.android.exoplayer2.source.C11311o;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.upstream.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/r.class */
public interface AbstractC11585r {

    /* renamed from: com.google.android.exoplayer2.upstream.r$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/r$_CC.class */
    public final /* synthetic */ class _CC {
        @Deprecated
        public static long $default$a(AbstractC11585r abstractC11585r) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.r$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/r$a.class */
    public static final class C11586a {

        /* renamed from: a */
        public final C11305l f38613a;

        /* renamed from: b */
        public final C11311o f38614b;

        /* renamed from: c */
        public final IOException f38615c;

        /* renamed from: d */
        public final int f38616d;

        public C11586a(C11305l c11305l, C11311o c11311o, IOException iOException, int i) {
            this.f38613a = c11305l;
            this.f38614b = c11311o;
            this.f38615c = iOException;
            this.f38616d = i;
        }
    }

    /* renamed from: a */
    int mo20038a(int i);

    @Deprecated
    /* renamed from: a */
    long mo20039a();

    /* renamed from: a */
    long mo20037a(C11586a c11586a);
}
