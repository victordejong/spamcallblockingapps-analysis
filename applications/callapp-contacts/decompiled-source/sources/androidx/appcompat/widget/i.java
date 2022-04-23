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
import androidx.core.graphics.drawable.c;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
class i {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f1100b = {16843067, 16843068};

    /* renamed from: a  reason: collision with root package name */
    Bitmap f1101a;

    /* renamed from: c  reason: collision with root package name */
    private final ProgressBar f1102c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(ProgressBar progressBar) {
        this.f1102c = progressBar;
    }

    private Drawable a(Drawable drawable, boolean z) {
        if (drawable instanceof c) {
            c cVar = (c) drawable;
            Drawable a2 = cVar.a();
            if (a2 != null) {
                cVar.a(a(a2, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f1101a == null) {
                this.f1101a = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AttributeSet attributeSet, int i) {
        ab a2 = ab.a(this.f1102c.getContext(), attributeSet, f1100b, i, 0);
        Drawable b2 = a2.b(0);
        if (b2 != null) {
            ProgressBar progressBar = this.f1102c;
            AnimationDrawable animationDrawable = b2;
            if (b2 instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable2 = (AnimationDrawable) b2;
                int numberOfFrames = animationDrawable2.getNumberOfFrames();
                AnimationDrawable animationDrawable3 = new AnimationDrawable();
                animationDrawable3.setOneShot(animationDrawable2.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable a3 = a(animationDrawable2.getFrame(i2), true);
                    a3.setLevel(10000);
                    animationDrawable3.addFrame(a3, animationDrawable2.getDuration(i2));
                }
                animationDrawable3.setLevel(10000);
                animationDrawable = animationDrawable3;
            }
            progressBar.setIndeterminateDrawable(animationDrawable);
        }
        Drawable b3 = a2.b(1);
        if (b3 != null) {
            this.f1102c.setProgressDrawable(a(b3, false));
        }
        a2.f1044a.recycle();
    }
}
