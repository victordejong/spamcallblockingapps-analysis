package p1727n3.p1734b.p1741e;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1807k.p1821i.AbstractC26560a0;
import p1727n3.p1807k.p1821i.C26563b0;
import p1727n3.p1807k.p1821i.C26625z;
/* renamed from: n3.b.e.g */
/* loaded from: classes-dex2jar.jar:n3/b/e/g.class */
public class C25460g {

    /* renamed from: c */
    public Interpolator f71157c;

    /* renamed from: d */
    public AbstractC26560a0 f71158d;

    /* renamed from: e */
    public boolean f71159e;

    /* renamed from: b */
    public long f71156b = -1;

    /* renamed from: f */
    public final C26563b0 f71160f = new a(this);

    /* renamed from: a */
    public final ArrayList<C26625z> f71155a = new ArrayList<>();

    /* renamed from: a */
    public void m3494a() {
        if (!this.f71159e) {
            return;
        }
        Iterator<C26625z> it = this.f71155a.iterator();
        while (it.hasNext()) {
            it.next().m1550b();
        }
        this.f71159e = false;
    }

    /* renamed from: b */
    public void m3493b() {
        View view;
        if (this.f71159e) {
            return;
        }
        Iterator<C26625z> it = this.f71155a.iterator();
        while (it.hasNext()) {
            C26625z next = it.next();
            long j = this.f71156b;
            if (j >= 0) {
                next.m1549c(j);
            }
            Interpolator interpolator = this.f71157c;
            if (interpolator != null && (view = next.f74523a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f71158d != null) {
                next.m1548d(this.f71160f);
            }
            View view2 = next.f74523a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f71159e = true;
    }
}
