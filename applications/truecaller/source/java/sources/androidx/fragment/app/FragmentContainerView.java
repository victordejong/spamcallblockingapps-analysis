package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.fragment.C0158R;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1859r.p1860a.C26916c0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentContainerView.class */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: a */
    public ArrayList<View> f822a;

    /* renamed from: b */
    public ArrayList<View> f823b;

    /* renamed from: c */
    public View.OnApplyWindowInsetsListener f824c;

    /* renamed from: d */
    public boolean f825d = true;

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        String str;
        String str2;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0158R.styleable.FragmentContainerView);
            if (classAttribute == null) {
                str = obtainStyledAttributes.getString(C0158R.styleable.FragmentContainerView_android_name);
                str2 = "android:name";
            } else {
                str2 = "class";
                str = classAttribute;
            }
            obtainStyledAttributes.recycle();
            if (str != null && !isInEditMode()) {
                throw new UnsupportedOperationException(C22128a.m8717E2("FragmentContainerView must be within a FragmentActivity to use ", str2, "=\"", str, "\""));
            }
        }
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, FragmentManager fragmentManager) {
        super(context, attributeSet);
        View view;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0158R.styleable.FragmentContainerView);
        String string = classAttribute == null ? obtainStyledAttributes.getString(C0158R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string2 = obtainStyledAttributes.getString(C0158R.styleable.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment m42943J = fragmentManager.m42943J(id);
        if (string != null && m42943J == null) {
            if (id <= 0) {
                throw new IllegalStateException(C22128a.m8725C2("FragmentContainerView must have an android:id to add Fragment ", string, string2 != null ? C22128a.m8543z2(" with tag ", string2) : ""));
            }
            Fragment instantiate = fragmentManager.m42937P().instantiate(context.getClassLoader(), string);
            instantiate.onInflate(context, attributeSet, (Bundle) null);
            C26907a c26907a = new C26907a(fragmentManager);
            c26907a.f75332p = true;
            instantiate.mContainer = this;
            c26907a.mo1122k(getId(), instantiate, string2, 1);
            c26907a.mo1124i();
        }
        Iterator it = ((ArrayList) fragmentManager.f840c.m1138f()).iterator();
        while (it.hasNext()) {
            C26916c0 c26916c0 = (C26916c0) it.next();
            Fragment fragment = c26916c0.f75295c;
            if (fragment.mContainerId == getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = this;
                c26916c0.m1166b();
            }
        }
    }

    /* renamed from: a */
    public final void m42953a(View view) {
        ArrayList<View> arrayList = this.f823b;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f822a == null) {
            this.f822a = new ArrayList<>();
        }
        this.f822a.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        Object tag = view.getTag(C0158R.C0160id.fragment_container_view_tag);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        Object tag = view.getTag(C0158R.C0160id.fragment_container_view_tag);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        C26568d0 m1655l = C26568d0.m1655l(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f824c;
        C26568d0 m1656k = onApplyWindowInsetsListener != null ? C26568d0.m1656k(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : C26614s.m1570k(this, m1655l);
        if (!m1656k.m1659h()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                C26614s.m1578c(getChildAt(i), m1656k);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f825d && this.f822a != null) {
            for (int i = 0; i < this.f822a.size(); i++) {
                super.drawChild(canvas, this.f822a.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f825d || (arrayList = this.f822a) == null || arrayList.size() <= 0 || !this.f822a.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f823b;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f822a;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f825d = true;
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
            m42953a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        if (z) {
            m42953a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        m42953a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        m42953a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        m42953a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m42953a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m42953a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    public void setDrawDisappearingViewsLast(boolean z) {
        this.f825d = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f824c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f823b == null) {
                this.f823b = new ArrayList<>();
            }
            this.f823b.add(view);
        }
        super.startViewTransition(view);
    }
}
