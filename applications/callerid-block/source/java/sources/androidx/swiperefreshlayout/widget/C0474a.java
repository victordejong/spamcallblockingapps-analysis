package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.animation.Animation;
import android.widget.ImageView;
import d.h.m.t;
/* renamed from: androidx.swiperefreshlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a.class */
public class C0474a extends ImageView {

    /* renamed from: b */
    private Animation.AnimationListener f2583b;

    /* renamed from: c */
    int f2584c;

    /* renamed from: androidx.swiperefreshlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a$a.class */
    private class C0475a extends OvalShape {

        /* renamed from: b */
        private RadialGradient f2585b;

        /* renamed from: c */
        private Paint f2586c = new Paint();

        C0475a(int i) {
            C0474a.this = r5;
            r5.f2584c = i;
            m12191b((int) rect().width());
        }

        /* renamed from: b */
        private void m12191b(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, C0474a.this.f2584c, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f2585b = radialGradient;
            this.f2586c.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = C0474a.this.getWidth() / 2;
            float height = C0474a.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f2586c);
            canvas.drawCircle(width2, height, width - C0474a.this.f2584c, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            m12191b((int) f);
        }
    }

    C0474a(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f2584c = (int) (3.5f * f);
        if (m12193a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            t.u0(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C0475a(this.f2584c));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f2584c, i3, i2, 503316480);
            int i4 = this.f2584c;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        t.q0(this, shapeDrawable);
    }

    /* renamed from: a */
    private boolean m12193a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: b */
    public void m12192b(Animation.AnimationListener animationListener) {
        this.f2583b = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f2583b;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f2583b;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m12193a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f2584c * 2), getMeasuredHeight() + (this.f2584c * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
