package androidx.core.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/core/app/SharedElementCallback.class */
public abstract class SharedElementCallback {

    /* renamed from: a */
    private Matrix f2978a;

    /* loaded from: classes-dex2jar.jar:androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener.class */
    public interface OnSharedElementsReadyListener {
        /* renamed from: a */
        void mo19686a();
    }

    /* renamed from: a */
    private static Bitmap m19694a(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return null;
        }
        float min = Math.min(1.0f, 1048576.0f / (intrinsicWidth * intrinsicHeight));
        if ((drawable instanceof BitmapDrawable) && min == 1.0f) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int i = (int) (intrinsicWidth * min);
        int i2 = (int) (intrinsicHeight * min);
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Rect bounds = drawable.getBounds();
        int i3 = bounds.left;
        int i4 = bounds.top;
        int i5 = bounds.right;
        int i6 = bounds.bottom;
        drawable.setBounds(0, 0, i, i2);
        drawable.draw(canvas);
        drawable.setBounds(i3, i4, i5, i6);
        return createBitmap;
    }

    /* renamed from: b */
    public Parcelable m19693b(View view, Matrix matrix, RectF rectF) {
        Bitmap a;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            Drawable drawable = imageView.getDrawable();
            Drawable background = imageView.getBackground();
            if (!(drawable == null || background != null || (a = m19694a(drawable)) == null)) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("sharedElement:snapshot:bitmap", a);
                bundle.putString("sharedElement:snapshot:imageScaleType", imageView.getScaleType().toString());
                if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                    Matrix imageMatrix = imageView.getImageMatrix();
                    float[] fArr = new float[9];
                    imageMatrix.getValues(fArr);
                    bundle.putFloatArray("sharedElement:snapshot:imageMatrix", fArr);
                }
                return bundle;
            }
        }
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        Bitmap bitmap = null;
        if (round > 0) {
            bitmap = null;
            if (round2 > 0) {
                float min = Math.min(1.0f, 1048576.0f / (round * round2));
                int i = (int) (round * min);
                int i2 = (int) (round2 * min);
                if (this.f2978a == null) {
                    this.f2978a = new Matrix();
                }
                this.f2978a.set(matrix);
                this.f2978a.postTranslate(-rectF.left, -rectF.top);
                this.f2978a.postScale(min, min);
                bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                canvas.concat(this.f2978a);
                view.draw(canvas);
            }
        }
        return bitmap;
    }

    /* renamed from: c */
    public View m19692c(Context context, Parcelable parcelable) {
        ImageView imageView = null;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            Bitmap bitmap = (Bitmap) bundle.getParcelable("sharedElement:snapshot:bitmap");
            if (bitmap == null) {
                return null;
            }
            ImageView imageView2 = new ImageView(context);
            imageView2.setImageBitmap(bitmap);
            imageView2.setScaleType(ImageView.ScaleType.valueOf(bundle.getString("sharedElement:snapshot:imageScaleType")));
            imageView = imageView2;
            if (imageView2.getScaleType() == ImageView.ScaleType.MATRIX) {
                float[] floatArray = bundle.getFloatArray("sharedElement:snapshot:imageMatrix");
                Matrix matrix = new Matrix();
                matrix.setValues(floatArray);
                imageView2.setImageMatrix(matrix);
                imageView = imageView2;
            }
        } else if (parcelable instanceof Bitmap) {
            imageView = new ImageView(context);
            imageView.setImageBitmap((Bitmap) parcelable);
        }
        return imageView;
    }

    /* renamed from: d */
    public void m19691d(List<String> list, Map<String, View> map) {
    }

    /* renamed from: e */
    public void m19690e(List<View> list) {
    }

    /* renamed from: f */
    public void m19689f(List<String> list, List<View> list2, List<View> list3) {
    }

    /* renamed from: g */
    public void m19688g(List<String> list, List<View> list2, List<View> list3) {
    }

    /* renamed from: h */
    public void m19687h(List<String> list, List<View> list2, OnSharedElementsReadyListener onSharedElementsReadyListener) {
        onSharedElementsReadyListener.mo19686a();
    }
}
