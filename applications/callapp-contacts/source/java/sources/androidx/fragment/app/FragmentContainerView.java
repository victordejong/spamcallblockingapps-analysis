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
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import androidx.fragment.C1028a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentContainerView.class */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: a */
    boolean f4188a;

    /* renamed from: b */
    private ArrayList<View> f4189b;

    /* renamed from: c */
    private ArrayList<View> f4190c;

    /* renamed from: d */
    private View.OnApplyWindowInsetsListener f4191d;

    public FragmentContainerView(Context context) {
        super(context);
        this.f4188a = true;
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String str;
        String str2;
        this.f4188a = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1028a.C1031c.FragmentContainerView);
            if (classAttribute == null) {
                str2 = obtainStyledAttributes.getString(C1028a.C1031c.FragmentContainerView_android_name);
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
        this.f4188a = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1028a.C1031c.FragmentContainerView);
        String string = classAttribute == null ? obtainStyledAttributes.getString(C1028a.C1031c.FragmentContainerView_android_name) : classAttribute;
        String string2 = obtainStyledAttributes.getString(C1028a.C1031c.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment m43719c = fragmentManager.m43719c(id);
        if (string != null && m43719c == null) {
            if (id <= 0) {
                String concat = string2 != null ? " with tag ".concat(String.valueOf(string2)) : "";
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + string + concat);
            }
            Fragment mo43616c = fragmentManager.m43685q().mo43616c(context.getClassLoader(), string);
            mo43616c.onInflate(context, attributeSet, (Bundle) null);
            AbstractC1121s m43765a = fragmentManager.m43765a();
            m43765a.f4418s = true;
            mo43616c.mContainer = this;
            m43765a.m43541a(getId(), mo43616c, string2).mo43529e();
        }
        fragmentManager.m43749a(this);
    }

    /* renamed from: a */
    private void m43767a(View view) {
        ArrayList<View> arrayList = this.f4190c;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f4189b == null) {
            this.f4189b = new ArrayList<>();
        }
        this.f4189b.add(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (FragmentManager.m43755a(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (FragmentManager.m43755a(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        C0889ac m44229a = C0889ac.m44229a(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f4191d;
        C0889ac m44229a2 = onApplyWindowInsetsListener != null ? C0889ac.m44229a(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : C0926v.m44122a(this, m44229a);
        if (!m44229a2.f3696b.mo44215b()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                C0926v.m44107b(getChildAt(i), m44229a2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchDraw(Canvas canvas) {
        if (this.f4188a && this.f4189b != null) {
            for (int i = 0; i < this.f4189b.size(); i++) {
                super.drawChild(canvas, this.f4189b.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected final boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f4188a || (arrayList = this.f4189b) == null || arrayList.size() <= 0 || !this.f4189b.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f4190c;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f4189b;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f4188a = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            m43767a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected final void removeDetachedView(View view, boolean z) {
        if (z) {
            m43767a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        m43767a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        m43767a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        m43767a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m43767a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m43767a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            super.setLayoutTransition(layoutTransition);
            return;
        }
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public final void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f4191d = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f4190c == null) {
                this.f4190c = new ArrayList<>();
            }
            this.f4190c.add(view);
        }
        super.startViewTransition(view);
    }
}
