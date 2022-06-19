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
import p117h8.C3035k;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    public int f802a;

    /* renamed from: b */
    public int f803b;

    /* renamed from: c */
    public WeakReference<View> f804c;

    /* renamed from: d */
    public LayoutInflater f805d;

    /* renamed from: e */
    public AbstractC0193a f806e;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0193a {
        /* renamed from: a */
        void m8593a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f802a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10211C, 0, 0);
        this.f803b = obtainStyledAttributes.getResourceId(2, -1);
        this.f802a = obtainStyledAttributes.getResourceId(1, 0);
        setId(obtainStyledAttributes.getResourceId(0, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m8594a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f802a == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f805d;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f802a, viewGroup, false);
            int i = this.f803b;
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
            this.f804c = new WeakReference<>(inflate);
            AbstractC0193a abstractC0193a = this.f806e;
            if (abstractC0193a != null) {
                abstractC0193a.m8593a(this, inflate);
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
        return this.f803b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f805d;
    }

    public int getLayoutResource() {
        return this.f802a;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f803b = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f805d = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f802a = i;
    }

    public void setOnInflateListener(AbstractC0193a abstractC0193a) {
        this.f806e = abstractC0193a;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f804c;
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
        m8594a();
    }
}
