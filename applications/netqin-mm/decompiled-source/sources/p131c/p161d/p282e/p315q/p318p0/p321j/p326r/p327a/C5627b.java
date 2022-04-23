package p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a;

import android.view.View;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
/* renamed from: c.d.e.q.p0.j.r.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/r/a/b.class */
public class C5627b {
    /* renamed from: a */
    public static void m23385a(View view, int i, int i2) {
        m23384a(view, i, i2, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    /* renamed from: a */
    public static void m23384a(View view, int i, int i2, int i3, int i4) {
        C5562j.m23513a("\tdesired (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
        if (view.getVisibility() == 8) {
            i = 0;
            i2 = 0;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(i, i3), View.MeasureSpec.makeMeasureSpec(i2, i4));
        C5562j.m23513a("\tactual (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    /* renamed from: b */
    public static void m23383b(View view, int i, int i2) {
        m23384a(view, i, i2, Integer.MIN_VALUE, 1073741824);
    }

    /* renamed from: c */
    public static void m23382c(View view, int i, int i2) {
        m23384a(view, i, i2, 1073741824, Integer.MIN_VALUE);
    }
}
