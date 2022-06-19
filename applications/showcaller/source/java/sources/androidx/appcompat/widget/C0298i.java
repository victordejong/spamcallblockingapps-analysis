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
import androidx.core.graphics.drawable.AbstractC0617c;
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
class C0298i {

    /* renamed from: a */
    private static final int[] f1304a = {16843067, 16843068};

    /* renamed from: b */
    private final ProgressBar f1305b;

    /* renamed from: c */
    private Bitmap f1306c;

    public C0298i(ProgressBar progressBar) {
        this.f1305b = progressBar;
    }

    /* renamed from: a */
    private Shape m34894a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: d */
    private Drawable m34892d(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC0617c) {
            AbstractC0617c abstractC0617c = (AbstractC0617c) drawable;
            Drawable mo33210b = abstractC0617c.mo33210b();
            if (mo33210b != null) {
                abstractC0617c.mo33211a(m34892d(mo33210b, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m34892d(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f1306c == null) {
                this.f1306c = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(m34894a());
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
    private Drawable m34891e(Drawable drawable) {
        AnimationDrawable animationDrawable = drawable;
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable2 = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable2.getNumberOfFrames();
            AnimationDrawable animationDrawable3 = new AnimationDrawable();
            animationDrawable3.setOneShot(animationDrawable2.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable m34892d = m34892d(animationDrawable2.getFrame(i), true);
                m34892d.setLevel(10000);
                animationDrawable3.addFrame(m34892d, animationDrawable2.getDuration(i));
            }
            animationDrawable3.setLevel(10000);
            animationDrawable = animationDrawable3;
        }
        return animationDrawable;
    }

    /* renamed from: b */
    public Bitmap m34893b() {
        return this.f1306c;
    }

    /* renamed from: c */
    public void mo34876c(AttributeSet attributeSet, int i) {
        C0286e0 m34946v = C0286e0.m34946v(this.f1305b.getContext(), attributeSet, f1304a, i, 0);
        Drawable m34960h = m34946v.m34960h(0);
        if (m34960h != null) {
            this.f1305b.setIndeterminateDrawable(m34891e(m34960h));
        }
        Drawable m34960h2 = m34946v.m34960h(1);
        if (m34960h2 != null) {
            this.f1305b.setProgressDrawable(m34892d(m34960h2, false));
        }
        m34946v.m34945w();
    }
}
