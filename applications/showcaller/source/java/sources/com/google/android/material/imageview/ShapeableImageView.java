package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;
import p020b.p021a.p022k.p023a.C1433a;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p108x.AbstractC1962p;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
import p078c.p084c.p085a.p096b.p108x.C1950n;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView.class */
public class ShapeableImageView extends AppCompatImageView implements AbstractC1962p {

    /* renamed from: f */
    private static final int f36849f = C1895k.Widget_MaterialComponents_ShapeableImageView;

    /* renamed from: g */
    private final C1950n f36850g;

    /* renamed from: h */
    private final RectF f36851h;

    /* renamed from: i */
    private final RectF f36852i;

    /* renamed from: j */
    private final Paint f36853j;

    /* renamed from: k */
    private final Paint f36854k;

    /* renamed from: l */
    private final Path f36855l;

    /* renamed from: m */
    private ColorStateList f36856m;

    /* renamed from: n */
    private C1938h f36857n;

    /* renamed from: o */
    private C1946m f36858o;

    /* renamed from: p */
    private float f36859p;

    /* renamed from: q */
    private Path f36860q;

    /* renamed from: r */
    private int f36861r;

    /* renamed from: s */
    private int f36862s;

    /* renamed from: t */
    private int f36863t;

    /* renamed from: u */
    private int f36864u;

    /* renamed from: v */
    private int f36865v;

    /* renamed from: w */
    private int f36866w;

    /* renamed from: x */
    private boolean f36867x;

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    /* renamed from: com.google.android.material.imageview.ShapeableImageView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView$a.class */
    public class C8165a extends ViewOutlineProvider {

        /* renamed from: a */
        private final Rect f36868a = new Rect();

        C8165a() {
            ShapeableImageView.this = r5;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f36858o == null) {
                return;
            }
            if (ShapeableImageView.this.f36857n == null) {
                ShapeableImageView.this.f36857n = new C1938h(ShapeableImageView.this.f36858o);
            }
            ShapeableImageView.this.f36851h.round(this.f36868a);
            ShapeableImageView.this.f36857n.setBounds(this.f36868a);
            ShapeableImageView.this.f36857n.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    public ShapeableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShapeableImageView(android.content.Context r7, android.util.AttributeSet r8, int r9) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.imageview.ShapeableImageView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: g */
    private void m4659g(Canvas canvas) {
        if (this.f36856m == null) {
            return;
        }
        this.f36853j.setStrokeWidth(this.f36859p);
        int colorForState = this.f36856m.getColorForState(getDrawableState(), this.f36856m.getDefaultColor());
        if (this.f36859p <= 0.0f || colorForState == 0) {
            return;
        }
        this.f36853j.setColor(colorForState);
        canvas.drawPath(this.f36855l, this.f36853j);
    }

    /* renamed from: h */
    private boolean m4658h() {
        return (this.f36865v == Integer.MIN_VALUE && this.f36866w == Integer.MIN_VALUE) ? false : true;
    }

    /* renamed from: i */
    private boolean m4657i() {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 17 || getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    private void m4656j(int i, int i2) {
        this.f36851h.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.f36850g.m28510d(this.f36858o, 1.0f, this.f36851h, this.f36855l);
        this.f36860q.rewind();
        this.f36860q.addPath(this.f36855l);
        this.f36852i.set(0.0f, 0.0f, i, i2);
        this.f36860q.addRect(this.f36852i, Path.Direction.CCW);
    }

    public int getContentPaddingBottom() {
        return this.f36864u;
    }

    public final int getContentPaddingEnd() {
        int i = this.f36866w;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return m4657i() ? this.f36861r : this.f36863t;
    }

    public int getContentPaddingLeft() {
        int i;
        int i2;
        if (m4658h()) {
            if (m4657i() && (i2 = this.f36866w) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m4657i() && (i = this.f36865v) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f36861r;
    }

    public int getContentPaddingRight() {
        int i;
        int i2;
        if (m4658h()) {
            if (m4657i() && (i2 = this.f36865v) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m4657i() && (i = this.f36866w) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f36863t;
    }

    public final int getContentPaddingStart() {
        int i = this.f36865v;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return m4657i() ? this.f36863t : this.f36861r;
    }

    public int getContentPaddingTop() {
        return this.f36862s;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    public C1946m getShapeAppearanceModel() {
        return this.f36858o;
    }

    public ColorStateList getStrokeColor() {
        return this.f36856m;
    }

    public float getStrokeWidth() {
        return this.f36859p;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f36860q, this.f36854k);
        m4659g(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f36867x) {
            return;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 > 19 && !isLayoutDirectionResolved()) {
            return;
        }
        this.f36867x = true;
        if (i3 < 21 || (!isPaddingRelative() && !m4658h())) {
            setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
        } else {
            setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m4656j(i, i2);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f36865v = Integer.MIN_VALUE;
        this.f36866w = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.f36861r) + i, (super.getPaddingTop() - this.f36862s) + i2, (super.getPaddingRight() - this.f36863t) + i3, (super.getPaddingBottom() - this.f36864u) + i4);
        this.f36861r = i;
        this.f36862s = i2;
        this.f36863t = i3;
        this.f36864u = i4;
    }

    public void setContentPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i, (super.getPaddingTop() - this.f36862s) + i2, (super.getPaddingEnd() - getContentPaddingEnd()) + i3, (super.getPaddingBottom() - this.f36864u) + i4);
        this.f36861r = m4657i() ? i3 : i;
        this.f36862s = i2;
        if (!m4657i()) {
            i = i3;
        }
        this.f36863t = i;
        this.f36864u = i4;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i + getContentPaddingLeft(), i2 + getContentPaddingTop(), i3 + getContentPaddingRight(), i4 + getContentPaddingBottom());
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i + getContentPaddingStart(), i2 + getContentPaddingTop(), i3 + getContentPaddingEnd(), i4 + getContentPaddingBottom());
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1962p
    public void setShapeAppearanceModel(C1946m c1946m) {
        this.f36858o = c1946m;
        C1938h c1938h = this.f36857n;
        if (c1938h != null) {
            c1938h.setShapeAppearanceModel(c1946m);
        }
        m4656j(getWidth(), getHeight());
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f36856m = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i) {
        setStrokeColor(C1433a.m30127c(getContext(), i));
    }

    public void setStrokeWidth(float f) {
        if (this.f36859p != f) {
            this.f36859p = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }
}
