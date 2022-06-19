package com.google.android.exoplayer2;

import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.t */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/t.class */
public abstract class AbstractC5312t implements AbstractC5162o0 {

    /* renamed from: a */
    protected final AbstractC5585y0.C5588c f16893a = new AbstractC5585y0.C5588c();

    /* renamed from: com.google.android.exoplayer2.t$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/t$a.class */
    protected static final class C5313a {

        /* renamed from: a */
        public final AbstractC5162o0.AbstractC5163a f16894a;

        /* renamed from: b */
        private boolean f16895b;

        public C5313a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            this.f16894a = abstractC5163a;
        }

        /* renamed from: a */
        public void m19695a(AbstractC5314b abstractC5314b) {
            if (!this.f16895b) {
                abstractC5314b.mo19693a(this.f16894a);
            }
        }

        /* renamed from: b */
        public void m19694b() {
            this.f16895b = true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && C5313a.class == obj.getClass()) {
                return this.f16894a.equals(((C5313a) obj).f16894a);
            }
            return false;
        }

        public int hashCode() {
            return this.f16894a.hashCode();
        }
    }

    /* renamed from: com.google.android.exoplayer2.t$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/t$b.class */
    public interface AbstractC5314b {
        /* renamed from: a */
        void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a);
    }

    /* renamed from: W */
    private int m19699W() {
        int mo18462K = mo18462K();
        int i = mo18462K;
        if (mo18462K == 1) {
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: F */
    public final int mo19702F() {
        AbstractC5585y0 mo18460L = mo18460L();
        return mo18460L.m18358q() ? -1 : mo18460L.m18365e(mo18410u(), m19699W(), mo18458N());
    }

    /* renamed from: U */
    public final int m19701U() {
        long mo18481A = mo18481A();
        long duration = getDuration();
        int i = 100;
        if (mo18481A == -9223372036854775807L || duration == -9223372036854775807L) {
            i = 0;
        } else if (duration != 0) {
            i = C5515h0.m18819n((int) ((mo18481A * 100) / duration), 0, 100);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: V */
    public final long m19700V() {
        AbstractC5585y0 mo18460L = mo18460L();
        return mo18460L.m18358q() ? (char) 1 : mo18460L.m18359n(mo18410u(), this.f16893a).m18332c();
    }

    /* renamed from: X */
    public final void m19698X(long j) {
        mo18437g(mo18410u(), j);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    public final boolean hasNext() {
        return mo19702F() != -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    public final boolean hasPrevious() {
        return mo19696z() != -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    public final boolean isPlaying() {
        return mo18479B() == 3 && mo18435h() && mo18466I() == 0;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: m */
    public final boolean mo19697m() {
        AbstractC5585y0 mo18460L = mo18460L();
        return !mo18460L.m18358q() && mo18460L.m18359n(mo18410u(), this.f16893a).f18186g;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: z */
    public final int mo19696z() {
        AbstractC5585y0 mo18460L = mo18460L();
        return mo18460L.m18358q() ? -1 : mo18460L.m18360l(mo18410u(), m19699W(), mo18458N());
    }
}
