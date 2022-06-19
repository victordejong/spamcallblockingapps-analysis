package io.agora.rtc.p1718gl;

import android.graphics.Matrix;
import android.graphics.Point;
import android.view.View;
/* renamed from: io.agora.rtc.gl.RendererCommon */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/RendererCommon.class */
public class RendererCommon {
    private static float BALANCED_VISIBLE_FRACTION = 0.5625f;

    /* renamed from: io.agora.rtc.gl.RendererCommon$1 */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/RendererCommon$1.class */
    public static /* synthetic */ class C252971 {
        public static final /* synthetic */ int[] $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType;

        static {
            ScalingType.values();
            int[] iArr = new int[3];
            $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType = iArr;
            try {
                ScalingType scalingType = ScalingType.SCALE_ASPECT_FIT;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType;
                ScalingType scalingType2 = ScalingType.SCALE_ASPECT_FILL;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$io$agora$rtc$gl$RendererCommon$ScalingType;
                ScalingType scalingType3 = ScalingType.SCALE_ASPECT_BALANCED;
                iArr3[2] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: io.agora.rtc.gl.RendererCommon$GlDrawer */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/RendererCommon$GlDrawer.class */
    public interface GlDrawer {
        void drawOes(int i, float[] fArr, int i2, int i3, int i4, int i5, int i6, int i7);

        void drawRgb(int i, float[] fArr, int i2, int i3, int i4, int i5, int i6, int i7);

        void drawYuv(int[] iArr, float[] fArr, int i, int i2, int i3, int i4, int i5, int i6);

        void release();
    }

    /* renamed from: io.agora.rtc.gl.RendererCommon$RendererEvents */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/RendererCommon$RendererEvents.class */
    public interface RendererEvents {
        void onFirstFrameRendered();

        void onFrameResolutionChanged(int i, int i2, int i3);
    }

    /* renamed from: io.agora.rtc.gl.RendererCommon$ScalingType */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/RendererCommon$ScalingType.class */
    public enum ScalingType {
        SCALE_ASPECT_FIT,
        SCALE_ASPECT_FILL,
        SCALE_ASPECT_BALANCED
    }

    /* renamed from: io.agora.rtc.gl.RendererCommon$VideoLayoutMeasure */
    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/RendererCommon$VideoLayoutMeasure.class */
    public static class VideoLayoutMeasure {
        private ScalingType scalingTypeMatchOrientation;
        private ScalingType scalingTypeMismatchOrientation;

        public VideoLayoutMeasure() {
            ScalingType scalingType = ScalingType.SCALE_ASPECT_BALANCED;
            this.scalingTypeMatchOrientation = scalingType;
            this.scalingTypeMismatchOrientation = scalingType;
        }

        public Point measure(int i, int i2, int i3, int i4) {
            int defaultSize = View.getDefaultSize(Integer.MAX_VALUE, i);
            int defaultSize2 = View.getDefaultSize(Integer.MAX_VALUE, i2);
            if (i3 == 0 || i4 == 0 || defaultSize == 0 || defaultSize2 == 0) {
                return new Point(defaultSize, defaultSize2);
            }
            float f = i3 / i4;
            float f2 = defaultSize / defaultSize2;
            boolean z = true;
            boolean z2 = f > 1.0f;
            if (f2 <= 1.0f) {
                z = false;
            }
            Point displaySize = RendererCommon.getDisplaySize(z2 == z ? this.scalingTypeMatchOrientation : this.scalingTypeMismatchOrientation, f, defaultSize, defaultSize2);
            if (View.MeasureSpec.getMode(i) == 1073741824) {
                displaySize.x = defaultSize;
            }
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                displaySize.y = defaultSize2;
            }
            return displaySize;
        }

        public void setScalingType(ScalingType scalingType) {
            this.scalingTypeMatchOrientation = scalingType;
            this.scalingTypeMismatchOrientation = scalingType;
        }

        public void setScalingType(ScalingType scalingType, ScalingType scalingType2) {
            this.scalingTypeMatchOrientation = scalingType;
            this.scalingTypeMismatchOrientation = scalingType2;
        }
    }

    private static void adjustOrigin(float[] fArr) {
        fArr[12] = fArr[12] - ((fArr[0] + fArr[4]) * 0.5f);
        fArr[13] = fArr[13] - ((fArr[1] + fArr[5]) * 0.5f);
        fArr[12] = fArr[12] + 0.5f;
        fArr[13] = fArr[13] + 0.5f;
    }

    public static float[] convertMatrixFromAndroidGraphicsMatrix(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return new float[]{fArr[0], fArr[3], 0.0f, fArr[6], fArr[1], fArr[4], 0.0f, fArr[7], 0.0f, 0.0f, 1.0f, 0.0f, fArr[2], fArr[5], 0.0f, fArr[8]};
    }

    public static Matrix convertMatrixToAndroidGraphicsMatrix(float[] fArr) {
        float f = fArr[0];
        float f2 = fArr[4];
        float f3 = fArr[12];
        float f4 = fArr[1];
        float f5 = fArr[5];
        float f6 = fArr[13];
        float f7 = fArr[3];
        float f8 = fArr[7];
        float f9 = fArr[15];
        Matrix matrix = new Matrix();
        matrix.setValues(new float[]{f, f2, f3, f4, f5, f6, f7, f8, f9});
        return matrix;
    }

    private static float convertScalingTypeToVisibleFraction(ScalingType scalingType) {
        int ordinal = scalingType.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return 0.0f;
            }
            if (ordinal != 2) {
                throw new IllegalArgumentException();
            }
            return BALANCED_VISIBLE_FRACTION;
        }
        return 1.0f;
    }

    private static Point getDisplaySize(float f, float f2, int i, int i2) {
        return (f == 0.0f || f2 == 0.0f) ? new Point(i, i2) : new Point(Math.min(i, Math.round((i2 / f) * f2)), Math.min(i2, Math.round((i / f) / f2)));
    }

    public static Point getDisplaySize(ScalingType scalingType, float f, int i, int i2) {
        return getDisplaySize(convertScalingTypeToVisibleFraction(scalingType), f, i, i2);
    }

    public static float[] getLayoutMatrix(boolean z, float f, float f2) {
        float f3;
        float f4;
        if (f2 > f) {
            f3 = f / f2;
            f4 = 1.0f;
        } else {
            f4 = f2 / f;
            f3 = 1.0f;
        }
        float f5 = f4;
        if (z) {
            f5 = f4 * (-1.0f);
        }
        float[] fArr = new float[16];
        android.opengl.Matrix.setIdentityM(fArr, 0);
        android.opengl.Matrix.scaleM(fArr, 0, f5, f3, 1.0f);
        adjustOrigin(fArr);
        return fArr;
    }

    public static final float[] horizontalFlipMatrix() {
        return new float[]{-1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    }

    public static final float[] identityMatrix() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    public static float[] multiplyMatrices(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[16];
        android.opengl.Matrix.multiplyMM(fArr3, 0, fArr, 0, fArr2, 0);
        return fArr3;
    }

    public static float[] rotateTextureMatrix(float[] fArr, float f) {
        float[] fArr2 = new float[16];
        android.opengl.Matrix.setRotateM(fArr2, 0, f, 0.0f, 0.0f, 1.0f);
        adjustOrigin(fArr2);
        return multiplyMatrices(fArr, fArr2);
    }

    public static final float[] verticalFlipMatrix() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
    }
}
