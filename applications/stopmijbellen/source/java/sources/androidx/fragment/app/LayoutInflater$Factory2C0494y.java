package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import p124i4.C3102d;
import p226s.C4263g;
/* renamed from: androidx.fragment.app.y */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/y.class */
public class LayoutInflater$Factory2C0494y implements LayoutInflater.Factory2 {

    /* renamed from: a */
    public final AbstractC0397a0 f1985a;

    /* renamed from: androidx.fragment.app.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/y$a.class */
    public class View$OnAttachStateChangeListenerC0495a implements View.OnAttachStateChangeListener {

        /* renamed from: a */
        public final /* synthetic */ C0433g0 f1986a;

        public View$OnAttachStateChangeListenerC0495a(C0433g0 c0433g0) {
            LayoutInflater$Factory2C0494y.this = r4;
            this.f1986a = c0433g0;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            C0433g0 c0433g0 = this.f1986a;
            Fragment fragment = c0433g0.f1808c;
            c0433g0.m8117k();
            AbstractC0484w0.m8046f((ViewGroup) fragment.mView.getParent(), LayoutInflater$Factory2C0494y.this.f1985a).m8047e();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public LayoutInflater$Factory2C0494y(AbstractC0397a0 abstractC0397a0) {
        this.f1985a = abstractC0397a0;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        Fragment fragment;
        C0433g0 c0433g0;
        if (C0479u.class.getName().equals(str)) {
            return new C0479u(context, attributeSet, this.f1985a);
        }
        boolean equals = "fragment".equals(str);
        Fragment fragment2 = null;
        if (!equals) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3102d.f10511o);
        int i = 0;
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str2 == null) {
            return null;
        }
        ClassLoader classLoader = context.getClassLoader();
        C4263g<ClassLoader, C4263g<String, Class<?>>> c4263g = C0483w.f1953a;
        try {
            z = Fragment.class.isAssignableFrom(C0483w.m8053b(classLoader, str2));
        } catch (ClassNotFoundException e) {
            z = false;
        }
        if (!z) {
            return null;
        }
        if (view != null) {
            i = view.getId();
        }
        if (i == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment2 = this.f1985a.m8198H(resourceId);
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (string != null) {
                fragment3 = this.f1985a.m8197I(string);
            }
        }
        Fragment fragment4 = fragment3;
        if (fragment3 == null) {
            fragment4 = fragment3;
            if (i != -1) {
                fragment4 = this.f1985a.m8198H(i);
            }
        }
        if (fragment4 == null) {
            Fragment mo8054a = this.f1985a.m8195K().mo8054a(context.getClassLoader(), str2);
            mo8054a.mFromLayout = true;
            mo8054a.mFragmentId = resourceId != 0 ? resourceId : i;
            mo8054a.mContainerId = i;
            mo8054a.mTag = string;
            mo8054a.mInLayout = true;
            AbstractC0397a0 abstractC0397a0 = this.f1985a;
            mo8054a.mFragmentManager = abstractC0397a0;
            AbstractC0492x<?> abstractC0492x = abstractC0397a0.f1714q;
            mo8054a.mHost = abstractC0492x;
            mo8054a.onInflate(abstractC0492x.f1982b, attributeSet, mo8054a.mSavedFragmentState);
            C0433g0 m8179a = this.f1985a.m8179a(mo8054a);
            fragment = mo8054a;
            c0433g0 = m8179a;
            if (AbstractC0397a0.m8192N(2)) {
                mo8054a.toString();
                Integer.toHexString(resourceId);
                fragment = mo8054a;
                c0433g0 = m8179a;
            }
        } else if (fragment4.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + str2);
        } else {
            fragment4.mInLayout = true;
            AbstractC0397a0 abstractC0397a02 = this.f1985a;
            fragment4.mFragmentManager = abstractC0397a02;
            AbstractC0492x<?> abstractC0492x2 = abstractC0397a02.f1714q;
            fragment4.mHost = abstractC0492x2;
            fragment4.onInflate(abstractC0492x2.f1982b, attributeSet, fragment4.mSavedFragmentState);
            C0433g0 m8165h = this.f1985a.m8165h(fragment4);
            fragment = fragment4;
            c0433g0 = m8165h;
            if (AbstractC0397a0.m8192N(2)) {
                fragment4.toString();
                Integer.toHexString(resourceId);
                c0433g0 = m8165h;
                fragment = fragment4;
            }
        }
        fragment.mContainer = (ViewGroup) view;
        c0433g0.m8117k();
        c0433g0.m8118j();
        View view2 = fragment.mView;
        if (view2 == null) {
            throw new IllegalStateException(C0082b.m8755g("Fragment ", str2, " did not create a view."));
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string);
        }
        fragment.mView.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC0495a(c0433g0));
        return fragment.mView;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
