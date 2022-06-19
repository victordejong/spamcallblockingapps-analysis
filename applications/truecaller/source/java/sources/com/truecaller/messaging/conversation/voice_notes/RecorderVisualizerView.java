package com.truecaller.messaging.conversation.voice_notes;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rR\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0016\u0010\u001a\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006%"}, d2 = {"Lcom/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView;", "Landroid/view/View;", "", "w", "h", "oldw", "oldh", "Ls1/s;", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", "", "a", "Ljava/util/List;", "amplitudes", C22021b.f61237c, "I", "viewWidth", AbstractC2405c.f7629a, "viewHeight", "d", "F", "lineWidth", "Landroid/graphics/Paint;", "e", "Landroid/graphics/Paint;", "linePaint", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/voice_notes/RecorderVisualizerView.class */
public final class RecorderVisualizerView extends View {

    /* renamed from: a */
    public List<Float> f13157a = new ArrayList();

    /* renamed from: b */
    public int f13158b;

    /* renamed from: c */
    public int f13159c;

    /* renamed from: d */
    public final float f13160d;

    /* renamed from: e */
    public final Paint f13161e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecorderVisualizerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(attributeSet, "attrs");
        float dimensionPixelSize = getResources().getDimensionPixelSize(C2752R.dimen.voice_clip_wave_form_stroke_width);
        this.f13160d = dimensionPixelSize;
        Paint paint = new Paint();
        paint.setColor(C19291g.m13612L(context, 2130969966));
        paint.setStrokeWidth(dimensionPixelSize);
        paint.setAntiAlias(true);
        this.f13161e = paint;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        int i = this.f13159c / 2;
        float f = 0.0f;
        for (Float f2 : this.f13157a) {
            float floatValue = f2.floatValue() / 100;
            f += this.f13160d;
            float f3 = i;
            float f4 = floatValue / 2;
            canvas.drawLine(f, f3 + f4, f, f3 - f4, this.f13161e);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f13158b = i;
        this.f13159c = i2;
    }
}
