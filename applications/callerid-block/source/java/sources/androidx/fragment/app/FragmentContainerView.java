package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import d.m.c;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentContainerView.class */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: b */
    private ArrayList<View> f1833b;

    /* renamed from: c */
    private ArrayList<View> f1834c;

    /* renamed from: d */
    private boolean f1835d = true;

    public FragmentContainerView(Context context) {
        super(context);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to be instantiated from XML.");
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to be instantiated from XML.");
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, AbstractC0325j abstractC0325j) {
        super(context, attributeSet);
        String str;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.FragmentContainerView);
        String string = classAttribute == null ? obtainStyledAttributes.getString(c.FragmentContainerView_android_name) : classAttribute;
        String string2 = obtainStyledAttributes.getString(c.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment m13207X = abstractC0325j.m13207X(id);
        if (string == null || m13207X != null) {
            return;
        }
        if (id > 0) {
            Fragment m13271a = abstractC0325j.m13191f0().m13271a(context.getClassLoader(), string);
            m13271a.y0(context, attributeSet, (Bundle) null);
            AbstractC0334p m13186i = abstractC0325j.m13186i();
            m13186i.m13082o(true);
            m13186i.m13094c(this, m13271a, string2);
            m13186i.m13088i();
            return;
        }
        if (string2 != null) {
            str = " with tag " + string2;
        } else {
            str = "";
        }
        throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + string + str);
    }

    /* renamed from: a */
    private void m13314a(View view) {
        ArrayList<View> arrayList;
        if (view.getAnimation() != null || ((arrayList = this.f1834c) != null && arrayList.contains(view))) {
            if (this.f1833b == null) {
                this.f1833b = new ArrayList<>();
            }
            this.f1833b.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (AbstractC0325j.m13179l0(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (AbstractC0325j.m13179l0(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f1835d && this.f1833b != null) {
            for (int i = 0; i < this.f1833b.size(); i++) {
                super.drawChild(canvas, this.f1833b.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f1835d || (arrayList = this.f1833b) == null || arrayList.size() <= 0 || !this.f1833b.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f1834c;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f1833b;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f1835d = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).dispatchApplyWindowInsets(new WindowInsets(windowInsets));
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            m13314a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        if (z) {
            m13314a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        m13314a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        m13314a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        m13314a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m13314a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m13314a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    public void setDrawDisappearingViewsLast(boolean z) {
        this.f1835d = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            super.setLayoutTransition(layoutTransition);
            return;
        }
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f1834c == null) {
                this.f1834c = new ArrayList<>();
            }
            this.f1834c.add(view);
        }
        super.startViewTransition(view);
    }
}
