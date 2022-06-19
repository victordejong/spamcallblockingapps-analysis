package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.fragment.app.s0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s0.class */
public class RunnableC0476s0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f1940a;

    /* renamed from: b */
    public final /* synthetic */ Map f1941b;

    public RunnableC0476s0(AbstractC0471r0 abstractC0471r0, ArrayList arrayList, Map map) {
        this.f1940a = arrayList;
        this.f1941b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        int size = this.f1940a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f1940a.get(i);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            String m2040k = C3589v.C3598i.m2040k(view);
            if (m2040k != null) {
                Iterator it2 = this.f1941b.entrySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it2.next();
                    if (m2040k.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                C3589v.C3598i.m2029v(view, str);
            }
        }
    }
}
