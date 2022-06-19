package p000;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.ArrayList;
@SuppressLint({"ViewConstructor"})
/* renamed from: f20 */
/* loaded from: classes-dex2jar.jar:f20.class */
public class f20 extends FrameLayout {

    /* renamed from: a */
    public ViewGroup f6500a;

    /* renamed from: b */
    public boolean f6501b = true;

    public f20(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f6500a = viewGroup;
        viewGroup.setTag(o20.ghost_view_holder, this);
        d30.m2898b(this.f6500a).add(this);
    }

    /* renamed from: b */
    public static f20 m2006b(ViewGroup viewGroup) {
        return (f20) viewGroup.getTag(o20.ghost_view_holder);
    }

    /* renamed from: d */
    public static void m2004d(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            m2004d((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    /* renamed from: e */
    public static boolean m2003e(View view, View view2) {
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
            View childAt = viewGroup.getChildAt(d30.m2899a(viewGroup, i));
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
    public static boolean m2002f(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
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
                            return m2003e(view, view2);
                        }
                    }
                    z = arrayList2.size() == min;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public void m2007a(h20 h20Var) {
        ArrayList<View> arrayList = new ArrayList<>();
        m2004d(h20Var.c, arrayList);
        int m2005c = m2005c(arrayList);
        if (m2005c < 0 || m2005c >= getChildCount()) {
            addView(h20Var);
        } else {
            addView((View) h20Var, m2005c);
        }
    }

    /* renamed from: c */
    public final int m2005c(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i = 0;
        while (i <= childCount) {
            int i2 = (i + childCount) / 2;
            m2004d(getChildAt(i2).c, arrayList2);
            if (m2002f(arrayList, arrayList2)) {
                i = i2 + 1;
            } else {
                childCount = i2 - 1;
            }
            arrayList2.clear();
        }
        return i;
    }

    /* renamed from: g */
    public void m2001g() {
        if (this.f6501b) {
            d30.m2898b(this.f6500a).remove(this);
            d30.m2898b(this.f6500a).add(this);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (this.f6501b) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f6500a.setTag(o20.ghost_view_holder, null);
            d30.m2898b(this.f6500a).remove(this);
            this.f6501b = false;
        }
    }
}
