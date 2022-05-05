package p081h.p203i.p204a.p294f.p295a;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: h.i.a.f.a.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/a/f.class */
public class C9172f extends Property<ImageView, Matrix> {

    /* renamed from: a */
    public final Matrix f20888a = new Matrix();

    public C9172f() {
        super(Matrix.class, "imageMatrixProperty");
    }

    /* renamed from: a */
    public Matrix get(ImageView imageView) {
        this.f20888a.set(imageView.getImageMatrix());
        return this.f20888a;
    }

    /* renamed from: a */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
