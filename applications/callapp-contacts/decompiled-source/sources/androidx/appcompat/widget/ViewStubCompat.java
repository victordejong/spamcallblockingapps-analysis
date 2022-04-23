package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat.class */
public final class ViewStubCompat extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f1032a;

    /* renamed from: b  reason: collision with root package name */
    private int f1033b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<View> f1034c;

    /* renamed from: d  reason: collision with root package name */
    private LayoutInflater f1035d;
    private a e;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ViewStubCompat$a.class */
    public interface a {
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1032a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ViewStubCompat, i, 0);
        this.f1033b = obtainStyledAttributes.getResourceId(a.j.ViewStubCompat_android_inflatedId, -1);
        this.f1032a = obtainStyledAttributes.getResourceId(a.j.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(a.j.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public final View a() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        } else if (this.f1032a != 0) {
            ViewGroup viewGroup = (ViewGroup) parent;
            LayoutInflater layoutInflater = this.f1035d;
            if (layoutInflater == null) {
                layoutInflater = LayoutInflater.from(getContext());
            }
            View inflate = layoutInflater.inflate(this.f1032a, viewGroup, false);
            int i = this.f1033b;
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
            this.f1034c = new WeakReference<>(inflate);
            return inflate;
        } else {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
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
        this.f1033b = i;
    }

    public final void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1035d = layoutInflater;
    }

    public final void setLayoutResource(int i) {
        this.f1032a = i;
    }

    public final void setOnInflateListener(a aVar) {
        this.e = aVar;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        WeakReference<View> weakReference = this.f1034c;
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
            a();
        }
    }
}
