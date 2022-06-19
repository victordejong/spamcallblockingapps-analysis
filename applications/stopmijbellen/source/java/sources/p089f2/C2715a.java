package p089f2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.TypedValue;
import android.widget.FrameLayout;
import p066d0.C2134a;
/* renamed from: f2.a */
/* loaded from: classes-dex2jar.jar:f2/a.class */
public class C2715a extends FrameLayout {

    /* renamed from: a */
    public final int f9327a;

    /* renamed from: b */
    public final int f9328b;

    /* renamed from: c */
    public final Paint f9329c;

    /* renamed from: d */
    public final Paint f9330d;

    /* renamed from: e */
    public final Paint f9331e;

    /* renamed from: f */
    public boolean f9332f;

    public C2715a(Context context) {
        super(context, null, 0);
        Resources resources = getResources();
        this.f9327a = (int) TypedValue.applyDimension(1, 3.0f, resources.getDisplayMetrics());
        this.f9328b = (int) TypedValue.applyDimension(1, 5.0f, resources.getDisplayMetrics());
        Paint paint = new Paint();
        this.f9330d = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        Paint paint2 = new Paint();
        this.f9331e = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f9329c = paint3;
        paint3.setAntiAlias(true);
        m3211b(-12303292);
        setWillNotDraw(false);
    }

    /* renamed from: a */
    public static int m3212a(int i, float f) {
        if (f == 1.0f) {
            return i;
        }
        Color.colorToHSV(i, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * f};
        return Color.HSVToColor(fArr);
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [int[], int[][]] */
    /* renamed from: b */
    public final void m3211b(int i) {
        this.f9331e.setColor(i);
        this.f9329c.setColor(m3212a(i, 0.9f));
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        int m3212a = m3212a(i, 1.1f);
        paint.setColor(Color.argb(Math.round(Color.alpha(m3212a) * 0.7f), Color.red(m3212a), Color.green(m3212a), Color.blue(m3212a)));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, shapeDrawable);
        setForeground(new RippleDrawable(new ColorStateList(new int[]{new int[]{16842919}}, new int[]{m3212a(i, 1.1f)}), stateListDrawable, null));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth() / 2;
        if (!this.f9332f) {
            canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, measuredWidth, this.f9331e);
            return;
        }
        int i = measuredWidth - this.f9328b;
        int i2 = this.f9327a;
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, measuredWidth, this.f9329c);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, i, this.f9330d);
        canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, i - i2, this.f9331e);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
        setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
    }

    @Override // android.view.View
    @Deprecated
    public void setActivated(boolean z) {
        throw new IllegalStateException("Cannot use setActivated() on CircleView.");
    }

    @Override // android.view.View
    @Deprecated
    public void setBackground(Drawable drawable) {
        throw new IllegalStateException("Cannot use setBackground() on CircleView.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        m3211b(i);
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        throw new IllegalStateException("Cannot use setBackgroundDrawable() on CircleView.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundColor(C2134a.m3845b(getContext(), i));
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.f9332f = z;
        requestLayout();
        invalidate();
    }
}
