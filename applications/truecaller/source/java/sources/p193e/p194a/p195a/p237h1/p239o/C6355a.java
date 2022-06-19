package p193e.p194a.p195a.p237h1.p239o;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.a.h1.o.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/a.class */
public final class C6355a extends Drawable implements Animatable {

    /* renamed from: a */
    public final Paint f21200a;

    /* renamed from: b */
    public final ValueAnimator f21201b;

    /* renamed from: e.a.a.h1.o.a$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/a$a.class */
    public static final class C6356a implements ValueAnimator.AnimatorUpdateListener {
        public C6356a(long j) {
            C6355a.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            C6355a.this.invalidateSelf();
        }
    }

    public C6355a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(C19291g.m13612L(context, 2130970017));
        this.f21200a = paint;
        ValueAnimator ofInt = ValueAnimator.ofInt(0, (int) 1600);
        ofInt.setRepeatCount(-1);
        ofInt.setDuration(1600L);
        ofInt.addUpdateListener(new C6356a(1600L));
        l.d(ofInt, "ValueAnimator.ofInt(0, t…alidateSelf() }\n        }");
        this.f21201b = ofInt;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        l.e(canvas, "canvas");
        Object animatedValue = this.f21201b.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) animatedValue).intValue();
        int width = getBounds().width();
        int height = getBounds().height();
        for (int i = 0; i < 2; i++) {
            long j = i * 400;
            float f = ((float) (intValue - j)) / ((float) ((1200 + j) - j));
            if (f >= 0 && f <= 1) {
                this.f21200a.setAlpha((int) ((1.0f - f) * 0.5f * 255));
                float f2 = width;
                canvas.drawCircle(f2 / 2.0f, height / 2.0f, (f2 * f) / 2.0f, this.f21200a);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f21201b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!this.f21201b.isStarted()) {
            this.f21201b.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f21201b.cancel();
    }
}
