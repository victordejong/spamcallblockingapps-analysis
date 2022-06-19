package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.ListView;
/* renamed from: androidx.core.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/g.class */
public final class C0626g {
    /* renamed from: a */
    public static void m20151a(ListView listView, int i) {
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

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
        if (r0 > (r4.getHeight() - r4.getListPaddingBottom())) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006a, code lost:
        if (r0 < r4.getListPaddingTop()) goto L20;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m20150b(android.widget.ListView r4, int r5) {
        /*
            r0 = 0
            r6 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto L12
            r0 = r4
            r1 = r5
            boolean r0 = r0.canScrollList(r1)
            r7 = r0
        L10:
            r0 = r7
            return r0
        L12:
            r0 = r4
            int r0 = r0.getChildCount()
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L10
            r0 = r4
            int r0 = r0.getFirstVisiblePosition()
            r9 = r0
            r0 = r5
            if (r0 <= 0) goto L55
            r0 = r4
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getBottom()
            r5 = r0
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.getCount()
            if (r0 < r1) goto L50
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.getHeight()
            r2 = r4
            int r2 = r2.getListPaddingBottom()
            int r1 = r1 - r2
            if (r0 <= r1) goto L10
        L50:
            r0 = 1
            r7 = r0
            goto L10
        L55:
            r0 = r4
            r1 = 0
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getTop()
            r5 = r0
            r0 = r9
            if (r0 > 0) goto L6d
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.getListPaddingTop()
            if (r0 >= r1) goto L10
        L6d:
            r0 = 1
            r7 = r0
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.C0626g.m20150b(android.widget.ListView, int):boolean");
    }
}
