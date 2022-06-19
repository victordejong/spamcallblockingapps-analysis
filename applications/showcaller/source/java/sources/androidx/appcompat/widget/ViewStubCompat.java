package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import p020b.p021a.C1432j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: d */
    private int f1215d;

    /* renamed from: e */
    private int f1216e;

    /* renamed from: f */
    private WeakReference<View> f1217f;

    /* renamed from: g */
    private LayoutInflater f1218g;

    /* renamed from: h */
    private AbstractC0275a f1219h;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0275a {
        /* renamed from: a */
        void m34997a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1215d = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1432j.ViewStubCompat, i, 0);
        this.f1216e = obtainStyledAttributes.getResourceId(C1432j.ViewStubCompat_android_inflatedId, -1);
        this.f1215d = obtainStyledAttributes.getResourceId(C1432j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C1432j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m34998a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f1215d == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f1218g;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f1215d, viewGroup, false);
            int i = this.f1216e;
            if (i != -1) {
                inflate.setId(i);
            }
            int indexOfChild = viewGroup.indexOfChild(this);
            viewGroup.removeViewInLayout(this);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                viewGroup.addView(inflate, indexOfChild, layoutParams);
            } else {
                viewGroup.addView(inflate, indexOfChild);
            }
            this.f1217f = new WeakReference<>(inflate);
            AbstractC0275a abstractC0275a = this.f1219h;
            if (abstractC0275a != null) {
                abstractC0275a.m34997a(this, inflate);
            }
            return inflate;
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f1216e;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1218g;
    }

    public int getLayoutResource() {
        return this.f1215d;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f1216e = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1218g = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f1215d = i;
    }

    public void setOnInflateListener(AbstractC0275a abstractC0275a) {
        this.f1219h = abstractC0275a;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f1217f;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i != 0 && i != 4) {
            return;
        }
        m34998a();
    }
}
