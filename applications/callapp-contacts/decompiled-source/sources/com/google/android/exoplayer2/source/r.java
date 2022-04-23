package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.upstream.v;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/r.class */
public interface r {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/r$a.class */
    public static final class a extends q {
        public a(q qVar) {
            super(qVar);
        }

        public a(Object obj) {
            super(obj);
        }

        public a(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public a(Object obj, long j) {
            super(obj, j);
        }

        public a(Object obj, long j, int i) {
            super(obj, j, i);
        }

        /* renamed from: b */
        public final a a(Object obj) {
            return new a(super.a(obj));
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/r$b.class */
    public interface b {
        void onSourceInfoRefreshed(r rVar, al alVar);
    }

    p a(a aVar, com.google.android.exoplayer2.upstream.b bVar, long j);

    void a(Handler handler, c cVar);

    void a(Handler handler, s sVar);

    void a(p pVar);

    void a(b bVar);

    void a(b bVar, v vVar);

    void a(s sVar);

    void b(b bVar);

    void c(b bVar);

    MediaItem e();

    void f() throws IOException;
}
