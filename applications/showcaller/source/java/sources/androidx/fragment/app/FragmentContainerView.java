package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import java.util.ArrayList;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p020b.p061m.C1752c;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentContainerView.class */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: d */
    private ArrayList<View> f3282d;

    /* renamed from: e */
    private ArrayList<View> f3283e;

    /* renamed from: f */
    private View.OnApplyWindowInsetsListener f3284f;

    /* renamed from: g */
    private boolean f3285g;

    public FragmentContainerView(Context context) {
        super(context);
        this.f3285g = true;
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String str;
        String str2;
        this.f3285g = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1752c.FragmentContainerView);
            if (classAttribute == null) {
                str2 = obtainStyledAttributes.getString(C1752c.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
                str2 = classAttribute;
            }
            obtainStyledAttributes.recycle();
            if (str2 == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + str2 + "\"");
        }
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, FragmentManager fragmentManager) {
        super(context, attributeSet);
        String str;
        this.f3285g = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1752c.FragmentContainerView);
        String string = classAttribute == null ? obtainStyledAttributes.getString(C1752c.FragmentContainerView_android_name) : classAttribute;
        String string2 = obtainStyledAttributes.getString(C1752c.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment m32787h0 = fragmentManager.m32787h0(id);
        if (string != null && m32787h0 == null) {
            if (id <= 0) {
                if (string2 != null) {
                    str = " with tag " + string2;
                } else {
                    str = "";
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + string + str);
            }
            Fragment mo32600a = fragmentManager.m32757r0().mo32600a(context.getClassLoader(), string);
            mo32600a.m32962P0(context, attributeSet, null);
            fragmentManager.m32776l().m32492s(true).m32507d(this, mo32600a, string2).mo32500k();
        }
        fragmentManager.m32822T0(this);
    }

    /* renamed from: a */
    private void m32862a(View view) {
        ArrayList<View> arrayList = this.f3283e;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f3282d == null) {
            this.f3282d = new ArrayList<>();
        }
        this.f3282d.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (FragmentManager.m32860A0(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (FragmentManager.m32860A0(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        C1615e0 m29577w = C1615e0.m29577w(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f3284f;
        C1615e0 m29577w2 = onApplyWindowInsetsListener != null ? C1615e0.m29577w(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : C1679w.m29303c0(this, m29577w);
        if (!m29577w2.m29584p()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                C1679w.m29294h(getChildAt(i), m29577w2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f3285g && this.f3282d != null) {
            for (int i = 0; i < this.f3282d.size(); i++) {
                super.drawChild(canvas, this.f3282d.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f3285g || (arrayList = this.f3282d) == null || arrayList.size() <= 0 || !this.f3282d.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f3283e;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f3282d;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f3285g = true;
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
            m32862a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        if (z) {
            m32862a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        m32862a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        m32862a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        m32862a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m32862a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m32862a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    public void setDrawDisappearingViewsLast(boolean z) {
        this.f3285g = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            super.setLayoutTransition(layoutTransition);
            return;
        }
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f3284f = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f3283e == null) {
                this.f3283e = new ArrayList<>();
            }
            this.f3283e.add(view);
        }
        super.startViewTransition(view);
    }
}
