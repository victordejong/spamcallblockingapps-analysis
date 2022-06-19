package p131j1;

import android.content.Context;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: j1.a */
/* loaded from: classes-dex2jar.jar:j1/a.class */
public class C3163a extends ImageView {

    /* renamed from: a */
    public Animation.AnimationListener f10634a;

    /* renamed from: b */
    public int f10635b;

    public C3163a(Context context, int i) {
        super(context);
        float f = getContext().getResources().getDisplayMetrics().density;
        this.f10635b = (int) (3.5f * f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3598i.m2032s(this, f * 4.0f);
        shapeDrawable.getPaint().setColor(i);
        C3589v.C3593d.m2077q(this, shapeDrawable);
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f10634a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f10634a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
