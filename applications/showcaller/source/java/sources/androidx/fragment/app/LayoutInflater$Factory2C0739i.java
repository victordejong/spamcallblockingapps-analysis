package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import p020b.p061m.C1752c;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public class LayoutInflater$Factory2C0739i implements LayoutInflater.Factory2 {

    /* renamed from: d */
    final FragmentManager f3510d;

    /* renamed from: androidx.fragment.app.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$a.class */
    public class View$OnAttachStateChangeListenerC0740a implements View.OnAttachStateChangeListener {

        /* renamed from: d */
        final /* synthetic */ C0749p f3511d;

        View$OnAttachStateChangeListenerC0740a(C0749p c0749p) {
            LayoutInflater$Factory2C0739i.this = r4;
            this.f3511d = c0749p;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment m32546k = this.f3511d.m32546k();
            this.f3511d.m32544m();
            SpecialEffectsController.m32699n((ViewGroup) m32546k.f3201L.getParent(), LayoutInflater$Factory2C0739i.this.f3510d).m32703j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public LayoutInflater$Factory2C0739i(FragmentManager fragmentManager) {
        this.f3510d = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        C0749p c0749p;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f3510d);
        }
        boolean equals = "fragment".equals(str);
        Fragment fragment2 = null;
        if (!equals) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1752c.Fragment);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(C1752c.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(C1752c.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(C1752c.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C0737g.m32599b(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment2 = this.f3510d.m32787h0(resourceId);
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (string != null) {
                fragment3 = this.f3510d.m32784i0(string);
            }
        }
        Fragment fragment4 = fragment3;
        if (fragment3 == null) {
            fragment4 = fragment3;
            if (id != -1) {
                fragment4 = this.f3510d.m32787h0(id);
            }
        }
        if (fragment4 == null) {
            Fragment mo32600a = this.f3510d.m32757r0().mo32600a(context.getClassLoader(), str2);
            mo32600a.f3233r = true;
            mo32600a.f3190A = resourceId != 0 ? resourceId : id;
            mo32600a.f3191B = id;
            mo32600a.f3192C = string;
            mo32600a.f3234s = true;
            FragmentManager fragmentManager = this.f3510d;
            mo32600a.f3238w = fragmentManager;
            mo32600a.f3239x = fragmentManager.m32750u0();
            mo32600a.m32962P0(this.f3510d.m32750u0().m32593h(), attributeSet, mo32600a.f3221f);
            C0749p m32791g = this.f3510d.m32791g(mo32600a);
            fragment = mo32600a;
            c0749p = m32791g;
            if (FragmentManager.m32848G0(2)) {
                Log.v("FragmentManager", "Fragment " + mo32600a + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                fragment = mo32600a;
                c0749p = m32791g;
            }
        } else if (fragment4.f3234s) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        } else {
            fragment4.f3234s = true;
            FragmentManager fragmentManager2 = this.f3510d;
            fragment4.f3238w = fragmentManager2;
            fragment4.f3239x = fragmentManager2.m32750u0();
            fragment4.m32962P0(this.f3510d.m32750u0().m32593h(), attributeSet, fragment4.f3221f);
            C0749p m32749v = this.f3510d.m32749v(fragment4);
            fragment = fragment4;
            c0749p = m32749v;
            if (FragmentManager.m32848G0(2)) {
                Log.v("FragmentManager", "Retained Fragment " + fragment4 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                c0749p = m32749v;
                fragment = fragment4;
            }
        }
        fragment.f3200K = (ViewGroup) view;
        c0749p.m32544m();
        c0749p.m32547j();
        View view2 = fragment.f3201L;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragment.f3201L.getTag() == null) {
            fragment.f3201L.setTag(string);
        }
        fragment.f3201L.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC0740a(c0749p));
        return fragment.f3201L;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
