package com.aotter.net.trek.ads.impression;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.aotter.net.trek.ads.view.TrekMediaView;
import com.aotter.net.trek.model.NativeAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.aotter.net.trek.ads.impression.b */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/b.class */
public class RunnableC1672b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ImpressionTracker f1209a;
    @NonNull

    /* renamed from: b */
    public final ArrayList<View> f1210b = new ArrayList<>();

    public RunnableC1672b(ImpressionTracker impressionTracker) {
        this.f1209a = impressionTracker;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map map;
        Map map2;
        C1675e eVar;
        long j;
        ImpressionInterface impressionInterface;
        Context context;
        NativeAd nativeAd;
        ImpressionInterface impressionInterface2;
        Context context2;
        NativeAd nativeAd2;
        map = this.f1209a.f1205j;
        for (Map.Entry entry : map.entrySet()) {
            View view = (View) entry.getKey();
            Long l = (Long) entry.getValue();
            eVar = this.f1209a.f1200e;
            long longValue = l.longValue();
            j = ImpressionTracker.f1197b;
            if (!eVar.m36537a(longValue, j)) {
                if (view instanceof TrekMediaView) {
                    impressionInterface2 = this.f1209a.f1207l;
                    context2 = this.f1209a.f1198c;
                    nativeAd2 = this.f1209a.f1206k;
                    impressionInterface2.recordImpression(context2, nativeAd2, view);
                } else {
                    impressionInterface = this.f1209a.f1207l;
                    context = this.f1209a.f1198c;
                    nativeAd = this.f1209a.f1206k;
                    impressionInterface.recordImpression(context, nativeAd, null);
                }
                this.f1210b.add(view);
            }
        }
        Iterator<View> it = this.f1210b.iterator();
        while (it.hasNext()) {
            this.f1209a.removeView(it.next());
        }
        this.f1210b.clear();
        map2 = this.f1209a.f1205j;
        if (!map2.isEmpty()) {
            this.f1209a.m36555a();
        }
    }
}
