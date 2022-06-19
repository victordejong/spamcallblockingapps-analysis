package p1727n3.p1859r.p1860a;

import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
/* renamed from: n3.r.a.j0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/j0.class */
public class RunnableC26933j0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Object f75357a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC26949o0 f75358b;

    /* renamed from: c */
    public final /* synthetic */ View f75359c;

    /* renamed from: d */
    public final /* synthetic */ Fragment f75360d;

    /* renamed from: e */
    public final /* synthetic */ ArrayList f75361e;

    /* renamed from: f */
    public final /* synthetic */ ArrayList f75362f;

    /* renamed from: g */
    public final /* synthetic */ ArrayList f75363g;

    /* renamed from: h */
    public final /* synthetic */ Object f75364h;

    public RunnableC26933j0(Object obj, AbstractC26949o0 abstractC26949o0, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.f75357a = obj;
        this.f75358b = abstractC26949o0;
        this.f75359c = view;
        this.f75360d = fragment;
        this.f75361e = arrayList;
        this.f75362f = arrayList2;
        this.f75363g = arrayList3;
        this.f75364h = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj = this.f75357a;
        if (obj != null) {
            this.f75358b.mo1083o(obj, this.f75359c);
            this.f75362f.addAll(C26937m0.m1108h(this.f75358b, this.f75357a, this.f75360d, this.f75361e, this.f75359c));
        }
        if (this.f75363g != null) {
            if (this.f75364h != null) {
                ArrayList<View> arrayList = new ArrayList<>();
                arrayList.add(this.f75359c);
                this.f75358b.mo1082p(this.f75364h, this.f75363g, arrayList);
            }
            this.f75363g.clear();
            this.f75363g.add(this.f75359c);
        }
    }
}
