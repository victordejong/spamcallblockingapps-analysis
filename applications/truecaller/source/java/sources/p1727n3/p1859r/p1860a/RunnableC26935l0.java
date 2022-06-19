package p1727n3.p1859r.p1860a;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import p1727n3.p1788g.C26174a;
import p1727n3.p1859r.p1860a.C26937m0;
/* renamed from: n3.r.a.l0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/l0.class */
public class RunnableC26935l0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC26949o0 f75380a;

    /* renamed from: b */
    public final /* synthetic */ C26174a f75381b;

    /* renamed from: c */
    public final /* synthetic */ Object f75382c;

    /* renamed from: d */
    public final /* synthetic */ C26937m0.C26939b f75383d;

    /* renamed from: e */
    public final /* synthetic */ ArrayList f75384e;

    /* renamed from: f */
    public final /* synthetic */ View f75385f;

    /* renamed from: g */
    public final /* synthetic */ Fragment f75386g;

    /* renamed from: h */
    public final /* synthetic */ Fragment f75387h;

    /* renamed from: i */
    public final /* synthetic */ boolean f75388i;

    /* renamed from: j */
    public final /* synthetic */ ArrayList f75389j;

    /* renamed from: k */
    public final /* synthetic */ Object f75390k;

    /* renamed from: l */
    public final /* synthetic */ Rect f75391l;

    public RunnableC26935l0(AbstractC26949o0 abstractC26949o0, C26174a c26174a, Object obj, C26937m0.C26939b c26939b, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.f75380a = abstractC26949o0;
        this.f75381b = c26174a;
        this.f75382c = obj;
        this.f75383d = c26939b;
        this.f75384e = arrayList;
        this.f75385f = view;
        this.f75386g = fragment;
        this.f75387h = fragment2;
        this.f75388i = z;
        this.f75389j = arrayList2;
        this.f75390k = obj2;
        this.f75391l = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        C26174a<String, View> m1111e = C26937m0.m1111e(this.f75380a, this.f75381b, this.f75382c, this.f75383d);
        if (m1111e != null) {
            this.f75384e.addAll(m1111e.values());
            this.f75384e.add(this.f75385f);
        }
        C26937m0.m1113c(this.f75386g, this.f75387h, this.f75388i, m1111e, false);
        Object obj = this.f75382c;
        if (obj != null) {
            this.f75380a.mo1074x(obj, this.f75389j, this.f75384e);
            View m1105k = C26937m0.m1105k(m1111e, this.f75383d, this.f75390k, this.f75388i);
            if (m1105k == null) {
                return;
            }
            this.f75380a.m1088j(m1105k, this.f75391l);
        }
    }
}
