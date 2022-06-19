package org.xutils.image;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Movie;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import org.xutils.common.util.LogUtil;
/* loaded from: classes2-dex2jar.jar:org/xutils/image/GifDrawable.class */
public class GifDrawable extends Drawable implements Runnable, Animatable {

    /* renamed from: d */
    private int f40793d;

    /* renamed from: f */
    private volatile boolean f40795f;

    /* renamed from: g */
    private final Movie f40796g;

    /* renamed from: h */
    private final int f40797h;

    /* renamed from: e */
    private int f40794e = 300;

    /* renamed from: i */
    private final long f40798i = SystemClock.uptimeMillis();

    public GifDrawable(Movie movie, int i) {
        this.f40796g = movie;
        this.f40793d = i;
        this.f40797h = movie.duration();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        try {
            this.f40796g.setTime(this.f40797h > 0 ? ((int) (SystemClock.uptimeMillis() - this.f40798i)) % this.f40797h : 0);
            this.f40796g.draw(canvas, 0.0f, 0.0f);
            start();
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    public int getByteCount() {
        if (this.f40793d == 0) {
            this.f40793d = this.f40796g.width() * this.f40796g.height() * 3 * 5;
        }
        return this.f40793d;
    }

    public int getDuration() {
        return this.f40797h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f40796g.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f40796g.width();
    }

    public Movie getMovie() {
        return this.f40796g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f40796g.isOpaque() ? -1 : -3;
    }

    public int getRate() {
        return this.f40794e;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f40795f && this.f40797h > 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f40797h > 0) {
            invalidateSelf();
            scheduleSelf(this, SystemClock.uptimeMillis() + this.f40794e);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setRate(int i) {
        this.f40794e = i;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!isRunning()) {
            this.f40795f = true;
            run();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            this.f40795f = false;
            unscheduleSelf(this);
        }
    }
}
