package com.truecaller.common.p156ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J7\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020#0\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\u001fR\u0016\u0010(\u001a\u00020\u00078B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/truecaller/common/ui/LineChart;", "Landroid/view/View;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "onDraw", "(Landroid/graphics/Canvas;)V", "", AnalyticsConstants.CHANGED, "", "left", "top", "right", "bottom", "onLayout", "(ZIIII)V", "", "progress", "setProgress", "(F)V", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "rect", "Landroid/graphics/Path;", C22021b.f61237c, "Landroid/graphics/Path;", "rectPath", "", "", "e", "Ljava/util/List;", RemoteMessageConst.DATA, "d", "F", "Landroid/graphics/Paint;", AbstractC2405c.f7629a, "paints", "getAnimate", "()Z", "animate", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.LineChart */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/LineChart.class */
public final class LineChart extends View {

    /* renamed from: a */
    public final RectF f11015a = new RectF();

    /* renamed from: b */
    public final Path f11016b = new Path();

    /* renamed from: c */
    public final List<Paint> f11017c = new ArrayList();

    /* renamed from: d */
    public float f11018d = -1.0f;

    /* renamed from: e */
    public final List<Long> f11019e = new ArrayList();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LineChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    private final boolean getAnimate() {
        return this.f11018d != -1.0f;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        super.onDraw(canvas);
        canvas.clipPath(this.f11016b);
        long J0 = i.J0(this.f11019e);
        int i = 0;
        if (!getAnimate()) {
            int size = this.f11019e.size();
            float f = 0.0f;
            int i2 = 0;
            while (i2 < size) {
                float floatValue = ((this.f11019e.get(i2).floatValue() * this.f11015a.width()) / ((float) J0)) + f;
                canvas.drawRect(f, 0.0f, floatValue, this.f11015a.height(), this.f11017c.get(i2));
                i2++;
                f = floatValue;
            }
            return;
        }
        int size2 = this.f11019e.size();
        float f2 = 0.0f;
        while (true) {
            float f3 = f2;
            if (i >= size2) {
                return;
            }
            float floatValue2 = (this.f11019e.get(i).floatValue() * this.f11015a.width()) / ((float) J0);
            float f4 = this.f11018d;
            float f5 = f3 + floatValue2;
            if (f4 >= f5) {
                canvas.drawRect(f3, 0.0f, f5, this.f11015a.height(), this.f11017c.get(i));
            } else if (f4 > f3) {
                canvas.drawRect(f3, 0.0f, f4 + f3 + f3, this.f11015a.height(), this.f11017c.get(i));
            }
            i++;
            f2 = f5;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        float f = i4 - i2;
        this.f11015a.set(0.0f, 0.0f, i3 - i, f);
        this.f11016b.reset();
        float f2 = f / 2;
        this.f11016b.addRoundRect(this.f11015a, f2, f2, Path.Direction.CW);
    }

    public final void setProgress(float f) {
        this.f11018d = f;
    }
}
