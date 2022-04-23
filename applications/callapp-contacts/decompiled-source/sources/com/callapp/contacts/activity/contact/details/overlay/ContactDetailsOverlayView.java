package com.callapp.contacts.activity.contact.details.overlay;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PostCallActivity;
import com.callapp.contacts.activity.contact.details.PresenterManager;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainerImpl;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.loaders.AdLoaderFactory;
import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.glide.RoundedCornersTransformation;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.a;
import com.mopub.common.util.Views;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView.class */
public abstract class ContactDetailsOverlayView extends BaseOverlayView implements ContactDataChangeListener, AdUtils.AdEvents {
    public static final String EXTRA_IS_FROM_NOTIFICATION = "isFromNotification";
    private static final int SECONDARY_COLOR = ThemeUtils.getColor(2131100108);
    private static final int TEXT_COLOR = ThemeUtils.getColor(2131100140);
    private FrameLayout adPlaceHolder;
    protected int adSize;
    private StoreItemAssetManager assetManager;
    private View bottomLayoutView;
    private ContactData contact;
    private Object currentAd;
    private final EventBus eventBus;
    protected ExtractedInfo extractedInfo;
    private View imgTint;
    private Intent lastIntent;
    private BaseMultiSizeAdLoader multiSizeAdLoader;
    private View nativeAdView;
    private View.OnAttachStateChangeListener onAttachStateChangeListener;
    private final PresentersContainerImpl presenterContainer;
    private final PresenterManager presenterManager;
    protected ProfilePictureView profilePicture;
    protected FrameLayout topBarContainer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView$11  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$11.class */
    public static /* synthetic */ class AnonymousClass11 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12235a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f12235a = iArr;
            try {
                iArr[PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12235a[PresentersContainer.MODE.INCOMING_SMS_OVERLAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$InCallDuration.class */
    public enum InCallDuration {
        NEVER(0),
        AFTER_5_SEC(5),
        AFTER_10_SEC(10),
        AFTER_15_SEC(15),
        AFTER_20_SEC(20),
        AFTER_25_SEC(25),
        AFTER_30_SEC(30);
        
        public final int duration;

        InCallDuration(int i) {
            this.duration = i;
        }
    }

    public ContactDetailsOverlayView(Context context, BaseOverlayView.OverlayViewListener overlayViewListener, boolean z, boolean z2) {
        super(context, z, z2, overlayViewListener);
        EventBus eventBus = new EventBus();
        this.eventBus = eventBus;
        this.adSize = 0;
        PresentersContainerImpl presentersContainerImpl = new PresentersContainerImpl(eventBus, getPresenterContainerMode()) { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.1
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public View findViewById(int i) {
                return ContactDetailsOverlayView.this.findViewById(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public void finish() {
                ContactDetailsOverlayView.this.finishViewContainer(true);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public ContactData getContact() {
                return ContactDetailsOverlayView.this.contact;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public EventBus getEventBus() {
                return ContactDetailsOverlayView.this.eventBus;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public Context getRealContext() {
                return ContactDetailsOverlayView.this.getContext();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean hasIntentExtra(String str) {
                Intent intent = ContactDetailsOverlayView.this.lastIntent;
                if (intent == null || !StringUtils.b((CharSequence) str)) {
                    return false;
                }
                return intent.hasExtra(str);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isFinishing() {
                return false;
            }
        };
        this.presenterContainer = presentersContainerImpl;
        this.presenterManager = new PresenterManager(presentersContainerImpl.getContainerMode());
    }

    public ContactDetailsOverlayView(Context context, boolean z, boolean z2) {
        this(context, null, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
        }
    }

    private void setOverlayCover() {
        StoreItemAssetManager.Builder builder = new StoreItemAssetManager.Builder();
        builder.f14985c = new StoreItemAssetManager.AssetListener<String>() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.8
            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public /* synthetic */ void onAssetReady(String str, String str2) {
                final String str3 = str;
                if (!StringUtils.a((CharSequence) str3)) {
                    final ImageView imageView = (ImageView) ContactDetailsOverlayView.this.topBarContainer.findViewById(2131363461);
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            imageView.setVisibility(0);
                            ContactDetailsOverlayView.this.imgTint.setAlpha(0.6f);
                            new GlideUtils.GlideRequestBuilder(imageView, str3, ContactDetailsOverlayView.this.getContext()).a((int) Math.ceil(Activities.a(11.0f)), RoundedCornersTransformation.CornerType.TOP).d();
                        }
                    });
                }
            }
        };
        StoreItemAssetManager a2 = builder.a();
        this.assetManager = a2;
        a2.getAssets();
    }

    private void setupFooter(LayoutInflater layoutInflater) {
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362853);
        int bottomLayoutResId = getBottomLayoutResId();
        if (bottomLayoutResId != 0) {
            View inflate = layoutInflater.inflate(bottomLayoutResId, viewGroup, true);
            this.bottomLayoutView = inflate;
            inflate.setBackgroundResource(getBottomLayoutBackgroundColor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackEvent() {
        int i = AnonymousClass11.f12235a[getPresenterContainer().getContainerMode().ordinal()];
        if (i == 1) {
            AnalyticsManager.get().a(getTrackEventCategory(), "ClickOverlayCopyNumber");
        } else if (i == 2) {
            AnalyticsManager.get().a(getTrackEventCategory(), "ClickOverlaySMS");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void createLayoutForOverlay(LayoutInflater layoutInflater) {
        super.createLayoutForOverlay(layoutInflater);
        setupFooter(layoutInflater);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void finishViewContainer(boolean z) {
        PresentersContainerImpl presentersContainerImpl = this.presenterContainer;
        if (presentersContainerImpl.a(presentersContainerImpl.getContact()) && ThemeUtils.isThemeLight() != ((ThemeState) Prefs.di.get()).isLightTheme()) {
            ThemeUtils.setIsLight(((ThemeState) Prefs.di.get()).isLightTheme());
        }
        super.finishViewContainer(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getAdLayoutResourceId(int i) {
        return 0;
    }

    protected String getAdUnitIdRemoteConfigName() {
        return null;
    }

    protected String getBiddingRemoteConfigName() {
        return null;
    }

    protected int getBottomLayoutAdColor() {
        return 2131099891;
    }

    protected int getBottomLayoutBackgroundColor() {
        return ThemeUtils.isThemeLight() ? 2131231350 : 2131231351;
    }

    protected abstract int getBottomLayoutResId();

    /* JADX INFO: Access modifiers changed from: protected */
    public ContactData getContact() {
        return this.contact;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EventBus getEventBus() {
        return this.eventBus;
    }

    protected String getExperimentRemoteConfigName() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public int getLayoutResId() {
        return 2131558445;
    }

    abstract IMDataExtractionUtils.RecognizedPersonOrigin getOrigin();

    protected String getPreferencesRemoteConfigName() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PresentersContainerImpl getPresenterContainer() {
        return this.presenterContainer;
    }

    protected abstract PresentersContainer.MODE getPresenterContainerMode();

    protected ViewBinder getViewBinder(AdSettings adSettings) {
        return AdUtils.b(adSettings);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public void onAdClick() {
        finishViewContainer(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdLoaded(final View view) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.4
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsOverlayView.this.adPlaceHolder.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), ContactDetailsOverlayView.this.getBottomLayoutAdColor()));
                if (ContactDetailsOverlayView.this.bottomLayoutView != null) {
                    ContactDetailsOverlayView.this.bottomLayoutView.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), ContactDetailsOverlayView.this.getBottomLayoutAdColor()));
                }
                View view2 = view;
                if (view2 != null) {
                    view2.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), ContactDetailsOverlayView.this.getBottomLayoutAdColor()));
                    ContactDetailsOverlayView.this.adPlaceHolder.removeAllViews();
                    ContactDetailsOverlayView contactDetailsOverlayView = ContactDetailsOverlayView.this;
                    contactDetailsOverlayView.setWindowHeight(contactDetailsOverlayView.getWindowHeight() - ContactDetailsOverlayView.this.adSize);
                    ContactDetailsOverlayView contactDetailsOverlayView2 = ContactDetailsOverlayView.this;
                    contactDetailsOverlayView2.repositionOverlayVertically(contactDetailsOverlayView2.getWindowY());
                    ContactDetailsOverlayView.this.adPlaceHolder.addView(view);
                    int a2 = (int) Activities.a(8.0f);
                    View view3 = view;
                    if (!(view3 instanceof MoPubView)) {
                        TextView textView = (TextView) view3.findViewById(2131363360);
                        if (textView != null) {
                            textView.setTextColor(ContactDetailsOverlayView.TEXT_COLOR);
                        }
                        TextView textView2 = (TextView) view.findViewById(2131361973);
                        if (textView2 != null) {
                            textView2.setTextColor(ContactDetailsOverlayView.SECONDARY_COLOR);
                        }
                        TextView textView3 = (TextView) view.findViewById(2131363359);
                        if (textView3 != null) {
                            textView3.setTextColor(ContactDetailsOverlayView.SECONDARY_COLOR);
                        }
                        view.measure(0, 0);
                        ContactDetailsOverlayView.this.adSize = view.getMeasuredHeight() + a2;
                    } else {
                        ContactDetailsOverlayView.this.adSize = (int) Activities.a(((MoPubView) view3).getAdHeight() + (a2 * 4));
                    }
                    ContactDetailsOverlayView contactDetailsOverlayView3 = ContactDetailsOverlayView.this;
                    contactDetailsOverlayView3.setWindowHeight(contactDetailsOverlayView3.getWindowHeight() + ContactDetailsOverlayView.this.adSize);
                    ContactDetailsOverlayView contactDetailsOverlayView4 = ContactDetailsOverlayView.this;
                    contactDetailsOverlayView4.repositionOverlayVertically(contactDetailsOverlayView4.getWindowY());
                }
            }
        });
    }

    protected void onAdLoaded(final NativeAd nativeAd) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.3
            @Override // java.lang.Runnable
            public void run() {
                View createAdView = nativeAd.createAdView(CallAppApplication.get(), null);
                nativeAd.renderAdView(createAdView);
                nativeAd.prepare(createAdView);
                ContactDetailsOverlayView.this.clearAd();
                ContactDetailsOverlayView.this.nativeAdView = createAdView;
                ContactDetailsOverlayView.this.currentAd = nativeAd;
                ContactDetailsOverlayView contactDetailsOverlayView = ContactDetailsOverlayView.this;
                contactDetailsOverlayView.onAdLoaded(contactDetailsOverlayView.nativeAdView);
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public /* synthetic */ void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
        AdUtils.AdEvents._CC.$default$onBannerAdFailed(this, moPubView, moPubErrorCode);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public void onBannerAdLoaded(final MoPubView moPubView, boolean z) {
        if (this.currentAd != moPubView) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.2
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsOverlayView.this.clearAd();
                    ContactDetailsOverlayView.this.currentAd = moPubView;
                    ContactDetailsOverlayView.this.onAdLoaded(moPubView);
                }
            });
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
        this.presenterContainer.onContactChanged(contactData, set);
        if (getPresenterContainer().a(contactData) && PhoneStateManager.get().isAnyCallActive() && ThemeUtils.isThemeLight()) {
            ThemeUtils.setIsLight(false);
        }
        if (CollectionUtils.a(set, ContactField.spamScore)) {
            this.presenterContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.10
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsOverlayView.this.setLayoutColors(UserCorrectedInfoUtil.a(contactData));
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onCreate() {
        super.onCreate();
        this.adPlaceHolder = (FrameLayout) findViewById(2131361969);
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.5
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (ContactDetailsOverlayView.this.multiSizeAdLoader != null) {
                    ContactDetailsOverlayView.this.multiSizeAdLoader.setAdVisibility(0);
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (ContactDetailsOverlayView.this.multiSizeAdLoader != null) {
                    ContactDetailsOverlayView.this.multiSizeAdLoader.setAdVisibility(8);
                }
            }
        };
        this.onAttachStateChangeListener = onAttachStateChangeListener;
        this.adPlaceHolder.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.topBarContainer = (FrameLayout) findViewById(2131364169);
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById(2131363565);
        this.profilePicture = profilePictureView;
        if (profilePictureView != null) {
            profilePictureView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnalyticsManager.get().a(ContactDetailsOverlayView.this.getTrackEventCategory(), "Pressed on profile picture", Constants.CLICK);
                    ContactDetailsOverlayView.this.onProfilePictureClick();
                    ContactDetailsOverlayView.this.trackEvent();
                }
            });
        }
        setCloseButtonListenerInOverlay(a.C0337a.closeButton, -1, false);
        this.presenterManager.c(this.presenterContainer);
        if (!AdUtils.a() && shouldShowAd()) {
            JSONAdPreferences a2 = AdUtils.a(getPreferencesRemoteConfigName());
            BaseMultiSizeAdLoader a3 = AdLoaderFactory.a(getContext(), this, AdUtils.b(getBiddingRemoteConfigName(), getAdUnitIdRemoteConfigName()), a2 != null ? a2.getRefreshInterval() : 0, a2 != null && a2.isRetryAfterFail(), new NativeAdParamGetter() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.7
                @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                public final AdSettings a(String str) {
                    String experimentRemoteConfigName = ContactDetailsOverlayView.this.getExperimentRemoteConfigName();
                    final ContactDetailsOverlayView contactDetailsOverlayView = ContactDetailsOverlayView.this;
                    return AdUtils.a(str, experimentRemoteConfigName, new AdUtils.NativeAdLayoutGetter() { // from class: com.callapp.contacts.activity.contact.details.overlay._$$Lambda$6FC7JIfl7cuKCnmDJc7Jl_t_LAc
                        @Override // com.callapp.contacts.util.ads.AdUtils.NativeAdLayoutGetter
                        public final int getAdLayoutResourceId(int i) {
                            return ContactDetailsOverlayView.this.getAdLayoutResourceId(i);
                        }
                    });
                }

                @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                public final ViewBinder a(AdSettings adSettings) {
                    return ContactDetailsOverlayView.this.getViewBinder(adSettings);
                }

                @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
                public final EnumSet<RequestParameters.NativeAdAsset> b(AdSettings adSettings) {
                    return AdUtils.a(adSettings);
                }
            }, Activities.b((Activities.getScreenWidth(1) - Activities.a(16.0f)) - (Activities.a(1.0f) * 16.0f)));
            this.multiSizeAdLoader = a3;
            a3.a();
        }
        ((TextView) findViewById(2131362189)).setText(Activities.getString(2131887377));
        this.imgTint = this.topBarContainer.findViewById(2131363462);
        ContactData contactData = this.contact;
        ViewUtils.c(this.imgTint, 2131232225, ThemeUtils.getColor((contactData == null || !contactData.isSpammer()) ? 2131099784 : 2131099675));
        setOverlayCover();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onDestroy() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onDestroy();
        BaseMultiSizeAdLoader baseMultiSizeAdLoader = this.multiSizeAdLoader;
        if (baseMultiSizeAdLoader != null) {
            baseMultiSizeAdLoader.b();
            this.multiSizeAdLoader = null;
        }
        FrameLayout frameLayout = this.adPlaceHolder;
        if (!(frameLayout == null || (onAttachStateChangeListener = this.onAttachStateChangeListener) == null)) {
            frameLayout.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        StoreItemAssetManager storeItemAssetManager = this.assetManager;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.b();
        }
        clearAd();
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this);
        this.eventBus.a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f14378d, (EventType<DestroyListener, Object>) null, false);
        this.presenterManager.a();
        OverlayManager.get().a(this);
        this.eventBus.a();
        this.presenterContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView.9
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsOverlayView.this.removeView();
                ContactDetailsOverlayView.this.presenterContainer.onDestroy();
            }
        });
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
    public /* synthetic */ void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
        AdUtils.AdEvents._CC.$default$onNativeAdFailed(this, nativeErrorCode);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
        onAdLoaded(nativeAd);
    }

    public boolean onNewIntent(Intent intent) {
        this.lastIntent = intent;
        Bundle extras = intent.getExtras();
        boolean z = false;
        if (extras == null) {
            CLog.a(ContactDetailsOverlayView.class, "Overlay initialized without extras");
            finishViewContainer(false);
            return false;
        }
        boolean z2 = extras.getBoolean(PostCallActivity.EXTRA_IS_BLOCKED);
        boolean booleanExtra = intent.getBooleanExtra(PostCallActivity.EXTRA_IS_SPAMMER, false);
        ContactData contactData = this.contact;
        if (contactData != null) {
            booleanExtra = contactData.isSpammer();
        }
        if (z2 || booleanExtra) {
            z = true;
        }
        setLayoutColors(z);
        long j = extras.getLong(Constants.EXTRA_CONTACT_ID);
        Phone a2 = PhoneManager.get().a(extras.getString(Constants.EXTRA_PHONE_NUMBER));
        OverlayManager.get().a(this, a2);
        this.extractedInfo = ExtractedInfo.Builder.getBuilderAccordingToOrigin(a2, getOrigin()).build();
        Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(a2, this.extractedInfo, j, this, ContactFieldEnumSets.ALL);
        setContact((ContactData) registerForContactDetailsStack.first);
        boolean firstTimeExperience = setFirstTimeExperience();
        if (firstTimeExperience) {
            setCloseButtonListenerInOverlay(a.C0337a.closeButton, -1, firstTimeExperience);
        }
        if (((Set) registerForContactDetailsStack.second).size() > 0) {
            onContactChanged(this.contact, (Set) registerForContactDetailsStack.second);
        }
        String stringExtra = intent.getStringExtra(ContactDetailsActivity.EXTRA_FULL_NAME);
        if (StringUtils.b((CharSequence) stringExtra)) {
            this.contact.assertIntentDataExists();
            this.contact.getIntentData().setFullName(stringExtra);
            this.contact.updateFullName();
            return true;
        }
        this.contact.fireChange(ContactField.phone);
        return true;
    }

    protected void onProfilePictureClick() {
        if (ContactDetailsActivity.startFullDetailsActivity(getContext(), this.lastIntent, this.extractedInfo, false, true, null, getTrackEventCategory(), false)) {
            finishViewContainer(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setContact(ContactData contactData) {
        this.contact = contactData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setFirstTimeExperience() {
        if ((this.contact == null || !this.presenterContainer.getContainerMode().equals(PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY)) && !this.presenterContainer.getContainerMode().equals(PresentersContainer.MODE.INCOMING_SMS_OVERLAY)) {
            findViewById(2131362824).setVisibility(4);
            return false;
        } else if (!ContactLoaderManager.checkIfWeHaveNameForNonContact(this.contact)) {
            return false;
        } else {
            if (this.presenterContainer.getContainerMode().equals(PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY) && Prefs.gs.get().booleanValue()) {
                findViewById(2131362824).setVisibility(0);
                Prefs.gs.set(Boolean.FALSE);
                return true;
            } else if (!this.presenterContainer.getContainerMode().equals(PresentersContainer.MODE.INCOMING_SMS_OVERLAY) || !Prefs.gr.get().booleanValue()) {
                return false;
            } else {
                findViewById(2131362824).setVisibility(0);
                Prefs.gr.set(Boolean.FALSE);
                return true;
            }
        }
    }

    protected void setLayoutColors(boolean z) {
        ViewUtils.c(this.imgTint, 2131232225, z ? ThemeUtils.getColor(2131099675) : ThemeUtils.getColor(2131099784));
    }

    protected boolean shouldShowAd() {
        return false;
    }
}
