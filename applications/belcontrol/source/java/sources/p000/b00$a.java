package p000;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: b00$a */
/* loaded from: classes-dex2jar.jar:b00$a.class */
public class b00$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f1702a;

    /* renamed from: b */
    public final /* synthetic */ b00 f1703b;

    public b00$a(b00 b00Var, ArrayList arrayList) {
        this.f1703b = b00Var;
        this.f1702a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f1702a.iterator();
        while (it.hasNext()) {
            b00$j b00_j = (b00$j) it.next();
            this.f1703b.S(b00_j.f1736a, b00_j.f1737b, b00_j.f1738c, b00_j.f1739d, b00_j.f1740e);
        }
        this.f1702a.clear();
        this.f1703b.m.remove(this.f1702a);
    }
}
