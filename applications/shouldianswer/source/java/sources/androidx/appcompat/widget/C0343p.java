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
import androidx.core.graphics.drawable.AbstractC0577c;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
class C0343p {

    /* renamed from: a */
    private static final int[] f1389a = {16843067, 16843068};

    /* renamed from: b */
    private final ProgressBar f1390b;

    /* renamed from: c */
    private Bitmap f1391c;

    public C0343p(ProgressBar progressBar) {
        this.f1390b = progressBar;
    }

    /* renamed from: a */
    private Drawable m7039a(Drawable drawable) {
        AnimationDrawable animationDrawable = drawable;
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable2 = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable2.getNumberOfFrames();
            AnimationDrawable animationDrawable3 = new AnimationDrawable();
            animationDrawable3.setOneShot(animationDrawable2.isOneShot());
            for (int i = 0; i < numberOfFrames; i++) {
                Drawable m7038a = m7038a(animationDrawable2.getFrame(i), true);
                m7038a.setLevel(AbstractC1468a.DEFAULT_TIMEOUT);
                animationDrawable3.addFrame(m7038a, animationDrawable2.getDuration(i));
            }
            animationDrawable3.setLevel(AbstractC1468a.DEFAULT_TIMEOUT);
            animationDrawable = animationDrawable3;
        }
        return animationDrawable;
    }

    /* renamed from: a */
    private Drawable m7038a(Drawable drawable, boolean z) {
        ClipDrawable clipDrawable;
        if (drawable instanceof AbstractC0577c) {
            AbstractC0577c abstractC0577c = (AbstractC0577c) drawable;
            Drawable mo6119a = abstractC0577c.mo6119a();
            clipDrawable = drawable;
            if (mo6119a != null) {
                abstractC0577c.mo6117a(m7038a(mo6119a, z));
                clipDrawable = drawable;
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m7038a(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else {
            clipDrawable = drawable;
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f1391c == null) {
                    this.f1391c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(m7037b());
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                clipDrawable = shapeDrawable;
                if (z) {
                    clipDrawable = new ClipDrawable(shapeDrawable, 3, 1);
                }
            }
        }
        return clipDrawable;
    }

    /* renamed from: b */
    private Shape m7037b() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* renamed from: a */
    public Bitmap m7040a() {
        return this.f1391c;
    }

    /* renamed from: a */
    public void mo7034a(AttributeSet attributeSet, int i) {
        C0311as m7156a = C0311as.m7156a(this.f1390b.getContext(), attributeSet, f1389a, i, 0);
        Drawable m7155b = m7156a.m7155b(0);
        if (m7155b != null) {
            this.f1390b.setIndeterminateDrawable(m7039a(m7155b));
        }
        Drawable m7155b2 = m7156a.m7155b(1);
        if (m7155b2 != null) {
            this.f1390b.setProgressDrawable(m7038a(m7155b2, false));
        }
        m7156a.m7164a();
    }
}
