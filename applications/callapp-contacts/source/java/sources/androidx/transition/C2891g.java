package androidx.transition;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.transition.C2901o;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.g */
/* loaded from: classes-dex2jar.jar:androidx/transition/g.class */
public final class C2891g extends FrameLayout {

    /* renamed from: a */
    ViewGroup f10872a;

    /* renamed from: b */
    boolean f10873b = true;

    public C2891g(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f10872a = viewGroup;
        viewGroup.setTag(C2901o.C2902a.ghost_view_holder, this);
        C2860ad.m39755a(this.f10872a).mo39757a(this);
    }

    /* renamed from: a */
    public static C2891g m39697a(ViewGroup viewGroup) {
        return (C2891g) viewGroup.getTag(C2901o.C2902a.ghost_view_holder);
    }

    /* renamed from: a */
    public static void m39698a(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            m39698a((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    /* renamed from: a */
    private static boolean m39695a(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        boolean z;
        if (arrayList.isEmpty() || arrayList2.isEmpty() || arrayList.get(0) != arrayList2.get(0)) {
            return true;
        }
        int min = Math.min(arrayList.size(), arrayList2.size());
        for (int i = 1; i < min; i++) {
            View view = arrayList.get(i);
            View view2 = arrayList2.get(i);
            if (view != view2) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                int childCount = viewGroup.getChildCount();
                if (Build.VERSION.SDK_INT >= 21 && view.getZ() != view2.getZ()) {
                    return view.getZ() > view2.getZ();
                }
                int i2 = 0;
                while (true) {
                    z = true;
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(C2860ad.m39754a(viewGroup, i2));
                    if (childAt == view) {
                        z = false;
                        break;
                    } else if (childAt == view2) {
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                return z;
            }
        }
        return arrayList2.size() == min;
    }

    /* renamed from: a */
    public final int m39696a(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            m39698a(((C2893i) getChildAt(i2)).f10883c, arrayList2);
            if (m39695a(arrayList, arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        if (this.f10873b) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f10872a.setTag(C2901o.C2902a.ghost_view_holder, null);
            C2860ad.m39755a(this.f10872a).mo39756b(this);
            this.f10873b = false;
        }
    }
}
