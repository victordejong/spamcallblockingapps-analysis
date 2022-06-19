package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
/* renamed from: com.google.android.exoplayer2.source.v */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/v.class */
public interface AbstractC5294v {

    /* renamed from: com.google.android.exoplayer2.source.v$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/v$a.class */
    public static final class C5295a {

        /* renamed from: a */
        public final Object f16780a;

        /* renamed from: b */
        public final int f16781b;

        /* renamed from: c */
        public final int f16782c;

        /* renamed from: d */
        public final long f16783d;

        /* renamed from: e */
        public final int f16784e;

        public C5295a(Object obj) {
            this(obj, -1L);
        }

        public C5295a(Object obj, int i, int i2, long j) {
            this(obj, i, i2, j, -1);
        }

        private C5295a(Object obj, int i, int i2, long j, int i3) {
            this.f16780a = obj;
            this.f16781b = i;
            this.f16782c = i2;
            this.f16783d = j;
            this.f16784e = i3;
        }

        public C5295a(Object obj, long j) {
            this(obj, -1, -1, j, -1);
        }

        public C5295a(Object obj, long j, int i) {
            this(obj, -1, -1, j, i);
        }

        /* renamed from: a */
        public boolean m19842a() {
            return this.f16781b != -1;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C5295a.class != obj.getClass()) {
                return false;
            }
            C5295a c5295a = (C5295a) obj;
            if (!this.f16780a.equals(c5295a.f16780a) || this.f16781b != c5295a.f16781b || this.f16782c != c5295a.f16782c || this.f16783d != c5295a.f16783d || this.f16784e != c5295a.f16784e) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((((((527 + this.f16780a.hashCode()) * 31) + this.f16781b) * 31) + this.f16782c) * 31) + ((int) this.f16783d)) * 31) + this.f16784e;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.v$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/v$b.class */
    public interface AbstractC5296b {
        /* renamed from: a */
        void mo19841a(AbstractC5294v abstractC5294v, AbstractC5585y0 abstractC5585y0);
    }

    /* renamed from: a */
    AbstractC5292u mo19726a(C5295a c5295a, AbstractC5472e abstractC5472e, long j);

    /* renamed from: b */
    void mo19848b(AbstractC5296b abstractC5296b);

    /* renamed from: d */
    void mo19847d(Handler handler, AbstractC5297w abstractC5297w);

    /* renamed from: e */
    void mo19846e(AbstractC5297w abstractC5297w);

    /* renamed from: f */
    void mo19845f(AbstractC5296b abstractC5296b);

    /* renamed from: h */
    void mo19724h();

    /* renamed from: i */
    void mo19723i(AbstractC5292u abstractC5292u);

    /* renamed from: j */
    void mo19844j(AbstractC5296b abstractC5296b, AbstractC5497x abstractC5497x);

    /* renamed from: k */
    void mo19843k(AbstractC5296b abstractC5296b);
}
