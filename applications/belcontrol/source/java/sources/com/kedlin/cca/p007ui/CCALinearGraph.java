package com.kedlin.cca.p007ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import java.text.DateFormatSymbols;
import java.util.Arrays;
/* renamed from: com.kedlin.cca.ui.CCALinearGraph */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCALinearGraph.class */
public class CCALinearGraph extends View {

    /* renamed from: a */
    public Context f3768a;

    /* renamed from: b */
    public int[] f3769b;

    /* renamed from: c */
    public Paint f3770c;

    /* renamed from: d */
    public Paint f3771d;

    /* renamed from: f */
    public Paint f3772f;

    /* renamed from: g */
    public Paint f3773g;

    /* renamed from: h */
    public Paint f3774h;

    /* renamed from: j */
    public String[] f3775j;

    /* renamed from: k */
    public String[] f3776k;

    /* renamed from: l */
    public int f3777l;

    /* renamed from: m */
    public int f3778m;

    /* renamed from: n */
    public int f3779n;

    /* renamed from: o */
    public int f3780o;

    /* renamed from: p */
    public int f3781p = 0;

    /* renamed from: q */
    public int f3782q = 0;

    public CCALinearGraph(Context context) {
        super(context);
        m4315a();
    }

    public CCALinearGraph(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4315a();
    }

    public CCALinearGraph(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4315a();
    }

    /* renamed from: a */
    public final void m4315a() {
        Paint paint = new Paint(1);
        this.f3770c = paint;
        paint.setColor(-1);
        this.f3770c.setStrokeWidth(oe1.m1093c(3));
        Paint paint2 = new Paint(1);
        this.f3773g = paint2;
        paint2.setColor(-1);
        this.f3773g.setStrokeWidth(oe1.m1093c(4));
        Paint paint3 = new Paint(1);
        this.f3774h = paint3;
        paint3.setColor(-1);
        this.f3774h.setTextSize(oe1.m1093c(11));
        this.f3774h.setTextAlign(Paint.Align.RIGHT);
        Paint paint4 = new Paint(1);
        this.f3771d = paint4;
        paint4.setColor(-3355444);
        this.f3771d.setStrokeWidth(oe1.m1093c(3));
        this.f3771d.setStyle(Paint.Style.STROKE);
        Paint paint5 = new Paint(this.f3771d);
        this.f3772f = paint5;
        paint5.setStrokeWidth(oe1.m1093c(1));
        this.f3771d.setColor(-3355444);
        this.f3772f.setPathEffect(new DashPathEffect(new float[]{55.0f, 55.0f}, 0.0f));
        this.f3780o = oe1.m1093c(4);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        super.onDraw(canvas);
        int[] iArr2 = this.f3769b;
        if (iArr2 == null || iArr2.length <= 0) {
            return;
        }
        int i6 = this.f3778m;
        int i7 = this.f3779n;
        int i8 = i6 - i7;
        int i9 = this.f3777l - (i7 / 2);
        float f = (i9 - (this.f3782q * 1.5f)) / 100.0f;
        int i10 = this.f3781p;
        int length = (i8 - i10) / (iArr2.length - 1);
        canvas.drawLine(i10, (i / 2) + 0, i10, i9 - i, this.f3771d);
        float f2 = this.f3781p;
        float f3 = i9 - this.f3782q;
        float f4 = i8;
        canvas.drawLine(f2, f3, f4, i9 - i2, this.f3771d);
        int length2 = this.f3776k.length - 1;
        int i11 = ((int) (i9 - (this.f3782q * 1.5d))) / length2;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            strArr = this.f3776k;
            if (i13 >= length2) {
                break;
            }
            canvas.drawText(strArr[i13], this.f3781p - this.f3780o, i12 + (this.f3782q * 0.7f), this.f3774h);
            float f5 = this.f3781p;
            int i14 = this.f3782q;
            canvas.drawLine(f5, (i14 / 2) + i12, f4, (i14 / 2) + i12, this.f3772f);
            i13++;
            i12 += i11;
        }
        canvas.drawText(strArr[strArr.length - 1], this.f3781p - this.f3780o, (this.f3777l - this.f3782q) / 1.1f, this.f3774h);
        float measureText = ((int) this.f3774h.measureText(strArr2[0])) / 2.0f;
        float f6 = i9 + 5;
        canvas.drawText(this.f3775j[0], this.f3781p + 0 + measureText, f6, this.f3774h);
        canvas.drawText(this.f3775j[this.f3769b.length - 1], this.f3781p + ((iArr.length - 1) * length) + (((int) this.f3774h.measureText(strArr3[iArr.length - 1])) / 2.0f), f6, this.f3774h);
        int length3 = this.f3769b.length;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            int i17 = i16;
            if (i15 >= length3) {
                return;
            }
            float f7 = this.f3781p + i17;
            int i18 = this.f3782q;
            canvas.drawLine(f7, (i18 / 2) + 0, i3 + i17, i9 - i18, this.f3772f);
            canvas.drawCircle(this.f3781p + i17, (i9 - this.f3782q) - (this.f3769b[i15] * f), this.f3780o, this.f3773g);
            if (i15 != 0) {
                float f8 = (this.f3781p + i17) - length;
                float f9 = i9 - this.f3782q;
                int[] iArr3 = this.f3769b;
                canvas.drawLine(f8, f9 - (iArr3[i15 - 1] * f), i4 + i17, (i9 - i5) - (iArr3[i15] * f), this.f3770c);
            }
            i15++;
            i16 = i17 + length;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f3777l = getMeasuredHeight();
        this.f3778m = getMeasuredWidth();
    }

    public void setContext(Context context) {
        this.f3768a = context;
    }

    public void setData(int[] iArr) {
        if (iArr == null || iArr.length <= 1) {
            return;
        }
        this.f3769b = Arrays.copyOfRange(iArr, 1, iArr.length);
        String[] stringArray = this.f3768a.getResources().getStringArray(2130903048);
        if (stringArray.length == 0) {
            DateFormatSymbols.getInstance().getShortMonths();
        }
        int i = iArr[0] - 1;
        this.f3775j = new String[this.f3769b.length];
        Rect rect = new Rect();
        int length = this.f3769b.length;
        int i2 = 0;
        while (i2 < length) {
            String[] strArr = this.f3775j;
            strArr[i2] = stringArray[i % 12];
            this.f3774h.getTextBounds(strArr[i2], 0, strArr[i2].length(), rect);
            this.f3782q = Math.max(this.f3782q, rect.height());
            this.f3779n = Math.max(this.f3779n, rect.width() / 2);
            i2++;
            i++;
        }
        String[] strArr2 = {this.f3768a.getString(2131821568), this.f3768a.getString(2131821570), this.f3768a.getString(2131821569)};
        this.f3776k = strArr2;
        for (String str : strArr2) {
            this.f3781p = Math.max(this.f3781p, (int) this.f3774h.measureText(str));
        }
        this.f3781p += this.f3780o;
        invalidate();
    }
}
