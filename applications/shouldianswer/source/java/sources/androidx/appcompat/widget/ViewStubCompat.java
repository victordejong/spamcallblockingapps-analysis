package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.C0051a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    private int f1105a;

    /* renamed from: b */
    private int f1106b;

    /* renamed from: c */
    private WeakReference<View> f1107c;

    /* renamed from: d */
    private LayoutInflater f1108d;

    /* renamed from: e */
    private AbstractC0265a f1109e;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0265a {
        /* renamed from: a */
        void m7315a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1105a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0051a.C0061j.ViewStubCompat, i, 0);
        this.f1106b = obtainStyledAttributes.getResourceId(C0051a.C0061j.ViewStubCompat_android_inflatedId, -1);
        this.f1105a = obtainStyledAttributes.getResourceId(C0051a.C0061j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C0051a.C0061j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m7316a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f1105a == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f1108d;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f1105a, viewGroup, false);
            int i = this.f1106b;
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
            this.f1107c = new WeakReference<>(inflate);
            AbstractC0265a abstractC0265a = this.f1109e;
            if (abstractC0265a != null) {
                abstractC0265a.m7315a(this, inflate);
            }
            return inflate;
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f1106b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1108d;
    }

    public int getLayoutResource() {
        return this.f1105a;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f1106b = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1108d = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f1105a = i;
    }

    public void setOnInflateListener(AbstractC0265a abstractC0265a) {
        this.f1109e = abstractC0265a;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f1107c;
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
        m7316a();
    }
}
