package p193e.p1577m.p1578a.p1677g.p1678a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: e.m.a.g.a.e */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a/e.class */
public class C25160e extends Property<ImageView, Matrix> {

    /* renamed from: a */
    public final Matrix f70406a = new Matrix();

    public C25160e() {
        super(Matrix.class, "imageMatrixProperty");
    }

    @Override // android.util.Property
    public Matrix get(ImageView imageView) {
        this.f70406a.set(imageView.getImageMatrix());
        return this.f70406a;
    }

    @Override // android.util.Property
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
