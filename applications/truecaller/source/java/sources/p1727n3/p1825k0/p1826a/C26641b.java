package p1727n3.p1825k0.p1826a;

import android.graphics.Rect;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import p1727n3.p1807k.p1821i.AbstractC26609n;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.k0.a.b */
/* loaded from: classes-dex2jar.jar:n3/k0/a/b.class */
public class C26641b implements AbstractC26609n {

    /* renamed from: a */
    public final Rect f74572a = new Rect();

    /* renamed from: b */
    public final /* synthetic */ ViewPager f74573b;

    public C26641b(ViewPager viewPager) {
        this.f74573b = viewPager;
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26609n
    /* renamed from: b */
    public C26568d0 mo1532b(View view, C26568d0 c26568d0) {
        C26568d0 m1570k = C26614s.m1570k(view, c26568d0);
        if (m1570k.m1659h()) {
            return m1570k;
        }
        Rect rect = this.f74572a;
        rect.left = m1570k.m1663d();
        rect.top = m1570k.m1661f();
        rect.right = m1570k.m1662e();
        rect.bottom = m1570k.m1664c();
        int childCount = this.f74573b.getChildCount();
        for (int i = 0; i < childCount; i++) {
            C26568d0 m1578c = C26614s.m1578c(this.f74573b.getChildAt(i), m1570k);
            rect.left = Math.min(m1578c.m1663d(), rect.left);
            rect.top = Math.min(m1578c.m1661f(), rect.top);
            rect.right = Math.min(m1578c.m1662e(), rect.right);
            rect.bottom = Math.min(m1578c.m1664c(), rect.bottom);
        }
        return m1570k.m1658i(rect.left, rect.top, rect.right, rect.bottom);
    }
}
