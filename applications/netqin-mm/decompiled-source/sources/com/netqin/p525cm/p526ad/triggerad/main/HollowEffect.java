package com.netqin.p525cm.p526ad.triggerad.main;

import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.netqin.p525cm.main.p529ui.NqApplication;
/* renamed from: com.netqin.cm.ad.triggerad.main.HollowEffect */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/triggerad/main/HollowEffect.class */
public class HollowEffect extends View {

    /* renamed from: a */
    public final Bitmap f35236a;

    /* renamed from: b */
    public final Paint f35237b;

    /* renamed from: c */
    public final PorterDuffXfermode f35238c;

    /* renamed from: d */
    public final Rect f35239d;

    /* renamed from: e */
    public final Matrix f35240e;

    /* renamed from: f */
    public Bitmap f35241f;

    /* renamed from: g */
    public float f35242g;

    /* renamed from: h */
    public ValueAnimator f35243h;

    /* renamed from: i */
    public float f35244i;

    /* renamed from: j */
    public int f35245j;

    /* renamed from: k */
    public boolean f35246k;

    /* renamed from: l */
    public final ValueAnimator.AnimatorUpdateListener f35247l;

    /* renamed from: com.netqin.cm.ad.triggerad.main.HollowEffect$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/triggerad/main/HollowEffect$a.class */
    public class C9024a implements ValueAnimator.AnimatorUpdateListener {
        public C9024a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            HollowEffect.this.setForeBitmapAlpha(valueAnimator.getAnimatedFraction());
            HollowEffect.this.f35244i = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            HollowEffect hollowEffect = HollowEffect.this;
            hollowEffect.invalidate(hollowEffect.f35239d);
        }
    }

    public HollowEffect(Context context) {
        this(context, null);
    }

    public HollowEffect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35236a = BitmapFactory.decodeResource(NqApplication.m3303b().getResources(), 2131165544);
        this.f35237b = new Paint(1);
        this.f35238c = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        this.f35239d = new Rect(0, 0, this.f35236a.getWidth(), this.f35236a.getHeight());
        this.f35240e = new Matrix();
        this.f35247l = new C9024a();
        m3640b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setForeBitmapAlpha(float f) {
        if (f >= 0.06f) {
            this.f35245j = 255;
        } else {
            this.f35245j = (int) ((((f % 0.03f) / 0.03f) * 205.0f) + 50.0f);
        }
    }

    /* renamed from: a */
    public final void m3644a() {
        Bitmap bitmap = this.f35241f;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f35241f.recycle();
        }
        Bitmap bitmap2 = this.f35236a;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.f35236a.recycle();
        }
    }

    /* renamed from: a */
    public void m3641a(boolean z) {
        this.f35246k = z;
        ValueAnimator ofPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofKeyframe("动个画", Keyframe.ofFloat(0.0f, -this.f35242g), Keyframe.ofFloat(0.08f, -this.f35242g), Keyframe.ofFloat(0.33f, 0.0f), Keyframe.ofFloat(0.58f, -this.f35242g), Keyframe.ofFloat(1.0f, -this.f35242g)));
        this.f35243h = ofPropertyValuesHolder;
        ofPropertyValuesHolder.setDuration(10000L);
        this.f35243h.setInterpolator(null);
        this.f35243h.setRepeatCount(-1);
        this.f35243h.addUpdateListener(this.f35247l);
        this.f35243h.start();
    }

    /* renamed from: b */
    public final void m3640b() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inSampleSize = 4;
        this.f35241f = BitmapFactory.decodeResource(NqApplication.m3303b().getResources(), 2131165543, options);
        float f = 4;
        this.f35240e.setScale(f, f);
        this.f35242g = (this.f35241f.getWidth() * 4) - this.f35236a.getWidth();
    }

    /* renamed from: c */
    public void m3638c() {
        ValueAnimator valueAnimator = this.f35243h;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f35243h.removeAllUpdateListeners();
            this.f35243h.removeAllListeners();
            this.f35243h.cancel();
            this.f35243h = null;
        }
        invalidate(this.f35239d);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        m3644a();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f35246k) {
            canvas.drawBitmap(this.f35236a, (getWidth() - this.f35236a.getWidth()) >> 1, (getHeight() - this.f35236a.getHeight()) >> 1, (Paint) null);
            return;
        }
        int save = canvas.save();
        canvas.translate((getWidth() - this.f35239d.width()) >> 1, (getHeight() - this.f35239d.height()) >> 1);
        this.f35237b.setAlpha(this.f35245j);
        if (this.f35244i == (-this.f35242g)) {
            canvas.drawBitmap(this.f35236a, 0.0f, 0.0f, this.f35237b);
        } else {
            int saveLayer = canvas.saveLayer(0.0f, 0.0f, this.f35239d.width(), this.f35239d.height(), this.f35237b, 31);
            canvas.translate(this.f35244i, 0.0f);
            canvas.drawBitmap(this.f35241f, this.f35240e, this.f35237b);
            canvas.translate(-this.f35244i, 0.0f);
            this.f35237b.setXfermode(this.f35238c);
            canvas.drawBitmap(this.f35236a, 0.0f, 0.0f, this.f35237b);
            this.f35237b.setXfermode(null);
            canvas.restoreToCount(saveLayer);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Rect rect = this.f35239d;
        rect.offsetTo((i - rect.width()) >> 1, (i2 - this.f35239d.height()) >> 1);
    }
}
