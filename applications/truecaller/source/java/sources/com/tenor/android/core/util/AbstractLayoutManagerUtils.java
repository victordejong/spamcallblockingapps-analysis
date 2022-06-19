package com.tenor.android.core.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManager$b;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.tenor.android.core.constant.ItemVisualPosition;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractLayoutManagerUtils.class */
public abstract class AbstractLayoutManagerUtils {
    public static <T extends RecyclerView.AbstractC0329o> int findFirstCompletelyVisibleItemPosition(T t) {
        int i;
        int spanCount = getSpanCount(t);
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int i4 = i3;
            if (i2 < spanCount) {
                int findFirstCompletelyVisibleItemPosition = findFirstCompletelyVisibleItemPosition(t, i2);
                if (i4 != -1) {
                    i = i4;
                    if (i4 <= findFirstCompletelyVisibleItemPosition) {
                        i2++;
                        i3 = i;
                    }
                }
                i = findFirstCompletelyVisibleItemPosition;
                i2++;
                i3 = i;
            } else {
                return i4;
            }
        }
    }

    public static <T extends RecyclerView.AbstractC0329o> int findFirstCompletelyVisibleItemPosition(T t, int i) {
        if (t instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) t;
            int[] iArr = new int[staggeredGridLayoutManager.f1362a];
            for (int i2 = 0; i2 < staggeredGridLayoutManager.f1362a; i2++) {
                StaggeredGridLayoutManager.C0353d c0353d = staggeredGridLayoutManager.f1363b[i2];
                iArr[i2] = StaggeredGridLayoutManager.this.f1369h ? c0353d.m42666i(c0353d.f1412a.size() - 1, -1, true) : c0353d.m42666i(0, c0353d.f1412a.size(), true);
            }
            return iArr[i];
        }
        return ((LinearLayoutManager) t).findFirstCompletelyVisibleItemPosition();
    }

    public static <T extends RecyclerView.AbstractC0329o> int findFirstVisibleItemPosition(T t) {
        int i;
        int spanCount = getSpanCount(t);
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int i4 = i3;
            if (i2 < spanCount) {
                int findFirstVisibleItemPosition = findFirstVisibleItemPosition(t, i2);
                if (i4 != -1) {
                    i = i4;
                    if (i4 <= findFirstVisibleItemPosition) {
                        i2++;
                        i3 = i;
                    }
                }
                i = findFirstVisibleItemPosition;
                i2++;
                i3 = i;
            } else {
                return i4;
            }
        }
    }

    public static <T extends RecyclerView.AbstractC0329o> int findFirstVisibleItemPosition(T t, int i) {
        if (t instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) t;
            int[] iArr = new int[staggeredGridLayoutManager.f1362a];
            for (int i2 = 0; i2 < staggeredGridLayoutManager.f1362a; i2++) {
                StaggeredGridLayoutManager.C0353d c0353d = staggeredGridLayoutManager.f1363b[i2];
                iArr[i2] = StaggeredGridLayoutManager.this.f1369h ? c0353d.m42666i(c0353d.f1412a.size() - 1, -1, false) : c0353d.m42666i(0, c0353d.f1412a.size(), false);
            }
            return iArr[i];
        }
        return ((LinearLayoutManager) t).findFirstVisibleItemPosition();
    }

    public static <T extends RecyclerView.AbstractC0329o> int findLastCompletelyVisibleItemPosition(T t) {
        int i;
        int spanCount = getSpanCount(t) - 1;
        int i2 = -1;
        while (true) {
            int i3 = i2;
            if (spanCount >= 0) {
                int findLastCompletelyVisibleItemPosition = findLastCompletelyVisibleItemPosition(t, spanCount);
                if (i3 != -1) {
                    i = i3;
                    if (i3 >= findLastCompletelyVisibleItemPosition) {
                        spanCount--;
                        i2 = i;
                    }
                }
                i = findLastCompletelyVisibleItemPosition;
                spanCount--;
                i2 = i;
            } else {
                return i3;
            }
        }
    }

    public static <T extends RecyclerView.AbstractC0329o> int findLastCompletelyVisibleItemPosition(T t, int i) {
        if (t instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) t;
            int[] iArr = new int[staggeredGridLayoutManager.f1362a];
            for (int i2 = 0; i2 < staggeredGridLayoutManager.f1362a; i2++) {
                StaggeredGridLayoutManager.C0353d c0353d = staggeredGridLayoutManager.f1363b[i2];
                iArr[i2] = StaggeredGridLayoutManager.this.f1369h ? c0353d.m42666i(0, c0353d.f1412a.size(), true) : c0353d.m42666i(c0353d.f1412a.size() - 1, -1, true);
            }
            return iArr[i];
        }
        return ((LinearLayoutManager) t).findLastCompletelyVisibleItemPosition();
    }

    public static <T extends RecyclerView.AbstractC0329o> int findLastVisibleItemPosition(T t) {
        int i;
        int spanCount = getSpanCount(t) - 1;
        int i2 = -1;
        while (true) {
            int i3 = i2;
            if (spanCount >= 0) {
                int findLastVisibleItemPosition = findLastVisibleItemPosition(t, spanCount);
                if (i3 != -1) {
                    i = i3;
                    if (i3 >= findLastVisibleItemPosition) {
                        spanCount--;
                        i2 = i;
                    }
                }
                i = findLastVisibleItemPosition;
                spanCount--;
                i2 = i;
            } else {
                return i3;
            }
        }
    }

    public static <T extends RecyclerView.AbstractC0329o> int findLastVisibleItemPosition(T t, int i) {
        if (t instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) t;
            int[] iArr = new int[staggeredGridLayoutManager.f1362a];
            for (int i2 = 0; i2 < staggeredGridLayoutManager.f1362a; i2++) {
                StaggeredGridLayoutManager.C0353d c0353d = staggeredGridLayoutManager.f1363b[i2];
                iArr[i2] = StaggeredGridLayoutManager.this.f1369h ? c0353d.m42666i(0, c0353d.f1412a.size(), false) : c0353d.m42666i(c0353d.f1412a.size() - 1, -1, false);
            }
            return iArr[i];
        }
        return ((LinearLayoutManager) t).findLastVisibleItemPosition();
    }

    public static <T extends RecyclerView.AbstractC0329o> int getOrientation(T t) {
        return t instanceof StaggeredGridLayoutManager ? ((StaggeredGridLayoutManager) t).f1366e : ((LinearLayoutManager) t).getOrientation();
    }

    public static <T extends RecyclerView.AbstractC0329o> int getSpanCount(T t) {
        if (t instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) t).f1362a;
        }
        if (!(t instanceof GridLayoutManager)) {
            return 1;
        }
        return ((GridLayoutManager) t).getSpanCount();
    }

    public static <T extends ViewGroup.LayoutParams> int getSpanIndex(T t) {
        int i = -1;
        if (!(t instanceof StaggeredGridLayoutManager.C0352c)) {
            if (!(t instanceof GridLayoutManager$b)) {
                return -1;
            }
            return ((GridLayoutManager$b) t).f1262e;
        }
        StaggeredGridLayoutManager.C0353d c0353d = ((StaggeredGridLayoutManager.C0352c) t).f1410e;
        if (c0353d != null) {
            i = c0353d.f1416e;
        }
        return i;
    }

    public static int[] getVisibleRange(RecyclerView recyclerView) {
        int i;
        int i2;
        boolean isRightToLeft = isRightToLeft(recyclerView);
        int[] iArr = {-1, -1};
        int spanCount = getSpanCount(recyclerView.getLayoutManager());
        for (int i3 = 0; i3 < spanCount; i3++) {
            if (!isRightToLeft) {
                i2 = findFirstVisibleItemPosition(recyclerView.getLayoutManager(), i3);
                i = findLastVisibleItemPosition(recyclerView.getLayoutManager(), i3);
            } else {
                i2 = findLastVisibleItemPosition(recyclerView.getLayoutManager(), i3);
                i = findFirstVisibleItemPosition(recyclerView.getLayoutManager(), i3);
            }
            if (iArr[0] == -1) {
                iArr[0] = i2;
            }
            if (i2 > -1 && i2 < iArr[0]) {
                iArr[0] = i2;
            }
            if (iArr[1] == -1) {
                iArr[1] = i;
            }
            if (i > -1 && i > iArr[1]) {
                iArr[1] = i;
            }
        }
        return iArr;
    }

    @ItemVisualPosition.Value
    public static String getVisualPosition(Context context, View view) {
        return view == null ? "UNKNOWN" : ItemVisualPosition.parse(context, getSpanIndex(view.getLayoutParams()));
    }

    public static boolean isRightToLeft(RecyclerView recyclerView) {
        return AbstractUIUtils.isRightToLeft(recyclerView.getContext()) && getOrientation(recyclerView.getLayoutManager()) == 0;
    }

    public static <T extends RecyclerView.AbstractC0329o> void setReverseLayout(T t, boolean z) {
        if (t instanceof StaggeredGridLayoutManager) {
            ((StaggeredGridLayoutManager) t).setReverseLayout(z);
        } else if (!(t instanceof LinearLayoutManager)) {
        } else {
            ((LinearLayoutManager) t).setReverseLayout(z);
        }
    }
}
