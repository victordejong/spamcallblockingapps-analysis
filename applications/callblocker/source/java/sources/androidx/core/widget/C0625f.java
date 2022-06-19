package androidx.core.widget;

import android.widget.ListView;
/* renamed from: androidx.core.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/f.class */
public class C0625f extends AbstractView$OnTouchListenerC0618a {

    /* renamed from: f */
    private final ListView f2187f;

    public C0625f(ListView listView) {
        super(listView);
        this.f2187f = listView;
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0618a
    /* renamed from: a */
    public void mo20154a(int i, int i2) {
        C0626g.m20151a(this.f2187f, i2);
    }

    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0618a
    /* renamed from: e */
    public boolean mo20153e(int i) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0044, code lost:
        if (r0.getChildAt(r0 - 1).getBottom() > r0.getHeight()) goto L13;
     */
    @Override // androidx.core.widget.AbstractView$OnTouchListenerC0618a
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo20152f(int r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r4
            android.widget.ListView r0 = r0.f2187f
            r7 = r0
            r0 = r7
            int r0 = r0.getCount()
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L18
            r0 = r6
            r9 = r0
        L15:
            r0 = r9
            return r0
        L18:
            r0 = r7
            int r0 = r0.getChildCount()
            r10 = r0
            r0 = r7
            int r0 = r0.getFirstVisiblePosition()
            r11 = r0
            r0 = r5
            if (r0 <= 0) goto L4d
            r0 = r11
            r1 = r10
            int r0 = r0 + r1
            r1 = r8
            if (r0 < r1) goto L47
            r0 = r6
            r9 = r0
            r0 = r7
            r1 = r10
            r2 = 1
            int r1 = r1 - r2
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getBottom()
            r1 = r7
            int r1 = r1.getHeight()
            if (r0 <= r1) goto L15
        L47:
            r0 = 1
            r9 = r0
            goto L15
        L4d:
            r0 = r6
            r9 = r0
            r0 = r5
            if (r0 >= 0) goto L15
            r0 = r11
            if (r0 > 0) goto L47
            r0 = r7
            r1 = 0
            android.view.View r0 = r0.getChildAt(r1)
            int r0 = r0.getTop()
            if (r0 < 0) goto L47
            r0 = r6
            r9 = r0
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.C0625f.mo20152f(int):boolean");
    }
}
