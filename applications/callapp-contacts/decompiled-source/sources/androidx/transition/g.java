package androidx.transition;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.transition.o;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/transition/g.class */
final class g extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    ViewGroup f5808a;

    /* renamed from: b  reason: collision with root package name */
    boolean f5809b = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f5808a = viewGroup;
        viewGroup.setTag(o.a.ghost_view_holder, this);
        ad.a(this.f5808a).a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g a(ViewGroup viewGroup) {
        return (g) viewGroup.getTag(o.a.ghost_view_holder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            a((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    private static boolean a(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
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
                    View childAt = viewGroup.getChildAt(ad.a(viewGroup, i2));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            a(((i) getChildAt(i2)).f5816c, arrayList2);
            if (a(arrayList, arrayList2)) {
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
        if (this.f5809b) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f5808a.setTag(o.a.ghost_view_holder, null);
            ad.a(this.f5808a).b(this);
            this.f5809b = false;
        }
    }
}
