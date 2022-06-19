package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.ArrayList;
@SuppressLint({"ViewConstructor"})
/* renamed from: androidx.transition.g */
/* loaded from: classes-dex2jar.jar:androidx/transition/g.class */
class C0494g extends FrameLayout {

    /* renamed from: b */
    private ViewGroup f2728b;

    /* renamed from: c */
    private boolean f2729c = true;

    C0494g(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f2728b = viewGroup;
        viewGroup.setTag(C0506p.ghost_view_holder, this);
        C0490e0.m12047b(this.f2728b).c(this);
    }

    /* renamed from: b */
    static C0494g m12040b(ViewGroup viewGroup) {
        return (C0494g) viewGroup.getTag(C0506p.ghost_view_holder);
    }

    /* renamed from: c */
    private int m12039c(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            m12038d(getChildAt(i2).d, arrayList2);
            if (m12036f(arrayList, arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    /* renamed from: d */
    private static void m12038d(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            m12038d((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    /* renamed from: e */
    private static boolean m12037e(View view, View view2) {
        boolean z;
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 21 && view.getZ() != view2.getZ()) {
            if (view.getZ() > view2.getZ()) {
                z2 = true;
            }
            return z2;
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(C0490e0.m12048a(viewGroup, i));
            if (childAt == view) {
                z = false;
                break;
            } else if (childAt == view2) {
                break;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: f */
    private static boolean m12036f(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        boolean z = true;
        if (!arrayList.isEmpty()) {
            z = true;
            if (!arrayList2.isEmpty()) {
                if (arrayList.get(0) != arrayList2.get(0)) {
                    z = true;
                } else {
                    int min = Math.min(arrayList.size(), arrayList2.size());
                    for (int i = 1; i < min; i++) {
                        View view = arrayList.get(i);
                        View view2 = arrayList2.get(i);
                        if (view != view2) {
                            return m12037e(view, view2);
                        }
                    }
                    z = arrayList2.size() == min;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    void m12041a(i iVar) {
        ArrayList<View> arrayList = new ArrayList<>();
        m12038d(iVar.d, arrayList);
        int m12039c = m12039c(arrayList);
        if (m12039c < 0 || m12039c >= getChildCount()) {
            addView(iVar);
        } else {
            addView((View) iVar, m12039c);
        }
    }

    /* renamed from: g */
    void m12035g() {
        if (this.f2729c) {
            C0490e0.m12047b(this.f2728b).d(this);
            C0490e0.m12047b(this.f2728b).c(this);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (this.f2729c) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f2728b.setTag(C0506p.ghost_view_holder, null);
            C0490e0.m12047b(this.f2728b).d(this);
            this.f2729c = false;
        }
    }
}
