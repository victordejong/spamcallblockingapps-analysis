package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.source.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/r.class */
public interface AbstractC11315r {

    /* renamed from: com.google.android.exoplayer2.source.r$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/r$a.class */
    public static final class C11316a extends C11314q {
        public C11316a(C11314q c11314q) {
            super(c11314q);
        }

        public C11316a(Object obj) {
            super(obj);
        }

        public C11316a(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public C11316a(Object obj, long j) {
            super(obj, j);
        }

        public C11316a(Object obj, long j, int i) {
            super(obj, j, i);
        }

        /* renamed from: b */
        public final C11316a mo20936a(Object obj) {
            return new C11316a(super.mo20936a(obj));
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.r$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/r$b.class */
    public interface AbstractC11317b {
        void onSourceInfoRefreshed(AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al);
    }

    /* renamed from: a */
    AbstractC11312p mo20859a(C11316a c11316a, AbstractC11533b abstractC11533b, long j);

    /* renamed from: a */
    void mo20943a(Handler handler, AbstractC10955c abstractC10955c);

    /* renamed from: a */
    void mo20942a(Handler handler, AbstractC11318s abstractC11318s);

    /* renamed from: a */
    void mo20860a(AbstractC11312p abstractC11312p);

    /* renamed from: a */
    void mo20941a(AbstractC11317b abstractC11317b);

    /* renamed from: a */
    void mo20940a(AbstractC11317b abstractC11317b, AbstractC11590v abstractC11590v);

    /* renamed from: a */
    void mo20939a(AbstractC11318s abstractC11318s);

    /* renamed from: b */
    void mo20938b(AbstractC11317b abstractC11317b);

    /* renamed from: c */
    void mo20937c(AbstractC11317b abstractC11317b);

    /* renamed from: e */
    MediaItem mo20856e();

    /* renamed from: f */
    void mo20855f() throws IOException;
}
