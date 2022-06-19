package com.appnext.suggestedappswider.p023b;

import android.content.Context;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0533d;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.suggestedappswider.AppnextSuggestedAppsWiderDataContainer;
import com.appnext.suggestedappswider.models.C0690a;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderModel;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderRequestData;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0014\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¨\u0006\u0012"}, d2 = {"Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager;", "", "()V", "getAds", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "placementID", "", "postback", "suggestedAppsWiderAdsResultManagerCallbacks", "Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager$SuggestedAppsWiderAdsResultManagerCallbacks;", "getEcpm", "", "suggestedAppsWiderModelModels", "", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;", "SuggestedAppsWiderAdsResultManagerCallbacks", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.b.c */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/b/c.class */
public final class C0685c {

    /* renamed from: hq */
    public static final C0685c f2131hq = new C0685c();

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager$SuggestedAppsWiderAdsResultManagerCallbacks;", "", "onAdsLoadedSuccessfully", "", "appnextSuggestedAppsWiderDataContainer", "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;", "onError", "error", "Lcom/appnext/core/AppnextError;", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/b/c$a.class */
    public interface AbstractC0686a {
        void onAdsLoadedSuccessfully(AppnextSuggestedAppsWiderDataContainer appnextSuggestedAppsWiderDataContainer);

        void onError(AppnextError appnextError);
    }

    @Metadata(d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0004H\u0016J\u001d\u0010\u0005\u001a\u00020\u0003\"\u0004\b��\u0010\u00062\b\u0010\u0007\u001a\u0004\u0018\u0001H\u0006H\u0016¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"com/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsResultManager$getAds$2", "Lcom/appnext/core/AdsManager$AdListener;", "error", "", "", AnalyticsConstants.LOADED, RequestConfiguration.MAX_AD_CONTENT_RATING_T, "ads", "(Ljava/lang/Object;)V", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.b.c$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/b/c$b.class */
    public static final class C0687b implements AbstractC0533d.AbstractC0538a {

        /* renamed from: hr */
        public final /* synthetic */ AbstractC0686a f2132hr;

        public C0687b(AbstractC0686a abstractC0686a) {
            this.f2132hr = abstractC0686a;
        }

        @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
        /* renamed from: a */
        public final <T> void mo42109a(T t) {
            try {
                if (t == null) {
                    AbstractC0686a abstractC0686a = this.f2132hr;
                    if (abstractC0686a == null) {
                        return;
                    }
                    abstractC0686a.onError(new AppnextError(AppnextError.NO_ADS));
                    return;
                }
                AbstractC0686a abstractC0686a2 = this.f2132hr;
                ArrayList<AppnextAd> arrayList = (ArrayList) t;
                if (arrayList.isEmpty() && abstractC0686a2 != null) {
                    abstractC0686a2.onError(new AppnextError(AppnextError.NO_ADS));
                }
                ArrayList arrayList2 = new ArrayList();
                for (AppnextAd appnextAd : arrayList) {
                    arrayList2.add(new SuggestedAppsWiderModel(appnextAd));
                }
                String m42122i = C0682a.f2126hl.m42122i(arrayList2);
                if (abstractC0686a2 == null) {
                    return;
                }
                C0685c c0685c = C0685c.f2131hq;
                abstractC0686a2.onAdsLoadedSuccessfully(new C0690a(m42122i, C0685c.m42110j(arrayList2)));
            } catch (Throwable th) {
                C0472a.m42577a("SuggestedAppsWiderAdsResultManager$loaded", th);
                AbstractC0686a abstractC0686a3 = this.f2132hr;
                if (abstractC0686a3 == null) {
                    return;
                }
                abstractC0686a3.onError(new AppnextError(AppnextError.NO_ADS));
            }
        }

        @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
        public final void error(String str) {
            AbstractC0686a abstractC0686a = this.f2132hr;
            if (abstractC0686a != null) {
                abstractC0686a.onError(new AppnextError(str));
            }
        }
    }

    private C0685c() {
    }

    /* renamed from: a */
    public static void m42111a(Context context, String str, String str2, AbstractC0686a abstractC0686a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "placementID");
        try {
            C0683b m42112br = C0683b.f2129ho.m42112br();
            SuggestedAppsWiderRequestData suggestedAppsWiderRequestData = new SuggestedAppsWiderRequestData(context, str);
            suggestedAppsWiderRequestData.setPostback(str2);
            m42112br.m42446a(context, suggestedAppsWiderRequestData, str, new C0687b(abstractC0686a));
        } catch (Throwable th) {
            C0472a.m42577a("SuggestedAppsWiderAdsResultManager$getAds", th);
            abstractC0686a.onError(new AppnextError(AppnextError.NO_ADS));
        }
    }

    /* renamed from: j */
    public static float m42110j(List<SuggestedAppsWiderModel> list) {
        l.e(list, "suggestedAppsWiderModelModels");
        float f = 0.0f;
        try {
            if (!list.isEmpty()) {
                f = list.get(0).getECPM();
            }
        } catch (Throwable th) {
            f = 0.0f;
        }
        return f;
    }
}
