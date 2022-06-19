package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
/* renamed from: androidx.transition.g */
/* loaded from: classes-dex2jar.jar:androidx/transition/g.class */
public class C1135g extends FrameLayout {

    /* renamed from: d */
    private ViewGroup f4915d;

    /* renamed from: e */
    private boolean f4916e = true;

    public C1135g(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f4915d = viewGroup;
        viewGroup.setTag(C1158p.ghost_view_holder, this);
        C1131e0.m30912b(this.f4915d).mo30933c(this);
    }

    /* renamed from: b */
    public static C1135g m30906b(ViewGroup viewGroup) {
        return (C1135g) viewGroup.getTag(C1158p.ghost_view_holder);
    }

    /* renamed from: c */
    private int m30905c(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            m30904d(((C1140i) getChildAt(i2)).f4934f, arrayList2);
            if (m30902f(arrayList, arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    /* renamed from: d */
    private static void m30904d(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            m30904d((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    /* renamed from: e */
    private static boolean m30903e(View view, View view2) {
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
            View childAt = viewGroup.getChildAt(C1131e0.m30913a(viewGroup, i));
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
    private static boolean m30902f(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
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
                            return m30903e(view, view2);
                        }
                    }
                    z = arrayList2.size() == min;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public void m30907a(C1140i c1140i) {
        ArrayList<View> arrayList = new ArrayList<>();
        m30904d(c1140i.f4934f, arrayList);
        int m30905c = m30905c(arrayList);
        if (m30905c < 0 || m30905c >= getChildCount()) {
            addView(c1140i);
        } else {
            addView(c1140i, m30905c);
        }
    }

    /* renamed from: g */
    public void m30901g() {
        if (this.f4916e) {
            C1131e0.m30912b(this.f4915d).mo30932d(this);
            C1131e0.m30912b(this.f4915d).mo30933c(this);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (this.f4916e) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f4915d.setTag(C1158p.ghost_view_holder, null);
            C1131e0.m30912b(this.f4915d).mo30932d(this);
            this.f4916e = false;
        }
    }
}
