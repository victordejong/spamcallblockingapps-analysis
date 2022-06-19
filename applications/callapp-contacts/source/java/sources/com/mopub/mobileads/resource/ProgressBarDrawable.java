package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/resource/ProgressBarDrawable.class */
public class ProgressBarDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    private final Paint f59719a;

    /* renamed from: b */
    private final Paint f59720b;

    /* renamed from: c */
    private int f59721c;

    /* renamed from: d */
    private int f59722d;

    /* renamed from: e */
    private int f59723e;

    /* renamed from: f */
    private int f59724f;

    /* renamed from: g */
    private float f59725g;

    /* renamed from: h */
    private final int f59726h;

    public ProgressBarDrawable(Context context) {
        Paint paint = new Paint();
        this.f59719a = paint;
        paint.setColor(-1);
        paint.setAlpha(128);
        paint.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f59720b = paint2;
        paint2.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        paint2.setAlpha(255);
        paint2.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        paint2.setAntiAlias(true);
        this.f59726h = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f59719a);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (this.f59723e / this.f59721c), getBounds().bottom, this.f59720b);
        int i = this.f59722d;
        if (i <= 0 || i >= this.f59721c) {
            return;
        }
        float f = getBounds().right * this.f59725g;
        canvas.drawRect(f, getBounds().top, f + this.f59726h, getBounds().bottom, this.f59720b);
    }

    public void forceCompletion() {
        this.f59723e = this.f59721c;
    }

    @Deprecated
    public int getCurrentProgress() {
        return this.f59723e;
    }

    @Deprecated
    public float getSkipRatio() {
        return this.f59725g;
    }

    public void reset() {
        this.f59724f = 0;
    }

    public void setDurationAndSkipOffset(int i, int i2) {
        this.f59721c = i;
        this.f59722d = i2;
        this.f59725g = i2 / i;
    }

    public void setProgress(int i) {
        if (i >= this.f59724f) {
            this.f59723e = i;
            this.f59724f = i;
        } else if (i != 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(this.f59724f), Integer.valueOf(i)));
            forceCompletion();
        }
        invalidateSelf();
    }
}
