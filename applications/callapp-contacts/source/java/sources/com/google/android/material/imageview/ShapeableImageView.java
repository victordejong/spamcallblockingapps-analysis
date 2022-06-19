package com.google.android.material.imageview;

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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.widget.AppCompatImageView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p374k.AbstractC14695q;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
import com.google.android.material.p374k.C14682n;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView.class */
public class ShapeableImageView extends AppCompatImageView implements AbstractC14695q {

    /* renamed from: a */
    private static final int f53259a = C14376a.C14387k.Widget_MaterialComponents_ShapeableImageView;

    /* renamed from: b */
    private final C14682n f53260b;

    /* renamed from: c */
    private final RectF f53261c;

    /* renamed from: d */
    private final RectF f53262d;

    /* renamed from: e */
    private final Paint f53263e;

    /* renamed from: f */
    private final Paint f53264f;

    /* renamed from: g */
    private final Path f53265g;

    /* renamed from: h */
    private ColorStateList f53266h;

    /* renamed from: i */
    private C14670h f53267i;

    /* renamed from: j */
    private C14678m f53268j;

    /* renamed from: k */
    private float f53269k;

    /* renamed from: l */
    private Path f53270l;

    /* renamed from: m */
    private int f53271m;

    /* renamed from: n */
    private int f53272n;

    /* renamed from: o */
    private int f53273o;

    /* renamed from: p */
    private int f53274p;

    /* renamed from: q */
    private int f53275q;

    /* renamed from: r */
    private int f53276r;

    /* renamed from: s */
    private boolean f53277s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.imageview.ShapeableImageView$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView$a.class */
    public final class C14608a extends ViewOutlineProvider {

        /* renamed from: b */
        private final Rect f53279b = new Rect();

        C14608a() {
            ShapeableImageView.this = r5;
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f53268j == null) {
                return;
            }
            if (ShapeableImageView.this.f53267i == null) {
                ShapeableImageView.this.f53267i = new C14670h(ShapeableImageView.this.f53268j);
            }
            ShapeableImageView.this.f53261c.round(this.f53279b);
            ShapeableImageView.this.f53267i.setBounds(this.f53279b);
            ShapeableImageView.this.f53267i.getOutline(outline);
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

    /* renamed from: a */
    private void m10631a(int i, int i2) {
        this.f53261c.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.f53260b.m10404a(this.f53268j, 1.0f, this.f53261c, this.f53265g);
        this.f53270l.rewind();
        this.f53270l.addPath(this.f53265g);
        this.f53262d.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i2);
        this.f53270l.addRect(this.f53262d, Path.Direction.CCW);
    }

    /* renamed from: a */
    private boolean m10632a() {
        return (this.f53275q == Integer.MIN_VALUE && this.f53276r == Integer.MIN_VALUE) ? false : true;
    }

    /* renamed from: b */
    private int m10628b() {
        int i = this.f53276r;
        return i != Integer.MIN_VALUE ? i : m10622f() ? this.f53271m : this.f53273o;
    }

    /* renamed from: c */
    private int m10626c() {
        int i;
        int i2;
        if (m10632a()) {
            if (m10622f() && (i2 = this.f53276r) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m10622f() && (i = this.f53275q) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f53271m;
    }

    /* renamed from: d */
    private int m10624d() {
        int i;
        int i2;
        if (m10632a()) {
            if (m10622f() && (i2 = this.f53275q) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m10622f() && (i = this.f53276r) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f53273o;
    }

    /* renamed from: e */
    private int m10623e() {
        int i = this.f53275q;
        return i != Integer.MIN_VALUE ? i : m10622f() ? this.f53273o : this.f53271m;
    }

    /* renamed from: f */
    private boolean m10622f() {
        return Build.VERSION.SDK_INT >= 17 && getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - this.f53274p;
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - m10628b();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - m10626c();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - m10624d();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - m10623e();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - this.f53272n;
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
        canvas.drawPath(this.f53270l, this.f53264f);
        if (this.f53266h != null) {
            this.f53263e.setStrokeWidth(this.f53269k);
            int colorForState = this.f53266h.getColorForState(getDrawableState(), this.f53266h.getDefaultColor());
            if (this.f53269k <= BitmapDescriptorFactory.HUE_RED || colorForState == 0) {
                return;
            }
            this.f53263e.setColor(colorForState);
            canvas.drawPath(this.f53265g, this.f53263e);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f53277s) {
            return;
        }
        if (Build.VERSION.SDK_INT > 19 && !isLayoutDirectionResolved()) {
            return;
        }
        this.f53277s = true;
        if (Build.VERSION.SDK_INT < 21 || (!isPaddingRelative() && !m10632a())) {
            setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
        } else {
            setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m10631a(i, i2);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f53275q = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f53276r = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        super.setPadding((super.getPaddingLeft() - this.f53271m) + i, (super.getPaddingTop() - this.f53272n) + i2, (super.getPaddingRight() - this.f53273o) + i3, (super.getPaddingBottom() - this.f53274p) + i4);
        this.f53271m = i;
        this.f53272n = i2;
        this.f53273o = i3;
        this.f53274p = i4;
    }

    public void setContentPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative((super.getPaddingStart() - m10623e()) + i, (super.getPaddingTop() - this.f53272n) + i2, (super.getPaddingEnd() - m10628b()) + i3, (super.getPaddingBottom() - this.f53274p) + i4);
        this.f53271m = m10622f() ? i3 : i;
        this.f53272n = i2;
        if (!m10622f()) {
            i = i3;
        }
        this.f53273o = i;
        this.f53274p = i4;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i + m10626c(), i2 + this.f53272n, i3 + m10624d(), i4 + this.f53274p);
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i + m10623e(), i2 + this.f53272n, i3 + m10628b(), i4 + this.f53274p);
    }

    @Override // com.google.android.material.p374k.AbstractC14695q
    public void setShapeAppearanceModel(C14678m c14678m) {
        this.f53268j = c14678m;
        C14670h c14670h = this.f53267i;
        if (c14670h != null) {
            c14670h.setShapeAppearanceModel(c14678m);
        }
        m10631a(getWidth(), getHeight());
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f53266h = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i) {
        setStrokeColor(C0153a.m46375a(getContext(), i));
    }

    public void setStrokeWidth(float f) {
        if (this.f53269k != f) {
            this.f53269k = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }
}
