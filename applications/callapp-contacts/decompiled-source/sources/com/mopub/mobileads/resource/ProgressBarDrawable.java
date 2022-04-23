package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/resource/ProgressBarDrawable.class */
public class ProgressBarDrawable extends BaseWidgetDrawable {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f34414a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f34415b;

    /* renamed from: c  reason: collision with root package name */
    private int f34416c;

    /* renamed from: d  reason: collision with root package name */
    private int f34417d;
    private int e;
    private int f;
    private float g;
    private final int h;

    public ProgressBarDrawable(Context context) {
        Paint paint = new Paint();
        this.f34414a = paint;
        paint.setColor(-1);
        paint.setAlpha(128);
        paint.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f34415b = paint2;
        paint2.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        paint2.setAlpha(255);
        paint2.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        paint2.setAntiAlias(true);
        this.h = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f34414a);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (this.e / this.f34416c), getBounds().bottom, this.f34415b);
        int i = this.f34417d;
        if (i > 0 && i < this.f34416c) {
            float f = getBounds().right * this.g;
            canvas.drawRect(f, getBounds().top, f + this.h, getBounds().bottom, this.f34415b);
        }
    }

    public void forceCompletion() {
        this.e = this.f34416c;
    }

    @Deprecated
    public int getCurrentProgress() {
        return this.e;
    }

    @Deprecated
    public float getSkipRatio() {
        return this.g;
    }

    public void reset() {
        this.f = 0;
    }

    public void setDurationAndSkipOffset(int i, int i2) {
        this.f34416c = i;
        this.f34417d = i2;
        this.g = i2 / i;
    }

    public void setProgress(int i) {
        if (i >= this.f) {
            this.e = i;
            this.f = i;
        } else if (i != 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(this.f), Integer.valueOf(i)));
            forceCompletion();
        }
        invalidateSelf();
    }
}
