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
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import p098g0.AbstractC2791c;
/* renamed from: androidx.appcompat.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s.class */
public class C0276s {

    /* renamed from: c */
    public static final int[] f1087c = {16843067, 16843068};

    /* renamed from: a */
    public final ProgressBar f1088a;

    /* renamed from: b */
    public Bitmap f1089b;

    public C0276s(ProgressBar progressBar) {
        this.f1088a = progressBar;
    }

    /* renamed from: a */
    public void mo8423a(AttributeSet attributeSet, int i) {
        C0303z0 m8383q = C0303z0.m8383q(this.f1088a.getContext(), attributeSet, f1087c, i, 0);
        Drawable m8392h = m8383q.m8392h(0);
        if (m8392h != null) {
            ProgressBar progressBar = this.f1088a;
            AnimationDrawable animationDrawable = m8392h;
            if (m8392h instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable2 = (AnimationDrawable) m8392h;
                int numberOfFrames = animationDrawable2.getNumberOfFrames();
                AnimationDrawable animationDrawable3 = new AnimationDrawable();
                animationDrawable3.setOneShot(animationDrawable2.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable m8434b = m8434b(animationDrawable2.getFrame(i2), true);
                    m8434b.setLevel(10000);
                    animationDrawable3.addFrame(m8434b, animationDrawable2.getDuration(i2));
                }
                animationDrawable3.setLevel(10000);
                animationDrawable = animationDrawable3;
            }
            progressBar.setIndeterminateDrawable(animationDrawable);
        }
        Drawable m8392h2 = m8383q.m8392h(1);
        if (m8392h2 != null) {
            this.f1088a.setProgressDrawable(m8434b(m8392h2, false));
        }
        m8383q.f1164b.recycle();
    }

    /* renamed from: b */
    public Drawable m8434b(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC2791c) {
            AbstractC2791c abstractC2791c = (AbstractC2791c) drawable;
            Drawable mo3005b = abstractC2791c.mo3005b();
            if (mo3005b != null) {
                abstractC2791c.mo3006a(m8434b(mo3005b, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m8434b(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
                if (Build.VERSION.SDK_INT >= 23) {
                    layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
                    layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
                    layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
                    layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
                    layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
                    layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
                    layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
                    layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
                    layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
                }
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f1089b == null) {
                this.f1089b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
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
}
