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
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    public int f611a;

    /* renamed from: b */
    public int f612b;

    /* renamed from: c */
    public WeakReference<View> f613c;

    /* renamed from: d */
    public LayoutInflater f614d;

    /* renamed from: f */
    public AbstractC0094a f615f;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0094a {
        /* renamed from: a */
        void m6927a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f611a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.ViewStubCompat, i, 0);
        this.f612b = obtainStyledAttributes.getResourceId(o.ViewStubCompat_android_inflatedId, -1);
        this.f611a = obtainStyledAttributes.getResourceId(o.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(o.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m6928a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f611a == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f614d;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f611a, viewGroup, false);
            int i = this.f612b;
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
            this.f613c = new WeakReference<>(inflate);
            AbstractC0094a abstractC0094a = this.f615f;
            if (abstractC0094a != null) {
                abstractC0094a.m6927a(this, inflate);
            }
            return inflate;
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f612b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f614d;
    }

    public int getLayoutResource() {
        return this.f611a;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f612b = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f614d = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f611a = i;
    }

    public void setOnInflateListener(AbstractC0094a abstractC0094a) {
        this.f615f = abstractC0094a;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f613c;
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
        m6928a();
    }
}
