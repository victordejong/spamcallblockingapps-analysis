package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
public class C2691h extends AbstractC2703o {

    /* renamed from: b */
    private AbstractC2694j f10294b;

    /* renamed from: c */
    private AbstractC2694j f10295c;

    /* renamed from: a */
    private static int m40084a(View view, AbstractC2694j abstractC2694j) {
        return (abstractC2694j.mo40071a(view) + (abstractC2694j.mo40063e(view) / 2)) - (abstractC2694j.mo40070b() + (abstractC2694j.mo40064e() / 2));
    }

    /* renamed from: a */
    private int m40082a(RecyclerView.AbstractC2637i abstractC2637i, AbstractC2694j abstractC2694j, int i, int i2) {
        int[] b = mo29890b(i, i2);
        float m40081b = m40081b(abstractC2637i, abstractC2694j);
        if (m40081b <= BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return Math.round((Math.abs(b[0]) > Math.abs(b[1]) ? b[0] : b[1]) / m40081b);
    }

    /* renamed from: a */
    private static View m40083a(RecyclerView.AbstractC2637i abstractC2637i, AbstractC2694j abstractC2694j) {
        int childCount = abstractC2637i.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int mo40070b = abstractC2694j.mo40070b();
        int mo40064e = abstractC2694j.mo40064e() / 2;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = abstractC2637i.getChildAt(i2);
            int abs = Math.abs((abstractC2694j.mo40071a(childAt) + (abstractC2694j.mo40063e(childAt) / 2)) - (mo40070b + mo40064e));
            int i3 = i;
            if (abs < i) {
                view = childAt;
                i3 = abs;
            }
            i2++;
            i = i3;
        }
        return view;
    }

    /* renamed from: b */
    private static float m40081b(RecyclerView.AbstractC2637i abstractC2637i, AbstractC2694j abstractC2694j) {
        int i;
        int childCount = abstractC2637i.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        int i2 = 0;
        View view = null;
        View view2 = null;
        int i3 = Integer.MAX_VALUE;
        int i4 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        while (true) {
            i = i4;
            if (i2 >= childCount) {
                break;
            }
            View childAt = abstractC2637i.getChildAt(i2);
            int m40366c = RecyclerView.AbstractC2637i.m40366c(childAt);
            View view3 = view;
            View view4 = view2;
            int i5 = i3;
            int i6 = i;
            if (m40366c != -1) {
                int i7 = i3;
                if (m40366c < i3) {
                    view = childAt;
                    i7 = m40366c;
                }
                view3 = view;
                view4 = view2;
                i5 = i7;
                i6 = i;
                if (m40366c > i) {
                    i6 = m40366c;
                    i5 = i7;
                    view4 = childAt;
                    view3 = view;
                }
            }
            i2++;
            view = view3;
            view2 = view4;
            i3 = i5;
            i4 = i6;
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int max = Math.max(abstractC2694j.mo40069b(view), abstractC2694j.mo40069b(view2)) - Math.min(abstractC2694j.mo40071a(view), abstractC2694j.mo40071a(view2));
        if (max != 0) {
            return (max * 1.0f) / ((i - i3) + 1);
        }
        return 1.0f;
    }

    /* renamed from: c */
    private AbstractC2694j m40080c(RecyclerView.AbstractC2637i abstractC2637i) {
        AbstractC2694j abstractC2694j = this.f10294b;
        if (abstractC2694j == null || abstractC2694j.f10297a != abstractC2637i) {
            this.f10294b = AbstractC2694j.m40073b(abstractC2637i);
        }
        return this.f10294b;
    }

    /* renamed from: d */
    private AbstractC2694j m40079d(RecyclerView.AbstractC2637i abstractC2637i) {
        AbstractC2694j abstractC2694j = this.f10295c;
        if (abstractC2694j == null || abstractC2694j.f10297a != abstractC2637i) {
            this.f10295c = AbstractC2694j.m40075a(abstractC2637i);
        }
        return this.f10295c;
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public int mo31235a(RecyclerView.AbstractC2637i abstractC2637i, int i, int i2) {
        int itemCount;
        View mo29893a;
        int m40366c;
        int i3;
        PointF mo40248c;
        int i4;
        int i5;
        if (!(abstractC2637i instanceof RecyclerView.AbstractC2651r.AbstractC2653b) || (itemCount = abstractC2637i.getItemCount()) == 0 || (mo29893a = mo29893a(abstractC2637i)) == null || (m40366c = RecyclerView.AbstractC2637i.m40366c(mo29893a)) == -1 || (mo40248c = ((RecyclerView.AbstractC2651r.AbstractC2653b) abstractC2637i).mo40248c((i3 = itemCount - 1))) == null) {
            return -1;
        }
        if (abstractC2637i.mo31644e()) {
            int m40082a = m40082a(abstractC2637i, m40079d(abstractC2637i), i, 0);
            i4 = m40082a;
            if (mo40248c.x < BitmapDescriptorFactory.HUE_RED) {
                i4 = -m40082a;
            }
        } else {
            i4 = 0;
        }
        if (abstractC2637i.mo31643f()) {
            int m40082a2 = m40082a(abstractC2637i, m40080c(abstractC2637i), 0, i2);
            i5 = m40082a2;
            if (mo40248c.y < BitmapDescriptorFactory.HUE_RED) {
                i5 = -m40082a2;
            }
        } else {
            i5 = 0;
        }
        if (abstractC2637i.mo31643f()) {
            i4 = i5;
        }
        if (i4 == 0) {
            return -1;
        }
        int i6 = m40366c + i4;
        if (i6 < 0) {
            i6 = 0;
        }
        if (i6 >= itemCount) {
            i6 = i3;
        }
        return i6;
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public View mo29893a(RecyclerView.AbstractC2637i abstractC2637i) {
        if (abstractC2637i.mo31643f()) {
            return m40083a(abstractC2637i, m40080c(abstractC2637i));
        }
        if (!abstractC2637i.mo31644e()) {
            return null;
        }
        return m40083a(abstractC2637i, m40079d(abstractC2637i));
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public int[] mo29892a(RecyclerView.AbstractC2637i abstractC2637i, View view) {
        int[] iArr = new int[2];
        if (abstractC2637i.mo31644e()) {
            iArr[0] = m40084a(view, m40079d(abstractC2637i));
        } else {
            iArr[0] = 0;
        }
        if (abstractC2637i.mo31643f()) {
            iArr[1] = m40084a(view, m40080c(abstractC2637i));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
