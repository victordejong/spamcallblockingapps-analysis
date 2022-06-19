package com.truecaller.p183ui.components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.truecaller.C2752R;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: com.truecaller.ui.components.CircularImageView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/CircularImageView.class */
public class CircularImageView extends AppCompatImageView {

    /* renamed from: d */
    public int f15698d;

    /* renamed from: e */
    public String f15699e;

    /* renamed from: h */
    public Typeface f15702h;

    /* renamed from: i */
    public BitmapShader f15703i;

    /* renamed from: j */
    public Bitmap f15704j;

    /* renamed from: k */
    public Paint f15705k;

    /* renamed from: l */
    public Paint f15706l;

    /* renamed from: f */
    public int f15700f = getResources().getColor(17170443);

    /* renamed from: g */
    public float f15701g = getResources().getDimension(C2752R.dimen.caller_detail_photo_text_size);

    /* renamed from: c */
    public boolean f15697c = false;

    public CircularImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C2752R.attr.circularImageViewStyle);
        Paint paint = new Paint();
        this.f15705k = paint;
        paint.setAntiAlias(true);
        Typeface create = Typeface.create("sans-serif-light", 0);
        this.f15702h = create;
        if (create == null) {
            this.f15702h = Typeface.create("sans-serif", 0);
        }
    }

    /* renamed from: d */
    public void m34541d() {
        if (this.f15704j == null) {
            this.f15703i = null;
        } else if (getScaleType() == ImageView.ScaleType.CENTER_CROP) {
            Bitmap bitmap = this.f15704j;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f15703i = new BitmapShader(bitmap, tileMode, tileMode);
        } else {
            Bitmap bitmap2 = this.f15704j;
            int i = this.f15698d;
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, i, i, false);
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            this.f15703i = new BitmapShader(createScaledBitmap, tileMode2, tileMode2);
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isClickable()) {
            return super.onTouchEvent(motionEvent);
        }
        motionEvent.getAction();
        invalidate();
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: e */
    public final void m34540e() {
        if (this.f15698d > 0) {
            m34541d();
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        m34540e();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        super.invalidate(i, i2, i3, i4);
        m34540e();
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        super.invalidate(rect);
        m34540e();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap;
        if (!TextUtils.isEmpty(this.f15699e) || !((bitmap = this.f15704j) == null || bitmap.getHeight() == 0 || this.f15704j.getWidth() == 0)) {
            int i = this.f15698d;
            this.f15698d = getWidth();
            if (getHeight() < this.f15698d) {
                this.f15698d = getHeight();
            }
            if (i != this.f15698d) {
                m34541d();
            }
            int i2 = 0;
            int i3 = this.f15698d / 2;
            if (this.f15697c) {
                i2 = (int) this.f15706l.getStrokeWidth();
                float f = i3;
                canvas.drawCircle(f, f, (this.f15698d / 2) - i2, this.f15706l);
            }
            if (this.f15704j != null) {
                if (getScaleType() != ImageView.ScaleType.CENTER_CROP) {
                    this.f15705k.setShader(this.f15703i);
                    float f2 = i3;
                    canvas.drawCircle(f2, f2, this.f15698d / 2, this.f15705k);
                } else {
                    this.f15705k.setShader(null);
                    int i4 = i3 + i2;
                    canvas.drawBitmap(this.f15704j, i4 - (this.f15704j.getWidth() / 2), i4 - (this.f15704j.getHeight() / 2), this.f15705k);
                }
            }
            String str = this.f15699e;
            if (str == null || str.length() <= 0) {
                return;
            }
            this.f15705k.setShader(null);
            this.f15705k.setTypeface(this.f15702h);
            this.f15705k.setTextSize(this.f15701g);
            this.f15705k.setColor(this.f15700f);
            float f3 = i3 + i2;
            canvas.drawText(this.f15699e, f3 - (this.f15705k.measureText(this.f15699e) / 2.0f), f3 - (this.f15705k.getFontMetrics().top / 3.0f), this.f15705k);
        }
    }

    public void setBorderColor(int i) {
        Paint paint = this.f15706l;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    public void setBorderWidth(int i) {
        Paint paint = this.f15706l;
        if (paint != null) {
            paint.setStrokeWidth(i);
        }
        requestLayout();
    }

    public void setHasBorder(boolean z) {
        this.f15697c = z;
        if (this.f15706l == null) {
            Paint paint = new Paint();
            this.f15706l = paint;
            paint.setAntiAlias(true);
            this.f15706l.setStyle(Paint.Style.STROKE);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            setText("");
        }
        this.f15704j = bitmap;
        invalidate();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        setImageBitmap(C8605o.m28237c(drawable));
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        setImageBitmap(C8605o.m28237c(C26467a.C26470c.m1789b(context, i)));
    }

    public void setText(String str) {
        this.f15699e = str;
        invalidate();
    }

    public void setTextColor(int i) {
        this.f15700f = i;
    }

    public void setTypeface(Typeface typeface) {
        this.f15702h = typeface;
    }
}
