package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.C0032R;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    public int f491a;

    /* renamed from: b */
    public int f492b;

    /* renamed from: c */
    public WeakReference<View> f493c;

    /* renamed from: d */
    public LayoutInflater f494d;

    /* renamed from: e */
    public AbstractC0083a f495e;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0083a {
        /* renamed from: a */
        void m43069a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f491a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0032R.styleable.ViewStubCompat, 0, 0);
        this.f492b = obtainStyledAttributes.getResourceId(C0032R.styleable.ViewStubCompat_android_inflatedId, -1);
        this.f491a = obtainStyledAttributes.getResourceId(C0032R.styleable.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C0032R.styleable.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m43070a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f491a == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f494d;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f491a, viewGroup, false);
            int i = this.f492b;
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
            this.f493c = new WeakReference<>(inflate);
            AbstractC0083a abstractC0083a = this.f495e;
            if (abstractC0083a != null) {
                abstractC0083a.m43069a(this, inflate);
            }
            return inflate;
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f492b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f494d;
    }

    public int getLayoutResource() {
        return this.f491a;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f492b = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f494d = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f491a = i;
    }

    public void setOnInflateListener(AbstractC0083a abstractC0083a) {
        this.f495e = abstractC0083a;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f493c;
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
        m43070a();
    }
}
