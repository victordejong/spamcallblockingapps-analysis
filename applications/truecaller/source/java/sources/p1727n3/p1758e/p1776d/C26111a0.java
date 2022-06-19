package p1727n3.p1758e.p1776d;

import android.graphics.Matrix;
import android.graphics.RectF;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.d.a0 */
/* loaded from: classes-dex2jar.jar:n3/e/d/a0.class */
public class C26111a0 {

    /* renamed from: a */
    public static final RectF f72835a = new RectF(-1.0f, -1.0f, 1.0f, 1.0f);

    /* renamed from: a */
    public static Matrix m2707a(RectF rectF, RectF rectF2, int i) {
        Matrix matrix = new Matrix();
        RectF rectF3 = f72835a;
        matrix.setRectToRect(rectF, rectF3, Matrix.ScaleToFit.FILL);
        matrix.postRotate(i);
        Matrix matrix2 = new Matrix();
        matrix2.setRectToRect(rectF3, rectF2, Matrix.ScaleToFit.FILL);
        matrix.postConcat(matrix2);
        return matrix;
    }

    /* renamed from: b */
    public static boolean m2706b(int i) {
        if (i == 90 || i == 270) {
            return true;
        }
        if (i != 0 && i != 180) {
            throw new IllegalArgumentException(C22128a.m8611i2("Invalid rotation degrees: ", i));
        }
        return false;
    }
}
