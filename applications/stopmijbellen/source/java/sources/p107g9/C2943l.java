package p107g9;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import p107g9.C2953s;
/* renamed from: g9.l */
/* loaded from: classes2-dex2jar.jar:g9/l.class */
public class C2943l extends AbstractC2915a<ImageView> {

    /* renamed from: m */
    public AbstractC2932e f9903m;

    public C2943l(C2953s c2953s, ImageView imageView, C2964v c2964v, int i, int i2, int i3, Drawable drawable, String str, Object obj, AbstractC2932e abstractC2932e, boolean z) {
        super(c2953s, imageView, c2964v, i, i2, i3, null, str, null, z);
        this.f9903m = abstractC2932e;
    }

    @Override // p107g9.AbstractC2915a
    /* renamed from: a */
    public void mo2830a() {
        this.f9830l = true;
        if (this.f9903m != null) {
            this.f9903m = null;
        }
    }

    @Override // p107g9.AbstractC2915a
    /* renamed from: b */
    public void mo2829b(Bitmap bitmap, C2953s.EnumC2958d enumC2958d) {
        ImageView imageView = (ImageView) this.f9821c.get();
        if (imageView == null) {
            return;
        }
        C2953s c2953s = this.f9819a;
        C2961t.m2816b(imageView, c2953s.f9925d, bitmap, enumC2958d, this.f9822d, c2953s.f9933l);
        AbstractC2932e abstractC2932e = this.f9903m;
        if (abstractC2932e == null) {
            return;
        }
        abstractC2932e.m2836b();
    }

    @Override // p107g9.AbstractC2915a
    /* renamed from: c */
    public void mo2828c(Exception exc) {
        ImageView imageView = (ImageView) this.f9821c.get();
        if (imageView == null) {
            return;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        int i = this.f9825g;
        if (i != 0) {
            imageView.setImageResource(i);
        } else {
            Drawable drawable2 = this.f9826h;
            if (drawable2 != null) {
                imageView.setImageDrawable(drawable2);
            }
        }
        AbstractC2932e abstractC2932e = this.f9903m;
        if (abstractC2932e == null) {
            return;
        }
        abstractC2932e.m2837a(exc);
    }
}
