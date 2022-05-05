package p459j.p460a.p474c0.p499h;

import android.view.animation.Interpolator;
/* renamed from: j.a.c0.h.t  reason: invalid class name */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/t.class */
public class animationInterpolatorC12215t implements Interpolator {

    /* renamed from: a */
    public final float f27378a;

    /* renamed from: b */
    public final float f27379b;

    /* renamed from: c */
    public final float f27380c;

    /* renamed from: d */
    public final float f27381d;

    public animationInterpolatorC12215t(float f, float f2, float f3, float f4) {
        this.f27378a = f;
        this.f27379b = f2;
        this.f27380c = f3;
        this.f27381d = f4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a8, code lost:
        if (java.lang.Math.abs(r14 - r8) <= 1.0E-6f) goto L_0x00e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
        if (r16 >= 8) goto L_0x00e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b6, code lost:
        if (r14 >= r8) goto L_0x00c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b9, code lost:
        r10 = (r15 + r18) / 2.0f;
        r17 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c8, code lost:
        r10 = (r15 + r17) / 2.0f;
        r18 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d4, code lost:
        r14 = m6780b(r10);
        r16 = r16 + 1;
        r15 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e6, code lost:
        return r15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m6782a(float r8) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p499h.animationInterpolatorC12215t.m6782a(float):float");
    }

    /* renamed from: a */
    public final float m6781a(float f, float f2, float f3) {
        float f4 = f;
        if (f != 0.0f) {
            if (f == 1.0f) {
                f4 = f;
            } else {
                float b = m6779b(0.0f, f2, f);
                float b2 = m6779b(f2, f3, f);
                f4 = m6779b(m6779b(b, b2, f), m6779b(b2, m6779b(f3, 1.0f, f), f), f);
            }
        }
        return f4;
    }

    /* renamed from: b */
    public final float m6780b(float f) {
        return m6781a(f, this.f27378a, this.f27380c);
    }

    /* renamed from: b */
    public final float m6779b(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    /* renamed from: c */
    public final float m6778c(float f) {
        return m6781a(f, this.f27379b, this.f27381d);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        return m6778c(m6782a(f));
    }
}
