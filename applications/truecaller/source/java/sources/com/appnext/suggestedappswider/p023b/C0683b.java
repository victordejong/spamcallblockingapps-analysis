package com.appnext.suggestedappswider.p023b;

import android.content.Context;
import android.util.Pair;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AbstractC0533d;
import com.appnext.core.AppnextAd;
import com.appnext.core.C0519a;
import com.appnext.core.C0551g;
import com.appnext.core.C0554h;
import com.appnext.core.SettingsManager;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderModel;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderRequestData;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� $2\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014J\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\nH\u0002J&\u0010\u000b\u001a\u00020\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0007\u001a\u0004\u0018\u00010\rH\u0002J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0007\u001a\u0004\u0018\u00010\rH\u0014J*\u0010\u0014\u001a\u00020\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\r2\f\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0007\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u0019\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014J/\u0010\u001d\u001a\u00020\f\"\u0004\b��\u0010\u001e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0007\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0016\u001a\u0002H\u001eH\u0014¢\u0006\u0002\u0010\u001fJB\u0010 \u001a\u00020\u001b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\r2\b\u0010!\u001a\u0004\u0018\u00010\u001b2\u001a\u0010\"\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0#\u0018\u00010\u0017H\u0014¨\u0006%"}, d2 = {"Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsManager;", "Lcom/appnext/core/AdsManager;", "()V", "adFilter", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "ad", "Lcom/appnext/core/BaseAd;", "checkCPT", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;", "customAdLoad", "", "Lcom/appnext/core/Ad;", "adContainer", "Lcom/appnext/core/AdContainer;", "getFirst", "Lcom/appnext/core/AppnextAd;", "getSettingsManager", "Lcom/appnext/core/SettingsManager;", "hasAdToShow", "", "ads", "Ljava/util/ArrayList;", "isLoadedAndUpdated", "onError", "error", "", "placement", "onLoad", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "(Ljava/lang/String;Lcom/appnext/core/Ad;Ljava/lang/Object;)V", "urlSuffix", "placementID", "params", "Landroid/util/Pair;", "Companion", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.b.b */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/b/b.class */
public final class C0683b extends AbstractC0533d {

    /* renamed from: ho */
    public static final C0684a f2129ho = new C0684a(null);

    /* renamed from: hp */
    private static volatile C0683b f2130hp;

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsManager$Companion;", "", "()V", "INSTANCE", "Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsManager;", "getInstance", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/b/b$a.class */
    public static final class C0684a {
        private C0684a() {
        }

        public /* synthetic */ C0684a(f fVar) {
            this();
        }

        /* renamed from: br */
        public final C0683b m42112br() {
            C0683b c0683b;
            C0683b c0683b2 = C0683b.f2130hp;
            if (c0683b2 == null) {
                synchronized (this) {
                    C0683b c0683b3 = C0683b.f2130hp;
                    c0683b = c0683b3;
                    if (c0683b3 == null) {
                        c0683b = new C0683b();
                    }
                }
                return c0683b;
            }
            return c0683b2;
        }
    }

    /* renamed from: a */
    private final int m42118a(Context context, SuggestedAppsWiderModel suggestedAppsWiderModel) {
        int i;
        try {
            if (l.a(suggestedAppsWiderModel.getCptList(), "") || l.a(suggestedAppsWiderModel.getCptList(), "[]")) {
                return this.f1762cH;
            }
            try {
                JSONArray jSONArray = new JSONArray(suggestedAppsWiderModel.getCptList());
                int i2 = 0;
                int length = jSONArray.length();
                if (length > 0) {
                    while (true) {
                        int i3 = i2 + 1;
                        if (C0551g.m42381b(context, jSONArray.getString(i2))) {
                            return this.f1762cH;
                        }
                        if (i3 >= length) {
                            break;
                        }
                        i2 = i3;
                    }
                }
                i = this.f1765cK;
            } catch (JSONException e) {
                C0472a.m42577a("CollectionAdsManager$checkCPT", e);
                i = this.f1762cH;
            }
            return i;
        } catch (Throwable th) {
            C0472a.m42577a("CollectionAdsManager$checkCPT", th);
            return this.f1765cK;
        }
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final int mo42119a(Context context, C0554h c0554h) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (c0554h != null) {
            try {
                SuggestedAppsWiderModel suggestedAppsWiderModel = new SuggestedAppsWiderModel((AppnextAd) c0554h);
                int m42118a = m42118a(context, suggestedAppsWiderModel);
                return m42118a != this.f1762cH ? m42118a : (!l.a(suggestedAppsWiderModel.getCampaignGoal(), "new") || !C0551g.m42381b(context, suggestedAppsWiderModel.getAdPackage())) ? (!l.a(suggestedAppsWiderModel.getCampaignGoal(), "existing") || C0551g.m42381b(context, suggestedAppsWiderModel.getAdPackage())) ? this.f1762cH : this.f1764cJ : this.f1763cI;
            } catch (Throwable th) {
                C0472a.m42577a("CollectionAdsManager$adFilter", th);
            }
        }
        return this.f1765cK;
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final String mo42120a(Context context, AbstractC0501Ad abstractC0501Ad, String str, ArrayList<Pair<String, String>> arrayList) {
        return l.j("&auid=", abstractC0501Ad != null ? abstractC0501Ad.getAUID() : SuggestedAppsWiderRequestData.AUID);
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final void mo42121a(Context context, AbstractC0501Ad abstractC0501Ad, C0519a c0519a) {
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final void mo42116a(AbstractC0501Ad abstractC0501Ad, String str, String str2) {
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final <T> void mo42115a(String str, AbstractC0501Ad abstractC0501Ad, T t) {
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final boolean mo42117a(AbstractC0501Ad abstractC0501Ad) {
        return super.mo42117a(abstractC0501Ad);
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: c */
    public final SettingsManager mo42113c(AbstractC0501Ad abstractC0501Ad) {
        C0688d m42108bs = C0688d.m42108bs();
        l.d(m42108bs, "getInstance()");
        return m42108bs;
    }
}
