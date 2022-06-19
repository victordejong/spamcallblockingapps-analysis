package p1727n3.p1734b.p1743f;

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
import p1727n3.p1807k.p1812c.p1813l.AbstractC26504a;
/* renamed from: n3.b.f.i */
/* loaded from: classes-dex2jar.jar:n3/b/f/i.class */
public class C25520i {

    /* renamed from: c */
    public static final int[] f71395c = {16843067, 16843068};

    /* renamed from: a */
    public final ProgressBar f71396a;

    /* renamed from: b */
    public Bitmap f71397b;

    public C25520i(ProgressBar progressBar) {
        this.f71396a = progressBar;
    }

    /* renamed from: a */
    public void mo3340a(AttributeSet attributeSet, int i) {
        C25540r0 m3306q = C25540r0.m3306q(this.f71396a.getContext(), attributeSet, f71395c, i, 0);
        Drawable m3315h = m3306q.m3315h(0);
        if (m3315h != null) {
            ProgressBar progressBar = this.f71396a;
            AnimationDrawable animationDrawable = m3315h;
            if (m3315h instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable2 = (AnimationDrawable) m3315h;
                int numberOfFrames = animationDrawable2.getNumberOfFrames();
                AnimationDrawable animationDrawable3 = new AnimationDrawable();
                animationDrawable3.setOneShot(animationDrawable2.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable m3346b = m3346b(animationDrawable2.getFrame(i2), true);
                    m3346b.setLevel(10000);
                    animationDrawable3.addFrame(m3346b, animationDrawable2.getDuration(i2));
                }
                animationDrawable3.setLevel(10000);
                animationDrawable = animationDrawable3;
            }
            progressBar.setIndeterminateDrawable(animationDrawable);
        }
        Drawable m3315h2 = m3306q.m3315h(1);
        if (m3315h2 != null) {
            this.f71396a.setProgressDrawable(m3346b(m3315h2, false));
        }
        m3306q.f71466b.recycle();
    }

    /* renamed from: b */
    public final Drawable m3346b(Drawable drawable, boolean z) {
        if (drawable instanceof AbstractC26504a) {
            AbstractC26504a abstractC26504a = (AbstractC26504a) drawable;
            Drawable m1725b = abstractC26504a.m1725b();
            if (m1725b != null) {
                abstractC26504a.m1726a(m3346b(m1725b, z));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                drawableArr[i] = m3346b(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f71397b == null) {
                this.f71397b = bitmap;
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
