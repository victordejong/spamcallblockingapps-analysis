package androidx.transition;

import android.graphics.Matrix;
import android.graphics.RectF;
/* renamed from: androidx.transition.k */
/* loaded from: classes-dex2jar.jar:androidx/transition/k.class */
final class C2896k {

    /* renamed from: a */
    static final Matrix f10891a = new Matrix() { // from class: androidx.transition.k.1
        /* renamed from: a */
        private static void m39685a() {
            throw new IllegalStateException("Matrix can not be modified");
        }

        @Override // android.graphics.Matrix
        public final boolean postConcat(Matrix matrix) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean postRotate(float f) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean postRotate(float f, float f2, float f3) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean postScale(float f, float f2) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean postScale(float f, float f2, float f3, float f4) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean postSkew(float f, float f2) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean postSkew(float f, float f2, float f3, float f4) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean postTranslate(float f, float f2) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preConcat(Matrix matrix) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preRotate(float f) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preRotate(float f, float f2, float f3) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preScale(float f, float f2) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preScale(float f, float f2, float f3, float f4) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preSkew(float f, float f2) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preSkew(float f, float f2, float f3, float f4) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean preTranslate(float f, float f2) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final void reset() {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void set(Matrix matrix) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final boolean setConcat(Matrix matrix, Matrix matrix2) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean setPolyToPoly(float[] fArr, int i, float[] fArr2, int i2, int i3) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final boolean setRectToRect(RectF rectF, RectF rectF2, Matrix.ScaleToFit scaleToFit) {
            m39685a();
            return false;
        }

        @Override // android.graphics.Matrix
        public final void setRotate(float f) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setRotate(float f, float f2, float f3) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setScale(float f, float f2) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setScale(float f, float f2, float f3, float f4) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setSinCos(float f, float f2) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setSinCos(float f, float f2, float f3, float f4) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setSkew(float f, float f2) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setSkew(float f, float f2, float f3, float f4) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setTranslate(float f, float f2) {
            m39685a();
        }

        @Override // android.graphics.Matrix
        public final void setValues(float[] fArr) {
            m39685a();
        }
    };

    private C2896k() {
    }
}
