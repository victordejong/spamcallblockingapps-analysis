package p131c.p396i.p397a;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import com.library.p518ad.data.bean.PlaceConfig;
import com.library.p518ad.data.bean.RequestConfig;
import com.library.p518ad.strategy.request.admob.AdmobEventReceiver;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p396i.p397a.p398e.C6507c;
import p131c.p396i.p397a.p398e.C6520j;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p406i.C6557b;
import p131c.p396i.p397a.p406i.C6558c;
import p131c.p396i.p397a.p406i.p407d.AbstractC6560b;
import p131c.p396i.p397a.p406i.p408e.p409a.C6576a;
import p131c.p396i.p397a.p417j.C6617d;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/b.class */
public class C6490b {

    /* renamed from: i */
    public static boolean f20209i = false;

    /* renamed from: j */
    public static int f20210j;

    /* renamed from: k */
    public static String f20211k;

    /* renamed from: l */
    public static AbstractC6495e f20212l;

    /* renamed from: m */
    public static int f20213m;

    /* renamed from: a */
    public final String f20214a;

    /* renamed from: b */
    public AbstractC6515g f20215b;

    /* renamed from: c */
    public BaseAdResult.AbstractC8514a f20216c;

    /* renamed from: d */
    public AbstractC6518i f20217d;

    /* renamed from: e */
    public AbstractC6508d f20218e;

    /* renamed from: f */
    public BroadcastReceiver f20219f;

    /* renamed from: g */
    public AbstractC6515g f20220g = new C6492b();

    /* renamed from: h */
    public View.OnAttachStateChangeListener f20221h = new View$OnAttachStateChangeListenerC6493c();

    /* renamed from: c.i.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/b$a.class */
    public static final class C6491a extends C6494d {
        @Override // p131c.p396i.p397a.C6490b.C6494d, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            super.onActivityCreated(activity, bundle);
            String str = "" + activity;
            String str2 = "" + activity.getClass().getName();
            if (activity.getClass().getName().equals(C6617d.m20346d(C6489a.m20718b()))) {
                C6549b.m20532a(new C6550c(null, 100, String.valueOf(C6490b.f20210j)));
            }
            C6490b.m20691h();
        }

        @Override // p131c.p396i.p397a.C6490b.C6494d, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            super.onActivityDestroyed(activity);
            C6490b.m20690i();
            if (C6490b.f20213m <= 0) {
                C6549b.m20533a();
            }
        }

        @Override // p131c.p396i.p397a.C6490b.C6494d, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            String unused = C6490b.f20211k = activity.toString();
            String unused2 = C6490b.f20211k;
        }
    }

    /* renamed from: c.i.a.b$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/b$b.class */
    public class C6492b extends AbstractC6515g {
        public C6492b() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: a */
        public void mo3232a(AdInfo adInfo, int i) {
            adInfo.getAdSource();
            if (C6490b.this.f20215b != null) {
                C6490b.this.f20215b.mo3232a(adInfo, i);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: b */
        public void mo3231b(AdInfo adInfo, int i) {
            if (C6490b.this.f20215b != null) {
                C6490b.this.f20215b.mo3231b(adInfo, i);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: c */
        public void mo3294c(AdInfo adInfo, int i) {
            if (C6490b.this.f20215b != null) {
                C6490b.this.f20215b.mo3294c(adInfo, i);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: d */
        public void mo3230d(AdInfo adInfo, int i) {
            if (C6490b.this.f20215b != null) {
                C6490b.this.f20215b.mo3230d(adInfo, i);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: e */
        public void mo20455e(AdInfo adInfo, int i) {
            if (C6490b.this.f20215b != null) {
                C6490b.this.f20215b.mo20455e(adInfo, i);
            }
        }
    }

    /* renamed from: c.i.a.b$c */
    /* loaded from: classes2-dex2jar.jar:c/i/a/b$c.class */
    public class View$OnAttachStateChangeListenerC6493c implements View.OnAttachStateChangeListener {
        public View$OnAttachStateChangeListenerC6493c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            C6490b.this.m20716a();
            view.removeOnAttachStateChangeListener(C6490b.this.f20221h);
        }
    }

    /* renamed from: c.i.a.b$d */
    /* loaded from: classes2-dex2jar.jar:c/i/a/b$d.class */
    public static class C6494d implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: c.i.a.b$e */
    /* loaded from: classes2-dex2jar.jar:c/i/a/b$e.class */
    public interface AbstractC6495e {
        /* renamed from: a */
        long m20684a(AdInfo adInfo);
    }

    public C6490b(String str) {
        this.f20214a = str;
    }

    /* renamed from: a */
    public static void m20715a(Application application, long j, String str, int i, boolean z, boolean z2) {
        if (C6617d.m20342f(application)) {
            m20702b(application, j, str, i, z, z2);
        } else {
            C6489a.m20719a(application, j, str, i, z);
        }
    }

    /* renamed from: a */
    public static boolean m20706a(PlaceConfig placeConfig, String str) {
        if (placeConfig == null || !placeConfig.show) {
            return false;
        }
        if (!m20704a(str, placeConfig.frequency.longValue())) {
            String str2 = "间隔:" + placeConfig.frequency + "分钟";
            return false;
        }
        ArrayList<RequestConfig> arrayList = placeConfig.adList;
        return (arrayList == null || arrayList.size() == 0) ? false : true;
    }

    /* renamed from: a */
    public static boolean m20704a(String str, long j) {
        C6618e a = C6618e.m20334a();
        long b = a.m20328b("key_place_frequency_" + str);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        return j <= 0 || elapsedRealtime < b || elapsedRealtime - b > j * 60000;
    }

    /* renamed from: b */
    public static RequestConfig m20699b(String str) {
        PlaceConfig a = C6497d.m20645o().m20673a(str);
        if (!m20706a(a, str)) {
            return null;
        }
        Collections.sort(a.adList);
        Iterator<RequestConfig> it = a.adList.iterator();
        while (it.hasNext()) {
            RequestConfig next = it.next();
            if (C6507c.m20627b(next.getKey(str))) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static void m20702b(Application application, long j, String str, int i, boolean z, boolean z2) {
        C6489a.m20719a(application, j, str, i, z);
        f20209i = z2;
        f20210j = !C6618e.m20334a().m20329a("key_is_new_user", true).booleanValue();
        C6497d.m20645o().m20658g();
        if (C6617d.m20342f(application)) {
            C6549b.m20533a();
            application.registerActivityLifecycleCallbacks(new C6491a());
        }
    }

    /* renamed from: c */
    public static boolean m20696c(String str) {
        PlaceConfig a = C6497d.m20645o().m20673a(str);
        if (!m20706a(a, str)) {
            return false;
        }
        Collections.sort(a.adList);
        Iterator<RequestConfig> it = a.adList.iterator();
        while (it.hasNext()) {
            if (C6507c.m20627b(it.next().getKey(str))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public static /* synthetic */ int m20691h() {
        int i = f20213m;
        f20213m = i + 1;
        return i;
    }

    /* renamed from: i */
    public static /* synthetic */ int m20690i() {
        int i = f20213m;
        f20213m = i - 1;
        return i;
    }

    /* renamed from: k */
    public static AbstractC6495e m20688k() {
        return f20212l;
    }

    /* renamed from: l */
    public static String m20687l() {
        return f20211k;
    }

    /* renamed from: m */
    public static boolean m20686m() {
        return f20209i;
    }

    /* renamed from: n */
    public static void m20685n() {
        C6549b.m20533a();
    }

    /* renamed from: a */
    public C6490b m20713a(ViewGroup viewGroup) {
        m20712a(viewGroup, m20698c());
        return this;
    }

    /* renamed from: a */
    public C6490b m20712a(ViewGroup viewGroup, List<BaseAdResult> list) {
        m20714a((View) viewGroup);
        PlaceConfig a = C6497d.m20645o().m20673a(this.f20214a);
        m20695d();
        if (m20706a(a, this.f20214a)) {
            AbstractC6560b a2 = C6558c.m20499a(a);
            a2.m20496a(viewGroup);
            a2.m20492a(this.f20217d);
            a2.m20493a(this.f20220g);
            a2.m20495a(this.f20218e);
            a2.m20488a(list);
            a2.m20484e();
        } else {
            m20701b(viewGroup);
        }
        return this;
    }

    /* renamed from: a */
    public C6490b m20710a(AbstractC6508d dVar) {
        this.f20218e = dVar;
        return this;
    }

    /* renamed from: a */
    public C6490b m20709a(AbstractC6515g gVar) {
        this.f20215b = gVar;
        return this;
    }

    /* renamed from: a */
    public C6490b m20708a(AbstractC6518i iVar) {
        this.f20217d = iVar;
        return this;
    }

    /* renamed from: a */
    public C6490b m20707a(BaseAdResult.AbstractC8514a aVar) {
        this.f20216c = aVar;
        return this;
    }

    /* renamed from: a */
    public void m20716a() {
        BroadcastReceiver broadcastReceiver = this.f20219f;
        if (broadcastReceiver != null) {
            C6576a.m20460a(broadcastReceiver);
        }
    }

    /* renamed from: a */
    public final void m20714a(View view) {
        if (view != null) {
            view.addOnAttachStateChangeListener(this.f20221h);
        }
    }

    /* renamed from: b */
    public final BroadcastReceiver m20703b() {
        BroadcastReceiver broadcastReceiver = this.f20219f;
        if (broadcastReceiver != null) {
            return broadcastReceiver;
        }
        AdmobEventReceiver admobEventReceiver = new AdmobEventReceiver(this.f20214a, this.f20215b);
        this.f20219f = admobEventReceiver;
        return admobEventReceiver;
    }

    /* renamed from: b */
    public final void m20701b(ViewGroup viewGroup) {
        PlaceConfig a = C6497d.m20645o().m20673a(this.f20214a);
        if (this.f20218e != null) {
            if (a == null || m20704a(this.f20214a, a.frequency.longValue())) {
                C6520j a2 = C6507c.m20628a(this.f20218e);
                a2.m20600a(this.f20217d);
                a2.m20604a(viewGroup);
                a2.m20578g();
                return;
            }
            String str = "间隔:" + a.frequency + "分钟";
        }
        AbstractC6518i iVar = this.f20217d;
        if (iVar != null) {
            iVar.mo3228b(null);
        }
    }

    /* renamed from: b */
    public void m20700b(ViewGroup viewGroup, List<BaseAdResult> list) {
        m20714a((View) viewGroup);
        PlaceConfig a = C6497d.m20645o().m20673a(this.f20214a);
        m20695d();
        if (m20706a(a, this.f20214a)) {
            Collections.sort(a.adList);
            Iterator<RequestConfig> it = a.adList.iterator();
            while (it.hasNext()) {
                RequestConfig next = it.next();
                for (BaseAdResult baseAdResult : list) {
                    if (next.source.equals(baseAdResult.m5316c()) && baseAdResult.m5314d() == next.getAdType()) {
                        baseAdResult.m5318b(next.unitId);
                        baseAdResult.m5330a(next.adType);
                        baseAdResult.m5321a(next.layouts);
                        baseAdResult.m5315c(next.layoutType);
                        baseAdResult.m5319b(next.clicks);
                        baseAdResult.m5323a(this.f20214a);
                        baseAdResult.m5320b().setTestType(a.testType);
                        baseAdResult.m5320b().setAdSyId(a.adSyId);
                        if (C6507c.m20631a(baseAdResult, viewGroup)) {
                            AbstractC6518i iVar = this.f20217d;
                            if (iVar != null) {
                                iVar.mo3229a(baseAdResult.m5320b());
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        }
        m20701b(viewGroup);
    }

    /* renamed from: c */
    public List<BaseAdResult> m20698c() {
        Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e> cls;
        PlaceConfig a = C6497d.m20645o().m20673a(this.f20214a);
        Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>> b = C6557b.m20501b().m20500b(this.f20214a);
        ArrayList arrayList = new ArrayList();
        if (a != null) {
            Iterator<RequestConfig> it = a.adList.iterator();
            boolean z = false;
            while (it.hasNext()) {
                RequestConfig next = it.next();
                BaseAdResult baseAdResult = new BaseAdResult(next.source, null);
                if (next.adType == 1) {
                    if (b == null || (cls = b.get(next.source)) == null) {
                        String str = "广告位:" + this.f20214a + " 没有配置 " + next.source + " 原生广告视图，在 BasePlaceConfig.viewClassConfigMap 配置";
                    } else {
                        baseAdResult.m5324a(cls);
                    }
                }
                z = z;
                if (!z) {
                    z = z;
                    if ("AM".equals(next.source)) {
                        z = z;
                        if (3 != next.adType) {
                            C6576a.m20460a(m20703b());
                            C6576a.m20459a(m20703b(), "action_click", "action_show", "action_close");
                            z = true;
                        }
                    }
                }
                baseAdResult.m5323a(this.f20214a);
                baseAdResult.m5318b(next.unitId);
                baseAdResult.m5319b(next.clicks);
                baseAdResult.m5327a(this.f20215b);
                baseAdResult.m5325a(this.f20216c);
                baseAdResult.m5330a(next.adType);
                baseAdResult.m5315c(next.layoutType);
                baseAdResult.m5321a(next.layouts);
                baseAdResult.m5320b().setTestType(a.testType);
                baseAdResult.m5320b().setAdSyId(a.adSyId);
                arrayList.add(baseAdResult);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public void m20697c(ViewGroup viewGroup) {
        m20700b(viewGroup, m20698c());
    }

    /* renamed from: d */
    public final void m20695d() {
        Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>> b;
        if (this.f20218e != null && (b = C6557b.m20501b().m20500b(this.f20214a)) != null && b.containsKey(this.f20218e.getAdSource())) {
            BaseAdResult baseAdResult = new BaseAdResult(this.f20218e.getAdSource(), b.get(this.f20218e.getAdSource()));
            this.f20218e.setPlaceId(this.f20214a).setDefault(true);
            if (this.f20218e.getAdResult() != null) {
                baseAdResult = this.f20218e.getAdResult();
                baseAdResult.m5323a(this.f20214a);
            } else {
                baseAdResult.m5327a(this.f20215b);
                baseAdResult.m5327a(this.f20220g);
                baseAdResult.m5325a(this.f20216c);
                baseAdResult.m5323a(this.f20214a);
                baseAdResult.m5330a(this.f20218e.getAdType());
                baseAdResult.m5322a(true);
            }
            baseAdResult.m5317b(true);
            this.f20218e.setAdResult(baseAdResult);
        }
    }

    /* renamed from: e */
    public void m20694e() {
        PlaceConfig a = C6497d.m20645o().m20673a(this.f20214a);
        m20695d();
        if (m20706a(a, this.f20214a)) {
            AbstractC6560b a2 = C6558c.m20499a(a);
            a2.m20492a(this.f20217d);
            a2.m20493a(this.f20220g);
            a2.m20495a(this.f20218e);
            a2.m20484e();
            return;
        }
        m20701b((ViewGroup) null);
    }
}
