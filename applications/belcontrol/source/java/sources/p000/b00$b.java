package p000;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: b00$b */
/* loaded from: classes-dex2jar.jar:b00$b.class */
public class b00$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f1704a;

    /* renamed from: b */
    public final /* synthetic */ b00 f1705b;

    public b00$b(b00 b00Var, ArrayList arrayList) {
        this.f1705b = b00Var;
        this.f1704a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f1704a.iterator();
        while (it.hasNext()) {
            this.f1705b.R((b00$i) it.next());
        }
        this.f1704a.clear();
        this.f1705b.n.remove(this.f1704a);
    }
}
