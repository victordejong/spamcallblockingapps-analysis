package androidx.appcompat.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.graphics.drawable.WrappedDrawable;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatProgressBarHelper.class */
class AppCompatProgressBarHelper {

    /* renamed from: c */
    private static final int[] f960c = {16843067, 16843068};

    /* renamed from: a */
    private final ProgressBar f961a;

    /* renamed from: b */
    private Bitmap f962b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatProgressBarHelper(ProgressBar progressBar) {
        this.f961a = progressBar;
    }

    /* renamed from: a */
    private Shape m21609a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: d */
    private Drawable m21607d(Drawable drawable, boolean z) {
        if (drawable instanceof WrappedDrawable) {
            WrappedDrawable wrappedDrawable = (WrappedDrawable) drawable;
            Drawable b = wrappedDrawable.mo19466b();
            if (b != null) {
                wrappedDrawable.mo19467a(m21607d(b, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m21607d(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f962b == null) {
                this.f962b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(m21609a());
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            Drawable drawable2 = shapeDrawable;
            if (z) {
                drawable2 = new ClipDrawable(shapeDrawable, 3, 1);
            }
            return drawable2;
        }
        return drawable;
    }

    /* renamed from: e */
    private Drawable m21606e(Drawable drawable) {
        AnimationDrawable animationDrawable = drawable;
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable2 = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable2.getNumberOfFrames();
            AnimationDrawable animationDrawable3 = new AnimationDrawable();
            animationDrawable3.setOneShot(animationDrawable2.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable d = m21607d(animationDrawable2.getFrame(i), true);
                d.setLevel(10000);
                animationDrawable3.addFrame(d, animationDrawable2.getDuration(i));
            }
            animationDrawable3.setLevel(10000);
            animationDrawable = animationDrawable3;
        }
        return animationDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public Bitmap m21608b() {
        return this.f962b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void mo21605c(AttributeSet attributeSet, int i) {
        TintTypedArray v = TintTypedArray.m21244v(this.f961a.getContext(), attributeSet, f960c, i, 0);
        Drawable h = v.m21258h(0);
        if (h != null) {
            this.f961a.setIndeterminateDrawable(m21606e(h));
        }
        Drawable h2 = v.m21258h(1);
        if (h2 != null) {
            this.f961a.setProgressDrawable(m21607d(h2, false));
        }
        v.m21243w();
    }
}
