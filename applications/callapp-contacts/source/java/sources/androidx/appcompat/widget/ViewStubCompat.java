package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.C0142a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a */
    private int f1474a;

    /* renamed from: b */
    private int f1475b;

    /* renamed from: c */
    private WeakReference<View> f1476c;

    /* renamed from: d */
    private LayoutInflater f1477d;

    /* renamed from: e */
    private AbstractC0366a f1478e;

    /* renamed from: androidx.appcompat.widget.ViewStubCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface AbstractC0366a {
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1474a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.ViewStubCompat, i, 0);
        this.f1475b = obtainStyledAttributes.getResourceId(C0142a.C0152j.ViewStubCompat_android_inflatedId, -1);
        this.f1474a = obtainStyledAttributes.getResourceId(C0142a.C0152j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(C0142a.C0152j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    /* renamed from: a */
    public final View m45819a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f1474a == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f1477d;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f1474a, viewGroup, false);
            int i = this.f1475b;
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
            this.f1476c = new WeakReference<>(inflate);
            return inflate;
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    protected final void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public final void setInflatedId(int i) {
        this.f1475b = i;
    }

    public final void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1477d = layoutInflater;
    }

    public final void setLayoutResource(int i) {
        this.f1474a = i;
    }

    public final void setOnInflateListener(AbstractC0366a abstractC0366a) {
        this.f1478e = abstractC0366a;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        WeakReference<View> weakReference = this.f1476c;
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
        m45819a();
    }
}
