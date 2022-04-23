package com.applovin.impl.sdk;

import com.applovin.impl.sdk.p489ad.NativeAdImpl;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.nativeAds.AppLovinNativeAdService;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2246b;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl.class */
public class NativeAdServiceImpl implements AppLovinNativeAdService {

    /* renamed from: a */
    public final C2341l f21578a;

    /* renamed from: com.applovin.impl.sdk.NativeAdServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl$a.class */
    public class C7018a implements AppLovinNativeAdLoadListener {

        /* renamed from: a */
        public final /* synthetic */ AppLovinNativeAdLoadListener f21579a;

        public C7018a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            this.f21579a = appLovinNativeAdLoadListener;
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsFailedToLoad(int i) {
            NativeAdServiceImpl.this.m19029a(this.f21579a, i);
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
            NativeAdServiceImpl.this.m19025a(list, this.f21579a);
        }
    }

    /* renamed from: com.applovin.impl.sdk.NativeAdServiceImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl$b.class */
    public class C7019b implements AppLovinNativeAdPrecacheListener {

        /* renamed from: a */
        public final /* synthetic */ AppLovinNativeAdPrecacheListener f21581a;

        public C7019b(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
            this.f21581a = appLovinNativeAdPrecacheListener;
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
            NativeAdServiceImpl.this.m19027a(this.f21581a, appLovinNativeAd, i, false);
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
            NativeAdServiceImpl.this.m19026a(this.f21581a, appLovinNativeAd, false);
            NativeAdServiceImpl.this.m19030a(appLovinNativeAd, this.f21581a);
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
        }
    }

    /* renamed from: com.applovin.impl.sdk.NativeAdServiceImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl$c.class */
    public class C7020c implements AppLovinNativeAdPrecacheListener {

        /* renamed from: a */
        public final /* synthetic */ AppLovinNativeAdPrecacheListener f21583a;

        public C7020c(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
            this.f21583a = appLovinNativeAdPrecacheListener;
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
            NativeAdServiceImpl.this.m19027a(this.f21583a, appLovinNativeAd, i, true);
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
            NativeAdServiceImpl.this.m19026a(this.f21583a, appLovinNativeAd, true);
        }
    }

    /* renamed from: com.applovin.impl.sdk.NativeAdServiceImpl$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl$d.class */
    public class C7021d implements AppLovinNativeAdLoadListener {

        /* renamed from: a */
        public final /* synthetic */ List f21585a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinNativeAdLoadListener f21586b;

        /* renamed from: c */
        public final /* synthetic */ List f21587c;

        /* renamed from: com.applovin.impl.sdk.NativeAdServiceImpl$d$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl$d$a.class */
        public class C7022a implements AppLovinNativeAdLoadListener {
            public C7022a() {
            }

            @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
            public void onNativeAdsFailedToLoad(int i) {
                AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = C7021d.this.f21586b;
                if (appLovinNativeAdLoadListener != null) {
                    appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
                }
            }

            @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
            public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
                if (C7021d.this.f21586b != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(C7021d.this.f21585a);
                    arrayList.addAll(C7021d.this.f21587c);
                    C7021d.this.f21586b.onNativeAdsLoaded(arrayList);
                }
            }
        }

        public C7021d(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List list2) {
            this.f21585a = list;
            this.f21586b = appLovinNativeAdLoadListener;
            this.f21587c = list2;
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsFailedToLoad(int i) {
            AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = this.f21586b;
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            }
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
            NativeAdServiceImpl.this.m19022c(this.f21585a, new C7022a());
        }
    }

    /* renamed from: com.applovin.impl.sdk.NativeAdServiceImpl$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl$e.class */
    public class C7023e implements AppLovinNativeAdLoadListener {

        /* renamed from: a */
        public final /* synthetic */ AppLovinNativeAdLoadListener f21590a;

        public C7023e(NativeAdServiceImpl nativeAdServiceImpl, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            this.f21590a = appLovinNativeAdLoadListener;
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsFailedToLoad(int i) {
            AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = this.f21590a;
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            }
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
            AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = this.f21590a;
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.NativeAdServiceImpl$f */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/NativeAdServiceImpl$f.class */
    public class C7024f implements AppLovinNativeAdLoadListener {

        /* renamed from: a */
        public final /* synthetic */ AppLovinNativeAdLoadListener f21591a;

        public C7024f(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            this.f21591a = appLovinNativeAdLoadListener;
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsFailedToLoad(int i) {
            NativeAdServiceImpl.this.m19029a(this.f21591a, i);
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
        public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
            NativeAdServiceImpl.this.m19028a(this.f21591a, list);
        }
    }

    public NativeAdServiceImpl(C2341l lVar) {
        this.f21578a = lVar;
    }

    /* renamed from: a */
    public final void m19030a(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        if (appLovinNativeAd.isVideoPrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
        } else {
            this.f21578a.m30249j().m18826a(new C2270g.C2305o(Arrays.asList((NativeAdImpl) appLovinNativeAd), this.f21578a, new C7020c(appLovinNativeAdPrecacheListener)), C7048s.EnumC7049a.CACHING_OTHER);
        }
    }

    /* renamed from: a */
    public final void m19029a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, int i) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            } catch (Exception e) {
                C2374t.m30041c("NativeAdService", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* renamed from: a */
    public final void m19028a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List<AppLovinNativeAd> list) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
            } catch (Exception e) {
                C2374t.m30041c("NativeAdService", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* renamed from: a */
    public final void m19027a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, int i, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPrecachingFailed(appLovinNativeAd, i);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagePrecachingFailed(appLovinNativeAd, i);
                }
            } catch (Exception e) {
                C2374t.m30041c("NativeAdService", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* renamed from: a */
    public final void m19026a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
                }
            } catch (Exception e) {
                C2374t.m30041c("NativeAdService", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* renamed from: a */
    public final void m19025a(List<AppLovinNativeAd> list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        int intValue = ((Integer) this.f21578a.m30291a(C2251d.C2256e.f8720o2)).intValue();
        if (intValue > 0) {
            int size = list.size();
            if (size != 0) {
                int min = Math.min(intValue, size);
                List<AppLovinNativeAd> subList = list.subList(0, min);
                m19023b(subList, new C7021d(subList, appLovinNativeAdLoadListener, list.subList(min, size)));
            } else if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(AppLovinErrorCodes.UNABLE_TO_PREPARE_NATIVE_AD);
            }
        } else if (appLovinNativeAdLoadListener != null) {
            appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
        }
    }

    /* renamed from: b */
    public final void m19023b(List<NativeAdImpl> list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f21578a.m30249j().m18826a(new C2270g.C2303m(list, this.f21578a, new C7023e(this, appLovinNativeAdLoadListener)), C7048s.EnumC7049a.CACHING_OTHER);
    }

    /* renamed from: c */
    public final void m19022c(List<NativeAdImpl> list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f21578a.m30249j().m18826a(new C2270g.C2305o(list, this.f21578a, new C7024f(appLovinNativeAdLoadListener)), C7048s.EnumC7049a.CACHING_OTHER);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void loadNativeAds(int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        if (i > 0) {
            this.f21578a.m30233z();
            if (i == 1) {
                C2246b h = C2246b.m30627h(this.f21578a);
                AppLovinNativeAd appLovinNativeAd = (AppLovinNativeAd) this.f21578a.m30240s().m30016e(h);
                if (appLovinNativeAd != null) {
                    m19028a(appLovinNativeAdLoadListener, Arrays.asList(appLovinNativeAd));
                } else {
                    this.f21578a.m30249j().m18826a(new C2270g.C2318v(this.f21578a, new C7018a(appLovinNativeAdLoadListener)), C7048s.EnumC7049a.MAIN);
                }
                if (((Boolean) this.f21578a.m30291a(C2251d.C2256e.f8753u0)).booleanValue()) {
                    this.f21578a.m30240s().m30012i(h);
                    return;
                }
                return;
            }
            loadNextAd(appLovinNativeAdLoadListener);
            return;
        }
        C2374t.m30034j("NativeAdService", "Requested invalid number of native ads: " + i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void loadNextAd(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        loadNativeAds(1, appLovinNativeAdLoadListener);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void precacheResources(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        this.f21578a.m30233z();
        if (appLovinNativeAd.isImagePrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
            m19030a(appLovinNativeAd, appLovinNativeAdPrecacheListener);
            return;
        }
        this.f21578a.m30249j().m18826a(new C2270g.C2303m(Arrays.asList((NativeAdImpl) appLovinNativeAd), this.f21578a, new C7019b(appLovinNativeAdPrecacheListener)), C7048s.EnumC7049a.CACHING_OTHER);
    }

    public void preloadAds(C2246b bVar) {
        this.f21578a.m30241r().m30013h(bVar);
        int h = bVar.m30628h();
        int i = h;
        if (h == 0) {
            i = h;
            if (this.f21578a.m30241r().m30024b(bVar)) {
                i = 1;
            }
        }
        this.f21578a.m30241r().m30023b(bVar, i);
    }

    public String toString() {
        return "NativeAdServiceImpl{}";
    }
}
