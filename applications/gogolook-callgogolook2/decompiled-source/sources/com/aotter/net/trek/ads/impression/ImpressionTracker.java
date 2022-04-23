package com.aotter.net.trek.ads.impression;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.ads.TKAdN;
import com.aotter.net.trek.model.NativeAd;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/ImpressionTracker.class */
public class ImpressionTracker {

    /* renamed from: a */
    public static final int f1196a = 250;

    /* renamed from: b */
    public static long f1197b = 1000;
    @NonNull

    /* renamed from: c */
    public Context f1198c;
    @NonNull

    /* renamed from: d */
    public View f1199d;
    @NonNull

    /* renamed from: e */
    public final C1675e f1200e;
    @NonNull

    /* renamed from: f */
    public final C1673c f1201f;
    @Nullable

    /* renamed from: g */
    public AbstractC1677g f1202g;
    @NonNull

    /* renamed from: h */
    public final Handler f1203h;
    @NonNull

    /* renamed from: i */
    public final RunnableC1672b f1204i;
    @NonNull

    /* renamed from: j */
    public final Map<View, Long> f1205j;
    @NonNull

    /* renamed from: k */
    public final NativeAd f1206k;
    @NonNull

    /* renamed from: l */
    public final ImpressionInterface f1207l;

    public ImpressionTracker(@NonNull Activity activity, @NonNull View view, @NonNull NativeAd nativeAd, @NonNull TKAdN tKAdN) {
        this(activity, view, new WeakHashMap(), new C1675e(), new C1673c(activity, view), new Handler(Looper.getMainLooper()), nativeAd, tKAdN);
    }

    public ImpressionTracker(@NonNull Activity activity, @NonNull View view, @NonNull WeakHashMap<View, Long> weakHashMap, @NonNull C1675e eVar, @NonNull C1673c cVar, @NonNull Handler handler, @NonNull NativeAd nativeAd, @NonNull TKAdN tKAdN) {
        this.f1206k = nativeAd;
        this.f1198c = activity;
        if (this.f1206k.getImpSetting() != null) {
            if (!(this.f1206k.getImpSetting().getImpRefreshMillis() == null || this.f1206k.getImpSetting().getImpRefreshMillis().longValue() == 0)) {
                f1197b = this.f1206k.getImpSetting().getImpRefreshMillis().longValue();
            }
            if (this.f1206k.getImpSetting().getImpDetectPercent() != 0.0d) {
                cVar.setDetectPercent(this.f1206k.getImpSetting().getImpDetectPercent());
            }
        }
        this.f1199d = view;
        this.f1205j = weakHashMap;
        this.f1201f = cVar;
        this.f1200e = eVar;
        this.f1207l = tKAdN;
        this.f1202g = new C1671a(this);
        this.f1201f.m36543a(this.f1202g);
        this.f1203h = handler;
        this.f1204i = new RunnableC1672b(this);
    }

    /* renamed from: a */
    public void m36555a() {
        if (!this.f1203h.hasMessages(0)) {
            this.f1203h.postDelayed(this.f1204i, 250L);
        }
    }

    /* renamed from: b */
    public AbstractC1677g m36553b() {
        return this.f1202g;
    }

    public void clear() {
        this.f1199d = null;
        this.f1201f.m36542b();
        this.f1203h.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f1201f.m36540c();
        this.f1202g = null;
    }

    public void removeView(View view) {
        this.f1199d = null;
        this.f1205j.remove(view);
        this.f1201f.m36546a(view);
        TKAdN.clear(view);
    }
}
