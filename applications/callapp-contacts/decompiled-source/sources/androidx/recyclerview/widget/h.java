package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
public class h extends o {

    /* renamed from: b  reason: collision with root package name */
    private j f5478b;

    /* renamed from: c  reason: collision with root package name */
    private j f5479c;

    private static int a(View view, j jVar) {
        return (jVar.a(view) + (jVar.e(view) / 2)) - (jVar.b() + (jVar.e() / 2));
    }

    private int a(RecyclerView.i iVar, j jVar, int i, int i2) {
        int[] b2 = b(i, i2);
        float b3 = b(iVar, jVar);
        if (b3 <= BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return Math.round((Math.abs(b2[0]) > Math.abs(b2[1]) ? b2[0] : b2[1]) / b3);
    }

    private static View a(RecyclerView.i iVar, j jVar) {
        int childCount = iVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int b2 = jVar.b();
        int e = jVar.e() / 2;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = iVar.getChildAt(i2);
            int abs = Math.abs((jVar.a(childAt) + (jVar.e(childAt) / 2)) - (b2 + e));
            i = i;
            if (abs < i) {
                view = childAt;
                i = abs;
            }
        }
        return view;
    }

    private static float b(RecyclerView.i iVar, j jVar) {
        int childCount = iVar.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        View view2 = null;
        int i = Integer.MAX_VALUE;
        int i2 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = iVar.getChildAt(i3);
            int c2 = RecyclerView.i.c(childAt);
            view = view;
            view2 = view2;
            i = i;
            i2 = i2;
            if (c2 != -1) {
                int i4 = i;
                if (c2 < i) {
                    view = childAt;
                    i4 = c2;
                }
                view = view;
                view2 = view2;
                i = i4;
                i2 = i2;
                if (c2 > i2) {
                    i2 = c2;
                    i = i4;
                    view2 = childAt;
                    view = view;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int max = Math.max(jVar.b(view), jVar.b(view2)) - Math.min(jVar.a(view), jVar.a(view2));
        if (max == 0) {
            return 1.0f;
        }
        return (max * 1.0f) / ((i2 - i) + 1);
    }

    private j c(RecyclerView.i iVar) {
        j jVar = this.f5478b;
        if (jVar == null || jVar.f5481a != iVar) {
            this.f5478b = j.b(iVar);
        }
        return this.f5478b;
    }

    private j d(RecyclerView.i iVar) {
        j jVar = this.f5479c;
        if (jVar == null || jVar.f5481a != iVar) {
            this.f5479c = j.a(iVar);
        }
        return this.f5479c;
    }

    @Override // androidx.recyclerview.widget.o
    public int a(RecyclerView.i iVar, int i, int i2) {
        int itemCount;
        View a2;
        int c2;
        int i3;
        PointF c3;
        int i4;
        if (!(iVar instanceof RecyclerView.r.b) || (itemCount = iVar.getItemCount()) == 0 || (a2 = a(iVar)) == null || (c2 = RecyclerView.i.c(a2)) == -1 || (c3 = ((RecyclerView.r.b) iVar).c((i3 = itemCount - 1))) == null) {
            return -1;
        }
        int i5 = 0;
        if (iVar.e()) {
            int a3 = a(iVar, d(iVar), i, 0);
            i4 = a3;
            if (c3.x < BitmapDescriptorFactory.HUE_RED) {
                i4 = -a3;
            }
        } else {
            i4 = 0;
        }
        if (iVar.f()) {
            int a4 = a(iVar, c(iVar), 0, i2);
            i4 = a4;
            if (c3.y < BitmapDescriptorFactory.HUE_RED) {
                i4 = -a4;
            }
        } else {
            i4 = 0;
        }
        if (iVar.f()) {
        }
        if (i4 == 0) {
            return -1;
        }
        i5 = c2 + i4;
        if (i5 < 0) {
        }
        if (i5 >= itemCount) {
            i5 = i3;
        }
        return i5;
    }

    @Override // androidx.recyclerview.widget.o
    public View a(RecyclerView.i iVar) {
        if (iVar.f()) {
            return a(iVar, c(iVar));
        }
        if (iVar.e()) {
            return a(iVar, d(iVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.o
    public int[] a(RecyclerView.i iVar, View view) {
        int[] iArr = new int[2];
        if (iVar.e()) {
            iArr[0] = a(view, d(iVar));
        } else {
            iArr[0] = 0;
        }
        if (iVar.f()) {
            iArr[1] = a(view, c(iVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
