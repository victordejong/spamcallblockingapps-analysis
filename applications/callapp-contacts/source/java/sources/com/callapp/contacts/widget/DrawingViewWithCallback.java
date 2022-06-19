package com.callapp.contacts.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.core.content.C0790b;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.ColorUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DrawingViewWithCallback.class */
public class DrawingViewWithCallback extends View {

    /* renamed from: a */
    public ValueAnimator[] f28675a;

    /* renamed from: b */
    public View f28676b;

    /* renamed from: c */
    private Paint f28677c;

    /* renamed from: d */
    private float f28678d;

    /* renamed from: e */
    private float f28679e;

    /* renamed from: f */
    private float f28680f;

    /* renamed from: g */
    private ImageView f28681g;

    /* renamed from: h */
    private int f28682h;

    /* renamed from: i */
    private ValueAnimator f28683i;

    /* renamed from: j */
    private Paint f28684j;

    /* renamed from: k */
    private float f28685k;

    /* renamed from: l */
    private final int[] f28686l;

    public DrawingViewWithCallback(Context context) {
        super(context);
        this.f28678d = BitmapDescriptorFactory.HUE_RED;
        this.f28679e = BitmapDescriptorFactory.HUE_RED;
        this.f28680f = BitmapDescriptorFactory.HUE_RED;
        this.f28682h = 0;
        this.f28686l = new int[2];
        m26757a(context, (AttributeSet) null, 0);
    }

    public DrawingViewWithCallback(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28678d = BitmapDescriptorFactory.HUE_RED;
        this.f28679e = BitmapDescriptorFactory.HUE_RED;
        this.f28680f = BitmapDescriptorFactory.HUE_RED;
        this.f28682h = 0;
        this.f28686l = new int[2];
        m26757a(context, attributeSet, 0);
    }

    public DrawingViewWithCallback(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28678d = BitmapDescriptorFactory.HUE_RED;
        this.f28679e = BitmapDescriptorFactory.HUE_RED;
        this.f28680f = BitmapDescriptorFactory.HUE_RED;
        this.f28682h = 0;
        this.f28686l = new int[2];
        m26757a(context, attributeSet, i);
    }

    /* renamed from: a */
    public /* synthetic */ void m26764a(double d, Bitmap bitmap, ValueAnimator valueAnimator) {
        float f = (float) (d + ((-valueAnimator.getAnimatedFraction()) * d));
        this.f28678d = f;
        m26762a(f, bitmap);
        invalidate();
    }

    /* renamed from: a */
    public /* synthetic */ void m26763a(float f, ValueAnimator valueAnimator) {
        this.f28685k += ((this.f28678d - f) * valueAnimator.getAnimatedFraction()) + f;
    }

    /* renamed from: a */
    private void m26762a(float f, Bitmap bitmap) {
        if (this.f28681g == null) {
            return;
        }
        Paint paint = new Paint();
        paint.setColorFilter(new PorterDuffColorFilter(C0790b.m44492c(getContext(), 2131100228), PorterDuff.Mode.SRC_IN));
        new Canvas(bitmap).drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
        this.f28681g.setImageBitmap(m26754b(f, bitmap));
    }

    /* renamed from: a */
    public /* synthetic */ void m26758a(ValueAnimator valueAnimator) {
        this.f28685k += (-valueAnimator.getAnimatedFraction()) * this.f28685k;
        this.f28678d += (-valueAnimator.getAnimatedFraction()) * this.f28678d;
        invalidate();
    }

    /* renamed from: a */
    private void m26757a(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet == null) {
            Paint paint = new Paint(1);
            this.f28677c = paint;
            paint.setStyle(Paint.Style.FILL);
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.DrawingViewWithCallback, i, 0);
        int integer = obtainStyledAttributes.getInteger(0, 0);
        this.f28682h = integer;
        if (integer == 0) {
            Paint paint2 = new Paint(1);
            this.f28677c = paint2;
            paint2.setStyle(Paint.Style.FILL);
        } else if (integer == 1) {
            Paint paint3 = new Paint(1);
            this.f28677c = paint3;
            paint3.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint(1);
            this.f28684j = paint4;
            paint4.setStyle(Paint.Style.FILL);
            this.f28684j.setColor(ColorUtils.m27549a(102, ThemeUtils.getColor(2131100228)));
            this.f28675a = new ValueAnimator[3];
            for (int i2 = 0; i2 < 3; i2++) {
                this.f28675a[i2] = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, context.getResources().getDimension(2131165692));
                this.f28675a[i2].setStartDelay((i2 * VastError.ERROR_CODE_GENERAL_WRAPPER) + 1000);
                this.f28675a[i2].setDuration(1200L);
                this.f28675a[i2].addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$zsBLUWWHE7ndzq5O9BY3i7oVvM0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        DrawingViewWithCallback.this.m26752b(valueAnimator);
                    }
                });
                this.f28675a[i2].setInterpolator(new LinearInterpolator());
            }
        } else {
            Paint paint5 = new Paint(1);
            this.f28677c = paint5;
            paint5.setStyle(Paint.Style.FILL);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    static /* synthetic */ void m26756a(DrawingViewWithCallback drawingViewWithCallback) {
        drawingViewWithCallback.f28678d = BitmapDescriptorFactory.HUE_RED;
        ImageView imageView = drawingViewWithCallback.f28681g;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        drawingViewWithCallback.invalidate();
    }

    /* renamed from: b */
    private static Bitmap m26754b(float f, Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-1);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, (f / 2.0f) + 0.1f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    /* renamed from: b */
    public /* synthetic */ void m26755b(double d, Bitmap bitmap, ValueAnimator valueAnimator) {
        float animatedFraction = (float) (d + (valueAnimator.getAnimatedFraction() * getHeight()));
        this.f28678d = animatedFraction;
        m26762a(animatedFraction, bitmap);
        invalidate();
    }

    /* renamed from: b */
    public /* synthetic */ void m26752b(ValueAnimator valueAnimator) {
        invalidate();
    }

    /* renamed from: c */
    public /* synthetic */ void m26751c(double d, Bitmap bitmap, ValueAnimator valueAnimator) {
        float animatedFraction = ((float) d) * valueAnimator.getAnimatedFraction();
        this.f28678d = animatedFraction;
        m26762a(animatedFraction, bitmap);
        invalidate();
    }

    /* renamed from: a */
    public final void m26761a(int i, int i2, final double d, final Bitmap bitmap) {
        this.f28679e = i;
        this.f28680f = i2;
        if (this.f28682h == 0) {
            m26762a((float) d, bitmap);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f28683i = ofFloat;
        ofFloat.setDuration(100L);
        this.f28683i.setInterpolator(new LinearInterpolator());
        this.f28683i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$RE7dhPf0Ia1_biJ_9WIfFICO9yc
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DrawingViewWithCallback.this.m26751c(d, bitmap, valueAnimator);
            }
        });
        this.f28683i.start();
    }

    /* renamed from: a */
    public final void m26760a(int i, int i2, final double d, final Bitmap bitmap, final Runnable runnable) {
        this.f28679e = i;
        this.f28680f = i2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f28683i = ofFloat;
        ofFloat.setDuration(300L);
        this.f28683i.setInterpolator(new LinearInterpolator());
        this.f28683i.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.DrawingViewWithCallback.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DrawingViewWithCallback.m26756a(DrawingViewWithCallback.this);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        int i3 = this.f28682h;
        if (i3 == 0) {
            m26762a((float) d, bitmap);
            this.f28683i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$5340I_8LdmcM5PN1_y62I6o8rNk
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.m26755b(d, bitmap, valueAnimator);
                }
            });
        } else if (i3 == 1) {
            final float f = this.f28685k;
            this.f28683i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.m26763a(f, valueAnimator);
                }
            });
        }
        this.f28683i.start();
    }

    /* renamed from: a */
    public final void m26759a(int i, int i2, float f, Bitmap bitmap) {
        this.f28679e = i;
        this.f28680f = i2;
        int i3 = this.f28682h;
        if (i3 == 0) {
            this.f28678d = f;
            m26762a(f, bitmap);
        } else if (i3 == 1) {
            this.f28685k = f;
        }
        invalidate();
    }

    /* renamed from: b */
    public final void m26753b(int i, int i2, final double d, final Bitmap bitmap) {
        this.f28679e = i;
        this.f28680f = i2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f28683i = ofFloat;
        ofFloat.setDuration(300L);
        this.f28683i.setInterpolator(new LinearInterpolator());
        this.f28683i.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.DrawingViewWithCallback.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DrawingViewWithCallback.m26756a(DrawingViewWithCallback.this);
            }
        });
        int i3 = this.f28682h;
        if (i3 == 0) {
            m26762a((float) d, bitmap);
            this.f28683i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$9_1Lu9vwadc7aST2X_TBSMfzjEw
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.m26764a(d, bitmap, valueAnimator);
                }
            });
        } else if (i3 == 1) {
            this.f28683i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$LxVYPQwc2LF8ZATETTen0IJI0aQ
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.m26758a(valueAnimator);
                }
            });
        }
        this.f28683i.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        int i = this.f28682h;
        if (i == 0) {
            float f3 = this.f28678d;
            if (f3 <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            canvas.drawCircle(this.f28679e, this.f28680f, f3, this.f28677c);
        } else if (i == 1) {
            if (this.f28678d > BitmapDescriptorFactory.HUE_RED) {
                this.f28677c.setStrokeWidth(1.0f);
                this.f28677c.setAlpha(255);
                canvas.drawCircle(this.f28679e, this.f28680f, this.f28678d, this.f28677c);
            }
            float f4 = this.f28685k;
            if (f4 > BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(this.f28679e, this.f28680f, f4, this.f28684j);
            }
            if (this.f28675a == null) {
                return;
            }
            int color = this.f28677c.getColor();
            this.f28677c.setColor(ThemeUtils.getColor(2131100228));
            this.f28677c.setStrokeWidth(4.0f);
            for (int i2 = 0; i2 < 3; i2++) {
                this.f28677c.setAlpha((int) (255.0f - (this.f28675a[i2].getAnimatedFraction() * 255.0f)));
                View view = this.f28676b;
                if (view != null) {
                    view.getLocationOnScreen(this.f28686l);
                    f = this.f28686l[0] + (this.f28676b.getWidth() / 2);
                    f2 = this.f28686l[1] + (this.f28676b.getHeight() / 5);
                } else {
                    f = 0.0f;
                    f2 = BitmapDescriptorFactory.HUE_RED;
                }
                canvas.drawCircle(f, f2, ((Float) this.f28675a[i2].getAnimatedValue()).floatValue(), this.f28677c);
            }
            this.f28677c.setColor(color);
        }
    }

    public void setCoverImageView(ImageView imageView) {
        this.f28681g = imageView;
    }

    public void setPaintColor(int i) {
        this.f28677c.setColor(i);
    }
}
