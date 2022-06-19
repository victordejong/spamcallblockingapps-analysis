package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Layer.class */
public class Layer extends ConstraintHelper {

    /* renamed from: a */
    ConstraintLayout f2351a;

    /* renamed from: x */
    private boolean f2367x;

    /* renamed from: y */
    private boolean f2368y;

    /* renamed from: q */
    private float f2360q = Float.NaN;

    /* renamed from: r */
    private float f2361r = Float.NaN;

    /* renamed from: s */
    private float f2362s = Float.NaN;

    /* renamed from: t */
    private float f2363t = 1.0f;

    /* renamed from: u */
    private float f2364u = 1.0f;

    /* renamed from: b */
    protected float f2352b = Float.NaN;

    /* renamed from: c */
    protected float f2353c = Float.NaN;

    /* renamed from: d */
    protected float f2354d = Float.NaN;

    /* renamed from: e */
    protected float f2355e = Float.NaN;

    /* renamed from: f */
    protected float f2356f = Float.NaN;

    /* renamed from: g */
    protected float f2357g = Float.NaN;

    /* renamed from: h */
    boolean f2358h = true;

    /* renamed from: i */
    View[] f2359i = null;

    /* renamed from: v */
    private float f2365v = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: w */
    private float f2366w = BitmapDescriptorFactory.HUE_RED;

    public Layer(Context context) {
        super(context);
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: e */
    private void m45090e() {
        if (this.f2351a == null || this.f2903k == 0) {
            return;
        }
        View[] viewArr = this.f2359i;
        if (viewArr == null || viewArr.length != this.f2903k) {
            this.f2359i = new View[this.f2903k];
        }
        for (int i = 0; i < this.f2903k; i++) {
            this.f2359i[i] = this.f2351a.getViewById(this.f2902j[i]);
        }
    }

    /* renamed from: f */
    private void m45089f() {
        if (this.f2351a == null) {
            return;
        }
        if (!this.f2358h && !Float.isNaN(this.f2352b) && !Float.isNaN(this.f2353c)) {
            return;
        }
        if (!Float.isNaN(this.f2360q) && !Float.isNaN(this.f2361r)) {
            this.f2353c = this.f2361r;
            this.f2352b = this.f2360q;
            return;
        }
        View[] c = m44752c(this.f2351a);
        int left = c[0].getLeft();
        int top = c[0].getTop();
        int right = c[0].getRight();
        int bottom = c[0].getBottom();
        for (int i = 0; i < this.f2903k; i++) {
            View view = c[i];
            left = Math.min(left, view.getLeft());
            top = Math.min(top, view.getTop());
            right = Math.max(right, view.getRight());
            bottom = Math.max(bottom, view.getBottom());
        }
        this.f2354d = right;
        this.f2355e = bottom;
        this.f2356f = left;
        this.f2357g = top;
        if (Float.isNaN(this.f2360q)) {
            this.f2352b = (left + right) / 2;
        } else {
            this.f2352b = this.f2360q;
        }
        if (Float.isNaN(this.f2361r)) {
            this.f2353c = (top + bottom) / 2;
        } else {
            this.f2353c = this.f2361r;
        }
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    /* renamed from: g */
    private void m45088g() {
        if (this.f2351a == null) {
            return;
        }
        if (this.f2359i == null) {
            m45090e();
        }
        m45089f();
        char radians = Float.isNaN(this.f2362s) ? (char) 0 : Math.toRadians(this.f2362s);
        float sin = (float) Math.sin(radians);
        float cos = (float) Math.cos(radians);
        float f = this.f2363t;
        float f2 = this.f2364u;
        float f3 = -f2;
        for (int i = 0; i < this.f2903k; i++) {
            View view = this.f2359i[i];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f4 = left - this.f2352b;
            float f5 = top - this.f2353c;
            float f6 = this.f2365v;
            float f7 = this.f2366w;
            view.setTranslationX(((((f * cos) * f4) + ((f3 * sin) * f5)) - f4) + f6);
            view.setTranslationY((((f4 * (f * sin)) + ((f2 * cos) * f5)) - f5) + f7);
            view.setScaleY(this.f2364u);
            view.setScaleX(this.f2363t);
            if (!Float.isNaN(this.f2362s)) {
                view.setRotation(this.f2362s);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44731a() {
        m45090e();
        this.f2352b = Float.NaN;
        this.f2353c = Float.NaN;
        C0541e c0541e = ((ConstraintLayout.LayoutParams) getLayoutParams()).f2974an;
        c0541e.m45271g(0);
        c0541e.m45269h(0);
        m45089f();
        layout(((int) this.f2356f) - getPaddingLeft(), ((int) this.f2357g) - getPaddingTop(), ((int) this.f2354d) + getPaddingRight(), ((int) this.f2355e) + getPaddingBottom());
        m45088g();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44729a(AttributeSet attributeSet) {
        super.mo44729a(attributeSet);
        this.f2906n = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ConstraintLayout_Layout_android_visibility) {
                    this.f2367x = true;
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_elevation) {
                    this.f2368y = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44760a(ConstraintLayout constraintLayout) {
        this.f2351a = constraintLayout;
        float rotation = getRotation();
        if (rotation != BitmapDescriptorFactory.HUE_RED || !Float.isNaN(this.f2362s)) {
            this.f2362s = rotation;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2351a = (ConstraintLayout) getParent();
        if (this.f2367x || this.f2368y) {
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.f2903k; i++) {
                View viewById = this.f2351a.getViewById(this.f2902j[i]);
                if (viewById != null) {
                    if (this.f2367x) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.f2368y && elevation > BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT >= 21) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m44750d();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.f2360q = f;
        m45088g();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.f2361r = f;
        m45088g();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.f2362s = f;
        m45088g();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.f2363t = f;
        m45088g();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.f2364u = f;
        m45088g();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.f2365v = f;
        m45088g();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.f2366w = f;
        m45088g();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m44750d();
    }
}
