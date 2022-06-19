package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.fragment.app.t0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/t0.class */
public class RunnableC0478t0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f1942a;

    /* renamed from: b */
    public final /* synthetic */ Map f1943b;

    public RunnableC0478t0(AbstractC0471r0 abstractC0471r0, ArrayList arrayList, Map map) {
        this.f1942a = arrayList;
        this.f1943b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        int size = this.f1942a.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.f1942a.get(i);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3598i.m2029v(view, (String) this.f1943b.get(C3589v.C3598i.m2040k(view)));
        }
    }
}
