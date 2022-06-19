package p1727n3.p1859r.p1860a;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import p1727n3.p1788g.C26174a;
/* renamed from: n3.r.a.k0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/k0.class */
public class RunnableC26934k0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Fragment f75371a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f75372b;

    /* renamed from: c */
    public final /* synthetic */ boolean f75373c;

    /* renamed from: d */
    public final /* synthetic */ C26174a f75374d;

    /* renamed from: e */
    public final /* synthetic */ View f75375e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC26949o0 f75376f;

    /* renamed from: g */
    public final /* synthetic */ Rect f75377g;

    public RunnableC26934k0(Fragment fragment, Fragment fragment2, boolean z, C26174a c26174a, View view, AbstractC26949o0 abstractC26949o0, Rect rect) {
        this.f75371a = fragment;
        this.f75372b = fragment2;
        this.f75373c = z;
        this.f75374d = c26174a;
        this.f75375e = view;
        this.f75376f = abstractC26949o0;
        this.f75377g = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        C26937m0.m1113c(this.f75371a, this.f75372b, this.f75373c, this.f75374d, false);
        View view = this.f75375e;
        if (view != null) {
            this.f75376f.m1088j(view, this.f75377g);
        }
    }
}
