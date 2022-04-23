package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.o;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/r.class */
public interface r {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/r$_CC.class */
    public final /* synthetic */ class _CC {
        @Deprecated
        public static long $default$a(r rVar) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/r$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final l f22244a;

        /* renamed from: b  reason: collision with root package name */
        public final o f22245b;

        /* renamed from: c  reason: collision with root package name */
        public final IOException f22246c;

        /* renamed from: d  reason: collision with root package name */
        public final int f22247d;

        public a(l lVar, o oVar, IOException iOException, int i) {
            this.f22244a = lVar;
            this.f22245b = oVar;
            this.f22246c = iOException;
            this.f22247d = i;
        }
    }

    int a(int i);

    @Deprecated
    long a();

    long a(a aVar);
}
