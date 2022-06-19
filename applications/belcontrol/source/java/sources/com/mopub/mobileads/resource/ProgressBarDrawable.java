package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/ProgressBarDrawable.class */
public class ProgressBarDrawable extends BaseWidgetDrawable {

    /* renamed from: a */
    public final Paint f5015a;

    /* renamed from: b */
    public final Paint f5016b;

    /* renamed from: c */
    public int f5017c;

    /* renamed from: d */
    public int f5018d;

    /* renamed from: e */
    public int f5019e;

    /* renamed from: f */
    public int f5020f;

    /* renamed from: g */
    public float f5021g;

    /* renamed from: h */
    public final int f5022h;

    public ProgressBarDrawable(Context context) {
        Paint paint = new Paint();
        this.f5015a = paint;
        paint.setColor(-1);
        paint.setAlpha(128);
        paint.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f5016b = paint2;
        paint2.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        paint2.setAlpha(255);
        paint2.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        paint2.setAntiAlias(true);
        this.f5022h = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f5015a);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (this.f5019e / this.f5017c), getBounds().bottom, this.f5016b);
        int i = this.f5018d;
        if (i <= 0 || i >= this.f5017c) {
            return;
        }
        float f = getBounds().right * this.f5021g;
        canvas.drawRect(f, getBounds().top, f + this.f5022h, getBounds().bottom, this.f5016b);
    }

    @VisibleForTesting
    public void forceCompletion() {
        this.f5019e = this.f5017c;
    }

    @Deprecated
    @VisibleForTesting
    public int getCurrentProgress() {
        return this.f5019e;
    }

    @Deprecated
    @VisibleForTesting
    public float getSkipRatio() {
        return this.f5021g;
    }

    public void reset() {
        this.f5020f = 0;
    }

    public void setDurationAndSkipOffset(int i, int i2) {
        this.f5017c = i;
        this.f5018d = i2;
        this.f5021g = i2 / i;
    }

    public void setProgress(int i) {
        int i2 = this.f5020f;
        if (i >= i2) {
            this.f5019e = i;
            this.f5020f = i;
        } else if (i != 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(i2), Integer.valueOf(i)));
            forceCompletion();
        }
        invalidateSelf();
    }
}
