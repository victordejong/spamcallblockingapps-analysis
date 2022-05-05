package p081h.p444n.p445a;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.m */
/* loaded from: classes2-dex2jar.jar:h/n/a/m.class */
public class C10785m extends AbstractC10751a<ImageView> {

    /* renamed from: m */
    public AbstractC10769e f24620m;

    public C10785m(C10798u uVar, ImageView imageView, C10811x xVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, AbstractC10769e eVar, boolean z) {
        super(uVar, imageView, xVar, i, i2, i3, drawable, str, obj, z);
        this.f24620m = eVar;
    }

    @Override // p081h.p444n.p445a.AbstractC10751a
    /* renamed from: a */
    public void mo10632a() {
        super.mo10632a();
        if (this.f24620m != null) {
            this.f24620m = null;
        }
    }

    @Override // p081h.p444n.p445a.AbstractC10751a
    /* renamed from: a */
    public void mo10631a(Bitmap bitmap, C10798u.EnumC10804e eVar) {
        if (bitmap != null) {
            ImageView imageView = (ImageView) this.f24516c.get();
            if (imageView != null) {
                C10798u uVar = this.f24514a;
                C10808v.m10594a(imageView, uVar.f24658e, bitmap, eVar, this.f24517d, uVar.f24666m);
                AbstractC10769e eVar2 = this.f24620m;
                if (eVar2 != null) {
                    eVar2.onSuccess();
                    return;
                }
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
    }

    @Override // p081h.p444n.p445a.AbstractC10751a
    /* renamed from: a */
    public void mo10630a(Exception exc) {
        ImageView imageView = (ImageView) this.f24516c.get();
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).stop();
            }
            int i = this.f24520g;
            if (i != 0) {
                imageView.setImageResource(i);
            } else {
                Drawable drawable2 = this.f24521h;
                if (drawable2 != null) {
                    imageView.setImageDrawable(drawable2);
                }
            }
            AbstractC10769e eVar = this.f24620m;
            if (eVar != null) {
                eVar.m10682a(exc);
            }
        }
    }
}
