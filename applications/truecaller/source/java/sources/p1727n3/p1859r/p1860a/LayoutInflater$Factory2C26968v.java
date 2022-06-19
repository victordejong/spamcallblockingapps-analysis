package p1727n3.p1859r.p1860a;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.C0158R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.r.a.v */
/* loaded from: classes-dex2jar.jar:n3/r/a/v.class */
public class LayoutInflater$Factory2C26968v implements LayoutInflater.Factory2 {

    /* renamed from: a */
    public final FragmentManager f75474a;

    /* renamed from: n3.r.a.v$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/v$a.class */
    public class View$OnAttachStateChangeListenerC26969a implements View.OnAttachStateChangeListener {

        /* renamed from: a */
        public final /* synthetic */ C26916c0 f75475a;

        public View$OnAttachStateChangeListenerC26969a(C26916c0 c26916c0) {
            LayoutInflater$Factory2C26968v.this = r4;
            this.f75475a = c26916c0;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            C26916c0 c26916c0 = this.f75475a;
            Fragment fragment = c26916c0.f75295c;
            c26916c0.m1157k();
            AbstractC26960u0.m1057f((ViewGroup) fragment.mView.getParent(), LayoutInflater$Factory2C26968v.this.f75474a).m1058e();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public LayoutInflater$Factory2C26968v(FragmentManager fragmentManager) {
        this.f75474a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        C26916c0 c26916c0;
        Fragment fragment;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f75474a);
        }
        boolean equals = "fragment".equals(str);
        Fragment fragment2 = null;
        if (!equals) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0158R.styleable.Fragment);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(C0158R.styleable.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0158R.styleable.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(C0158R.styleable.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C26957t.isFragmentClass(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment2 = this.f75474a.m42943J(resourceId);
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (string != null) {
                fragment3 = this.f75474a.m42942K(string);
            }
        }
        Fragment fragment4 = fragment3;
        if (fragment3 == null) {
            fragment4 = fragment3;
            if (id != -1) {
                fragment4 = this.f75474a.m42943J(id);
            }
        }
        if (fragment4 == null) {
            Fragment instantiate = this.f75474a.m42937P().instantiate(context.getClassLoader(), str2);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string;
            instantiate.mInLayout = true;
            FragmentManager fragmentManager = this.f75474a;
            instantiate.mFragmentManager = fragmentManager;
            AbstractC26959u<?> abstractC26959u = fragmentManager.f854q;
            instantiate.mHost = abstractC26959u;
            instantiate.onInflate(abstractC26959u.f75444b, attributeSet, instantiate.mSavedFragmentState);
            C26916c0 m42926a = this.f75474a.m42926a(instantiate);
            fragment = instantiate;
            c26916c0 = m42926a;
            if (FragmentManager.m42933T(2)) {
                String str3 = "Fragment " + instantiate + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
                fragment = instantiate;
                c26916c0 = m42926a;
            }
        } else if (fragment4.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        } else {
            fragment4.mInLayout = true;
            FragmentManager fragmentManager2 = this.f75474a;
            fragment4.mFragmentManager = fragmentManager2;
            AbstractC26959u<?> abstractC26959u2 = fragmentManager2.f854q;
            fragment4.mHost = abstractC26959u2;
            fragment4.onInflate(abstractC26959u2.f75444b, attributeSet, fragment4.mSavedFragmentState);
            C26916c0 m42910i = this.f75474a.m42910i(fragment4);
            fragment = fragment4;
            c26916c0 = m42910i;
            if (FragmentManager.m42933T(2)) {
                String str4 = "Retained Fragment " + fragment4 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
                c26916c0 = m42910i;
                fragment = fragment4;
            }
        }
        fragment.mContainer = (ViewGroup) view;
        c26916c0.m1157k();
        c26916c0.m1158j();
        View view2 = fragment.mView;
        if (view2 == null) {
            throw new IllegalStateException(C22128a.m8725C2("Fragment ", str2, " did not create a view."));
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string);
        }
        fragment.mView.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC26969a(c26916c0));
        return fragment.mView;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
