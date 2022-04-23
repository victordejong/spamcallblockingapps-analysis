package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import d.m.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public class LayoutInflater$Factory2C0322h implements LayoutInflater.Factory2 {

    /* renamed from: b */
    private final AbstractC0325j f1889b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutInflater$Factory2C0322h(AbstractC0325j jVar) {
        this.f1889b = jVar;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f1889b);
        }
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.Fragment);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(c.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(c.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(c.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C0321f.m13270b(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment = this.f1889b.m13207X(resourceId);
        }
        Fragment fragment2 = fragment;
        if (fragment == null) {
            fragment2 = fragment;
            if (string != null) {
                fragment2 = this.f1889b.m13205Y(string);
            }
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (id != -1) {
                fragment3 = this.f1889b.m13207X(id);
            }
        }
        if (AbstractC0325j.m13169q0(2)) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment3);
        }
        if (fragment3 == null) {
            fragment3 = this.f1889b.m13191f0().m13271a(context.getClassLoader(), str2);
            fragment3.n = true;
            fragment3.w = resourceId != 0 ? resourceId : id;
            fragment3.x = id;
            fragment3.y = string;
            fragment3.o = true;
            AbstractC0325j jVar = this.f1889b;
            fragment3.s = jVar;
            g<?> gVar = jVar.f1914o;
            fragment3.t = gVar;
            fragment3.y0(gVar.h(), attributeSet, fragment3.c);
            this.f1889b.m13196d(fragment3);
            this.f1889b.m13252A0(fragment3);
        } else if (!fragment3.o) {
            fragment3.o = true;
            g<?> gVar2 = this.f1889b.f1914o;
            fragment3.t = gVar2;
            fragment3.y0(gVar2.h(), attributeSet, fragment3.c);
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        }
        AbstractC0325j jVar2 = this.f1889b;
        if (jVar2.f1913n >= 1 || !fragment3.n) {
            jVar2.m13252A0(fragment3);
        } else {
            jVar2.m13250B0(fragment3, 1);
        }
        View view2 = fragment3.H;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment3.H.getTag() == null) {
                fragment3.H.setTag(string);
            }
            return fragment3.H;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
