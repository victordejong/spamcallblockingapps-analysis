package com.truecaller.videocallerid.p187ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p966l.C15909e;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\u0007\u0010\bJ/\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u00020\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/truecaller/videocallerid/ui/view/VideoGradientView;", "Landroid/view/View;", "Ls1/s;", "onAttachedToWindow", "()V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Paint;", "a", "Ls1/g;", "getGradientPaint", "()Landroid/graphics/Paint;", "gradientPaint", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.view.VideoGradientView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/view/VideoGradientView.class */
public final class VideoGradientView extends View {

    /* renamed from: a */
    public final g f16108a = C25225a.m3978P1(C15909e.f44886b);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoGradientView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    private final Paint getGradientPaint() {
        return (Paint) this.f16108a.getValue();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
        }
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
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        float width = getWidth() / 2.0f;
        float width2 = getWidth() / 2.0f;
        float height = getHeight();
        int i5 = C4718R.array.fullscreen_video_gradient;
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        TypedArray obtainTypedArray = context.getResources().obtainTypedArray(i5);
        l.d(obtainTypedArray, "context.resources.obtain…dArray(gradientColorsRes)");
        int[] iArr = new int[obtainTypedArray.length()];
        int length = obtainTypedArray.length();
        for (int i6 = 0; i6 < length; i6++) {
            iArr[i6] = obtainTypedArray.getColor(i6, 0);
        }
        obtainTypedArray.recycle();
        getGradientPaint().setShader(new LinearGradient(width, 0.0f, width2, height, iArr, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
    }
}
