package android.support.transition;

import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:android/support/transition/SidePropagation.class */
public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
        r17 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
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
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.SidePropagation.distance(android.view.View, int, int, int, int, int, int, int, int):int");
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
    @Override // android.support.transition.TransitionPropagation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getStartDelay(android.view.ViewGroup r12, android.support.transition.Transition r13, android.support.transition.TransitionValues r14, android.support.transition.TransitionValues r15) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.SidePropagation.getStartDelay(android.view.ViewGroup, android.support.transition.Transition, android.support.transition.TransitionValues, android.support.transition.TransitionValues):long");
    }

    public void setPropagationSpeed(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.mPropagationSpeed = f;
    }

    public void setSide(int i) {
        this.mSide = i;
    }
}
