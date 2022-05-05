package io.github.douglasjunior.androidSimpleTooltip;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.View;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes-dex2jar.jar:io/github/douglasjunior/androidSimpleTooltip/OverlayView.class */
public class OverlayView extends View {

    /* renamed from: l */
    private static final int f14979l = C2102R.integer.simpletooltip_overlay_alpha;

    /* renamed from: f */
    private View f14980f;

    /* renamed from: g */
    private Bitmap f14981g;

    /* renamed from: h */
    private boolean f14982h = true;

    /* renamed from: i */
    private final int f14983i;

    /* renamed from: j */
    private final float f14984j;

    /* renamed from: k */
    private final int f14985k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OverlayView(Context context, View view, int i, float f, int i2) {
        super(context);
        this.f14980f = view;
        this.f14984j = f;
        this.f14983i = i;
        this.f14985k = i2;
    }

    /* renamed from: a */
    private void m4618a() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth > 0 && measuredHeight > 0) {
            Bitmap bitmap = this.f14981g;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.f14981g.recycle();
            }
            this.f14981g = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.f14981g);
            RectF rectF = new RectF(0.0f, 0.0f, measuredWidth, measuredHeight);
            Paint paint = new Paint(1);
            paint.setColor(this.f14985k);
            paint.setAntiAlias(true);
            paint.setAlpha(getResources().getInteger(f14979l));
            canvas.drawRect(rectF, paint);
            paint.setColor(0);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT));
            RectF a = SimpleTooltipUtils.m4532a(this.f14980f);
            RectF a2 = SimpleTooltipUtils.m4532a(this);
            float f = a.left - a2.left;
            float f2 = a.top - a2.top;
            float f3 = this.f14984j;
            RectF rectF2 = new RectF(f - f3, f2 - f3, f + this.f14980f.getMeasuredWidth() + this.f14984j, f2 + this.f14980f.getMeasuredHeight() + this.f14984j);
            if (this.f14983i == 1) {
                canvas.drawRect(rectF2, paint);
            } else {
                canvas.drawOval(rectF2, paint);
            }
            this.f14982h = false;
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Bitmap bitmap;
        if (this.f14982h || (bitmap = this.f14981g) == null || bitmap.isRecycled()) {
            m4618a();
        }
        Bitmap bitmap2 = this.f14981g;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            canvas.drawBitmap(this.f14981g, 0.0f, 0.0f, (Paint) null);
        }
    }

    public View getAnchorView() {
        return this.f14980f;
    }

    @Override // android.view.View
    public boolean isInEditMode() {
        return true;
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f14982h = true;
    }

    public void setAnchorView(View view) {
        this.f14980f = view;
        invalidate();
    }
}
