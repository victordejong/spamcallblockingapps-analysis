package androidx.transition;

import android.graphics.Matrix;
import android.graphics.RectF;
/* renamed from: androidx.transition.l */
/* loaded from: classes-dex2jar.jar:androidx/transition/l.class */
class C1149l {

    /* renamed from: a */
    static final Matrix f4946a = new C1150a();

    /* renamed from: androidx.transition.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/l$a.class */
    static final class C1150a extends Matrix {
        C1150a() {
        }

        /* renamed from: a */
        void m30856a() {
            throw new IllegalStateException("Matrix can not be modified");
        }

        @Override // android.graphics.Matrix
        public boolean postConcat(Matrix matrix) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postRotate(float f) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postRotate(float f, float f2, float f3) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f, float f2) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f, float f2, float f3, float f4) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f, float f2) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f, float f2, float f3, float f4) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postTranslate(float f, float f2) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preConcat(Matrix matrix) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f, float f2, float f3) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f, float f2) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f, float f2, float f3, float f4) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f, float f2) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f, float f2, float f3, float f4) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preTranslate(float f, float f2) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void reset() {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void set(Matrix matrix) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public boolean setConcat(Matrix matrix, Matrix matrix2) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setPolyToPoly(float[] fArr, int i, float[] fArr2, int i2, int i3) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setRectToRect(RectF rectF, RectF rectF2, Matrix.ScaleToFit scaleToFit) {
            m30856a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f, float f2, float f3) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f, float f2) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f, float f2, float f3, float f4) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f, float f2) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f, float f2, float f3, float f4) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f, float f2) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f, float f2, float f3, float f4) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setTranslate(float f, float f2) {
            m30856a();
        }

        @Override // android.graphics.Matrix
        public void setValues(float[] fArr) {
            m30856a();
        }
    }
}
