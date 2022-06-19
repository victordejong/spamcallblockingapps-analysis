package com.appnext.suggestedappswider.p022a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.C0540f;
import com.appnext.core.C0564o;
import com.appnext.core.C0566q;
import com.appnext.core.SettingsManager;
import com.appnext.core.adswatched.C0524a;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderRequestData;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderViewModel;
import com.appnext.suggestedappswider.p022a.C0676a;
import com.appnext.suggestedappswider.p023b.C0688d;
import com.facebook.ads.AdSDKNotificationListener;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\n\u0018��2\u00020\u0001:\u0003\u001f !B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u0016\u001a\u00020\u000f2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0018J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0015H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��¨\u0006\""}, d2 = {"Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController;", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "mHandler", "Landroid/os/Handler;", "mReports", "", "Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$Reports;", "suggestedAppsWiderActionsControllerCallbacks", "Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$SuggestedAppsWiderActionsControllerCallbacks;", "doClick", "", "appnextAd", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;", AdSDKNotificationListener.IMPRESSION_EVENT, "impressionIfNecessary", "visiblePercenet", "", "initController", "ads", "", "openOnlyStore", "sendImpression", "setSuggestedAppsWiderActionsControllerCallbacks", "vta", "vtaIfNecessary", "visiblePercent", "Reports", "SuggestedAppsWiderActionsControllerCallbacks", "UserActionInterfaceImpl", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/a/a.class */
public final class C0676a {
    private final Context context;

    /* renamed from: hf */
    private AbstractC0678b f2118hf;

    /* renamed from: go */
    private List<C0677a> f2117go = new ArrayList();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    @Metadata(d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0011\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014R\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u001e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$Reports;", "", "appnextAd", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;", "(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V", "getAppnextAd", "()Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;", "bannerId", "", "getBannerId", "()Ljava/lang/String;", "<set-?>", "", "isImpressionReported", "()Z", "isVtaReported", "mAppnextAd", "equals", "obj", "setImpressionReported", "", "setVtaReported", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/a/a$a.class */
    public static final class C0677a {
        private final String bannerId;

        /* renamed from: hg */
        private final SuggestedAppsWiderViewModel f2119hg;

        /* renamed from: hi */
        private boolean f2121hi = false;

        /* renamed from: hh */
        private boolean f2120hh = false;

        public C0677a(SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
            l.e(suggestedAppsWiderViewModel, "appnextAd");
            String bannerID = suggestedAppsWiderViewModel.getBannerID();
            l.d(bannerID, "appnextAd.getBannerID()");
            this.bannerId = bannerID;
            this.f2119hg = suggestedAppsWiderViewModel;
        }

        /* renamed from: bh */
        public final void m42134bh() {
            this.f2120hh = true;
        }

        /* renamed from: bi */
        public final void m42133bi() {
            this.f2121hi = true;
        }

        /* renamed from: bk */
        public final boolean m42132bk() {
            return this.f2120hh;
        }

        /* renamed from: bl */
        public final boolean m42131bl() {
            return this.f2121hi;
        }

        /* renamed from: bo */
        public final SuggestedAppsWiderViewModel m42130bo() {
            return this.f2119hg;
        }

        public final boolean equals(Object obj) {
            if (obj != null) {
                try {
                    if (obj instanceof C0677a) {
                        if (l.a(((C0677a) obj).bannerId, this.bannerId)) {
                            return true;
                        }
                    }
                } catch (Throwable th) {
                    C0472a.m42577a("CollectionsAdsActionsController$Reports", th);
                }
            }
            return super.equals(obj);
        }
    }

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, d2 = {"Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$SuggestedAppsWiderActionsControllerCallbacks;", "", "onAdClickSent", "", "packageName", "", "onAdImpressionSent", "onOpenStoreFailed", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/a/a$b.class */
    public interface AbstractC0678b {
        /* renamed from: K */
        void m42129K(String str);

        /* renamed from: L */
        void m42128L(String str);

        /* renamed from: bp */
        void m42127bp();
    }

    @Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0011H\u0016R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$UserActionInterfaceImpl;", "Lcom/appnext/core/UserAction$UserActionInterface;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "appnextAd", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;", "(Landroid/content/Context;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V", "mAppnextAd", "mSuggestedAppsWiderObject", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;", "getAdData", "getAdObject", "Lcom/appnext/core/Ad;", "getSettingsManager", "Lcom/appnext/core/SettingsManager;", "report", "", "", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/a/a$c.class */
    public static final class C0679c implements C0566q.AbstractC0570a {

        /* renamed from: hg */
        private final SuggestedAppsWiderViewModel f2122hg;

        /* renamed from: hj */
        private final SuggestedAppsWiderRequestData f2123hj;

        public C0679c(Context context, SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(suggestedAppsWiderViewModel, "appnextAd");
            this.f2123hj = new SuggestedAppsWiderRequestData(context, suggestedAppsWiderViewModel.getPlacementID());
            this.f2122hg = suggestedAppsWiderViewModel;
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        /* renamed from: c */
        public final AbstractC0501Ad mo42126c() {
            return this.f2123hj;
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        /* renamed from: d */
        public final /* bridge */ /* synthetic */ AppnextAd mo42125d() {
            return this.f2122hg;
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        /* renamed from: e */
        public final SettingsManager mo42124e() {
            C0688d m42108bs = C0688d.m42108bs();
            l.d(m42108bs, "getInstance()");
            return m42108bs;
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        public final void report(String str) {
            l.e(str, "report");
        }
    }

    @Metadata(d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\b"}, d2 = {"com/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$doClick$1", "Lcom/appnext/core/AppnextCK$IMarket;", "error", "", "finalLink", "", "onMarket", "marketUrl", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.a.a$d */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/a/a$d.class */
    public static final class C0680d implements C0540f.AbstractC0549a {
        public C0680d() {
            C0676a.this = r4;
        }

        @Override // com.appnext.core.C0540f.AbstractC0549a
        public final void error(String str) {
            AbstractC0678b abstractC0678b = C0676a.this.f2118hf;
            if (abstractC0678b != null) {
                abstractC0678b.m42127bp();
            }
        }

        @Override // com.appnext.core.C0540f.AbstractC0549a
        public final void onMarket(String str) {
        }
    }

    @Metadata(d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\b"}, d2 = {"com/appnext/suggestedappswider/controllers/SuggestedAppsWiderActionsController$openOnlyStore$1", "Lcom/appnext/core/AppnextCK$IMarket;", "error", "", "finalLink", "", "onMarket", "marketUrl", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.a.a$e */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/a/a$e.class */
    public static final class C0681e implements C0540f.AbstractC0549a {
        public C0681e() {
            C0676a.this = r4;
        }

        @Override // com.appnext.core.C0540f.AbstractC0549a
        public final void error(String str) {
            AbstractC0678b abstractC0678b = C0676a.this.f2118hf;
            if (abstractC0678b != null) {
                abstractC0678b.m42127bp();
            }
        }

        @Override // com.appnext.core.C0540f.AbstractC0549a
        public final void onMarket(String str) {
        }
    }

    public C0676a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.context = context;
    }

    /* renamed from: a */
    public static final void m42148a(C0676a c0676a, SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
        l.e(c0676a, "this$0");
        l.e(suggestedAppsWiderViewModel, "$appnextAd");
        C0524a.m42455o(c0676a.context).m42457k(suggestedAppsWiderViewModel.getBannerID(), SuggestedAppsWiderRequestData.AUID);
    }

    /* renamed from: a */
    public static final void m42146a(SuggestedAppsWiderViewModel suggestedAppsWiderViewModel, C0676a c0676a, int i, C0677a c0677a) {
        l.e(suggestedAppsWiderViewModel, "$appnextAd");
        l.e(c0676a, "this$0");
        l.e(c0677a, "$reports");
        try {
            C0677a c0677a2 = new C0677a(suggestedAppsWiderViewModel);
            List<C0677a> list = c0676a.f2117go;
            l.c(list);
            int indexOf = list.indexOf(c0677a2);
            if (indexOf > 0) {
                List<C0677a> list2 = c0676a.f2117go;
                l.c(list2);
                if (list2.get(indexOf).m42131bl()) {
                    return;
                }
            }
            String m42476y = C0688d.m42108bs().m42476y("min_imp_precentage");
            l.d(m42476y, "getInstance()\n                                        .get(\"min_imp_precentage\")");
            if (i < Integer.parseInt(m42476y)) {
                return;
            }
            c0676a.m42140e(c0677a.m42130bo());
            c0677a.m42133bi();
        } catch (Throwable th) {
            C0472a.m42577a("CollectionsAdsActionsController$impressionIfNecessary", th);
        }
    }

    /* renamed from: b */
    public static final void m42145b(C0676a c0676a, SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
        l.e(c0676a, "this$0");
        l.e(suggestedAppsWiderViewModel, "$appnextAd");
        C0524a.m42455o(c0676a.context).m42457k(suggestedAppsWiderViewModel.getBannerID(), SuggestedAppsWiderRequestData.AUID);
    }

    /* renamed from: b */
    public static final void m42143b(SuggestedAppsWiderViewModel suggestedAppsWiderViewModel, C0676a c0676a, int i, C0677a c0677a) {
        l.e(suggestedAppsWiderViewModel, "$appnextAd");
        l.e(c0676a, "this$0");
        l.e(c0677a, "$reports");
        try {
            C0677a c0677a2 = new C0677a(suggestedAppsWiderViewModel);
            List<C0677a> list = c0676a.f2117go;
            l.c(list);
            int indexOf = list.indexOf(c0677a2);
            if (indexOf > 0) {
                List<C0677a> list2 = c0676a.f2117go;
                l.c(list2);
                if (list2.get(indexOf).m42131bl()) {
                    return;
                }
            }
            String m42476y = C0688d.m42108bs().m42476y("min_vta_precentage");
            l.d(m42476y, "getInstance()\n                                        .get(\"min_vta_precentage\")");
            if (i < Integer.parseInt(m42476y)) {
                return;
            }
            c0677a.m42134bh();
            c0676a.m42141d(c0677a.m42130bo());
        } catch (Throwable th) {
            C0472a.m42577a("CollectionsAdsActionsController$impressionIfNecessary", th);
        }
    }

    /* renamed from: d */
    private final void m42141d(final SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
        try {
            Context context = this.context;
            C0566q c0566q = new C0566q(context, new C0679c(context, suggestedAppsWiderViewModel));
            StringBuilder sb = new StringBuilder("Vta - ");
            sb.append((Object) suggestedAppsWiderViewModel.getAdTitle());
            sb.append(" -  ");
            sb.append((Object) suggestedAppsWiderViewModel.getBannerID());
            c0566q.m42340a(suggestedAppsWiderViewModel, suggestedAppsWiderViewModel.getImpressionURL(), null);
            C0564o.m42343az().m42344a(new Runnable() { // from class: e.e.a.a.c
                @Override // java.lang.Runnable
                public final void run() {
                    C0676a.m42148a(C0676a.this, suggestedAppsWiderViewModel);
                }
            });
            AbstractC0678b abstractC0678b = this.f2118hf;
            if (abstractC0678b == null) {
                return;
            }
            String adPackage = suggestedAppsWiderViewModel.getAdPackage();
            l.d(adPackage, "appnextAd.adPackage");
            abstractC0678b.m42129K(adPackage);
        } catch (Throwable th) {
            C0472a.m42577a("CollectionsAdsActionsController$vta", th);
        }
    }

    /* renamed from: e */
    private final void m42140e(final SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
        try {
            Context context = this.context;
            new C0566q(context, new C0679c(context, suggestedAppsWiderViewModel)).m42331d(suggestedAppsWiderViewModel);
            l.j("Impression - ", suggestedAppsWiderViewModel.getAdTitle());
            C0564o.m42343az().m42344a(new Runnable() { // from class: e.e.a.a.d
                @Override // java.lang.Runnable
                public final void run() {
                    C0676a.m42145b(C0676a.this, suggestedAppsWiderViewModel);
                }
            });
            AbstractC0678b abstractC0678b = this.f2118hf;
            if (abstractC0678b == null) {
                return;
            }
            String adPackage = suggestedAppsWiderViewModel.getAdPackage();
            l.d(adPackage, "appnextAd.adPackage");
            abstractC0678b.m42129K(adPackage);
        } catch (Throwable th) {
            C0472a.m42577a("CollectionsAdsActionsController$impression", th);
        }
    }

    /* renamed from: a */
    public final void m42150a(AbstractC0678b abstractC0678b) {
        l.e(abstractC0678b, "suggestedAppsWiderActionsControllerCallbacks");
        this.f2118hf = abstractC0678b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0123, code lost:
        if (r0.get(r0).m42131bl() == false) goto L29;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42147a(final com.appnext.suggestedappswider.models.SuggestedAppsWiderViewModel r7) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.suggestedappswider.p022a.C0676a.m42147a(com.appnext.suggestedappswider.models.SuggestedAppsWiderViewModel):void");
    }

    /* renamed from: b */
    public final void m42144b(SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
        l.e(suggestedAppsWiderViewModel, "appnextAd");
        try {
            Context context = this.context;
            new C0566q(context, new C0679c(context, suggestedAppsWiderViewModel)).m42333c(suggestedAppsWiderViewModel, new C0681e());
        } catch (Throwable th) {
            C0472a.m42577a("CollectionsAdsActionsController$openOnlyStore", th);
        }
    }

    /* renamed from: c */
    public final void m42142c(SuggestedAppsWiderViewModel suggestedAppsWiderViewModel) {
        l.e(suggestedAppsWiderViewModel, "appnextAd");
        try {
            Context context = this.context;
            new C0566q(context, new C0679c(context, suggestedAppsWiderViewModel)).m42339a(suggestedAppsWiderViewModel, suggestedAppsWiderViewModel.getAppURL(), suggestedAppsWiderViewModel.getPlacementID(), new C0680d());
            AbstractC0678b abstractC0678b = this.f2118hf;
            if (abstractC0678b == null) {
                return;
            }
            String adPackage = suggestedAppsWiderViewModel.getAdPackage();
            l.d(adPackage, "appnextAd.adPackage");
            abstractC0678b.m42128L(adPackage);
        } catch (Throwable th) {
            C0472a.m42577a("CollectionsAdsActionsController$doClick", th);
        }
    }

    /* renamed from: h */
    public final void m42137h(List<SuggestedAppsWiderViewModel> list) {
        if (list != null) {
            try {
                if (!(!list.isEmpty())) {
                    return;
                }
                this.f2117go = new ArrayList();
                for (SuggestedAppsWiderViewModel suggestedAppsWiderViewModel : list) {
                    this.f2117go.add(new C0677a(suggestedAppsWiderViewModel));
                }
            } catch (Throwable th) {
                C0472a.m42577a("CollectionsAdsActionsController$init", th);
            }
        }
    }
}
