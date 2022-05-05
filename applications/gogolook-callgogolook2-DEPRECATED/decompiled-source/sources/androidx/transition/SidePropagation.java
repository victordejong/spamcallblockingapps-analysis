package androidx.transition;

import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/SidePropagation.class */
public class SidePropagation extends VisibilityPropagation {
    public float mPropagationSpeed = 3.0f;
    public int mSide = 80;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
        r17 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        if (r17 != false) goto L_0x002f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r17 != false) goto L_0x0029;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        r17 = 5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int distance(android.view.View r5, int r6, int r7, int r8, int r9, int r10, int r11, int r12, int r13) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.mSide
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = 1
            r16 = r0
            r0 = 1
            r17 = r0
            r0 = r14
            r1 = 8388611(0x800003, float:1.1754948E-38)
            if (r0 != r1) goto L_0x0035
            r0 = r5
            int r0 = androidx.core.view.ViewCompat.getLayoutDirection(r0)
            r1 = 1
            if (r0 != r1) goto L_0x0021
            goto L_0x0024
        L_0x0021:
            r0 = 0
            r17 = r0
        L_0x0024:
            r0 = r17
            if (r0 == 0) goto L_0x002f
        L_0x0029:
            r0 = 5
            r17 = r0
            goto L_0x005a
        L_0x002f:
            r0 = 3
            r17 = r0
            goto L_0x005a
        L_0x0035:
            r0 = r14
            r17 = r0
            r0 = r14
            r1 = 8388613(0x800005, float:1.175495E-38)
            if (r0 != r1) goto L_0x005a
            r0 = r5
            int r0 = androidx.core.view.ViewCompat.getLayoutDirection(r0)
            r1 = 1
            if (r0 != r1) goto L_0x004f
            r0 = r16
            r17 = r0
            goto L_0x0052
        L_0x004f:
            r0 = 0
            r17 = r0
        L_0x0052:
            r0 = r17
            if (r0 == 0) goto L_0x0029
            goto L_0x002f
        L_0x005a:
            r0 = r17
            r1 = 3
            if (r0 == r1) goto L_0x00aa
            r0 = r17
            r1 = 5
            if (r0 == r1) goto L_0x009a
            r0 = r17
            r1 = 48
            if (r0 == r1) goto L_0x008a
            r0 = r17
            r1 = 80
            if (r0 == r1) goto L_0x007a
            r0 = r15
            r6 = r0
            goto L_0x00b7
        L_0x007a:
            r0 = r7
            r1 = r11
            int r0 = r0 - r1
            r1 = r8
            r2 = r6
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
            goto L_0x00b7
        L_0x008a:
            r0 = r13
            r1 = r7
            int r0 = r0 - r1
            r1 = r8
            r2 = r6
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
            goto L_0x00b7
        L_0x009a:
            r0 = r6
            r1 = r10
            int r0 = r0 - r1
            r1 = r9
            r2 = r7
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
            goto L_0x00b7
        L_0x00aa:
            r0 = r12
            r1 = r6
            int r0 = r0 - r1
            r1 = r9
            r2 = r7
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r6 = r0
        L_0x00b7:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.SidePropagation.distance(android.view.View, int, int, int, int, int, int, int, int):int");
    }

    private int getMaxDistance(ViewGroup viewGroup) {
        int i = this.mSide;
        return (i == 3 || i == 5 || i == 8388611 || i == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.transition.TransitionPropagation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getStartDelay(android.view.ViewGroup r12, androidx.transition.Transition r13, androidx.transition.TransitionValues r14, androidx.transition.TransitionValues r15) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.SidePropagation.getStartDelay(android.view.ViewGroup, androidx.transition.Transition, androidx.transition.TransitionValues, androidx.transition.TransitionValues):long");
    }

    public void setPropagationSpeed(float f) {
        if (f != 0.0f) {
            this.mPropagationSpeed = f;
            return;
        }
        throw new IllegalArgumentException("propagationSpeed may not be 0");
    }

    public void setSide(int i) {
        this.mSide = i;
    }
}
