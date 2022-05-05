package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/resource/ProgressBarDrawable.class */
public class ProgressBarDrawable extends BaseWidgetDrawable {
    @NonNull

    /* renamed from: a */
    public final Paint f8861a = new Paint();
    @NonNull

    /* renamed from: b */
    public final Paint f8862b = new Paint();

    /* renamed from: c */
    public int f8863c;

    /* renamed from: d */
    public int f8864d;

    /* renamed from: e */
    public int f8865e;

    /* renamed from: f */
    public int f8866f;

    /* renamed from: g */
    public float f8867g;

    /* renamed from: h */
    public final int f8868h;

    public ProgressBarDrawable(@NonNull Context context) {
        this.f8861a.setColor(-1);
        this.f8861a.setAlpha(128);
        this.f8861a.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        this.f8861a.setAntiAlias(true);
        this.f8862b.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        this.f8862b.setAlpha(255);
        this.f8862b.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        this.f8862b.setAntiAlias(true);
        this.f8868h = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f8861a);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (this.f8865e / this.f8863c), getBounds().bottom, this.f8862b);
        int i = this.f8864d;
        if (i > 0 && i < this.f8863c) {
            float f = getBounds().right * this.f8867g;
            canvas.drawRect(f, getBounds().top, f + this.f8868h, getBounds().bottom, this.f8862b);
        }
    }

    @VisibleForTesting
    public void forceCompletion() {
        this.f8865e = this.f8863c;
    }

    @Deprecated
    @VisibleForTesting
    public int getCurrentProgress() {
        return this.f8865e;
    }

    @Deprecated
    @VisibleForTesting
    public float getSkipRatio() {
        return this.f8867g;
    }

    public void reset() {
        this.f8866f = 0;
    }

    public void setDurationAndSkipOffset(int i, int i2) {
        this.f8863c = i;
        this.f8864d = i2;
        this.f8867g = this.f8864d / this.f8863c;
    }

    public void setProgress(int i) {
        int i2 = this.f8866f;
        if (i >= i2) {
            this.f8865e = i;
            this.f8866f = i;
        } else if (i != 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(i2), Integer.valueOf(i)));
            forceCompletion();
        }
        invalidateSelf();
    }
}
