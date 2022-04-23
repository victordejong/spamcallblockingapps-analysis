package com.aotter.net.trek.ads.impression;

import android.view.View;
import com.aotter.net.trek.util.TrekLog;
/* renamed from: com.aotter.net.trek.ads.impression.f */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/f.class */
public class RunnableC1676f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1673c f1223a;

    public RunnableC1676f(C1673c cVar) {
        this.f1223a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        C1675e eVar;
        View view2;
        int i;
        C1675e eVar2;
        View view3;
        int i2;
        View view4;
        AbstractC1677g gVar;
        View view5;
        AbstractC1677g gVar2;
        View view6;
        this.f1223a.f1220j = false;
        view = this.f1223a.f1216f;
        if (view != null) {
            eVar = this.f1223a.f1217g;
            view2 = this.f1223a.f1216f;
            i = C1673c.f1212d;
            if (eVar.m36536a(this.f1223a.f1213a.get(), view2, i)) {
                gVar = this.f1223a.f1215e;
                if (gVar != null) {
                    gVar2 = this.f1223a.f1215e;
                    view6 = this.f1223a.f1216f;
                    gVar2.onVisibilityChanged(view6);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("mTrackedViews");
                view5 = this.f1223a.f1216f;
                sb.append(view5.toString());
                TrekLog.m36319d(sb.toString());
                return;
            }
            eVar2 = this.f1223a.f1217g;
            view3 = this.f1223a.f1216f;
            i2 = C1673c.f1212d;
            if (!eVar2.m36536a(this.f1223a.f1213a.get(), view3, i2)) {
                C1673c cVar = this.f1223a;
                view4 = cVar.f1216f;
                cVar.m36546a(view4);
            }
        }
    }
}
