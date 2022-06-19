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
import androidx.core.p026h.C0595u;
/* renamed from: androidx.swiperefreshlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a.class */
public class C1074a extends ImageView {

    /* renamed from: a */
    int f3658a;

    /* renamed from: b */
    private Animation.AnimationListener f3659b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.swiperefreshlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a$a.class */
    public class C1075a extends OvalShape {

        /* renamed from: b */
        private RadialGradient f3661b;

        /* renamed from: c */
        private Paint f3662c = new Paint();

        C1075a(int i) {
            C1074a.this = r5;
            r5.f3658a = i;
            m18202a((int) rect().width());
        }

        /* renamed from: a */
        private void m18202a(int i) {
            this.f3661b = new RadialGradient(i / 2, i / 2, C1074a.this.f3658a, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f3662c.setShader(this.f3661b);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width = C1074a.this.getWidth();
            int height = C1074a.this.getHeight();
            canvas.drawCircle(width / 2, height / 2, width / 2, this.f3662c);
            canvas.drawCircle(width / 2, height / 2, (width / 2) - C1074a.this.f3658a, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            m18202a((int) f);
        }
    }

    public C1074a(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f3658a = (int) (3.5f * f);
        if (m18204a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            C0595u.m20358a(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C1075a(this.f3658a));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f3658a, i3, i2, 503316480);
            int i4 = this.f3658a;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        C0595u.m20350a(this, shapeDrawable);
    }

    /* renamed from: a */
    private boolean m18204a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: a */
    public void m18203a(Animation.AnimationListener animationListener) {
        this.f3659b = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.f3659b != null) {
            this.f3659b.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        if (this.f3659b != null) {
            this.f3659b.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m18204a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f3658a * 2), getMeasuredHeight() + (this.f3658a * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
