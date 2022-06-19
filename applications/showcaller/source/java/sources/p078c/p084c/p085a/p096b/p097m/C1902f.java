package p078c.p084c.p085a.p096b.p097m;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: c.c.a.b.m.f */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/f.class */
public class C1902f extends Property<ImageView, Matrix> {

    /* renamed from: a */
    private final Matrix f6822a = new Matrix();

    public C1902f() {
        super(Matrix.class, "imageMatrixProperty");
    }

    /* renamed from: a */
    public Matrix get(ImageView imageView) {
        this.f6822a.set(imageView.getImageMatrix());
        return this.f6822a;
    }

    /* renamed from: b */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
