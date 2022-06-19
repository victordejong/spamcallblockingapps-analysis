package com.truecaller.acs.p131ui.fullscreen;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.C2778R;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p773g.p774a.p776b.C14163o;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b \u0010\u0019¨\u0006\""}, d2 = {"Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;", "Landroid/view/View;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "onDraw", "(Landroid/graphics/Canvas;)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", RemoteMessageConst.Notification.COLOR, "setGradientArrayRes", "(I)V", "setGradientColorRes", "setGradientColorInt", C22021b.f61237c, "()V", "gradientColorsRes", "", "a", "(I)[I", "Ljava/lang/Integer;", "arrayRes", "Landroid/graphics/Paint;", "Ls1/g;", "getGradientPaint", "()Landroid/graphics/Paint;", "gradientPaint", AbstractC2405c.f7629a, "colorInt", "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.acs.ui.fullscreen.CallerGradientView */
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/fullscreen/CallerGradientView.class */
public final class CallerGradientView extends View {

    /* renamed from: a */
    public final g f9720a = C25225a.m3978P1(C14163o.f40893b);

    /* renamed from: b */
    public Integer f9721b;

    /* renamed from: c */
    public Integer f9722c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallerGradientView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        isInEditMode();
    }

    private final Paint getGradientPaint() {
        return (Paint) this.f9720a.getValue();
    }

    /* renamed from: a */
    public final int[] m36003a(int i) {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        TypedArray obtainTypedArray = context.getResources().obtainTypedArray(i);
        l.d(obtainTypedArray, "context.resources.obtain…dArray(gradientColorsRes)");
        int[] iArr = new int[obtainTypedArray.length()];
        int length = obtainTypedArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = obtainTypedArray.getColor(i2, 0);
        }
        obtainTypedArray.recycle();
        return iArr;
    }

    /* renamed from: b */
    public final void m36002b() {
        LinearGradient linearGradient;
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        Integer num = this.f9722c;
        if (num == null) {
            Integer num2 = this.f9721b;
            if (num2 != null && num2.intValue() == -1) {
                num = -1;
            } else {
                Integer num3 = this.f9721b;
                if (num3 != null && num3.intValue() == -2) {
                    num = -2;
                } else {
                    num = this.f9721b;
                    if (num == null) {
                        num = null;
                    }
                }
            }
        }
        if (num == null) {
            return;
        }
        int intValue = num.intValue();
        float width = getWidth() / 2.0f;
        float width2 = getWidth() / 2.0f;
        float height = getHeight();
        if (intValue == -1) {
            linearGradient = new LinearGradient(width, 0.0f, width2, height, m36003a(C2778R.array.fullscreen_acs_caller_gradient_gold), new float[]{0.0f, 0.18f, 0.35f, 1.0f}, Shader.TileMode.CLAMP);
        } else if (intValue == -2) {
            linearGradient = new LinearGradient(width, 0.0f, width2, height, m36003a(C2778R.array.fullscreen_acs_caller_gradient_phonebook), new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
        } else if (intValue == C2778R.array.fullscreen_acs_caller_gradient_spam || intValue == C2778R.array.fullscreen_acs_caller_gradient_priority || intValue == C2778R.array.fullscreen_acs_caller_gradient_verified_business || intValue == C2778R.array.fullscreen_acs_caller_gradient_identified) {
            linearGradient = new LinearGradient(width, 0.0f, width2, height, m36003a(intValue), new float[]{0.0f, 0.33f, 1.0f}, Shader.TileMode.CLAMP);
        } else {
            linearGradient = new LinearGradient(width, 0.0f, width2, height, new int[]{intValue, 0}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
        }
        getGradientPaint().setShader(linearGradient);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas != null) {
            canvas.drawPaint(getGradientPaint());
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m36002b();
    }

    public final void setGradientArrayRes(int i) {
        this.f9721b = Integer.valueOf(i);
        this.f9722c = null;
        m36002b();
        invalidate();
    }

    public final void setGradientColorInt(int i) {
        this.f9722c = Integer.valueOf(i);
        this.f9721b = null;
        m36002b();
        invalidate();
    }

    public final void setGradientColorRes(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        this.f9722c = Integer.valueOf(C26467a.C26471d.m1787a(context, i));
        this.f9721b = null;
        m36002b();
        invalidate();
    }
}
