package com.p051a.p052a.p053a.p054a.p059d;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p023g.C0552u;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* renamed from: com.a.a.a.a.d.a */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/d/a.class */
public class C1155a {
    /* renamed from: a */
    public static int m3959a(int i) {
        switch (i) {
            case -1:
                return -1;
            case 0:
            case 2:
            case 4:
                return 0;
            case 1:
            case 3:
            case 5:
                return 1;
            default:
                throw new IllegalArgumentException("Unknown layout type (= " + i + ")");
        }
    }

    /* renamed from: a */
    private static int m3956a(LinearLayoutManager linearLayoutManager) {
        View m3955a = m3955a(linearLayoutManager, 0, linearLayoutManager.getChildCount(), false, true);
        return m3955a == null ? -1 : linearLayoutManager.getPosition(m3955a);
    }

    /* renamed from: a */
    public static int m3954a(RecyclerView.AbstractC0956i abstractC0956i) {
        if (abstractC0956i instanceof GridLayoutManager) {
            return ((GridLayoutManager) abstractC0956i).m5000b() == 0 ? 2 : 3;
        } else if (abstractC0956i instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) abstractC0956i).m5000b() == 0 ? 0 : 1;
        } else if (!(abstractC0956i instanceof StaggeredGridLayoutManager)) {
            return -1;
        } else {
            return ((StaggeredGridLayoutManager) abstractC0956i).m4778k() == 0 ? 4 : 5;
        }
    }

    /* renamed from: a */
    public static int m3951a(RecyclerView.AbstractC0977w abstractC0977w) {
        View m3944b = m3944b(abstractC0977w);
        if (m3944b == null) {
            return -1;
        }
        ViewGroup.LayoutParams layoutParams = m3944b.getLayoutParams();
        if (!(layoutParams instanceof StaggeredGridLayoutManager.C0982b)) {
            return layoutParams instanceof GridLayoutManager.C0932b ? ((GridLayoutManager.C0932b) layoutParams).m5029b() : layoutParams instanceof RecyclerView.C0961j ? 1 : -1;
        } else if (!((StaggeredGridLayoutManager.C0982b) layoutParams).m4743a()) {
            return 1;
        } else {
            return m3940d((RecyclerView) m3944b.getParent());
        }
    }

    /* renamed from: a */
    public static int m3950a(RecyclerView recyclerView) {
        return m3954a(recyclerView.getLayoutManager());
    }

    /* renamed from: a */
    public static int m3948a(RecyclerView recyclerView, boolean z) {
        RecyclerView.AbstractC0956i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return z ? m3956a((LinearLayoutManager) layoutManager) : ((LinearLayoutManager) layoutManager).m4977g();
        }
        return -1;
    }

    /* renamed from: a */
    public static Rect m3958a(View view, Rect rect) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            rect.left = marginLayoutParams.leftMargin;
            rect.right = marginLayoutParams.rightMargin;
            rect.top = marginLayoutParams.topMargin;
            rect.bottom = marginLayoutParams.bottomMargin;
        } else {
            rect.bottom = 0;
            rect.top = 0;
            rect.right = 0;
            rect.left = 0;
        }
        return rect;
    }

    /* renamed from: a */
    public static Rect m3952a(RecyclerView.AbstractC0956i abstractC0956i, View view, Rect rect) {
        rect.left = abstractC0956i.getLeftDecorationWidth(view);
        rect.right = abstractC0956i.getRightDecorationWidth(view);
        rect.top = abstractC0956i.getTopDecorationHeight(view);
        rect.bottom = abstractC0956i.getBottomDecorationHeight(view);
        return rect;
    }

    /* renamed from: a */
    private static View m3957a(ViewGroup viewGroup, float f, float f2) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (f >= childAt.getLeft() && f <= childAt.getRight() && f2 >= childAt.getTop() && f2 <= childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static View m3955a(LinearLayoutManager linearLayoutManager, int i, int i2, boolean z, boolean z2) {
        int i3 = 1;
        boolean z3 = linearLayoutManager.m5000b() == 1;
        int height = z3 ? linearLayoutManager.getHeight() : linearLayoutManager.getWidth();
        if (i2 <= i) {
            i3 = -1;
        }
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View childAt = linearLayoutManager.getChildAt(i);
                int top = z3 ? childAt.getTop() : childAt.getLeft();
                int bottom = z3 ? childAt.getBottom() : childAt.getRight();
                View view3 = view2;
                if (top < height) {
                    view3 = view2;
                    if (bottom <= 0) {
                        continue;
                    } else if (!z) {
                        return childAt;
                    } else {
                        if (top >= 0 && bottom <= height) {
                            return childAt;
                        }
                        view3 = view2;
                        if (z2) {
                            view3 = view2;
                            if (view2 == null) {
                                view3 = childAt;
                            }
                        }
                    }
                }
                i += i3;
                view = view3;
            } else {
                return view2;
            }
        }
    }

    /* renamed from: a */
    public static View m3953a(RecyclerView.AbstractC0956i abstractC0956i, int i) {
        return i != -1 ? abstractC0956i.findViewByPosition(i) : null;
    }

    /* renamed from: a */
    public static RecyclerView.AbstractC0977w m3949a(RecyclerView recyclerView, float f, float f2) {
        View m3957a = m3957a((ViewGroup) recyclerView, f, f2);
        return m3957a != null ? recyclerView.getChildViewHolder(m3957a) : null;
    }

    /* renamed from: b */
    private static int m3946b(LinearLayoutManager linearLayoutManager) {
        int i = -1;
        View m3955a = m3955a(linearLayoutManager, linearLayoutManager.getChildCount() - 1, -1, false, true);
        if (m3955a != null) {
            i = linearLayoutManager.getPosition(m3955a);
        }
        return i;
    }

    /* renamed from: b */
    public static int m3945b(RecyclerView.AbstractC0956i abstractC0956i) {
        if (abstractC0956i instanceof GridLayoutManager) {
            return ((GridLayoutManager) abstractC0956i).m5000b();
        }
        if (abstractC0956i instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) abstractC0956i).m5000b();
        }
        if (!(abstractC0956i instanceof StaggeredGridLayoutManager)) {
            return -1;
        }
        return ((StaggeredGridLayoutManager) abstractC0956i).m4778k();
    }

    /* renamed from: b */
    public static int m3943b(RecyclerView recyclerView) {
        RecyclerView.AbstractC0956i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).m4975h();
        }
        return -1;
    }

    /* renamed from: b */
    public static int m3942b(RecyclerView recyclerView, boolean z) {
        RecyclerView.AbstractC0956i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return z ? m3946b((LinearLayoutManager) layoutManager) : ((LinearLayoutManager) layoutManager).m4973i();
        }
        return -1;
    }

    /* renamed from: b */
    private static View m3944b(RecyclerView.AbstractC0977w abstractC0977w) {
        if (abstractC0977w == null) {
            return null;
        }
        View view = abstractC0977w.itemView;
        if (C0552u.m6295A(view)) {
            return view;
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m3947b(int i) {
        boolean z = true;
        if (i != 1) {
            z = i == 0;
        }
        return z;
    }

    /* renamed from: c */
    public static int m3941c(RecyclerView recyclerView) {
        RecyclerView.AbstractC0956i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).m4972j();
        }
        return -1;
    }

    /* renamed from: d */
    public static int m3940d(RecyclerView recyclerView) {
        RecyclerView.AbstractC0956i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).m5047a();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return 1;
        }
        return ((StaggeredGridLayoutManager) layoutManager).m4798c();
    }

    /* renamed from: e */
    public static int m3939e(RecyclerView recyclerView) {
        return m3945b(recyclerView.getLayoutManager());
    }
}
