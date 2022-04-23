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
import androidx.core.graphics.drawable.AbstractC0285c;
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
class C0137i {

    /* renamed from: c */
    private static final int[] f631c = {16843067, 16843068};

    /* renamed from: a */
    private final ProgressBar f632a;

    /* renamed from: b */
    private Bitmap f633b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0137i(ProgressBar progressBar) {
        this.f632a = progressBar;
    }

    /* renamed from: a */
    private Shape m14574a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: d */
    private Drawable m14571d(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC0285c) {
            AbstractC0285c cVar = (AbstractC0285c) drawable;
            Drawable b = cVar.m13459b();
            if (b != null) {
                cVar.m13460a(m14571d(b, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m14571d(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f633b == null) {
                this.f633b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(m14574a());
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
    private Drawable m14570e(Drawable drawable) {
        AnimationDrawable animationDrawable = drawable;
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable2 = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable2.getNumberOfFrames();
            AnimationDrawable animationDrawable3 = new AnimationDrawable();
            animationDrawable3.setOneShot(animationDrawable2.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable d = m14571d(animationDrawable2.getFrame(i), true);
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
    public Bitmap m14573b() {
        return this.f633b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m14572c(AttributeSet attributeSet, int i) {
        C0127d0 v = C0127d0.m14618v(this.f632a.getContext(), attributeSet, f631c, i, 0);
        Drawable h = v.m14632h(0);
        if (h != null) {
            this.f632a.setIndeterminateDrawable(m14570e(h));
        }
        Drawable h2 = v.m14632h(1);
        if (h2 != null) {
            this.f632a.setProgressDrawable(m14571d(h2, false));
        }
        v.m14617w();
    }
}
