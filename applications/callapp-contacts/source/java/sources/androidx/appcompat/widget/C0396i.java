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
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.graphics.drawable.AbstractC0842c;
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
class C0396i {

    /* renamed from: b */
    private static final int[] f1588b = {16843067, 16843068};

    /* renamed from: a */
    Bitmap f1589a;

    /* renamed from: c */
    private final ProgressBar f1590c;

    public C0396i(ProgressBar progressBar) {
        this.f1590c = progressBar;
    }

    /* renamed from: a */
    private Drawable m45709a(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC0842c) {
            AbstractC0842c abstractC0842c = (AbstractC0842c) drawable;
            Drawable mo44342a = abstractC0842c.mo44342a();
            if (mo44342a != null) {
                abstractC0842c.mo44341a(m45709a(mo44342a, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m45709a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f1589a == null) {
                this.f1589a = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        return drawable;
    }

    /* renamed from: a */
    public void mo45707a(AttributeSet attributeSet, int i) {
        C0370ab m45804a = C0370ab.m45804a(this.f1590c.getContext(), attributeSet, f1588b, i, 0);
        Drawable m45803b = m45804a.m45803b(0);
        if (m45803b != null) {
            ProgressBar progressBar = this.f1590c;
            AnimationDrawable animationDrawable = m45803b;
            if (m45803b instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable2 = (AnimationDrawable) m45803b;
                int numberOfFrames = animationDrawable2.getNumberOfFrames();
                AnimationDrawable animationDrawable3 = new AnimationDrawable();
                animationDrawable3.setOneShot(animationDrawable2.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable m45709a = m45709a(animationDrawable2.getFrame(i2), true);
                    m45709a.setLevel(10000);
                    animationDrawable3.addFrame(m45709a, animationDrawable2.getDuration(i2));
                }
                animationDrawable3.setLevel(10000);
                animationDrawable = animationDrawable3;
            }
            progressBar.setIndeterminateDrawable(animationDrawable);
        }
        Drawable m45803b2 = m45804a.m45803b(1);
        if (m45803b2 != null) {
            this.f1590c.setProgressDrawable(m45709a(m45803b2, false));
        }
        m45804a.f1491a.recycle();
    }
}
