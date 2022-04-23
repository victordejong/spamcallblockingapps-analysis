package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Layer.class */
public class Layer extends ConstraintHelper {

    /* renamed from: a  reason: collision with root package name */
    ConstraintLayout f1425a;
    private boolean x;
    private boolean y;
    private float q = Float.NaN;
    private float r = Float.NaN;
    private float s = Float.NaN;
    private float t = 1.0f;
    private float u = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    protected float f1426b = Float.NaN;

    /* renamed from: c  reason: collision with root package name */
    protected float f1427c = Float.NaN;

    /* renamed from: d  reason: collision with root package name */
    protected float f1428d = Float.NaN;
    protected float e = Float.NaN;
    protected float f = Float.NaN;
    protected float g = Float.NaN;
    boolean h = true;
    View[] i = null;
    private float v = BitmapDescriptorFactory.HUE_RED;
    private float w = BitmapDescriptorFactory.HUE_RED;

    public Layer(Context context) {
        super(context);
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void e() {
        if (!(this.f1425a == null || this.k == 0)) {
            View[] viewArr = this.i;
            if (viewArr == null || viewArr.length != this.k) {
                this.i = new View[this.k];
            }
            for (int i = 0; i < this.k; i++) {
                this.i[i] = this.f1425a.getViewById(this.j[i]);
            }
        }
    }

    private void f() {
        if (this.f1425a != null) {
            if (!(this.h || Float.isNaN(this.f1426b) || Float.isNaN(this.f1427c))) {
                return;
            }
            if (Float.isNaN(this.q) || Float.isNaN(this.r)) {
                View[] c2 = c(this.f1425a);
                int left = c2[0].getLeft();
                int top = c2[0].getTop();
                int right = c2[0].getRight();
                int bottom = c2[0].getBottom();
                for (int i = 0; i < this.k; i++) {
                    View view = c2[i];
                    left = Math.min(left, view.getLeft());
                    top = Math.min(top, view.getTop());
                    right = Math.max(right, view.getRight());
                    bottom = Math.max(bottom, view.getBottom());
                }
                this.f1428d = right;
                this.e = bottom;
                this.f = left;
                this.g = top;
                if (Float.isNaN(this.q)) {
                    this.f1426b = (left + right) / 2;
                } else {
                    this.f1426b = this.q;
                }
                if (Float.isNaN(this.r)) {
                    this.f1427c = (top + bottom) / 2;
                } else {
                    this.f1427c = this.r;
                }
            } else {
                this.f1427c = this.r;
                this.f1426b = this.q;
            }
        }
    }

    private void g() {
        if (this.f1425a != null) {
            if (this.i == null) {
                e();
            }
            f();
            double radians = Float.isNaN(this.s) ? 0.0d : Math.toRadians(this.s);
            float sin = (float) Math.sin(radians);
            float cos = (float) Math.cos(radians);
            float f = this.t;
            float f2 = this.u;
            float f3 = -f2;
            for (int i = 0; i < this.k; i++) {
                View view = this.i[i];
                int left = (view.getLeft() + view.getRight()) / 2;
                int top = (view.getTop() + view.getBottom()) / 2;
                float f4 = left - this.f1426b;
                float f5 = top - this.f1427c;
                float f6 = this.v;
                float f7 = this.w;
                view.setTranslationX(((((f * cos) * f4) + ((f3 * sin) * f5)) - f4) + f6);
                view.setTranslationY((((f4 * (f * sin)) + ((f2 * cos) * f5)) - f5) + f7);
                view.setScaleY(this.u);
                view.setScaleX(this.t);
                if (!Float.isNaN(this.s)) {
                    view.setRotation(this.s);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a() {
        e();
        this.f1426b = Float.NaN;
        this.f1427c = Float.NaN;
        e eVar = ((ConstraintLayout.LayoutParams) getLayoutParams()).an;
        eVar.g(0);
        eVar.h(0);
        f();
        layout(((int) this.f) - getPaddingLeft(), ((int) this.g) - getPaddingTop(), ((int) this.f1428d) + getPaddingRight(), ((int) this.e) + getPaddingBottom());
        g();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.n = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ConstraintLayout_Layout_android_visibility) {
                    this.x = true;
                } else if (index == e.b.ConstraintLayout_Layout_android_elevation) {
                    this.y = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(ConstraintLayout constraintLayout) {
        this.f1425a = constraintLayout;
        float rotation = getRotation();
        if (rotation != BitmapDescriptorFactory.HUE_RED || !Float.isNaN(this.s)) {
            this.s = rotation;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1425a = (ConstraintLayout) getParent();
        if (this.x || this.y) {
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : BitmapDescriptorFactory.HUE_RED;
            for (int i = 0; i < this.k; i++) {
                View viewById = this.f1425a.getViewById(this.j[i]);
                if (viewById != null) {
                    if (this.x) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.y && elevation > BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT >= 21) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        d();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.q = f;
        g();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.r = f;
        g();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.s = f;
        g();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.t = f;
        g();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.u = f;
        g();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.v = f;
        g();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.w = f;
        g();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        d();
    }
}
