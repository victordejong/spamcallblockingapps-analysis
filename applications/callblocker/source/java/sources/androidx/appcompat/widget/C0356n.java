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
import androidx.core.graphics.drawable.AbstractC0537c;
/* renamed from: androidx.appcompat.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/n.class */
class C0356n {

    /* renamed from: a */
    private static final int[] f1475a = {16843067, 16843068};

    /* renamed from: b */
    private final ProgressBar f1476b;

    /* renamed from: c */
    private Bitmap f1477c;

    public C0356n(ProgressBar progressBar) {
        this.f1476b = progressBar;
    }

    /* renamed from: a */
    private Drawable m21278a(Drawable drawable) {
        AnimationDrawable animationDrawable = drawable;
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable2 = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable2.getNumberOfFrames();
            AnimationDrawable animationDrawable3 = new AnimationDrawable();
            animationDrawable3.setOneShot(animationDrawable2.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable m21277a = m21277a(animationDrawable2.getFrame(i), true);
                m21277a.setLevel(10000);
                animationDrawable3.addFrame(m21277a, animationDrawable2.getDuration(i));
            }
            animationDrawable3.setLevel(10000);
            animationDrawable = animationDrawable3;
        }
        return animationDrawable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* renamed from: a */
    private Drawable m21277a(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC0537c) {
            Drawable mo20581a = ((AbstractC0537c) drawable).mo20581a();
            if (mo20581a != null) {
                ((AbstractC0537c) drawable).mo20579a(m21277a(mo20581a, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m21277a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            int i2 = 0;
            while (true) {
                drawable = layerDrawable2;
                if (i2 >= numberOfLayers) {
                    break;
                }
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
                i2++;
            }
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f1477c == null) {
                this.f1477c = bitmap;
            }
            drawable = new ShapeDrawable(m21276b());
            drawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            drawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            if (z) {
                drawable = new ClipDrawable(drawable, 3, 1);
            }
        }
        return drawable;
    }

    /* renamed from: b */
    private Shape m21276b() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: a */
    public Bitmap m21279a() {
        return this.f1477c;
    }

    /* renamed from: a */
    public void mo21273a(AttributeSet attributeSet, int i) {
        C0317ap m21433a = C0317ap.m21433a(this.f1476b.getContext(), attributeSet, f1475a, i, 0);
        Drawable m21432b = m21433a.m21432b(0);
        if (m21432b != null) {
            this.f1476b.setIndeterminateDrawable(m21278a(m21432b));
        }
        Drawable m21432b2 = m21433a.m21432b(1);
        if (m21432b2 != null) {
            this.f1476b.setProgressDrawable(m21277a(m21432b2, false));
        }
        m21433a.m21441a();
    }
}
