package p1727n3.p1786f0.p1787a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.swiperefreshlayout.C0367R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.f0.a.a */
/* loaded from: classes-dex2jar.jar:n3/f0/a/a.class */
public class C26168a extends ImageView {

    /* renamed from: a */
    public Animation.AnimationListener f72945a;

    /* renamed from: b */
    public int f72946b;

    /* renamed from: c */
    public int f72947c;

    public C26168a(Context context) {
        super(context);
        float f = getContext().getResources().getDisplayMetrics().density;
        this.f72946b = (int) (3.5f * f);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(C0367R.styleable.SwipeRefreshLayout);
        this.f72947c = obtainStyledAttributes.getColor(C0367R.styleable.f1424xaa980688, -328966);
        obtainStyledAttributes.recycle();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        AtomicInteger atomicInteger = C26614s.f74505a;
        setElevation(f * 4.0f);
        shapeDrawable.getPaint().setColor(this.f72947c);
        setBackground(shapeDrawable);
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f72945a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f72945a;
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
            this.f72947c = i;
        }
    }
}
