package androidx.core.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:androidx/core/view/animation/PathInterpolatorApi14.class */
class PathInterpolatorApi14 implements Interpolator {

    /* renamed from: a */
    private final float[] f3353a;

    /* renamed from: b */
    private final float[] f3354b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(float f, float f2, float f3, float f4) {
        this(m18950a(f, f2, f3, f4));
    }

    PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / 0.002f)) + 1;
        this.f3353a = new float[i];
        this.f3354b = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.f3353a[i2] = fArr[0];
            this.f3354b[i2] = fArr[1];
        }
    }

    /* renamed from: a */
    private static Path m18950a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f3353a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f3353a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f3353a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == 0.0f) {
            return this.f3354b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f3354b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
