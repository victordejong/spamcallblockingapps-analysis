package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.C1028a;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public final class LayoutInflater$Factory2C1106i implements LayoutInflater.Factory2 {

    /* renamed from: a */
    final FragmentManager f4363a;

    public LayoutInflater$Factory2C1106i(FragmentManager fragmentManager) {
        this.f4363a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        C1116p c1116p;
        Fragment fragment;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f4363a);
        }
        boolean equals = "fragment".equals(str);
        Fragment fragment2 = null;
        if (!equals) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1028a.C1031c.Fragment);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(C1028a.C1031c.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(C1028a.C1031c.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(C1028a.C1031c.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C1104g.m43618a(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment2 = this.f4363a.m43719c(resourceId);
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (string != null) {
                fragment3 = this.f4363a.m43740a(string);
            }
        }
        Fragment fragment4 = fragment3;
        if (fragment3 == null) {
            fragment4 = fragment3;
            if (id != -1) {
                fragment4 = this.f4363a.m43719c(id);
            }
        }
        if (fragment4 == null) {
            Fragment mo43616c = this.f4363a.m43685q().mo43616c(context.getClassLoader(), str2);
            mo43616c.mFromLayout = true;
            mo43616c.mFragmentId = resourceId != 0 ? resourceId : id;
            mo43616c.mContainerId = id;
            mo43616c.mTag = string;
            mo43616c.mInLayout = true;
            mo43616c.mFragmentManager = this.f4363a;
            mo43616c.mHost = this.f4363a.f4220l;
            mo43616c.onInflate(this.f4363a.f4220l.f4360c, attributeSet, mo43616c.mSavedFragmentState);
            C1116p m43702h = this.f4363a.m43702h(mo43616c);
            fragment = mo43616c;
            c1116p = m43702h;
            if (FragmentManager.m43764a(2)) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(mo43616c);
                sb.append(" has been inflated via the <fragment> tag: id=0x");
                sb.append(Integer.toHexString(resourceId));
                fragment = mo43616c;
                c1116p = m43702h;
            }
        } else if (fragment4.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        } else {
            fragment4.mInLayout = true;
            fragment4.mFragmentManager = this.f4363a;
            fragment4.mHost = this.f4363a.f4220l;
            fragment4.onInflate(this.f4363a.f4220l.f4360c, attributeSet, fragment4.mSavedFragmentState);
            C1116p m43704g = this.f4363a.m43704g(fragment4);
            fragment = fragment4;
            c1116p = m43704g;
            if (FragmentManager.m43764a(2)) {
                StringBuilder sb2 = new StringBuilder("Retained Fragment ");
                sb2.append(fragment4);
                sb2.append(" has been re-attached via the <fragment> tag: id=0x");
                sb2.append(Integer.toHexString(resourceId));
                c1116p = m43704g;
                fragment = fragment4;
            }
        }
        fragment.mContainer = (ViewGroup) view;
        c1116p.m43580b();
        c1116p.m43579c();
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string);
        }
        final C1116p c1116p2 = c1116p;
        fragment.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.i.1
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view2) {
                Fragment fragment5 = c1116p2.f4383a;
                c1116p2.m43580b();
                AbstractC1147z.m43484a((ViewGroup) fragment5.mView.getParent(), LayoutInflater$Factory2C1106i.this.f4363a).m43470e();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view2) {
            }
        });
        return fragment.mView;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
