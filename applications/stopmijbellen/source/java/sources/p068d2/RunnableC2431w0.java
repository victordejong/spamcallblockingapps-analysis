package p068d2;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: d2.w0 */
/* loaded from: classes-dex2jar.jar:d2/w0.class */
public class RunnableC2431w0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f8606a;

    /* renamed from: b */
    public final /* synthetic */ C2267f4 f8607b;

    /* renamed from: c */
    public final /* synthetic */ C2417u0 f8608c;

    public RunnableC2431w0(C2417u0 c2417u0, String str, C2267f4 c2267f4) {
        this.f8608c = c2417u0;
        this.f8606a = str;
        this.f8607b = c2267f4;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2417u0 c2417u0 = this.f8608c;
        String str = this.f8606a;
        C2267f4 c2267f4 = this.f8607b;
        synchronized (c2417u0.f8568d) {
            ArrayList<AbstractC2458y0> arrayList = c2417u0.f8568d.get(str);
            if (arrayList == null) {
                return;
            }
            ArrayList arrayList2 = new ArrayList(arrayList);
            C2410t0 c2410t0 = new C2410t0(c2267f4);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                try {
                    ((AbstractC2458y0) it2.next()).mo3526a(c2410t0);
                } catch (RuntimeException e) {
                    C2408t.m3591d().m3718p().m3686e(0, 0, e.toString(), true);
                    e.printStackTrace();
                    return;
                }
            }
        }
    }
}
