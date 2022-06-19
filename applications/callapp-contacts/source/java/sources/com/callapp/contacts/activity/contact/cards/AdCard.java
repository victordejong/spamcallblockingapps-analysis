package com.callapp.contacts.activity.contact.cards;

import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.callapp.contacts.util.ads.JSONAdSettings;
import com.callapp.contacts.util.ads.JSONExperiment;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.loaders.AdLoaderFactory;
import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.mopub.common.util.Views;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.CallAppMoPubStaticNativeAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/AdCard.class */
public abstract class AdCard extends ContactCard<AdViewHolder, Object> {
    private JSONAdPreferences adPreferences;
    protected AdSettings adSettings;
    protected ViewGroup container;
    protected boolean isDestroyed;
    private BaseMultiSizeAdLoader multiSizeAdLoader;
    private View nativeAdView;
    private View.OnAttachStateChangeListener onAttachStateChangeListener;
    private final String TAG = getClass().getSimpleName();
    private boolean triedGettingAdPreferences = false;
    private AtomicBoolean requestInFlight = new AtomicBoolean(false);
    protected Object currentAd = null;
    private boolean shouldReplace = true;
    private final AdUtils.AdEvents adEvents = new AdUtils.AdEvents() { // from class: com.callapp.contacts.activity.contact.cards.AdCard.2
        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onAdClick() {
            AdUtils.AdEvents._CC.$default$onAdClick(this);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            CLog.m27606a(AdCard.this.TAG);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onBannerAdLoaded(MoPubView moPubView, boolean z) {
            CLog.m27606a(AdCard.this.TAG);
            AdCard.this.updateCardData(moPubView, false);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialDismissed(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
            AdUtils.AdEvents._CC.$default$onInterstitialFailed(this, moPubInterstitial, moPubErrorCode);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialLoaded(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialShown(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            String str = AdCard.this.TAG;
            "onNativeFail: ".concat(String.valueOf(nativeErrorCode));
            CLog.m27606a(str);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
            AdCard.this.updateCardData(nativeAd, false);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder.class */
    public static class AdViewHolder {

        /* renamed from: a */
        private final ViewGroup f20965a;

        AdViewHolder(ViewGroup viewGroup) {
            this.f20965a = viewGroup;
        }
    }

    public AdCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer, i);
    }

    public void clearAd() {
        Object obj = this.currentAd;
        if (obj != null) {
            if (obj instanceof MoPubView) {
                MoPubView moPubView = (MoPubView) obj;
                Views.removeFromParent(moPubView);
                moPubView.setBannerAdListener(null);
                moPubView.destroy();
            } else {
                NativeAd nativeAd = (NativeAd) obj;
                nativeAd.clear(this.nativeAdView);
                nativeAd.destroy();
                this.nativeAdView = null;
            }
            this.currentAd = null;
            this.shouldReplace = true;
        }
    }

    public AdSettings getCardAdSettings(String str, String str2) {
        JSONAdSettings jSONAdSettings;
        String m28703a = StringUtils.m26045b((CharSequence) str2) ? CallAppRemoteConfigManager.get().m28703a(str2) : null;
        if (StringUtils.m26045b((CharSequence) m28703a)) {
            try {
                JSONExperiment jSONExperiment = (JSONExperiment) Parser.m26917a(m28703a, new TypeReference<JSONExperiment<JSONAdSettings>>() { // from class: com.callapp.contacts.activity.contact.cards.AdCard.6
                });
                if (jSONExperiment != null && CollectionUtils.m26068b(jSONExperiment.getExperiments())) {
                    int groupDimension = AbTestUtils.getGroupDimension();
                    List experiments = jSONExperiment.getExperiments();
                    if (CollectionUtils.m26068b(experiments)) {
                        Iterator it2 = experiments.iterator();
                        do {
                            if (it2.hasNext()) {
                                jSONAdSettings = (JSONAdSettings) it2.next();
                            }
                        } while (jSONAdSettings.getGroup() != groupDimension);
                        int animation = jSONAdSettings.getAnimation();
                        AdSettings adSettings = new AdSettings(str, getAdLayoutResourceId(jSONAdSettings.getLayout()), false, animation != 3 ? animation != 4 ? animation != 5 ? 2 : 5 : 4 : 3, false);
                        adSettings.f27896a = AdUtils.isIconImageCircleByType(jSONAdSettings.getLayout());
                        return adSettings;
                    }
                }
            } catch (Exception e) {
                CLog.m27609a(AdCard.class, e);
            }
        }
        return new AdSettings(str, getAdLayoutResourceId(-1), false, 3, false);
    }

    protected abstract int getAdLayoutResourceId(int i);

    public JSONAdPreferences getAdPreferences() {
        if (!this.triedGettingAdPreferences) {
            this.triedGettingAdPreferences = true;
            this.adPreferences = AdUtils.m27270a(getPreferencesRemoteConfigName());
        }
        return this.adPreferences;
    }

    protected abstract EnumSet<RequestParameters.NativeAdAsset> getCardDesiredAssets(AdSettings adSettings);

    protected abstract ViewBinder getCardViewBinder(AdSettings adSettings);

    protected abstract String getExperimentRemoteConfigName();

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.fullName, ContactField.phone);
    }

    protected abstract String getMultiSizeAdUnitIdRemoteConfigName();

    protected abstract String getMultiSizeBiddingConfigurationRemoteConfigName();

    protected abstract String getPreferencesRemoteConfigName();

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean isCardLockedWhenScreenIsLocked() {
        return false;
    }

    protected boolean loadAdOnContactChange() {
        return true;
    }

    protected void onAdLoaded() {
    }

    public void onBindViewHolder(AdViewHolder adViewHolder) {
        ViewGroup viewGroup = this.container;
        if (viewGroup == null || this.currentAd == null || !this.shouldReplace) {
            return;
        }
        this.shouldReplace = false;
        viewGroup.removeAllViews();
        Object obj = this.currentAd;
        if (obj instanceof MoPubView) {
            this.container.addView((MoPubView) obj);
            return;
        }
        NativeAd nativeAd = (NativeAd) obj;
        View createAdView = nativeAd.createAdView(this.presentersContainer.getRealContext(), this.container);
        this.nativeAdView = createAdView;
        nativeAd.renderAdView(createAdView);
        nativeAd.prepare(this.nativeAdView);
        this.container.addView(this.nativeAdView);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact)) {
            hideCard();
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.AdCard.3
                @Override // java.lang.Runnable
                public void run() {
                    if (AdCard.this.multiSizeAdLoader != null) {
                        AdCard.this.multiSizeAdLoader.mo27194b();
                    }
                    AdCard.this.clearAd();
                    AdCard.this.requestInFlight.set(false);
                    if (AdCard.this.loadAdOnContactChange()) {
                        new Task() { // from class: com.callapp.contacts.activity.contact.cards.AdCard.3.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                AdCard.this.tryLoadingAd();
                            }
                        }.execute();
                    }
                }
            });
        } else if (!loadAdOnContactChange()) {
        } else {
            tryLoadingAd();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public AdViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.container = (ViewGroup) viewGroup.findViewById(2131363425);
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.callapp.contacts.activity.contact.cards.AdCard.5
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (AdCard.this.multiSizeAdLoader != null) {
                    AdCard.this.multiSizeAdLoader.setAdVisibility(0);
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (AdCard.this.multiSizeAdLoader != null) {
                    AdCard.this.multiSizeAdLoader.setAdVisibility(8);
                }
            }
        };
        this.onAttachStateChangeListener = onAttachStateChangeListener;
        this.container.addOnAttachStateChangeListener(onAttachStateChangeListener);
        return new AdViewHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        this.isDestroyed = true;
        super.onDestroy();
        ViewGroup viewGroup = this.container;
        if (viewGroup != null && (onAttachStateChangeListener = this.onAttachStateChangeListener) != null) {
            viewGroup.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        BaseMultiSizeAdLoader baseMultiSizeAdLoader = this.multiSizeAdLoader;
        if (baseMultiSizeAdLoader != null) {
            baseMultiSizeAdLoader.mo27194b();
        }
        clearAd();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onThemeChangedInner() {
        ViewGroup viewGroup;
        super.onThemeChangedInner();
        if ((this.currentAd instanceof MoPubView) || (viewGroup = this.container) == null) {
            return;
        }
        CallAppMoPubStaticNativeAdRenderer.colorTextViews(viewGroup.getChildAt(viewGroup.getChildCount() - 1));
    }

    public boolean shouldShowAd() {
        if (this.adPreferences == null) {
            return true;
        }
        int frequencyContact = this.presentersContainer.getContact().isContactInDevice() ? this.adPreferences.getFrequencyContact() : this.adPreferences.getFrequencyNonContact();
        if (frequencyContact == 0) {
            return false;
        }
        return frequencyContact == 1 || Prefs.f26330cA.get().longValue() % ((long) frequencyContact) == 0;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void tryLoadingAd() {
        if (this.requestInFlight.getAndSet(true)) {
            return;
        }
        getAdPreferences();
        JSONAdPreferences jSONAdPreferences = this.adPreferences;
        boolean z = jSONAdPreferences != null && jSONAdPreferences.shouldShowWithoutName();
        if (AdUtils.m27285a() || ((!z && StringUtils.m26059a((CharSequence) this.presentersContainer.getContact().getFullName())) || !shouldShowAd())) {
            this.requestInFlight.getAndSet(false);
            return;
        }
        JSONAdPreferences jSONAdPreferences2 = this.adPreferences;
        int refreshInterval = jSONAdPreferences2 != null ? jSONAdPreferences2.getRefreshInterval() : 0;
        JSONAdPreferences jSONAdPreferences3 = this.adPreferences;
        BaseMultiSizeAdLoader m27212a = AdLoaderFactory.m27212a(this.presentersContainer.getRealContext(), this.adEvents, AdUtils.m27261b(getMultiSizeBiddingConfigurationRemoteConfigName(), getMultiSizeAdUnitIdRemoteConfigName()), refreshInterval, jSONAdPreferences3 != null && jSONAdPreferences3.isRetryAfterFail(), new NativeAdParamGetter() { // from class: com.callapp.contacts.activity.contact.cards.AdCard.4
            @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
            /* renamed from: a */
            public final AdSettings mo26137a(String str) {
                AdCard adCard = AdCard.this;
                adCard.adSettings = adCard.getCardAdSettings(str, adCard.getExperimentRemoteConfigName());
                return AdCard.this.adSettings;
            }

            @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
            /* renamed from: a */
            public final ViewBinder mo26138a(AdSettings adSettings) {
                return AdCard.this.getCardViewBinder(adSettings);
            }

            @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
            /* renamed from: b */
            public final EnumSet<RequestParameters.NativeAdAsset> mo26136b(AdSettings adSettings) {
                return AdCard.this.getCardDesiredAssets(adSettings);
            }
        }, Activities.m27660b((Activities.getScreenWidth(1) - Activities.m27699a(16.0f)) - (Activities.m27699a(1.0f) * 16.0f)));
        this.multiSizeAdLoader = m27212a;
        m27212a.m27211a();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void updateCardData(final Object obj, boolean z) {
        if (this.isDestroyed || this.currentAd == obj) {
            return;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.AdCard.1
            @Override // java.lang.Runnable
            public void run() {
                AdCard.this.clearAd();
                AdCard.this.shouldReplace = true;
                AdCard.this.currentAd = obj;
                AdCard.this.showCard(true);
                AdCard.this.onAdLoaded();
            }
        });
    }
}
