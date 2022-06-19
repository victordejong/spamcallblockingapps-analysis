package com.truecaller.common.tag;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.truecaller.common.C3656R;
import p1727n3.p1807k.p1812c.C26493a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1476r.AbstractC22587d;
import p193e.p1451f.p1452a.p1476r.C22593j;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22597j;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p372b0.p430q.C8605o;
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/TagView.class */
public class TagView extends AppCompatTextView implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: A */
    public static final int f10955A = C3656R.attr.tagStyle;

    /* renamed from: f */
    public final int f10956f;

    /* renamed from: g */
    public final Paint f10957g;

    /* renamed from: h */
    public final Paint f10958h;

    /* renamed from: i */
    public final Paint f10959i;

    /* renamed from: j */
    public final Paint f10960j;

    /* renamed from: k */
    public int f10961k;

    /* renamed from: l */
    public final RectF f10962l;

    /* renamed from: m */
    public final RectF f10963m;

    /* renamed from: n */
    public final RectF f10964n;

    /* renamed from: o */
    public final RectF f10965o;

    /* renamed from: p */
    public float f10966p;

    /* renamed from: q */
    public Bitmap f10967q;

    /* renamed from: r */
    public ValueAnimator f10968r;

    /* renamed from: s */
    public boolean f10969s;

    /* renamed from: t */
    public final boolean f10970t;

    /* renamed from: u */
    public boolean f10971u;

    /* renamed from: v */
    public final boolean f10972v;

    /* renamed from: w */
    public final C3696b f10973w;

    /* renamed from: x */
    public C8551c f10974x;

    /* renamed from: y */
    public int f10975y;

    /* renamed from: z */
    public Integer f10976z;

    /* renamed from: com.truecaller.common.tag.TagView$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/TagView$b.class */
    public class C3696b implements AbstractC22598k {

        /* renamed from: a */
        public Bitmap f10977a;

        /* renamed from: b */
        public final RectF f10978b = new RectF();

        /* renamed from: c */
        public float f10979c;

        /* renamed from: d */
        public float f10980d;

        /* renamed from: e */
        public AbstractC22587d f10981e;

        public C3696b(C3695a c3695a) {
            TagView.this = r5;
        }

        /* renamed from: a */
        public void m35714a() {
            RectF rectF = this.f10978b;
            float height = TagView.this.getHeight();
            float f = this.f10980d;
            rectF.top = (height - f) / 2.0f;
            RectF rectF2 = this.f10978b;
            rectF2.bottom = rectF2.top + f;
            float height2 = TagView.this.getHeight();
            float f2 = this.f10979c;
            rectF2.left = (height2 - f2) / 2.0f;
            RectF rectF3 = this.f10978b;
            rectF3.right = rectF3.left + f2;
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: b */
        public AbstractC22587d mo8053b() {
            return this.f10981e;
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: c */
        public void mo8052c(AbstractC22597j abstractC22597j) {
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: d */
        public void mo8051d(Drawable drawable) {
            this.f10977a = null;
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: e */
        public void mo8050e(Object obj, AbstractC22604d abstractC22604d) {
            Resources resources = TagView.this.getContext().getResources();
            Integer num = TagView.this.f10976z;
            int dimensionPixelSize = resources.getDimensionPixelSize(num == null ? C3656R.dimen.tag_view_icon_size : num.intValue());
            Bitmap bitmap = (Bitmap) obj;
            if (bitmap.getWidth() > bitmap.getHeight()) {
                float f = dimensionPixelSize;
                this.f10979c = f;
                this.f10980d = (bitmap.getHeight() / bitmap.getWidth()) * f;
            } else {
                float f2 = dimensionPixelSize;
                this.f10979c = (bitmap.getWidth() / bitmap.getHeight()) * f2;
                this.f10980d = f2;
            }
            m35714a();
            this.f10977a = bitmap;
            TagView.this.invalidate();
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: g */
        public void mo8049g(Drawable drawable) {
            this.f10977a = null;
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: h */
        public void mo8048h(AbstractC22587d abstractC22587d) {
            this.f10981e = abstractC22587d;
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: i */
        public void mo8047i(Drawable drawable) {
            this.f10977a = null;
        }

        @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k
        /* renamed from: j */
        public void mo8046j(AbstractC22597j abstractC22597j) {
            ((C22593j) abstractC22597j).mo8054a(Integer.MIN_VALUE, Integer.MIN_VALUE);
        }

        @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
        public void onDestroy() {
        }

        @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
        public void onStart() {
        }

        @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
        public void onStop() {
        }
    }

    public TagView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f10955A, false, true);
    }

    public TagView(Context context, AttributeSet attributeSet, int i, boolean z, boolean z2) {
        super(context, attributeSet, i);
        this.f10962l = new RectF();
        this.f10963m = new RectF();
        this.f10964n = new RectF();
        this.f10965o = new RectF();
        this.f10966p = 0.0f;
        this.f10971u = true;
        this.f10973w = new C3696b(null);
        this.f10976z = null;
        int m13612L = C19291g.m13612L(getContext(), C3656R.attr.tcx_tagBackgroundColor);
        int m13612L2 = C19291g.m13612L(getContext(), C3656R.attr.tcx_tagIconBackgroundColor);
        int m13612L3 = C19291g.m13612L(getContext(), C3656R.attr.tcx_tagIconTintColor);
        this.f10956f = m13612L3;
        this.f10970t = z;
        this.f10972v = z2;
        this.f10961k = getContext().getResources().getDimensionPixelSize(C3656R.dimen.tag_view_stroke_width);
        this.f10975y = getContext().getResources().getDimensionPixelSize(C3656R.dimen.tag_view_close_btn_margin);
        Paint paint = new Paint();
        this.f10959i = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f10960j = paint2;
        paint2.setAntiAlias(true);
        paint2.setColorFilter(new PorterDuffColorFilter(m13612L3, PorterDuff.Mode.SRC_ATOP));
        Paint paint3 = new Paint();
        this.f10958h = paint3;
        paint3.setAntiAlias(true);
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(m13612L2);
        if (z) {
            this.f10957g = paint;
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(-1);
            paint.setStrokeWidth(this.f10961k);
            if (this.f10971u) {
                setTextColor(-1);
            }
        } else {
            Paint paint4 = new Paint();
            this.f10957g = paint4;
            paint4.setAntiAlias(true);
            paint4.setStyle(Paint.Style.FILL);
            paint.setColor(m13612L);
            paint.setStyle(Paint.Style.FILL);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3656R.styleable.TagView);
        boolean z3 = obtainStyledAttributes.getBoolean(C3656R.styleable.TagView_closeButtonVisible, false);
        obtainStyledAttributes.recycle();
        this.f10967q = !z3 ? null : m35718f(paint.getColor());
        setGravity(16);
    }

    public TagView(Context context, boolean z, boolean z2) {
        this(context, null, f10955A, z, z2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        canvas.drawRoundRect(this.f10963m, getHeight() / 2, getHeight() / 2, this.f10959i);
        if (this.f10966p > 0.0f) {
            canvas.drawRoundRect(this.f10964n, getHeight() / 2, getHeight() / 2, this.f10957g);
        }
        if (this.f10972v) {
            if (this.f10970t) {
                canvas.drawRoundRect(this.f10964n, getHeight() / 2, getHeight() / 2, this.f10957g);
            } else if (this.f10966p <= 0.0f) {
                canvas.drawRoundRect(this.f10964n, getHeight() / 2, getHeight() / 2, this.f10958h);
            }
            C3696b c3696b = this.f10973w;
            Bitmap bitmap = c3696b.f10977a;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, (Rect) null, c3696b.f10978b, this.f10960j);
            }
            i = getHeight();
        } else {
            i = Math.max(0, getPaddingRight() - getPaddingLeft());
        }
        Bitmap bitmap2 = this.f10967q;
        if (bitmap2 != null) {
            canvas.drawBitmap(bitmap2, (Rect) null, this.f10965o, this.f10960j);
        }
        float f = i;
        canvas.translate(f, 0.0f);
        super.draw(canvas);
        if (this.f10966p <= 0.0f || C26493a.m1755d(getCurrentTextColor()) >= 0.5d) {
            return;
        }
        ColorStateList textColors = getTextColors();
        setTextColor(-1);
        RectF rectF = this.f10964n;
        canvas.clipRect(rectF.left - f, rectF.top, rectF.right - f, rectF.bottom);
        super.draw(canvas);
        setTextColor(textColors);
    }

    /* renamed from: f */
    public final Bitmap m35718f(int i) {
        Context context = getContext();
        if (context != null) {
            return C8605o.m28237c(C8605o.m28233g(context, C3656R.C3657drawable.ic_cancel_black_16dp, i));
        }
        return null;
    }

    /* renamed from: g */
    public final void m35717g() {
        RectF rectF = this.f10964n;
        RectF rectF2 = this.f10962l;
        rectF.left = rectF2.left;
        rectF.top = rectF2.top;
        rectF.bottom = rectF2.bottom;
        float f = rectF2.right;
        rectF.right = C22128a.m8646a(this.f10963m.right, f, this.f10966p, f);
    }

    public C8551c getAvailableTag() {
        return this.f10974x;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public long getParentTagId() {
        C8551c c8551c = this.f10974x;
        return c8551c == null ? (char) 0 : c8551c.f26352c;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public long getTagId() {
        C8551c c8551c = this.f10974x;
        return c8551c == null ? (char) 0 : c8551c.f26350a;
    }

    /* renamed from: h */
    public void m35716h(boolean z, boolean z2) {
        if (this.f10969s == z) {
            return;
        }
        this.f10969s = z;
        float f = 1.0f;
        if (!z2) {
            if (!z) {
                f = 0.0f;
            }
            m35715i(f);
            m35717g();
            invalidate();
            return;
        }
        ValueAnimator valueAnimator = this.f10968r;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f2 = this.f10966p;
        if (!this.f10969s) {
            f = 0.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
        this.f10968r = ofFloat;
        ofFloat.setDuration(200L);
        this.f10968r.addUpdateListener(this);
        this.f10968r.start();
    }

    /* renamed from: i */
    public final void m35715i(float f) {
        this.f10966p = f;
        if (f > 0.0f) {
            this.f10960j.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
        } else {
            this.f10960j.setColorFilter(new PorterDuffColorFilter(this.f10956f, PorterDuff.Mode.SRC_ATOP));
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        m35715i(((Float) valueAnimator.getAnimatedValue()).floatValue());
        m35717g();
        invalidate();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        Bitmap bitmap = this.f10967q;
        int width = measuredWidth + (bitmap != null ? bitmap.getWidth() + this.f10975y : 0);
        int measuredHeight = getMeasuredHeight();
        int max = this.f10972v ? width + measuredHeight : width + Math.max(0, getPaddingRight() - getPaddingLeft());
        int i3 = max;
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int size = View.MeasureSpec.getSize(i);
            Bitmap bitmap2 = this.f10967q;
            int i4 = 0;
            if (bitmap2 != null) {
                i4 = bitmap2.getWidth() + this.f10975y;
            }
            i3 = Math.min(size + i4, max);
        }
        int i5 = measuredHeight;
        if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            i5 = Math.min(View.MeasureSpec.getSize(i2), measuredHeight);
        }
        setMeasuredDimension(i3, i5);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        Bitmap bitmap;
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.f10963m;
        int i5 = this.f10961k;
        float f = i5 / 2;
        rectF.left = f;
        float f2 = i5 / 2;
        rectF.top = f2;
        float f3 = i2 - i5;
        rectF.bottom = f3;
        rectF.right = i - i5;
        RectF rectF2 = this.f10962l;
        rectF2.left = f;
        rectF2.top = f2;
        rectF2.bottom = f3;
        rectF2.right = rectF.bottom;
        this.f10973w.m35714a();
        m35717g();
        if (this.f10967q != null) {
            RectF rectF3 = this.f10965o;
            float f4 = this.f10963m.right - this.f10975y;
            rectF3.right = f4;
            rectF3.left = f4 - bitmap.getWidth();
            this.f10965o.top = (getHeight() - this.f10967q.getHeight()) / 2;
            RectF rectF4 = this.f10965o;
            rectF4.bottom = rectF4.top + this.f10967q.getHeight();
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f10959i.setColor(i);
        invalidate();
    }

    public void setIconBackgroundColor(int i) {
        this.f10957g.setColor(i);
    }

    public void setIconSize(int i) {
        this.f10976z = Integer.valueOf(i);
    }

    public void setRedesignBackground(int i) {
        this.f10971u = false;
        setBackgroundColor(i);
    }

    public void setTag(C8551c c8551c) {
        setText(c8551c.f26351b);
        this.f10974x = c8551c;
        if (!this.f10970t) {
            this.f10957g.setColor(this.f10956f);
        }
        if (this.f10972v) {
            C21852d<Bitmap> mo8415f = C17891a1.C17902k.m15664K1(getContext()).mo8415f();
            mo8415f.m8972l0(c8551c.f26354e);
            mo8415f.m8429M(this.f10973w);
        }
        requestLayout();
    }

    public void setTint(int i) {
        if (this.f10970t) {
            this.f10957g.setColor(i);
            this.f10959i.setColor(i);
            this.f10960j.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_ATOP));
            if (this.f10967q != null) {
                this.f10967q = m35718f(i);
            }
            setTextColor(i);
            invalidate();
        }
    }
}
