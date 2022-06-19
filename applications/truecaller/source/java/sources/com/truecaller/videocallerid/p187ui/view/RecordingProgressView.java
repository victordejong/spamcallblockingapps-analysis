package com.truecaller.videocallerid.p187ui.view;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Keep;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b��\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00042\b\b\u0001\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u000fR\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001b¨\u0006'"}, d2 = {"Lcom/truecaller/videocallerid/ui/view/RecordingProgressView;", "Landroid/view/View;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "onDraw", "(Landroid/graphics/Canvas;)V", "", "width", "height", "oldWidth", "oldHeight", "onSizeChanged", "(IIII)V", "onDetachedFromWindow", "()V", "", "progress", "setProgress", "(F)V", "a", "Landroid/graphics/Paint;", C22021b.f61237c, "Landroid/graphics/Paint;", "backgroundPaint", "progressPaint", "e", "F", "padding", "Landroid/graphics/RectF;", AbstractC2405c.f7629a, "Landroid/graphics/RectF;", "progressRect", "Landroid/animation/Animator;", "f", "Landroid/animation/Animator;", "backgroundAnimator", "d", "angle", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.view.RecordingProgressView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/view/RecordingProgressView.class */
public final class RecordingProgressView extends View {

    /* renamed from: a */
    public final Paint f16102a;

    /* renamed from: b */
    public final Paint f16103b;

    /* renamed from: d */
    public float f16105d;

    /* renamed from: f */
    public Animator f16107f;

    /* renamed from: c */
    public final RectF f16104c = new RectF();

    /* renamed from: e */
    public float f16106e = getResources().getDimension(C4718R.dimen.vid_recording_progress_bg_padding_start);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecordingProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        Paint paint = new Paint(1);
        int i = C4718R.color.video_caller_id_recording_progress;
        Object obj = C26467a.f74235a;
        paint.setColor(C26467a.C26471d.m1787a(context, i));
        paint.setStyle(Paint.Style.STROKE);
        Resources resources = getResources();
        int i2 = C4718R.dimen.vid_recording_progress_width;
        paint.setStrokeWidth(resources.getDimension(i2));
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.f16102a = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(C26467a.C26471d.m1787a(context, C4718R.color.video_caller_id_recording_progress_bg_start));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(getResources().getDimension(i2));
        this.f16103b = paint2;
    }

    /* renamed from: a */
    public final void m34432a() {
        float strokeWidth = this.f16106e + (this.f16103b.getStrokeWidth() / 2.0f);
        this.f16104c.set(strokeWidth, strokeWidth, getWidth() - strokeWidth, getHeight() - strokeWidth);
        invalidate();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        Animator animator = this.f16107f;
        if (animator != null) {
            animator.cancel();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        canvas.drawArc(this.f16104c, -90.0f, 360.0f, false, this.f16103b);
        canvas.drawArc(this.f16104c, -90.0f, this.f16105d, false, this.f16102a);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        m34432a();
    }

    @Keep
    public final void setProgress(float f) {
        this.f16105d = f * 3.6f;
        invalidate();
    }
}
