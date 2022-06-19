package com.allinone.callerid.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Keep;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$styleable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/CirclePercentView.class */
public class CirclePercentView extends View {

    /* renamed from: d */
    private Paint f8466d;

    /* renamed from: e */
    private float f8467e;

    /* renamed from: f */
    private float f8468f;

    /* renamed from: g */
    private RectF f8469g;

    /* renamed from: h */
    private int f8470h;

    /* renamed from: i */
    private int f8471i;

    /* renamed from: j */
    private int f8472j;

    /* renamed from: k */
    private int f8473k;

    /* renamed from: l */
    private LinearGradient f8474l;

    /* renamed from: m */
    private boolean f8475m;

    public CirclePercentView(Context context) {
        super(context);
        m27438a();
    }

    public CirclePercentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CirclePercentView);
        this.f8470h = obtainStyledAttributes.getColor(0, getResources().getColor(R$color.btn_gray));
        this.f8471i = obtainStyledAttributes.getColor(3, getResources().getColor(R$color.white));
        this.f8468f = obtainStyledAttributes.getDimension(4, 8.0f);
        this.f8475m = obtainStyledAttributes.getBoolean(2, false);
        this.f8472j = obtainStyledAttributes.getColor(5, getResources().getColor(R$color.white));
        this.f8473k = obtainStyledAttributes.getColor(1, getResources().getColor(R$color.btn_gray));
        obtainStyledAttributes.recycle();
        m27438a();
    }

    public CirclePercentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m27438a();
    }

    /* renamed from: a */
    private void m27438a() {
        Paint paint = new Paint();
        this.f8466d = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f8466d.setStrokeCap(Paint.Cap.ROUND);
        this.f8466d.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        float width2 = getWidth() / 2;
        float f = width2 / this.f8468f;
        this.f8466d.setShader(null);
        this.f8466d.setStrokeWidth(f);
        this.f8466d.setColor(this.f8470h);
        float f2 = f / 2.0f;
        canvas.drawCircle(width2, width2, width2 - f2, this.f8466d);
        if (this.f8469g == null) {
            float f3 = (width * 2) - f2;
            this.f8469g = new RectF(f2, f2, f3, f3);
        }
        if (this.f8475m) {
            this.f8466d.setShader(this.f8474l);
        } else {
            this.f8466d.setColor(this.f8471i);
        }
        canvas.drawArc(this.f8469g, -90.0f, this.f8467e * 3.6f, false, this.f8466d);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f8474l = new LinearGradient(getWidth(), 0.0f, getWidth(), getHeight(), this.f8472j, this.f8473k, Shader.TileMode.MIRROR);
    }

    public void setBgColor(int i) {
        this.f8470h = i;
    }

    public void setEndColor(int i) {
        this.f8473k = i;
    }

    public void setGradient(boolean z) {
        this.f8475m = z;
    }

    @Keep
    public void setPercentage(float f) {
        this.f8467e = f;
        invalidate();
    }

    public void setProgressColor(int i) {
        this.f8471i = i;
    }

    public void setRadius(int i) {
        this.f8468f = i;
    }

    public void setStartColor(int i) {
        this.f8472j = i;
    }
}
