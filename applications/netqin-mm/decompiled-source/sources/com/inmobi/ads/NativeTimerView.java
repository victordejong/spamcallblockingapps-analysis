package com.inmobi.ads;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.mopub.mobileads.resource.DrawableConstants;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeTimerView.class */
public class NativeTimerView extends View {

    /* renamed from: a */
    public long f31389a;

    /* renamed from: b */
    public long f31390b;

    /* renamed from: c */
    public ValueAnimator f31391c;

    /* renamed from: d */
    public Bitmap f31392d;

    /* renamed from: e */
    public Canvas f31393e;

    /* renamed from: f */
    public RectF f31394f;

    /* renamed from: g */
    public RectF f31395g;

    /* renamed from: h */
    public Rect f31396h;

    /* renamed from: i */
    public Paint f31397i;

    /* renamed from: j */
    public Paint f31398j;

    /* renamed from: k */
    public Paint f31399k;

    /* renamed from: l */
    public Paint f31400l;

    /* renamed from: m */
    public Paint f31401m;

    /* renamed from: n */
    public float f31402n;

    /* renamed from: o */
    public AbstractC8031b f31403o;

    /* renamed from: com.inmobi.ads.NativeTimerView$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeTimerView$a.class */
    public static final class C8030a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public WeakReference<NativeTimerView> f31404a;

        public C8030a(NativeTimerView nativeTimerView) {
            this.f31404a = new WeakReference<>(nativeTimerView);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            NativeTimerView nativeTimerView = this.f31404a.get();
            if (nativeTimerView != null) {
                int visibility = nativeTimerView.getVisibility();
                if (visibility != 4 && visibility != 8) {
                    nativeTimerView.m6671a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                } else if (((Float) valueAnimator.getAnimatedValue()).floatValue() >= 1.0d) {
                    nativeTimerView.m6668b();
                }
            }
        }
    }

    /* renamed from: com.inmobi.ads.NativeTimerView$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeTimerView$b.class */
    public interface AbstractC8031b {
        /* renamed from: a */
        void mo6361a();
    }

    public NativeTimerView(Context context) {
        this(context, null);
    }

    public NativeTimerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeTimerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f31389a = 0L;
        Paint paint = new Paint();
        this.f31397i = paint;
        paint.setAntiAlias(true);
        this.f31397i.setColor(-723724);
        Paint paint2 = new Paint();
        this.f31401m = paint2;
        paint2.setAntiAlias(true);
        this.f31401m.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f31401m.setTextAlign(Paint.Align.CENTER);
        this.f31401m.setAntiAlias(true);
        this.f31396h = new Rect();
        Paint paint3 = new Paint();
        this.f31398j = paint3;
        paint3.setAntiAlias(true);
        this.f31398j.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        Paint paint4 = new Paint();
        this.f31399k = paint4;
        paint4.setAntiAlias(true);
        this.f31399k.setColor(0);
        this.f31399k.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint5 = new Paint();
        this.f31400l = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        this.f31400l.setAntiAlias(true);
        this.f31400l.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m6668b() {
        AbstractC8031b bVar = this.f31403o;
        if (bVar != null) {
            bVar.mo6361a();
            this.f31391c.cancel();
            this.f31391c = null;
        }
    }

    /* renamed from: a */
    public final void m6672a() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f31391c = ofFloat;
        ofFloat.setDuration(TimeUnit.SECONDS.toMillis(this.f31389a));
        this.f31391c.setInterpolator(new LinearInterpolator());
        this.f31391c.addUpdateListener(new C8030a(this));
        this.f31391c.start();
    }

    /* renamed from: a */
    public final void m6671a(float f) {
        this.f31402n = f * 360.0f;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f31393e.drawColor(0, PorterDuff.Mode.CLEAR);
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int min = Math.min(width, height);
        int a = C8399c.m5686a((int) (getWidth() * 7.0f * 0.007f));
        float f = width;
        float f2 = height;
        canvas.drawCircle(f, f2, min, this.f31397i);
        canvas.drawCircle(f, f2, min - a, this.f31400l);
        ValueAnimator valueAnimator = this.f31391c;
        if (valueAnimator != null) {
            int currentPlayTime = (int) (this.f31389a - (valueAnimator.getCurrentPlayTime() / 1000));
            if (((Float) this.f31391c.getAnimatedValue()).floatValue() >= 1.0d) {
                currentPlayTime = 0;
            }
            Paint paint = this.f31401m;
            Rect rect = this.f31396h;
            String valueOf = String.valueOf(currentPlayTime);
            paint.getTextBounds(valueOf, 0, valueOf.length(), rect);
            canvas.drawText(valueOf, getWidth() / 2, (getHeight() / 2) + (((paint.descent() - paint.ascent()) / 2.0f) - paint.descent()), paint);
            if (((Float) this.f31391c.getAnimatedValue()).floatValue() >= 1.0d) {
                m6668b();
            }
        }
        float f3 = this.f31402n;
        if (f3 > 0.0f) {
            this.f31393e.drawArc(this.f31394f, 270.0f, f3, true, this.f31398j);
            this.f31393e.drawOval(this.f31395g, this.f31399k);
        }
        canvas.drawBitmap(this.f31392d, 0.0f, 0.0f, (Paint) null);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (!(i == i3 && i2 == i4)) {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.f31392d = createBitmap;
            createBitmap.eraseColor(0);
            this.f31393e = new Canvas(this.f31392d);
        }
        super.onSizeChanged(i, i2, i3, i4);
        float a = C8399c.m5686a((int) (getWidth() * 4.0f * 0.007f));
        float a2 = C8399c.m5686a((int) (getWidth() * 14.0f * 0.007f));
        float a3 = C8399c.m5686a((int) (getWidth() * 5.0f * 0.007f));
        float a4 = C8399c.m5686a((int) (getWidth() * 1.5f * 0.007f));
        this.f31394f = new RectF(a3, a3, getWidth() - a3, getHeight() - a3);
        RectF rectF = this.f31394f;
        this.f31395g = new RectF(rectF.left + a, rectF.top + a, rectF.right - a, rectF.bottom - a);
        this.f31400l.setStrokeWidth(a4);
        this.f31401m.setTextSize(a2);
        invalidate();
    }

    public void setTimerEventsListener(AbstractC8031b bVar) {
        this.f31403o = bVar;
    }

    public void setTimerValue(long j) {
        this.f31389a = j;
    }
}
