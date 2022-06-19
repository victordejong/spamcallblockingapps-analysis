package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;
/* renamed from: androidx.transition.s */
/* loaded from: classes-dex2jar.jar:androidx/transition/s.class */
public class C1164s extends AbstractC1161q0 {

    /* renamed from: b */
    private float f4968b = 3.0f;

    /* renamed from: c */
    private int f4969c = 80;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
        r17 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        if ((p020b.p041h.p050l.C1679w.m29346C(r5) == 1) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r17 != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        r17 = 5;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m30833h(android.view.View r5, int r6, int r7, int r8, int r9, int r10, int r11, int r12, int r13) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f4969c
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = 1
            r16 = r0
            r0 = 1
            r17 = r0
            r0 = r14
            r1 = 8388611(0x800003, float:1.1754948E-38)
            if (r0 != r1) goto L35
            r0 = r5
            int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
            r1 = 1
            if (r0 != r1) goto L21
            goto L24
        L21:
            r0 = 0
            r17 = r0
        L24:
            r0 = r17
            if (r0 == 0) goto L2f
        L29:
            r0 = 5
            r17 = r0
            goto L5a
        L2f:
            r0 = 3
            r17 = r0
            goto L5a
        L35:
            r0 = r14
            r17 = r0
            r0 = r14
            r1 = 8388613(0x800005, float:1.175495E-38)
            if (r0 != r1) goto L5a
            r0 = r5
            int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
            r1 = 1
            if (r0 != r1) goto L4f
            r0 = r16
            r17 = r0
            goto L52
        L4f:
            r0 = 0
            r17 = r0
        L52:
            r0 = r17
            if (r0 == 0) goto L29
            goto L2f
        L5a:
            r0 = r17
            r1 = 3
            if (r0 == r1) goto Laa
            r0 = r17
            r1 = 5
            if (r0 == r1) goto L9a
            r0 = r17
            r1 = 48
            if (r0 == r1) goto L8a
            r0 = r17
            r1 = 80
            if (r0 == r1) goto L7a
            r0 = r15
            r6 = r0
            goto Lb7
        L7a:
            r0 = r7
            r1 = r11
            int r0 = r0 - r1
            r1 = r8
            r2 = r6
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
            goto Lb7
        L8a:
            r0 = r13
            r1 = r7
            int r0 = r0 - r1
            r1 = r8
            r2 = r6
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
            goto Lb7
        L9a:
            r0 = r6
            r1 = r10
            int r0 = r0 - r1
            r1 = r9
            r2 = r7
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
            goto Lb7
        Laa:
            r0 = r12
            r1 = r6
            int r0 = r0 - r1
            r1 = r9
            r2 = r7
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
        Lb7:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.C1164s.m30833h(android.view.View, int, int, int, int, int, int, int, int):int");
    }

    /* renamed from: i */
    private int m30832i(ViewGroup viewGroup) {
        int i = this.f4969c;
        return (i == 3 || i == 5 || i == 8388611 || i == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // androidx.transition.AbstractC1172w
    /* renamed from: c */
    public long mo30818c(ViewGroup viewGroup, Transition transition, C1175y c1175y, C1175y c1175y2) {
        int i;
        int i2;
        int i3;
        if (c1175y == null && c1175y2 == null) {
            return 0L;
        }
        Rect m30988v = transition.m30988v();
        if (c1175y2 == null || m30839e(c1175y) == 0) {
            i = -1;
        } else {
            c1175y = c1175y2;
            i = 1;
        }
        int m30838f = m30838f(c1175y);
        int m30837g = m30837g(c1175y);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int round = iArr[0] + Math.round(viewGroup.getTranslationX());
        int round2 = iArr[1] + Math.round(viewGroup.getTranslationY());
        int width = round + viewGroup.getWidth();
        int height = round2 + viewGroup.getHeight();
        if (m30988v != null) {
            i3 = m30988v.centerX();
            i2 = m30988v.centerY();
        } else {
            i3 = (round + width) / 2;
            i2 = (round2 + height) / 2;
        }
        float m30833h = m30833h(viewGroup, m30838f, m30837g, i3, i2, round, round2, width, height) / m30832i(viewGroup);
        ?? m30989t = transition.m30989t();
        char c = m30989t;
        if (m30989t < 0) {
            c = 300;
        }
        return Math.round((((float) (c * i)) / this.f4968b) * m30833h);
    }

    /* renamed from: j */
    public void m30831j(int i) {
        this.f4969c = i;
    }
}
