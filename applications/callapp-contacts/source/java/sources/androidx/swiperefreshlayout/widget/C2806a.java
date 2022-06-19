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
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.swiperefreshlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a.class */
public final class C2806a extends ImageView {

    /* renamed from: a */
    Animation.AnimationListener f10605a;

    /* renamed from: b */
    int f10606b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.swiperefreshlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a$a.class */
    public final class C2807a extends OvalShape {

        /* renamed from: b */
        private RadialGradient f10608b;

        /* renamed from: c */
        private Paint f10609c = new Paint();

        C2807a(int i) {
            C2806a.this = r5;
            r5.f10606b = i;
            m39859a((int) rect().width());
        }

        /* renamed from: a */
        private void m39859a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, C2806a.this.f10606b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f10608b = radialGradient;
            this.f10609c.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public final void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = C2806a.this.getWidth() / 2;
            float height = C2806a.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f10609c);
            canvas.drawCircle(width2, height, width - C2806a.this.f10606b, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected final void onResize(float f, float f2) {
            super.onResize(f, f2);
            m39859a((int) f);
        }
    }

    public C2806a(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (BitmapDescriptorFactory.HUE_RED * f);
        this.f10606b = (int) (3.5f * f);
        if (m39860a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            C0926v.m44138a(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C2807a(this.f10606b));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f10606b, i3, i2, 503316480);
            int i4 = this.f10606b;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        C0926v.m44128a(this, shapeDrawable);
    }

    /* renamed from: a */
    private static boolean m39860a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public final void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f10605a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public final void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f10605a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m39860a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f10606b * 2), getMeasuredHeight() + (this.f10606b * 2));
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
