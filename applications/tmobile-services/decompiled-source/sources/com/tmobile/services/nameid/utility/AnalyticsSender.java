package com.tmobile.services.nameid.utility;

import android.content.Context;
import com.chuckerteam.chucker.api.ChuckerInterceptor;
import com.google.gson.Gson;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.FoServicesApi;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.AnalyticsBody;
import com.tmobile.services.nameid.model.AnalyticsEvent;
import com.tmobile.services.nameid.model.PostableAnalyticsEvent;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.simpleframework.xml.strategy.Name;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AnalyticsSender.class */
public class AnalyticsSender {
    @Nullable

    /* renamed from: a */
    private static AnalyticsSender f14232a;
    @Nullable

    /* renamed from: b */
    private static FoServicesApi f14233b;

    /* renamed from: a */
    private static FoServicesApi m5901a(Retrofit retrofit) {
        FoServicesApi foServicesApi = f14233b;
        return foServicesApi != null ? foServicesApi : (FoServicesApi) retrofit.create(FoServicesApi.class);
    }

    /* renamed from: b */
    private void m5900b(int i, String str, boolean z) {
        synchronized (this) {
            final ArrayList arrayList = new ArrayList();
            Realm G0 = Realm.m3064G0();
            Number Q = G0.m3053Q0(AnalyticsEvent.class).m2906Q(Name.MARK);
            int intValue = z ? -1 : Q != null ? Q.intValue() + 1 : 0;
            final AnalyticsEvent analyticsEvent = new AnalyticsEvent();
            analyticsEvent.setId(intValue);
            analyticsEvent.setEventBody(str);
            analyticsEvent.setEventType(i);
            analyticsEvent.setTime(new Date().getTime());
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.f
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    AnalyticsSender.m5895g(AnalyticsEvent.this, realm);
                }
            });
            RealmQuery Q0 = G0.m3053Q0(AnalyticsEvent.class);
            Q0.m2888n("sending", Boolean.FALSE);
            long f = Q0.m2896f();
            if (f >= 21 || z) {
                LogUtil.m5643d("AnalyticsSender#doAnalyticsEvent", "Sending batched events. Forced immediate send? " + z + " / Event count: " + f);
                RealmQuery Q02 = G0.m3053Q0(AnalyticsEvent.class);
                Q02.m2888n("sending", Boolean.FALSE);
                final RealmResults<E> r = Q02.m2918E().m3090r(Name.MARK);
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.h
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        AnalyticsSender.m5894h(RealmResults.this, arrayList, realm);
                    }
                });
                if (G0 != null) {
                    G0.close();
                }
                Context l = MainApplication.m7528l();
                if (l != null) {
                    String packageName = l.getPackageName();
                    String str2 = packageName;
                    if (SubscriptionHelper.m5332B()) {
                        str2 = packageName + ".xp";
                    }
                    AnalyticsBody analyticsBody = new AnalyticsBody();
                    analyticsBody.setApkVersion(DeviceInfoUtils.m5755i(l) + "|" + str2);
                    analyticsBody.setIID(AnalyticsWrapper.m5864p());
                    analyticsBody.setDevId(DeviceInfoUtils.m5762b(l));
                    analyticsBody.setEvents(arrayList);
                    String f0 = TmoApiWrapper.m6642f0(new Gson().m8417r(analyticsBody) + "9r1V@cY8t@r");
                    if (f0 != null && !f0.isEmpty()) {
                        m5901a(m5897e(l, f0)).mo5489a(analyticsBody).subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c()).subscribe(C1913a.f14488f, C1925d.f14514f);
                        return;
                    }
                    LogUtil.m5631p("AnalyticsSender#", "tried to make header for analytics, but it failed");
                    return;
                }
                return;
            }
            LogUtil.m5643d("AnalyticsSender#doAnalyticsEvent", "Batched an event. Forced immediate send? " + z + " / Event count: " + f);
            if (G0 != null) {
                G0.close();
            }
        }
    }

    /* renamed from: d */
    private void m5898d() {
        Realm G0 = Realm.m3064G0();
        try {
            final RealmResults<E> s = G0.m3053Q0(AnalyticsEvent.class).m2918E().m3089s(Name.MARK, Sort.ASCENDING);
            final ArrayList arrayList = new ArrayList(s.size());
            for (int i = 0; i < s.size(); i++) {
                AnalyticsEvent copy = ((AnalyticsEvent) s.get(i)).copy();
                copy.setId(i);
                arrayList.add(copy);
            }
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.b
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    AnalyticsSender.m5891k(RealmResults.this, arrayList, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: e */
    private static Retrofit m5897e(Context context, String str) {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(C1929e.f14518a);
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        return new Retrofit.Builder().baseUrl(("unsignedRelease".toLowerCase().contains("release") || "unsignedRelease".toLowerCase().contains("exportable")) ? "https://analytics.fosrvt.com/" : "https://tst-analytics.fosrvt.com/").addConverterFactory(GsonConverterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(new AnalyticsInterceptor(str)).addInterceptor(new ChuckerInterceptor(context)).addInterceptor(httpLoggingInterceptor).build()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nonnull
    /* renamed from: f */
    public static AnalyticsSender m5896f() {
        if (f14232a == null) {
            AnalyticsSender analyticsSender = new AnalyticsSender();
            f14232a = analyticsSender;
            analyticsSender.m5898d();
        }
        return f14232a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ void m5895g(AnalyticsEvent analyticsEvent, Realm realm) {
        AnalyticsEvent analyticsEvent2 = (AnalyticsEvent) realm.m3045v0(analyticsEvent, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ void m5894h(RealmResults realmResults, List list, Realm realm) {
        Iterator<E> it = realmResults.iterator();
        while (it.hasNext()) {
            AnalyticsEvent analyticsEvent = (AnalyticsEvent) it.next();
            if (list.size() != 20) {
                list.add(PostableAnalyticsEvent.fromAnalyticsEvent(analyticsEvent));
                analyticsEvent.setSending(true);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ void m5893i(Response response) throws Exception {
        if (response.code() == 204) {
            try {
                Realm G0 = Realm.m3064G0();
                G0.m3067D0(C1921c.f14510a);
                if (G0 != null) {
                    G0.close();
                }
            } catch (Exception e) {
                LogUtil.m5641f("AnalyticsSender#", "Error clearing AnalyticsEvents from Realm: ", e);
            }
            LogUtil.m5632o("AnalyticsSender#", "successfully updated analytics events");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static /* synthetic */ void m5892j(Throwable th) throws Exception {
        LogUtil.m5641f("AnalyticsSender#", "", th);
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.g
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    AnalyticsSender.m5888n(Realm.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("AnalyticsSender#", "Error while updating failed AnalyticsEvents", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static /* synthetic */ void m5891k(RealmResults realmResults, List list, Realm realm) {
        realmResults.m3099d();
        realm.m3044w0(list, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static /* synthetic */ void m5889m(Realm realm) {
        RealmQuery Q0 = realm.m3053Q0(AnalyticsEvent.class);
        Q0.m2888n("sending", Boolean.TRUE);
        Q0.m2918E().m3099d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static /* synthetic */ void m5888n(Realm realm, Realm realm2) {
        Iterator<E> it = realm.m3053Q0(AnalyticsEvent.class).m2918E().iterator();
        while (it.hasNext()) {
            ((AnalyticsEvent) it.next()).setSending(false);
        }
    }

    /* renamed from: c */
    public void m5899c(int i, String str, boolean z) {
        m5900b(i, str, z);
    }
}
