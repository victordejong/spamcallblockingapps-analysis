package p000;

import android.animation.TimeInterpolator;
import android.graphics.drawable.AnimationDrawable;
/* renamed from: b0$f */
/* loaded from: classes-dex2jar.jar:b0$f.class */
public class b0$f implements TimeInterpolator {

    /* renamed from: a */
    public int[] f1699a;

    /* renamed from: b */
    public int f1700b;

    /* renamed from: c */
    public int f1701c;

    public b0$f(AnimationDrawable animationDrawable, boolean z) {
        m5824b(animationDrawable, z);
    }

    /* renamed from: a */
    public int m5825a() {
        return this.f1701c;
    }

    /* renamed from: b */
    public int m5824b(AnimationDrawable animationDrawable, boolean z) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        this.f1700b = numberOfFrames;
        int[] iArr = this.f1699a;
        if (iArr == null || iArr.length < numberOfFrames) {
            this.f1699a = new int[numberOfFrames];
        }
        int[] iArr2 = this.f1699a;
        int i = 0;
        for (int i2 = 0; i2 < numberOfFrames; i2++) {
            int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
            iArr2[i2] = duration;
            i += duration;
        }
        this.f1701c = i;
        return i;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        int i = (int) ((f * this.f1701c) + 0.5f);
        int i2 = this.f1700b;
        int[] iArr = this.f1699a;
        int i3 = 0;
        while (i3 < i2 && i >= iArr[i3]) {
            i -= iArr[i3];
            i3++;
        }
        return (i3 / i2) + (i3 < i2 ? i / this.f1701c : 0.0f);
    }
}
