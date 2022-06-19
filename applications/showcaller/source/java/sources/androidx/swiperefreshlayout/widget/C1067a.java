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
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.swiperefreshlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a.class */
public class C1067a extends ImageView {

    /* renamed from: d */
    private Animation.AnimationListener f4667d;

    /* renamed from: e */
    int f4668e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.swiperefreshlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a$a.class */
    public class C1068a extends OvalShape {

        /* renamed from: d */
        private RadialGradient f4669d;

        /* renamed from: e */
        private Paint f4670e = new Paint();

        C1068a(int i) {
            C1067a.this = r5;
            r5.f4668e = i;
            m31125a((int) rect().width());
        }

        /* renamed from: a */
        private void m31125a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, C1067a.this.f4668e, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f4669d = radialGradient;
            this.f4670e.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = C1067a.this.getWidth() / 2;
            float height = C1067a.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f4670e);
            canvas.drawCircle(width2, height, width - C1067a.this.f4668e, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            m31125a((int) f);
        }
    }

    public C1067a(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f4668e = (int) (3.5f * f);
        if (m31127a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            C1679w.m29259y0(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C1068a(this.f4668e));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f4668e, i3, i2, 503316480);
            int i4 = this.f4668e;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        C1679w.m29267u0(this, shapeDrawable);
    }

    /* renamed from: a */
    private boolean m31127a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: b */
    public void m31126b(Animation.AnimationListener animationListener) {
        this.f4667d = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f4667d;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f4667d;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!m31127a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f4668e * 2), getMeasuredHeight() + (this.f4668e * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
