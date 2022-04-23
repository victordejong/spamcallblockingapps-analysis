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
import androidx.core.content.b;
import com.callapp.contacts.R;
import com.callapp.contacts.util.ColorUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DrawingViewWithCallback.class */
public class DrawingViewWithCallback extends View {

    /* renamed from: a  reason: collision with root package name */
    public ValueAnimator[] f16477a;

    /* renamed from: b  reason: collision with root package name */
    public View f16478b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f16479c;

    /* renamed from: d  reason: collision with root package name */
    private float f16480d;
    private float e;
    private float f;
    private ImageView g;
    private int h;
    private ValueAnimator i;
    private Paint j;
    private float k;
    private final int[] l;

    public DrawingViewWithCallback(Context context) {
        super(context);
        this.f16480d = BitmapDescriptorFactory.HUE_RED;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = BitmapDescriptorFactory.HUE_RED;
        this.h = 0;
        this.l = new int[2];
        a(context, (AttributeSet) null, 0);
    }

    public DrawingViewWithCallback(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16480d = BitmapDescriptorFactory.HUE_RED;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = BitmapDescriptorFactory.HUE_RED;
        this.h = 0;
        this.l = new int[2];
        a(context, attributeSet, 0);
    }

    public DrawingViewWithCallback(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16480d = BitmapDescriptorFactory.HUE_RED;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = BitmapDescriptorFactory.HUE_RED;
        this.h = 0;
        this.l = new int[2];
        a(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(double d2, Bitmap bitmap, ValueAnimator valueAnimator) {
        float f = (float) (d2 + ((-valueAnimator.getAnimatedFraction()) * d2));
        this.f16480d = f;
        a(f, bitmap);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float f, ValueAnimator valueAnimator) {
        this.k += ((this.f16480d - f) * valueAnimator.getAnimatedFraction()) + f;
    }

    private void a(float f, Bitmap bitmap) {
        if (this.g != null) {
            Paint paint = new Paint();
            paint.setColorFilter(new PorterDuffColorFilter(b.c(getContext(), 2131100228), PorterDuff.Mode.SRC_IN));
            new Canvas(bitmap).drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            this.g.setImageBitmap(b(f, bitmap));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.k += (-valueAnimator.getAnimatedFraction()) * this.k;
        this.f16480d += (-valueAnimator.getAnimatedFraction()) * this.f16480d;
        invalidate();
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DrawingViewWithCallback, i, 0);
            int integer = obtainStyledAttributes.getInteger(0, 0);
            this.h = integer;
            if (integer == 0) {
                Paint paint = new Paint(1);
                this.f16479c = paint;
                paint.setStyle(Paint.Style.FILL);
            } else if (integer == 1) {
                Paint paint2 = new Paint(1);
                this.f16479c = paint2;
                paint2.setStyle(Paint.Style.STROKE);
                Paint paint3 = new Paint(1);
                this.j = paint3;
                paint3.setStyle(Paint.Style.FILL);
                this.j.setColor(ColorUtils.a(102, ThemeUtils.getColor(2131100228)));
                this.f16477a = new ValueAnimator[3];
                for (int i2 = 0; i2 < 3; i2++) {
                    this.f16477a[i2] = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, context.getResources().getDimension(2131165692));
                    this.f16477a[i2].setStartDelay((i2 * VastError.ERROR_CODE_GENERAL_WRAPPER) + 1000);
                    this.f16477a[i2].setDuration(1200L);
                    this.f16477a[i2].addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$zsBLUWWHE7ndzq5O9BY3i7oVvM0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            DrawingViewWithCallback.this.b(valueAnimator);
                        }
                    });
                    this.f16477a[i2].setInterpolator(new LinearInterpolator());
                }
            } else {
                Paint paint4 = new Paint(1);
                this.f16479c = paint4;
                paint4.setStyle(Paint.Style.FILL);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        Paint paint5 = new Paint(1);
        this.f16479c = paint5;
        paint5.setStyle(Paint.Style.FILL);
    }

    static /* synthetic */ void a(DrawingViewWithCallback drawingViewWithCallback) {
        drawingViewWithCallback.f16480d = BitmapDescriptorFactory.HUE_RED;
        ImageView imageView = drawingViewWithCallback.g;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        drawingViewWithCallback.invalidate();
    }

    private static Bitmap b(float f, Bitmap bitmap) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(double d2, Bitmap bitmap, ValueAnimator valueAnimator) {
        float animatedFraction = (float) (d2 + (valueAnimator.getAnimatedFraction() * getHeight()));
        this.f16480d = animatedFraction;
        a(animatedFraction, bitmap);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(double d2, Bitmap bitmap, ValueAnimator valueAnimator) {
        float animatedFraction = ((float) d2) * valueAnimator.getAnimatedFraction();
        this.f16480d = animatedFraction;
        a(animatedFraction, bitmap);
        invalidate();
    }

    public final void a(int i, int i2, final double d2, final Bitmap bitmap) {
        this.e = i;
        this.f = i2;
        if (this.h == 0) {
            a((float) d2, bitmap);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.i = ofFloat;
        ofFloat.setDuration(100L);
        this.i.setInterpolator(new LinearInterpolator());
        this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$RE7dhPf0Ia1_biJ_9WIfFICO9yc
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DrawingViewWithCallback.this.c(d2, bitmap, valueAnimator);
            }
        });
        this.i.start();
    }

    public final void a(int i, int i2, final double d2, final Bitmap bitmap, final Runnable runnable) {
        this.e = i;
        this.f = i2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.i = ofFloat;
        ofFloat.setDuration(300L);
        this.i.setInterpolator(new LinearInterpolator());
        this.i.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.DrawingViewWithCallback.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DrawingViewWithCallback.a(DrawingViewWithCallback.this);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        int i3 = this.h;
        if (i3 == 0) {
            a((float) d2, bitmap);
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$5340I_8LdmcM5PN1_y62I6o8rNk
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.b(d2, bitmap, valueAnimator);
                }
            });
        } else if (i3 == 1) {
            final float f = this.k;
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.a(f, valueAnimator);
                }
            });
        }
        this.i.start();
    }

    public final void a(int i, int i2, float f, Bitmap bitmap) {
        this.e = i;
        this.f = i2;
        int i3 = this.h;
        if (i3 == 0) {
            this.f16480d = f;
            a(f, bitmap);
        } else if (i3 == 1) {
            this.k = f;
        }
        invalidate();
    }

    public final void b(int i, int i2, final double d2, final Bitmap bitmap) {
        this.e = i;
        this.f = i2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.i = ofFloat;
        ofFloat.setDuration(300L);
        this.i.setInterpolator(new LinearInterpolator());
        this.i.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.DrawingViewWithCallback.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DrawingViewWithCallback.a(DrawingViewWithCallback.this);
            }
        });
        int i3 = this.h;
        if (i3 == 0) {
            a((float) d2, bitmap);
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$9_1Lu9vwadc7aST2X_TBSMfzjEw
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.a(d2, bitmap, valueAnimator);
                }
            });
        } else if (i3 == 1) {
            this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$DrawingViewWithCallback$LxVYPQwc2LF8ZATETTen0IJI0aQ
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawingViewWithCallback.this.a(valueAnimator);
                }
            });
        }
        this.i.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        int i = this.h;
        if (i == 0) {
            float f3 = this.f16480d;
            if (f3 > BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(this.e, this.f, f3, this.f16479c);
            }
        } else if (i == 1) {
            if (this.f16480d > BitmapDescriptorFactory.HUE_RED) {
                this.f16479c.setStrokeWidth(1.0f);
                this.f16479c.setAlpha(255);
                canvas.drawCircle(this.e, this.f, this.f16480d, this.f16479c);
            }
            float f4 = this.k;
            if (f4 > BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(this.e, this.f, f4, this.j);
            }
            if (this.f16477a != null) {
                int color = this.f16479c.getColor();
                this.f16479c.setColor(ThemeUtils.getColor(2131100228));
                this.f16479c.setStrokeWidth(4.0f);
                for (int i2 = 0; i2 < 3; i2++) {
                    this.f16479c.setAlpha((int) (255.0f - (this.f16477a[i2].getAnimatedFraction() * 255.0f)));
                    View view = this.f16478b;
                    if (view != null) {
                        view.getLocationOnScreen(this.l);
                        f = this.l[0] + (this.f16478b.getWidth() / 2);
                        f2 = this.l[1] + (this.f16478b.getHeight() / 5);
                    } else {
                        f = BitmapDescriptorFactory.HUE_RED;
                        f2 = BitmapDescriptorFactory.HUE_RED;
                    }
                    canvas.drawCircle(f, f2, ((Float) this.f16477a[i2].getAnimatedValue()).floatValue(), this.f16479c);
                }
                this.f16479c.setColor(color);
            }
        }
    }

    public void setCoverImageView(ImageView imageView) {
        this.g = imageView;
    }

    public void setPaintColor(int i) {
        this.f16479c.setColor(i);
    }
}
