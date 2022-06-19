package p090f3;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: f3.e */
/* loaded from: classes-dex2jar.jar:f3/e.class */
public class C2731e extends Property<ImageView, Matrix> {

    /* renamed from: a */
    public final Matrix f9380a = new Matrix();

    public C2731e() {
        super(Matrix.class, "imageMatrixProperty");
    }

    @Override // android.util.Property
    public Matrix get(ImageView imageView) {
        this.f9380a.set(imageView.getImageMatrix());
        return this.f9380a;
    }

    @Override // android.util.Property
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
