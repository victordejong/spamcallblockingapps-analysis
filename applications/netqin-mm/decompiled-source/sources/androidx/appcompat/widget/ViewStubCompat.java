package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import p012b.p016b.C0583j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    public int f838a;

    /* renamed from: b */
    public int f839b;

    /* renamed from: c */
    public WeakReference<View> f840c;

    /* renamed from: d */
    public LayoutInflater f841d;

    /* renamed from: e */
    public AbstractC0175a f842e;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0175a {
        /* renamed from: a */
        void m38837a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f838a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.ViewStubCompat, i, 0);
        this.f839b = obtainStyledAttributes.getResourceId(C0583j.ViewStubCompat_android_inflatedId, -1);
        this.f838a = obtainStyledAttributes.getResourceId(C0583j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C0583j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m38838a() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        } else if (this.f838a != 0) {
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f841d;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f838a, viewGroup, false);
            int i = this.f839b;
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
            this.f840c = new WeakReference<>(inflate);
            AbstractC0175a aVar = this.f842e;
            if (aVar != null) {
                aVar.m38837a(this, inflate);
            }
            return inflate;
        } else {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f839b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f841d;
    }

    public int getLayoutResource() {
        return this.f838a;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f839b = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f841d = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f838a = i;
    }

    public void setOnInflateListener(AbstractC0175a aVar) {
        this.f842e = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f840c;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view != null) {
                view.setVisibility(i);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            m38838a();
        }
    }
}
