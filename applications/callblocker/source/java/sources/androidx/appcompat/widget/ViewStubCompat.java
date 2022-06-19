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
import androidx.appcompat.C0083a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    private int f1184a;

    /* renamed from: b */
    private int f1185b;

    /* renamed from: c */
    private WeakReference<View> f1186c;

    /* renamed from: d */
    private LayoutInflater f1187d;

    /* renamed from: e */
    private AbstractC0277a f1188e;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0277a {
        /* renamed from: a */
        void m21570a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1184a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.ViewStubCompat, i, 0);
        this.f1185b = obtainStyledAttributes.getResourceId(C0083a.C0093j.ViewStubCompat_android_inflatedId, -1);
        this.f1184a = obtainStyledAttributes.getResourceId(C0083a.C0093j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C0083a.C0093j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public View m21571a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f1184a == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            View inflate = (this.f1187d != null ? this.f1187d : LayoutInflater.from(getContext())).inflate(this.f1184a, viewGroup, false);
            if (this.f1185b != -1) {
                inflate.setId(this.f1185b);
            }
            int indexOfChild = viewGroup.indexOfChild(this);
            viewGroup.removeViewInLayout(this);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                viewGroup.addView(inflate, indexOfChild, layoutParams);
            } else {
                viewGroup.addView(inflate, indexOfChild);
            }
            this.f1186c = new WeakReference<>(inflate);
            if (this.f1188e != null) {
                this.f1188e.m21570a(this, inflate);
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
        return this.f1185b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1187d;
    }

    public int getLayoutResource() {
        return this.f1184a;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f1185b = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1187d = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f1184a = i;
    }

    public void setOnInflateListener(AbstractC0277a abstractC0277a) {
        this.f1188e = abstractC0277a;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (this.f1186c != null) {
            View view = this.f1186c.get();
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
        m21571a();
    }
}
