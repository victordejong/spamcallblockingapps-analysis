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
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a.class */
public final class a extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    Animation.AnimationListener f5660a;

    /* renamed from: b  reason: collision with root package name */
    int f5661b;

    /* renamed from: androidx.swiperefreshlayout.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/a$a.class */
    final class C0117a extends OvalShape {

        /* renamed from: b  reason: collision with root package name */
        private RadialGradient f5663b;

        /* renamed from: c  reason: collision with root package name */
        private Paint f5664c = new Paint();

        C0117a(int i) {
            a.this.f5661b = i;
            a((int) rect().width());
        }

        private void a(int i) {
            float f = i / 2;
            RadialGradient radialGradient = new RadialGradient(f, f, a.this.f5661b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f5663b = radialGradient;
            this.f5664c.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public final void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = a.this.getWidth() / 2;
            float height = a.this.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f5664c);
            canvas.drawCircle(width2, height, width - a.this.f5661b, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected final void onResize(float f, float f2) {
            super.onResize(f, f2);
            a((int) f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (BitmapDescriptorFactory.HUE_RED * f);
        this.f5661b = (int) (3.5f * f);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            v.a(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new C0117a(this.f5661b));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f5661b, i3, i2, 503316480);
            int i4 = this.f5661b;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        v.a(this, shapeDrawable);
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public final void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f5660a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public final void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f5660a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f5661b * 2), getMeasuredHeight() + (this.f5661b * 2));
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
