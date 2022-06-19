package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import p226s.C4251a;
/* renamed from: androidx.fragment.app.n0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n0.class */
public class RunnableC0454n0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Fragment f1871a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f1872b;

    /* renamed from: c */
    public final /* synthetic */ boolean f1873c;

    /* renamed from: d */
    public final /* synthetic */ C4251a f1874d;

    /* renamed from: e */
    public final /* synthetic */ View f1875e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC0471r0 f1876f;

    /* renamed from: g */
    public final /* synthetic */ Rect f1877g;

    public RunnableC0454n0(Fragment fragment, Fragment fragment2, boolean z, C4251a c4251a, View view, AbstractC0471r0 abstractC0471r0, Rect rect) {
        this.f1871a = fragment;
        this.f1872b = fragment2;
        this.f1873c = z;
        this.f1874d = c4251a;
        this.f1875e = view;
        this.f1876f = abstractC0471r0;
        this.f1877g = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0459p0.m8087c(this.f1871a, this.f1872b, this.f1873c, this.f1874d, false);
        View view = this.f1875e;
        if (view != null) {
            this.f1876f.m8067j(view, this.f1877g);
        }
    }
}
