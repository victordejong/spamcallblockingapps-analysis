package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public final class i implements LayoutInflater.Factory2 {

    /* renamed from: a  reason: collision with root package name */
    final FragmentManager f2293a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(FragmentManager fragmentManager) {
        this.f2293a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        final p pVar;
        Fragment fragment;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f2293a);
        }
        boolean equals = "fragment".equals(str);
        Fragment fragment2 = null;
        if (!equals) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.Fragment);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(a.c.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(a.c.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(a.c.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (str2 == null || !g.a(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment2 = this.f2293a.c(resourceId);
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (string != null) {
                fragment3 = this.f2293a.a(string);
            }
        }
        Fragment fragment4 = fragment3;
        if (fragment3 == null) {
            fragment4 = fragment3;
            if (id != -1) {
                fragment4 = this.f2293a.c(id);
            }
        }
        if (fragment4 == null) {
            Fragment c2 = this.f2293a.q().c(context.getClassLoader(), str2);
            c2.mFromLayout = true;
            c2.mFragmentId = resourceId != 0 ? resourceId : id;
            c2.mContainerId = id;
            c2.mTag = string;
            c2.mInLayout = true;
            c2.mFragmentManager = this.f2293a;
            c2.mHost = this.f2293a.l;
            c2.onInflate(this.f2293a.l.f2291c, attributeSet, c2.mSavedFragmentState);
            p h = this.f2293a.h(c2);
            fragment = c2;
            pVar = h;
            if (FragmentManager.a(2)) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(c2);
                sb.append(" has been inflated via the <fragment> tag: id=0x");
                sb.append(Integer.toHexString(resourceId));
                fragment = c2;
                pVar = h;
            }
        } else if (!fragment4.mInLayout) {
            fragment4.mInLayout = true;
            fragment4.mFragmentManager = this.f2293a;
            fragment4.mHost = this.f2293a.l;
            fragment4.onInflate(this.f2293a.l.f2291c, attributeSet, fragment4.mSavedFragmentState);
            p g = this.f2293a.g(fragment4);
            fragment = fragment4;
            pVar = g;
            if (FragmentManager.a(2)) {
                StringBuilder sb2 = new StringBuilder("Retained Fragment ");
                sb2.append(fragment4);
                sb2.append(" has been re-attached via the <fragment> tag: id=0x");
                sb2.append(Integer.toHexString(resourceId));
                pVar = g;
                fragment = fragment4;
            }
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        }
        fragment.mContainer = (ViewGroup) view;
        pVar.b();
        pVar.c();
        if (fragment.mView != null) {
            if (resourceId != 0) {
                fragment.mView.setId(resourceId);
            }
            if (fragment.mView.getTag() == null) {
                fragment.mView.setTag(string);
            }
            fragment.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.i.1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                    Fragment fragment5 = pVar.f2308a;
                    pVar.b();
                    z.a((ViewGroup) fragment5.mView.getParent(), i.this.f2293a).e();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                }
            });
            return fragment.mView;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
