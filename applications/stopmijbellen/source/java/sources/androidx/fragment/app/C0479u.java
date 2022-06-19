package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import java.util.Iterator;
import p124i4.C3102d;
import p163m0.C3551b0;
import p163m0.C3589v;
/* renamed from: androidx.fragment.app.u */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/u.class */
public final class C0479u extends FrameLayout {

    /* renamed from: a */
    public ArrayList<View> f1944a;

    /* renamed from: b */
    public ArrayList<View> f1945b;

    /* renamed from: c */
    public View.OnApplyWindowInsetsListener f1946c;

    /* renamed from: d */
    public boolean f1947d = true;

    public C0479u(Context context, AttributeSet attributeSet, AbstractC0397a0 abstractC0397a0) {
        super(context, attributeSet);
        View view;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3102d.f10512p);
        String string = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string2 = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment m8198H = abstractC0397a0.m8198H(id);
        if (string != null && m8198H == null) {
            if (id <= 0) {
                throw new IllegalStateException(C0082b.m8755g("FragmentContainerView must have an android:id to add Fragment ", string, string2 != null ? C1676a.m4789h(" with tag ", string2) : ""));
            }
            Fragment mo8054a = abstractC0397a0.m8195K().mo8054a(context.getClassLoader(), string);
            mo8054a.onInflate(context, attributeSet, (Bundle) null);
            C0396a c0396a = new C0396a(abstractC0397a0);
            c0396a.f1837p = true;
            mo8054a.mContainer = this;
            c0396a.mo8096d(getId(), mo8054a, string2, 1);
            c0396a.m8212i();
        }
        Iterator it2 = ((ArrayList) abstractC0397a0.f1700c.m8105f()).iterator();
        while (it2.hasNext()) {
            C0433g0 c0433g0 = (C0433g0) it2.next();
            Fragment fragment = c0433g0.f1808c;
            if (fragment.mContainerId == getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = this;
                c0433g0.m8126b();
            }
        }
    }

    /* renamed from: a */
    public final void m8059a(View view) {
        ArrayList<View> arrayList = this.f1945b;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f1944a == null) {
            this.f1944a = new ArrayList<>();
        }
        this.f1944a.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        Object tag = view.getTag(2131296632);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        Object tag = view.getTag(2131296632);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        C3551b0 m2173j = C3551b0.m2173j(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f1946c;
        C3551b0 m2174i = onApplyWindowInsetsListener != null ? C3551b0.m2174i(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : C3589v.m2108p(this, m2173j);
        if (!m2174i.m2176g()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                C3589v.m2119e(getChildAt(i), m2174i);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f1947d && this.f1944a != null) {
            for (int i = 0; i < this.f1944a.size(); i++) {
                super.drawChild(canvas, this.f1944a.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f1947d || (arrayList = this.f1944a) == null || arrayList.size() <= 0 || !this.f1944a.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f1945b;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f1944a;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f1947d = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            m8059a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        if (z) {
            m8059a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        m8059a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        m8059a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        m8059a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m8059a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m8059a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    public void setDrawDisappearingViewsLast(boolean z) {
        this.f1947d = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f1946c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f1945b == null) {
                this.f1945b = new ArrayList<>();
            }
            this.f1945b.add(view);
        }
        super.startViewTransition(view);
    }
}
