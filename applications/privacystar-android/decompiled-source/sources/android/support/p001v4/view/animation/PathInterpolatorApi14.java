package android.support.p001v4.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
/* renamed from: android.support.v4.view.animation.PathInterpolatorApi14 */
/* loaded from: classes-dex2jar.jar:android/support/v4/view/animation/PathInterpolatorApi14.class */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;

    /* renamed from: mX */
    private final float[] f29mX;

    /* renamed from: mY */
    private final float[] f30mY;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(float f, float f2) {
        this(createQuad(f, f2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(float f, float f2, float f3, float f4) {
        this(createCubic(f, f2, f3, f4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / PRECISION)) + 1;
        this.f29mX = new float[i];
        this.f30mY = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.f29mX[i2] = fArr[0];
            this.f30mY[i2] = fArr[1];
        }
    }

    private static Path createCubic(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        return path;
    }

    private static Path createQuad(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
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
        int length = this.f29mX.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f29mX[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float f2 = this.f29mX[length] - this.f29mX[i];
        if (f2 == 0.0f) {
            return this.f30mY[i];
        }
        float f3 = (f - this.f29mX[i]) / f2;
        float f4 = this.f30mY[i];
        return f4 + (f3 * (this.f30mY[length] - f4));
    }
}
