package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.ListView;
/* renamed from: androidx.core.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/g.class */
public final class C0297g {
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
        if (r0 < r4.getListPaddingTop()) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m13409a(android.widget.ListView r4, int r5) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto Le
            r0 = r4
            r1 = r5
            boolean r0 = r0.canScrollList(r1)
            return r0
        Le:
            r0 = r4
            int r0 = r0.getChildCount()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L1e
            r0 = 0
            return r0
        L1e:
            r0 = r4
            int r0 = r0.getFirstVisiblePosition()
            r9 = r0
            r0 = r5
            if (r0 <= 0) goto L51
            r0 = r4
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getBottom()
            r5 = r0
            r0 = r9
            r1 = r6
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.getCount()
            if (r0 < r1) goto L4b
            r0 = r5
            r1 = r4
            int r1 = r1.getHeight()
            r2 = r4
            int r2 = r2.getListPaddingBottom()
            int r1 = r1 - r2
            if (r0 <= r1) goto L4e
        L4b:
            r0 = 1
            r8 = r0
        L4e:
            r0 = r8
            return r0
        L51:
            r0 = r4
            r1 = 0
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getTop()
            r5 = r0
            r0 = r9
            if (r0 > 0) goto L6a
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.getListPaddingTop()
            if (r0 >= r1) goto L6d
        L6a:
            r0 = 1
            r8 = r0
        L6d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.C0297g.m13409a(android.widget.ListView, int):boolean");
    }

    /* renamed from: b */
    public static void m13408b(ListView listView, int i) {
        View childAt;
        if (Build.VERSION.SDK_INT >= 19) {
            listView.scrollListBy(i);
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition == -1 || (childAt = listView.getChildAt(0)) == null) {
            return;
        }
        listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
    }
}
