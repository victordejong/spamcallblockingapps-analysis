package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.m0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/m0.class */
public class RunnableC0452m0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Object f1862a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC0471r0 f1863b;

    /* renamed from: c */
    public final /* synthetic */ View f1864c;

    /* renamed from: d */
    public final /* synthetic */ Fragment f1865d;

    /* renamed from: e */
    public final /* synthetic */ ArrayList f1866e;

    /* renamed from: f */
    public final /* synthetic */ ArrayList f1867f;

    /* renamed from: g */
    public final /* synthetic */ ArrayList f1868g;

    /* renamed from: h */
    public final /* synthetic */ Object f1869h;

    public RunnableC0452m0(Object obj, AbstractC0471r0 abstractC0471r0, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.f1862a = obj;
        this.f1863b = abstractC0471r0;
        this.f1864c = view;
        this.f1865d = fragment;
        this.f1866e = arrayList;
        this.f1867f = arrayList2;
        this.f1868g = arrayList3;
        this.f1869h = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj = this.f1862a;
        if (obj != null) {
            this.f1863b.mo2292o(obj, this.f1864c);
            this.f1867f.addAll(C0459p0.m8082h(this.f1863b, this.f1862a, this.f1865d, this.f1866e, this.f1864c));
        }
        if (this.f1868g != null) {
            if (this.f1869h != null) {
                ArrayList<View> arrayList = new ArrayList<>();
                arrayList.add(this.f1864c);
                this.f1863b.mo2291p(this.f1869h, this.f1868g, arrayList);
            }
            this.f1868g.clear();
            this.f1868g.add(this.f1864c);
        }
    }
}
