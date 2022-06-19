package com.flexaspect.android.everycallcontrol.p003ui.customview.piechart;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.piechart.PieChart */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart.class */
public class PieChart extends View {

    /* renamed from: c */
    public int f2847c;

    /* renamed from: k */
    public Paint f2853k;

    /* renamed from: a */
    public ArrayList<zv0> f2845a = new ArrayList<>();

    /* renamed from: b */
    public ArrayList<zv0> f2846b = new ArrayList<>();

    /* renamed from: d */
    public RectF f2848d = new RectF();

    /* renamed from: f */
    public float f2849f = 500.0f;

    /* renamed from: g */
    public float f2850g = 0.0f;

    /* renamed from: h */
    public float f2851h = 0.0f;

    /* renamed from: j */
    public int f2852j = 0;

    public PieChart(Context context) {
        super(context);
        m4812a(context);
    }

    public PieChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4812a(context);
    }

    public PieChart(Context context, AttributeSet attributeSet, int i) {
        super(context, null, 0);
        m4812a(context);
    }

    /* renamed from: a */
    public final void m4812a(Context context) {
        this.f2847c = oe1.m1093c(6);
        this.f2852j = g8.d(context, 2131100049);
    }

    /* renamed from: b */
    public final Paint m4811b() {
        Paint paint = new Paint();
        paint.setStrokeWidth(this.f2847c);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        return paint;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Paint m4811b = m4811b();
        this.f2853k = m4811b;
        m4811b.setColor(this.f2852j);
        canvas.drawCircle(this.f2850g, this.f2851h, this.f2849f + this.f2847c, this.f2853k);
        for (int i = 0; i < this.f2846b.size(); i++) {
            this.f2853k.setColor(this.f2846b.get(i).a());
            canvas.drawArc(this.f2848d, this.f2845a.get(i).b(), this.f2845a.get(i).c(), false, this.f2853k);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int width = getWidth() / 2;
        int paddingStart = getPaddingStart();
        int paddingEnd = getPaddingEnd();
        int i3 = this.f2847c;
        this.f2849f = (((width - paddingStart) - paddingEnd) - i3) - i3;
        this.f2848d.set(i3 + 0.0f + getPaddingEnd(), this.f2847c + 0.0f + getPaddingTop(), (getWidth() - this.f2847c) - getPaddingRight(), (getHeight() - this.f2847c) - getPaddingRight());
        this.f2850g = this.f2848d.centerX();
        this.f2851h = this.f2848d.centerY();
    }

    public void setPieData(xv0 xv0Var, wv0 wv0Var) {
        float f;
        Float f2 = xv0Var.b;
        if (f2 == null) {
            Iterator it = xv0Var.a.iterator();
            float f3 = 0.0f;
            while (true) {
                float f4 = f3;
                f = f4;
                if (!it.hasNext()) {
                    break;
                }
                f3 = f4 + ((yv0) it.next()).b;
            }
        } else {
            f = f2.floatValue();
        }
        ArrayList<zv0> arrayList = (ArrayList) yv0.a(xv0Var.a, Float.valueOf(f));
        this.f2846b = arrayList;
        if (wv0Var == null) {
            this.f2845a = arrayList;
            return;
        }
        wv0Var.b(arrayList);
        wv0Var.setInterpolator(new de());
        startAnimation(wv0Var);
    }

    @Override // android.view.View
    public void startAnimation(Animation animation) {
        if (animation instanceof wv0) {
            ((wv0) animation).b(this.f2846b);
        }
        super.startAnimation(animation);
    }
}
