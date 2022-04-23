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
import androidx.core.view.ac;
import androidx.core.view.v;
import androidx.fragment.a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentContainerView.class */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    boolean f2181a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<View> f2182b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<View> f2183c;

    /* renamed from: d  reason: collision with root package name */
    private View.OnApplyWindowInsetsListener f2184d;

    public FragmentContainerView(Context context) {
        super(context);
        this.f2181a = true;
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String str;
        String str2;
        this.f2181a = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.FragmentContainerView);
            if (classAttribute == null) {
                str2 = obtainStyledAttributes.getString(a.c.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
                str2 = classAttribute;
            }
            obtainStyledAttributes.recycle();
            if (str2 != null && !isInEditMode()) {
                throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + str2 + "\"");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentContainerView(Context context, AttributeSet attributeSet, FragmentManager fragmentManager) {
        super(context, attributeSet);
        this.f2181a = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.FragmentContainerView);
        String string = classAttribute == null ? obtainStyledAttributes.getString(a.c.FragmentContainerView_android_name) : classAttribute;
        String string2 = obtainStyledAttributes.getString(a.c.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment c2 = fragmentManager.c(id);
        if (string != null && c2 == null) {
            if (id <= 0) {
                String concat = string2 != null ? " with tag ".concat(String.valueOf(string2)) : "";
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + string + concat);
            }
            Fragment c3 = fragmentManager.q().c(context.getClassLoader(), string);
            c3.onInflate(context, attributeSet, (Bundle) null);
            s a2 = fragmentManager.a();
            a2.s = true;
            c3.mContainer = this;
            a2.a(getId(), c3, string2).e();
        }
        fragmentManager.a(this);
    }

    private void a(View view) {
        ArrayList<View> arrayList = this.f2183c;
        if (arrayList != null && arrayList.contains(view)) {
            if (this.f2182b == null) {
                this.f2182b = new ArrayList<>();
            }
            this.f2182b.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (FragmentManager.a(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (FragmentManager.a(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        ac a2 = ac.a(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f2184d;
        ac a3 = onApplyWindowInsetsListener != null ? ac.a(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : v.a(this, a2);
        if (!a3.f1974b.b()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                v.b(getChildAt(i), a3);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchDraw(Canvas canvas) {
        if (this.f2181a && this.f2182b != null) {
            for (int i = 0; i < this.f2182b.size(); i++) {
                super.drawChild(canvas, this.f2182b.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected final boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f2181a || (arrayList = this.f2182b) == null || arrayList.size() <= 0 || !this.f2182b.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f2183c;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f2182b;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f2181a = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected final void removeDetachedView(View view, boolean z) {
        if (z) {
            a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
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
        this.f2184d = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f2183c == null) {
                this.f2183c = new ArrayList<>();
            }
            this.f2183c.add(view);
        }
        super.startViewTransition(view);
    }
}
