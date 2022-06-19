package p1727n3.p1734b.p1738c.p1739a;

import android.animation.TimeInterpolator;
import android.graphics.drawable.AnimationDrawable;
/* renamed from: n3.b.c.a.a$f */
/* loaded from: classes-dex2jar.jar:n3/b/c/a/a$f.class */
public class a$f implements TimeInterpolator {

    /* renamed from: a */
    public int[] f71024a;

    /* renamed from: b */
    public int f71025b;

    /* renamed from: c */
    public int f71026c;

    public a$f(AnimationDrawable animationDrawable, boolean z) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        this.f71025b = numberOfFrames;
        int[] iArr = this.f71024a;
        if (iArr == null || iArr.length < numberOfFrames) {
            this.f71024a = new int[numberOfFrames];
        }
        int[] iArr2 = this.f71024a;
        int i = 0;
        for (int i2 = 0; i2 < numberOfFrames; i2++) {
            int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
            iArr2[i2] = duration;
            i += duration;
        }
        this.f71026c = i;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        int i = (int) ((f * this.f71026c) + 0.5f);
        int i2 = this.f71025b;
        int[] iArr = this.f71024a;
        int i3 = 0;
        while (i3 < i2 && i >= iArr[i3]) {
            i -= iArr[i3];
            i3++;
        }
        return (i3 / i2) + (i3 < i2 ? i / this.f71026c : 0.0f);
    }
}
