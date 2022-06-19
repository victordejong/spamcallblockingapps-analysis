package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.p7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p7.class */
public abstract class AbstractC6839p7 {

    /* renamed from: a */
    public static final AbstractC6839p7 f27885a = new C6654k7();

    /* renamed from: b */
    public static final AbstractC7093w2<AbstractC6839p7> f27886b = C6617j7.f24796a;

    /* renamed from: a */
    public abstract int mo11687a();

    /* renamed from: b */
    public int mo12372b(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i != mo12370d(z)) {
                return i + 1;
            }
            return -1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == mo12370d(z) ? mo12369e(z) : i + 1;
        }
    }

    /* renamed from: c */
    public int mo12371c(int i, int i2, boolean z) {
        if (i == mo12369e(false)) {
            return -1;
        }
        return i - 1;
    }

    /* renamed from: d */
    public int mo12370d(boolean z) {
        if (m12364k()) {
            return -1;
        }
        return mo11687a() - 1;
    }

    /* renamed from: e */
    public int mo12369e(boolean z) {
        return m12364k() ? -1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC6839p7)) {
            return false;
        }
        AbstractC6839p7 abstractC6839p7 = (AbstractC6839p7) obj;
        if (abstractC6839p7.mo11687a() != mo11687a() || abstractC6839p7.mo11686g() != mo11686g()) {
            return false;
        }
        C6802o7 c6802o7 = new C6802o7();
        C6728m7 c6728m7 = new C6728m7();
        C6802o7 c6802o72 = new C6802o7();
        C6728m7 c6728m72 = new C6728m7();
        for (int i = 0; i < mo11687a(); i++) {
            if (!mo12368f(i, c6802o7, 0L).equals(abstractC6839p7.mo12368f(i, c6802o72, 0L))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < mo11686g(); i2++) {
            if (!mo12367h(i2, c6728m7, true).equals(abstractC6839p7.mo12367h(i2, c6728m72, true))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public abstract C6802o7 mo12368f(int i, C6802o7 c6802o7, long j);

    /* renamed from: g */
    public abstract int mo11686g();

    /* renamed from: h */
    public abstract C6728m7 mo12367h(int i, C6728m7 c6728m7, boolean z);

    public final int hashCode() {
        C6802o7 c6802o7 = new C6802o7();
        C6728m7 c6728m7 = new C6728m7();
        int mo11687a = mo11687a() + 217;
        for (int i = 0; i < mo11687a(); i++) {
            mo11687a = (mo11687a * 31) + mo12368f(i, c6802o7, 0L).hashCode();
        }
        int mo11686g = (mo11687a * 31) + mo11686g();
        for (int i2 = 0; i2 < mo11686g(); i2++) {
            mo11686g = (mo11686g * 31) + mo12367h(i2, c6728m7, true).hashCode();
        }
        return mo11686g;
    }

    /* renamed from: i */
    public abstract int mo12366i(Object obj);

    /* renamed from: j */
    public abstract Object mo12365j(int i);

    /* renamed from: k */
    public final boolean m12364k() {
        return mo11687a() == 0;
    }

    /* renamed from: l */
    public final int m12363l(int i, C6728m7 c6728m7, C6802o7 c6802o7, int i2, boolean z) {
        int i3 = mo12367h(i, c6728m7, false).f26453d;
        if (mo12368f(i3, c6802o7, 0L).f27467r == i) {
            int mo12372b = mo12372b(i3, i2, z);
            if (mo12372b != -1) {
                return mo12368f(mo12372b, c6802o7, 0L).f27466q;
            }
            return -1;
        }
        return i + 1;
    }

    /* renamed from: m */
    public final Pair<Object, Long> m12362m(C6802o7 c6802o7, C6728m7 c6728m7, int i, long j) {
        Pair<Object, Long> m12361n = m12361n(c6802o7, c6728m7, i, j, 0L);
        Objects.requireNonNull(m12361n);
        return m12361n;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: n */
    public final Pair<Object, Long> m12361n(C6802o7 c6802o7, C6728m7 c6728m7, int i, long j, long j2) {
        C7173y8.m8896c(i, 0, mo11687a());
        mo12368f(i, c6802o7, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            long j3 = c6802o7.f27464o;
            c = 0;
        }
        int i2 = c6802o7.f27466q;
        mo12367h(i2, c6728m7, false);
        while (i2 < c6802o7.f27467r) {
            long j4 = c6728m7.f26455f;
            int i3 = (c > 0L ? 1 : (c == 0L ? 0 : -1));
            if (i3 == 0) {
                break;
            }
            int i4 = i2 + 1;
            long j5 = mo12367h(i4, c6728m7, false).f26455f;
            if (i3 < 0) {
                break;
            }
            i2 = i4;
        }
        mo12367h(i2, c6728m7, true);
        long j6 = c6728m7.f26455f;
        long j7 = c6728m7.f26454e;
        char c2 = c;
        if (j7 != -9223372036854775807L) {
            c2 = Math.min((long) c, j7 - 1);
        }
        long max = Math.max(0L, (long) c2);
        if (max == 9) {
            Log.e("XXX", "YYY");
        }
        Object obj = c6728m7.f26452c;
        Objects.requireNonNull(obj);
        return Pair.create(obj, Long.valueOf(max));
    }

    /* renamed from: o */
    public C6728m7 mo12360o(Object obj, C6728m7 c6728m7) {
        return mo12367h(mo12366i(obj), c6728m7, true);
    }
}
