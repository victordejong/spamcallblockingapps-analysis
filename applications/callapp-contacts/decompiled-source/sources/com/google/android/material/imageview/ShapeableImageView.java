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
import androidx.appcompat.widget.AppCompatImageView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.k.h;
import com.google.android.material.k.m;
import com.google.android.material.k.n;
import com.google.android.material.k.q;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView.class */
public class ShapeableImageView extends AppCompatImageView implements q {

    /* renamed from: a  reason: collision with root package name */
    private static final int f30579a = a.k.Widget_MaterialComponents_ShapeableImageView;

    /* renamed from: b  reason: collision with root package name */
    private final n f30580b;

    /* renamed from: c  reason: collision with root package name */
    private final RectF f30581c;

    /* renamed from: d  reason: collision with root package name */
    private final RectF f30582d;
    private final Paint e;
    private final Paint f;
    private final Path g;
    private ColorStateList h;
    private h i;
    private m j;
    private float k;
    private Path l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private boolean s;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/imageview/ShapeableImageView$a.class */
    final class a extends ViewOutlineProvider {

        /* renamed from: b  reason: collision with root package name */
        private final Rect f30584b = new Rect();

        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.j != null) {
                if (ShapeableImageView.this.i == null) {
                    ShapeableImageView.this.i = new h(ShapeableImageView.this.j);
                }
                ShapeableImageView.this.f30581c.round(this.f30584b);
                ShapeableImageView.this.i.setBounds(this.f30584b);
                ShapeableImageView.this.i.getOutline(outline);
            }
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

    private void a(int i, int i2) {
        this.f30581c.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.f30580b.a(this.j, 1.0f, this.f30581c, this.g);
        this.l.rewind();
        this.l.addPath(this.g);
        this.f30582d.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i2);
        this.l.addRect(this.f30582d, Path.Direction.CCW);
    }

    private boolean a() {
        return (this.q == Integer.MIN_VALUE && this.r == Integer.MIN_VALUE) ? false : true;
    }

    private int b() {
        int i = this.r;
        return i != Integer.MIN_VALUE ? i : f() ? this.m : this.o;
    }

    private int c() {
        int i;
        int i2;
        if (a()) {
            if (f() && (i2 = this.r) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!f() && (i = this.q) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.m;
    }

    private int d() {
        int i;
        int i2;
        if (a()) {
            if (f() && (i2 = this.q) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!f() && (i = this.r) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.o;
    }

    private int e() {
        int i = this.q;
        return i != Integer.MIN_VALUE ? i : f() ? this.o : this.m;
    }

    private boolean f() {
        return Build.VERSION.SDK_INT >= 17 && getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - this.p;
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - b();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - c();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - d();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - e();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - this.n;
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
        canvas.drawPath(this.l, this.f);
        if (this.h != null) {
            this.e.setStrokeWidth(this.k);
            int colorForState = this.h.getColorForState(getDrawableState(), this.h.getDefaultColor());
            if (this.k > BitmapDescriptorFactory.HUE_RED && colorForState != 0) {
                this.e.setColor(colorForState);
                canvas.drawPath(this.g, this.e);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.s) {
            if (Build.VERSION.SDK_INT <= 19 || isLayoutDirectionResolved()) {
                this.s = true;
                if (Build.VERSION.SDK_INT < 21 || (!isPaddingRelative() && !a())) {
                    setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
                } else {
                    setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
                }
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.q = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.r = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        super.setPadding((super.getPaddingLeft() - this.m) + i, (super.getPaddingTop() - this.n) + i2, (super.getPaddingRight() - this.o) + i3, (super.getPaddingBottom() - this.p) + i4);
        this.m = i;
        this.n = i2;
        this.o = i3;
        this.p = i4;
    }

    public void setContentPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative((super.getPaddingStart() - e()) + i, (super.getPaddingTop() - this.n) + i2, (super.getPaddingEnd() - b()) + i3, (super.getPaddingBottom() - this.p) + i4);
        this.m = f() ? i3 : i;
        this.n = i2;
        if (!f()) {
            i = i3;
        }
        this.o = i;
        this.p = i4;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i + c(), i2 + this.n, i3 + d(), i4 + this.p);
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i + e(), i2 + this.n, i3 + b(), i4 + this.p);
    }

    @Override // com.google.android.material.k.q
    public void setShapeAppearanceModel(m mVar) {
        this.j = mVar;
        h hVar = this.i;
        if (hVar != null) {
            hVar.setShapeAppearanceModel(mVar);
        }
        a(getWidth(), getHeight());
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.h = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i) {
        setStrokeColor(androidx.appcompat.a.a.a.a(getContext(), i));
    }

    public void setStrokeWidth(float f) {
        if (this.k != f) {
            this.k = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }
}
