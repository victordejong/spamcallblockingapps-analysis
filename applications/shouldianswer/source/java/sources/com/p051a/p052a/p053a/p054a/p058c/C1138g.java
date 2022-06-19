package com.p051a.p052a.p053a.p054a.p058c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.p023g.C0552u;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.p051a.p052a.p053a.p054a.p059d.C1155a;
/* renamed from: com.a.a.a.a.c.g */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/g.class */
class C1138g extends AbstractC1131a {

    /* renamed from: A */
    private float f3556A;

    /* renamed from: E */
    private float f3560E;

    /* renamed from: F */
    private float f3561F;

    /* renamed from: G */
    private float f3562G;

    /* renamed from: H */
    private float f3563H;

    /* renamed from: c */
    private int f3564c;

    /* renamed from: d */
    private int f3565d;

    /* renamed from: e */
    private Bitmap f3566e;

    /* renamed from: f */
    private int f3567f;

    /* renamed from: g */
    private int f3568g;

    /* renamed from: h */
    private int f3569h;

    /* renamed from: i */
    private int f3570i;

    /* renamed from: j */
    private int f3571j;

    /* renamed from: k */
    private int f3572k;

    /* renamed from: l */
    private NinePatchDrawable f3573l;

    /* renamed from: n */
    private boolean f3575n;

    /* renamed from: o */
    private boolean f3576o;

    /* renamed from: p */
    private C1141j f3577p;

    /* renamed from: q */
    private int f3578q;

    /* renamed from: r */
    private int f3579r;

    /* renamed from: s */
    private C1140i f3580s;

    /* renamed from: u */
    private long f3582u;

    /* renamed from: z */
    private float f3587z;

    /* renamed from: m */
    private final Rect f3574m = new Rect();

    /* renamed from: v */
    private long f3583v = 0;

    /* renamed from: w */
    private float f3584w = 1.0f;

    /* renamed from: x */
    private float f3585x = FlexItem.FLEX_GROW_DEFAULT;

    /* renamed from: y */
    private float f3586y = 1.0f;

    /* renamed from: B */
    private Interpolator f3557B = null;

    /* renamed from: C */
    private Interpolator f3558C = null;

    /* renamed from: D */
    private Interpolator f3559D = null;

    /* renamed from: t */
    private Paint f3581t = new Paint();

    public C1138g(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w, C1141j c1141j) {
        super(recyclerView, abstractC0977w);
        this.f3577p = c1141j;
    }

    /* renamed from: a */
    private static float m4089a(Interpolator interpolator, float f) {
        float f2 = f;
        if (interpolator != null) {
            f2 = interpolator.getInterpolation(f);
        }
        return f2;
    }

    /* renamed from: a */
    private static int m4093a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: a */
    private Bitmap m4090a(View view, NinePatchDrawable ninePatchDrawable) {
        int top = view.getTop();
        int left = view.getLeft();
        int width = view.getWidth();
        int height = view.getHeight();
        int i = this.f3574m.left + width + this.f3574m.right;
        int i2 = this.f3574m.top + height + this.f3574m.bottom;
        view.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(height, 1073741824));
        view.layout(left, top, width + left, height + top);
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        if (ninePatchDrawable != null) {
            ninePatchDrawable.setBounds(0, 0, i, i2);
            ninePatchDrawable.draw(canvas);
        }
        int save = canvas.save();
        canvas.clipRect(this.f3574m.left, this.f3574m.top, i - this.f3574m.right, i2 - this.f3574m.bottom);
        canvas.translate(this.f3574m.left, this.f3574m.top);
        view.draw(canvas);
        canvas.restoreToCount(save);
        return createBitmap;
    }

    /* renamed from: a */
    private static View m4087a(RecyclerView recyclerView, C1141j c1141j, int i, int i2) {
        int layoutPosition;
        View view = null;
        if (i != -1) {
            if (i2 != -1) {
                int childCount = recyclerView.getChildCount();
                int i3 = 0;
                while (true) {
                    view = null;
                    if (i3 >= childCount) {
                        break;
                    }
                    view = recyclerView.getChildAt(i3);
                    RecyclerView.AbstractC0977w childViewHolder = recyclerView.getChildViewHolder(view);
                    if (childViewHolder != null && (layoutPosition = childViewHolder.getLayoutPosition()) >= i && layoutPosition <= i2 && c1141j.m4064a(layoutPosition)) {
                        break;
                    }
                    i3++;
                }
            } else {
                view = null;
            }
        }
        return view;
    }

    /* renamed from: a */
    private void m4094a(float f, int i) {
        if (this.f3532b != null) {
            m4128a(this.f3531a, this.f3532b, f - this.f3532b.itemView.getLeft(), i - this.f3532b.itemView.getTop());
        }
    }

    /* renamed from: b */
    private static View m4081b(RecyclerView recyclerView, C1141j c1141j, int i, int i2) {
        int layoutPosition;
        View view = null;
        if (i != -1) {
            if (i2 != -1) {
                int childCount = recyclerView.getChildCount() - 1;
                while (true) {
                    view = null;
                    if (childCount < 0) {
                        break;
                    }
                    view = recyclerView.getChildAt(childCount);
                    RecyclerView.AbstractC0977w childViewHolder = recyclerView.getChildViewHolder(view);
                    if (childViewHolder != null && (layoutPosition = childViewHolder.getLayoutPosition()) >= i && layoutPosition <= i2 && c1141j.m4064a(layoutPosition)) {
                        break;
                    }
                    childCount--;
                }
            } else {
                view = null;
            }
        }
        return view;
    }

    /* renamed from: n */
    private void m4067n() {
        RecyclerView recyclerView = this.f3531a;
        if (recyclerView.getChildCount() > 0) {
            this.f3567f = 0;
            this.f3568g = recyclerView.getWidth() - this.f3580s.f3595a;
            this.f3569h = 0;
            this.f3570i = recyclerView.getHeight() - this.f3580s.f3596b;
            int i = this.f3578q;
            if (i == 0) {
                this.f3569h += recyclerView.getPaddingTop();
                this.f3570i -= recyclerView.getPaddingBottom();
                this.f3567f = -this.f3580s.f3595a;
                this.f3568g = recyclerView.getWidth();
            } else if (i == 1) {
                this.f3569h = -this.f3580s.f3596b;
                this.f3570i = recyclerView.getHeight();
                this.f3567f += recyclerView.getPaddingLeft();
                this.f3568g -= recyclerView.getPaddingRight();
            }
            this.f3568g = Math.max(this.f3567f, this.f3568g);
            this.f3570i = Math.max(this.f3569h, this.f3570i);
            if (!this.f3576o) {
                int m3948a = C1155a.m3948a(recyclerView, true);
                int m3942b = C1155a.m3942b(recyclerView, true);
                View m4087a = m4087a(recyclerView, this.f3577p, m3948a, m3942b);
                View m4081b = m4081b(recyclerView, this.f3577p, m3948a, m3942b);
                int i2 = this.f3578q;
                if (i2 == 0) {
                    if (m4087a != null) {
                        this.f3567f = Math.min(this.f3567f, m4087a.getLeft());
                    }
                    if (m4081b != null) {
                        this.f3568g = Math.min(this.f3568g, Math.max(0, m4081b.getRight() - this.f3580s.f3595a));
                    }
                } else if (i2 == 1) {
                    if (m4087a != null) {
                        this.f3569h = Math.min(this.f3570i, m4087a.getTop());
                    }
                    if (m4081b != null) {
                        this.f3570i = Math.min(this.f3570i, Math.max(0, m4081b.getBottom() - this.f3580s.f3596b));
                    }
                }
            }
        } else {
            int paddingLeft = recyclerView.getPaddingLeft();
            this.f3567f = paddingLeft;
            this.f3568g = paddingLeft;
            int paddingTop = recyclerView.getPaddingTop();
            this.f3569h = paddingTop;
            this.f3570i = paddingTop;
        }
        this.f3564c = this.f3571j - this.f3580s.f3600f;
        this.f3565d = this.f3572k - this.f3580s.f3601g;
        if (C1155a.m3947b(this.f3579r)) {
            this.f3564c = m4093a(this.f3564c, this.f3567f, this.f3568g);
            this.f3565d = m4093a(this.f3565d, this.f3569h, this.f3570i);
        }
    }

    /* renamed from: a */
    public int m4095a() {
        return this.f3565d;
    }

    /* renamed from: a */
    public void m4091a(NinePatchDrawable ninePatchDrawable) {
        this.f3573l = ninePatchDrawable;
        NinePatchDrawable ninePatchDrawable2 = this.f3573l;
        if (ninePatchDrawable2 != null) {
            ninePatchDrawable2.getPadding(this.f3574m);
        }
    }

    /* renamed from: a */
    public void m4088a(RecyclerView.AbstractC0977w abstractC0977w) {
        if (this.f3532b == null) {
            this.f3532b = abstractC0977w;
            abstractC0977w.itemView.setVisibility(4);
            return;
        }
        throw new IllegalStateException("A new view holder is attempt to be assigned before invalidating the older one");
    }

    /* renamed from: a */
    public void m4086a(C1139h c1139h) {
        this.f3583v = c1139h.f3588a;
        this.f3584w = c1139h.f3589b;
        this.f3557B = c1139h.f3592e;
        this.f3585x = c1139h.f3590c;
        this.f3558C = c1139h.f3593f;
        this.f3586y = c1139h.f3591d;
        this.f3559D = c1139h.f3594g;
    }

    /* renamed from: a */
    public void m4085a(C1140i c1140i, int i, int i2) {
        if (this.f3575n) {
            return;
        }
        View view = this.f3532b.itemView;
        this.f3580s = c1140i;
        this.f3566e = m4090a(view, this.f3573l);
        this.f3567f = this.f3531a.getPaddingLeft();
        this.f3569h = this.f3531a.getPaddingTop();
        this.f3578q = C1155a.m3939e(this.f3531a);
        this.f3579r = C1155a.m3950a(this.f3531a);
        this.f3587z = view.getScaleX();
        this.f3556A = view.getScaleY();
        this.f3560E = 1.0f;
        this.f3561F = 1.0f;
        this.f3562G = FlexItem.FLEX_GROW_DEFAULT;
        this.f3563H = 1.0f;
        view.setVisibility(4);
        m4092a(i, i2, true);
        this.f3531a.addItemDecoration(this);
        this.f3582u = System.currentTimeMillis();
        this.f3575n = true;
    }

    /* renamed from: a */
    public void m4084a(C1140i c1140i, RecyclerView.AbstractC0977w abstractC0977w) {
        if (!this.f3575n) {
            return;
        }
        if (this.f3532b != abstractC0977w) {
            m4068m();
            this.f3532b = abstractC0977w;
        }
        this.f3566e = m4090a(abstractC0977w.itemView, this.f3573l);
        this.f3580s = c1140i;
        m4080b(true);
    }

    /* renamed from: a */
    public void m4083a(boolean z) {
        if (this.f3575n) {
            this.f3531a.removeItemDecoration(this);
        }
        RecyclerView.AbstractC0950f itemAnimator = this.f3531a.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.mo4168d();
        }
        this.f3531a.stopScroll();
        m4094a(this.f3564c, this.f3565d);
        if (this.f3532b != null) {
            m4130a(this.f3532b.itemView, this.f3560E, this.f3561F, this.f3562G, this.f3563H, z);
        }
        if (this.f3532b != null) {
            this.f3532b.itemView.setVisibility(0);
        }
        this.f3532b = null;
        Bitmap bitmap = this.f3566e;
        if (bitmap != null) {
            bitmap.recycle();
            this.f3566e = null;
        }
        this.f3577p = null;
        this.f3564c = 0;
        this.f3565d = 0;
        this.f3567f = 0;
        this.f3568g = 0;
        this.f3569h = 0;
        this.f3570i = 0;
        this.f3571j = 0;
        this.f3572k = 0;
        this.f3575n = false;
    }

    /* renamed from: a */
    public boolean m4092a(int i, int i2, boolean z) {
        this.f3571j = i;
        this.f3572k = i2;
        return m4080b(z);
    }

    /* renamed from: b */
    public int m4082b() {
        return this.f3564c;
    }

    /* renamed from: b */
    public boolean m4080b(boolean z) {
        int i = this.f3564c;
        int i2 = this.f3565d;
        m4067n();
        boolean z2 = (i == this.f3564c && i2 == this.f3565d) ? false : true;
        if (z2 || z) {
            m4094a(this.f3564c, this.f3565d);
            C0552u.m6249d(this.f3531a);
        }
        return z2;
    }

    /* renamed from: c */
    public int m4079c() {
        return this.f3565d - this.f3580s.f3599e;
    }

    /* renamed from: c */
    public void m4078c(boolean z) {
        if (this.f3576o == z) {
            return;
        }
        this.f3576o = z;
    }

    /* renamed from: d */
    public int m4077d() {
        return this.f3564c - this.f3580s.f3598d;
    }

    /* renamed from: e */
    public boolean m4076e() {
        return this.f3565d == this.f3569h;
    }

    /* renamed from: f */
    public boolean m4075f() {
        return this.f3565d == this.f3570i;
    }

    /* renamed from: g */
    public boolean m4074g() {
        return this.f3564c == this.f3567f;
    }

    /* renamed from: h */
    public boolean m4073h() {
        return this.f3564c == this.f3568g;
    }

    /* renamed from: i */
    public int m4072i() {
        return this.f3565d;
    }

    /* renamed from: j */
    public int m4071j() {
        return this.f3565d + this.f3580s.f3596b;
    }

    /* renamed from: k */
    public int m4070k() {
        return this.f3564c;
    }

    /* renamed from: l */
    public int m4069l() {
        return this.f3564c + this.f3580s.f3595a;
    }

    /* renamed from: m */
    public void m4068m() {
        if (this.f3532b != null) {
            this.f3532b.itemView.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
            this.f3532b.itemView.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            this.f3532b.itemView.setVisibility(0);
        }
        this.f3532b = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0955h
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0974t c0974t) {
        if (this.f3566e == null) {
            return;
        }
        int min = (int) Math.min(System.currentTimeMillis() - this.f3582u, this.f3583v);
        long j = this.f3583v;
        float f = j > 0 ? min / ((float) j) : 1.0f;
        float m4089a = m4089a(this.f3557B, f);
        float f2 = this.f3584w;
        float f3 = this.f3587z;
        float f4 = ((f2 - f3) * m4089a) + f3;
        float f5 = this.f3556A;
        float f6 = (m4089a * (f2 - f5)) + f5;
        float m4089a2 = (m4089a(this.f3559D, f) * (this.f3586y - 1.0f)) + 1.0f;
        float m4089a3 = m4089a(this.f3558C, f) * this.f3585x;
        if (f4 > FlexItem.FLEX_GROW_DEFAULT && f6 > FlexItem.FLEX_GROW_DEFAULT && m4089a2 > FlexItem.FLEX_GROW_DEFAULT) {
            this.f3581t.setAlpha((int) (255.0f * m4089a2));
            int save = canvas.save();
            canvas.translate(this.f3564c + this.f3580s.f3600f, this.f3565d + this.f3580s.f3601g);
            canvas.scale(f4, f6);
            canvas.rotate(m4089a3);
            canvas.translate(-(this.f3574m.left + this.f3580s.f3600f), -(this.f3574m.top + this.f3580s.f3601g));
            canvas.drawBitmap(this.f3566e, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, this.f3581t);
            canvas.restoreToCount(save);
        }
        if (f < 1.0f) {
            C0552u.m6249d(this.f3531a);
        }
        this.f3560E = f4;
        this.f3561F = f6;
        this.f3562G = m4089a3;
        this.f3563H = m4089a2;
    }
}
