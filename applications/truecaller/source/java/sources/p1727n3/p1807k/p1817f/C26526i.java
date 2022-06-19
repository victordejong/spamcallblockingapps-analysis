package p1727n3.p1807k.p1817f;

import java.util.ArrayList;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1817f.C26527j;
import p1727n3.p1807k.p1820h.AbstractC26552b;
/* renamed from: n3.k.f.i */
/* loaded from: classes-dex2jar.jar:n3/k/f/i.class */
public class C26526i implements AbstractC26552b<C26527j.C26528a> {

    /* renamed from: a */
    public final /* synthetic */ String f74329a;

    public C26526i(String str) {
        this.f74329a = str;
    }

    @Override // p1727n3.p1807k.p1820h.AbstractC26552b
    public void accept(C26527j.C26528a c26528a) {
        C26527j.C26528a c26528a2 = c26528a;
        synchronized (C26527j.f74332c) {
            C26187h<String, ArrayList<AbstractC26552b<C26527j.C26528a>>> c26187h = C26527j.f74333d;
            ArrayList<AbstractC26552b<C26527j.C26528a>> arrayList = c26187h.get(this.f74329a);
            if (arrayList == null) {
                return;
            }
            c26187h.remove(this.f74329a);
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList.get(i).accept(c26528a2);
            }
        }
    }
}
