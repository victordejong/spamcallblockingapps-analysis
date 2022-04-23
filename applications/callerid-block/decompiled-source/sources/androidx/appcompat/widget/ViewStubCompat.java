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
import d.a.j;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: b */
    private int f565b;

    /* renamed from: c */
    private int f566c;

    /* renamed from: d */
    private WeakReference<View> f567d;

    /* renamed from: e */
    private LayoutInflater f568e;

    /* renamed from: f */
    private AbstractC0120a f569f;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0120a {
        /* renamed from: a */
        void m14665a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f565b = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.ViewStubCompat, i, 0);
        this.f566c = obtainStyledAttributes.getResourceId(j.ViewStubCompat_android_inflatedId, -1);
        this.f565b = obtainStyledAttributes.getResourceId(j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m14666a() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        } else if (this.f565b != 0) {
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f568e;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f565b, viewGroup, false);
            int i = this.f566c;
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
            this.f567d = new WeakReference<>(inflate);
            AbstractC0120a aVar = this.f569f;
            if (aVar != null) {
                aVar.m14665a(this, inflate);
            }
            return inflate;
        } else {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f566c;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f568e;
    }

    public int getLayoutResource() {
        return this.f565b;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f566c = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f568e = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f565b = i;
    }

    public void setOnInflateListener(AbstractC0120a aVar) {
        this.f569f = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.f567d;
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
            m14666a();
        }
    }
}
