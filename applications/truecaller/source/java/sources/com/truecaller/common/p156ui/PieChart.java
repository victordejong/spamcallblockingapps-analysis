package com.truecaller.common.p156ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u0005\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J7\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00078B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00108B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00108B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001cR\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00170(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\u00108B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010\u001cR\u0018\u0010/\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010$R\u0016\u00102\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00104\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010\u0019R\u0016\u00106\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00101R\u001c\u00109\u001a\b\u0012\u0004\u0012\u0002070(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u0010*R\u0016\u0010;\u001a\u00020\u00108B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u001c¨\u0006<"}, d2 = {"Lcom/truecaller/common/ui/PieChart;", "Landroid/view/View;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "onDraw", "(Landroid/graphics/Canvas;)V", "", AnalyticsConstants.CHANGED, "", "left", "top", "right", "bottom", "onLayout", "(ZIIII)V", "", "angle", "setArcAngle", "(F)V", "getAnimate", "()Z", "animate", "Landroid/graphics/Paint;", "d", "Landroid/graphics/Paint;", "textTitlePaint", "getTextTitleX", "()F", "textTitleX", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "rect", "", "i", "Ljava/lang/String;", "subTitle", "getTextSubTitleX", "textSubTitleX", "", AbstractC2405c.f7629a, "Ljava/util/List;", "paints", "getTextTitleY", "textTitleY", "h", "title", C22021b.f61237c, "F", "strokeWidth", "e", "textSubTitlePaint", "f", "currentAngle", "", "g", RemoteMessageConst.DATA, "getTextSubTitleY", "textSubTitleY", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.PieChart */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/PieChart.class */
public final class PieChart extends View {

    /* renamed from: b */
    public final float f11021b;

    /* renamed from: d */
    public final Paint f11023d;

    /* renamed from: e */
    public final Paint f11024e;

    /* renamed from: h */
    public String f11027h;

    /* renamed from: i */
    public String f11028i;

    /* renamed from: a */
    public final RectF f11020a = new RectF();

    /* renamed from: c */
    public final List<Paint> f11022c = new ArrayList();

    /* renamed from: f */
    public float f11025f = -1.0f;

    /* renamed from: g */
    public final List<Long> f11026g = new ArrayList();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PieChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        Resources resources = context.getResources();
        l.d(resources, "context.resources");
        this.f11021b = TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics());
        Paint paint = new Paint(1);
        Resources resources2 = context.getResources();
        l.d(resources2, "context.resources");
        paint.setTextSize(TypedValue.applyDimension(2, 16.0f, resources2.getDisplayMetrics()));
        paint.setColor(C19291g.m13538k0(context, C3700R.attr.tcx_textPrimary));
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.f11023d = paint;
        Paint paint2 = new Paint(1);
        Resources resources3 = context.getResources();
        l.d(resources3, "context.resources");
        paint2.setTextSize(TypedValue.applyDimension(2, 12.0f, resources3.getDisplayMetrics()));
        paint2.setColor(C19291g.m13538k0(context, C3700R.attr.tcx_textSecondary));
        paint2.setTextAlign(Paint.Align.CENTER);
        paint2.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.f11024e = paint2;
    }

    private final boolean getAnimate() {
        return this.f11025f != -1.0f;
    }

    private final float getTextSubTitleX() {
        float f = 2;
        return (this.f11021b / f) + (this.f11020a.right / f);
    }

    private final float getTextSubTitleY() {
        Paint.FontMetrics fontMetrics = this.f11023d.getFontMetrics();
        l.d(fontMetrics, "textTitlePaint.fontMetrics");
        return (this.f11020a.bottom / 2) + ((int) Math.ceil(fontMetrics.descent - fontMetrics.ascent));
    }

    private final float getTextTitleX() {
        float f = 2;
        return (this.f11021b / f) + (this.f11020a.right / f);
    }

    private final float getTextTitleY() {
        Paint.FontMetrics fontMetrics = this.f11023d.getFontMetrics();
        l.d(fontMetrics, "textTitlePaint.fontMetrics");
        return (this.f11020a.bottom / 2) + (((int) Math.ceil(fontMetrics.descent - fontMetrics.ascent)) / 4);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        super.onDraw(canvas);
        long J0 = i.J0(this.f11026g);
        if (getAnimate()) {
            float f = 0.0f;
            if (this.f11025f == 0.0f) {
                return;
            }
            int size = this.f11026g.size();
            float f2 = -90.0f;
            for (int i = 0; i < size; i++) {
                float floatValue = (this.f11026g.get(i).floatValue() * 360.0f) / ((float) J0);
                f += floatValue;
                float f3 = this.f11025f;
                if (f3 >= f) {
                    canvas.drawArc(this.f11020a, f2, floatValue, false, this.f11022c.get(i));
                } else if (f3 >= f - floatValue) {
                    canvas.drawArc(this.f11020a, f2, floatValue - (f - f3), false, this.f11022c.get(i));
                }
                f2 += floatValue;
            }
        } else {
            int size2 = this.f11026g.size();
            float f4 = -90.0f;
            for (int i2 = 0; i2 < size2; i2++) {
                float floatValue2 = (this.f11026g.get(i2).floatValue() * 360.0f) / ((float) J0);
                canvas.drawArc(this.f11020a, f4, floatValue2, false, this.f11022c.get(i2));
                f4 += floatValue2;
            }
        }
        String str = this.f11027h;
        if (str != null) {
            canvas.drawText(str, getTextTitleX(), getTextTitleY(), this.f11023d);
        }
        String str2 = this.f11028i;
        if (str2 != null) {
            canvas.drawText(str2, getTextSubTitleX(), getTextSubTitleY(), this.f11024e);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        RectF rectF = this.f11020a;
        float f = 0;
        float f2 = this.f11021b;
        rectF.set(f + f2, f + f2, (i3 - i) - f2, (i4 - i2) - f2);
    }

    public final void setArcAngle(float f) {
        this.f11025f = f;
    }
}
