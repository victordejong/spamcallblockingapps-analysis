package com.callapp.contacts.popup.contact.callrecorder;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PresenterManager;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainerImpl;
import com.callapp.contacts.activity.interfaces.CallRecordChangedListener;
import com.callapp.contacts.activity.interfaces.NotifyDataChangedListener;
import com.callapp.contacts.activity.settings.SettingsActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.CallRecorderUtils;
import com.callapp.contacts.recorder.SeekBarManager;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.glide.RoundedCornersTransformation;
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
import java.util.Date;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer.class */
public class DialogCallRecorderPlayer extends DialogPopup implements ContactDataChangeListener, SeekBarManager.OnSeekBarChanged, AdUtils.AdEvents {
    private FrameLayout adPlaceHolder;
    private StoreItemAssetManager assetManager;
    private boolean autoStartPlay;
    private final CallRecorder callRecorder;
    private CallRecorderPlayerEvents callRecorderPlayerEventsListener;
    private ContactData contact;
    private Object currentAd;
    private TextView durationText;
    private View firstTimeExperienceContainer;
    private BaseMultiSizeAdLoader multiSizeAdLoader;
    private View nativeAdView;
    private View.OnAttachStateChangeListener onAttachStateChangeListener;
    private ImageView playButton;
    private View rootView;
    private SeekBarManager seekBarManager;
    private boolean seenRecordDialogBefore;
    private final PresenterManager presenterManager = new PresenterManager(getPresenterContainerMode());
    private final PresentersContainerImpl presenterContainer = new PresentersContainerImpl(null, getPresenterContainerMode()) { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.1
        @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
        public View findViewById(int i) {
            if (DialogCallRecorderPlayer.this.rootView != null) {
                return DialogCallRecorderPlayer.this.rootView.findViewById(i);
            }
            return null;
        }

        @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
        public void finish() {
            DialogCallRecorderPlayer.this.dismiss();
        }

        @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
        public ContactData getContact() {
            return DialogCallRecorderPlayer.this.contact;
        }

        @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
        public EventBus getEventBus() {
            return null;
        }

        @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
        public Context getRealContext() {
            return DialogCallRecorderPlayer.this.getActivity();
        }

        @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
        public boolean isFinishing() {
            return false;
        }
    };
    private final int secondaryText = ThemeUtils.getColor(2131100108);
    private final int primaryColor = ThemeUtils.getColor(2131099784);
    private final int backgroundColor = ThemeUtils.getColor(2131099686);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer$11  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$11.class */
    public class AnonymousClass11 extends DefaultInterfaceImplUtils.ClickListener {
        AnonymousClass11() {
        }

        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
        public final void a(View view) {
            PopupManager.get().a(DialogCallRecorderPlayer.this.getActivity(), new DialogSimpleMessage(Activities.getString(2131886402), Activities.getString(2131886401), Activities.getString(2131886153), Activities.getString(2131886505), DialogCallRecorderPlayer.this.secondaryText, false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.11.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.11.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CallRecorderManager.get().a(DialogCallRecorderPlayer.this.callRecorder);
                            CallRecorderLoader.a(DialogCallRecorderPlayer.this.contact);
                            EventBusManager.f14368a.a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f12938a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORD_CHANGED, false);
                        }
                    });
                    DialogCallRecorderPlayer.this.dismiss();
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.11.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                }
            }, null));
        }
    }

    /* renamed from: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3.class */
    class AnonymousClass3 implements NativeAdParamGetter {
        AnonymousClass3() {
        }

        @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
        public final AdSettings a(String str) {
            String experimentRemoteConfigName = DialogCallRecorderPlayer.this.getExperimentRemoteConfigName();
            final DialogCallRecorderPlayer dialogCallRecorderPlayer = DialogCallRecorderPlayer.this;
            return AdUtils.a(str, experimentRemoteConfigName, new AdUtils.NativeAdLayoutGetter() { // from class: com.callapp.contacts.popup.contact.callrecorder._$$Lambda$DialogCallRecorderPlayer$3$bTcgkC8EgIZfgL1Q7seO2QwFkxE
                @Override // com.callapp.contacts.util.ads.AdUtils.NativeAdLayoutGetter
                public final int getAdLayoutResourceId(int i) {
                    int adLayoutResourceId;
                    adLayoutResourceId = DialogCallRecorderPlayer.this.getAdLayoutResourceId(i);
                    return adLayoutResourceId;
                }
            });
        }

        @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
        public final ViewBinder a(AdSettings adSettings) {
            return DialogCallRecorderPlayer.this.getViewBinder(adSettings);
        }

        @Override // com.callapp.contacts.util.ads.NativeAdParamGetter
        public final EnumSet<RequestParameters.NativeAdAsset> b(AdSettings adSettings) {
            return AdUtils.a(adSettings);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents.class */
    public interface CallRecorderPlayerEvents {
        void a();
    }

    public DialogCallRecorderPlayer(CallRecorder callRecorder, boolean z, CallRecorderPlayerEvents callRecorderPlayerEvents) {
        this.callRecorder = callRecorder;
        this.autoStartPlay = z;
        this.callRecorderPlayerEventsListener = callRecorderPlayerEvents;
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

    /* JADX INFO: Access modifiers changed from: private */
    public int getAdLayoutResourceId(int i) {
        return AdUtils.getSmallCardAdLayoutResourceId(i);
    }

    private PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.CALL_RECORDER_POPUP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$showFirstTimeExperienceContainerIfNeeded$1(View view) {
        Intent intent = new Intent(CallAppApplication.get(), SettingsActivity.class);
        intent.putExtra("call_recorder_settings", true);
        Activities.b(CallAppApplication.get(), intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStarredRecorderIcon(ImageView imageView, boolean z) {
        ImageUtils.a(imageView, z ? 2131231680 : 2131231679, new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_ATOP));
    }

    private void setupViews(View view) {
        view.findViewById(2131362884).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.7
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view2) {
                DialogCallRecorderPlayer.this.dismiss();
            }
        });
        final ImageView imageView = (ImageView) view.findViewById(2131362945);
        final ImageView imageView2 = (ImageView) view.findViewById(2131364129);
        imageView2.setColorFilter(ThemeUtils.getColor(2131099784));
        StoreItemAssetManager.Builder builder = new StoreItemAssetManager.Builder();
        builder.f14985c = new StoreItemAssetManager.AssetListener<String>() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.8
            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public /* synthetic */ void onAssetReady(String str, String str2) {
                final String str3 = str;
                if (!StringUtils.a((CharSequence) str3)) {
                    imageView2.setAlpha(0.6f);
                    imageView.setVisibility(0);
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            new GlideUtils.GlideRequestBuilder(imageView, str3, DialogCallRecorderPlayer.this.presenterContainer.getRealContext()).a((int) Math.ceil(Activities.a(11.0f)), RoundedCornersTransformation.CornerType.TOP).d();
                        }
                    });
                }
            }
        };
        StoreItemAssetManager a2 = builder.a();
        this.assetManager = a2;
        a2.getAssets();
        ImageView imageView3 = (ImageView) view.findViewById(a.C0337a.closeButton);
        imageView3.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        imageView3.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.9
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view2) {
                DialogCallRecorderPlayer.this.dismiss();
            }
        });
        TextView textView = (TextView) view.findViewById(2131362525);
        textView.setTextColor(this.secondaryText);
        textView.setText(String.valueOf(DateUtils.c(new Date(this.callRecorder.getDate()))));
        TextView textView2 = (TextView) view.findViewById(2131362647);
        this.durationText = textView2;
        textView2.setTextColor(this.secondaryText);
        CallRecorderManager.get();
        long a3 = CallRecorderManager.a(this.callRecorder.getFileName());
        int i = 0;
        this.durationText.setText(a3 != -1 ? CallRecorderUtils.a(0, a3) : "");
        view.findViewById(2131362611).setBackgroundColor(ThemeUtils.getColor(2131099891));
        view.findViewById(2131362186).setBackgroundColor(this.backgroundColor);
        view.findViewById(2131363522).setBackgroundColor(this.backgroundColor);
        ImageView imageView4 = (ImageView) view.findViewById(2131363831);
        imageView4.setColorFilter(new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_ATOP));
        imageView4.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.10
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view2) {
                CallRecorderManager.get();
                CallRecorderManager.a(view2.getContext(), DialogCallRecorderPlayer.this.callRecorder);
            }
        });
        ImageView imageView5 = (ImageView) view.findViewById(2131362546);
        imageView5.setColorFilter(new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_ATOP));
        imageView5.setOnClickListener(new AnonymousClass11());
        ImageView imageView6 = (ImageView) view.findViewById(2131364485);
        imageView6.setColorFilter(new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_ATOP));
        if (!this.callRecorder.isUploaded()) {
            i = 8;
        }
        imageView6.setVisibility(i);
        final ImageView imageView7 = (ImageView) view.findViewById(2131362786);
        setStarredRecorderIcon(imageView7, this.callRecorder.getStarred());
        imageView7.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.12
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view2) {
                DialogCallRecorderPlayer.this.setStarredRecorderIcon(imageView7, CallRecorderManager.get().a(DialogCallRecorderPlayer.this.callRecorder, DialogCallRecorderPlayer.this.contact));
            }
        });
        ImageView imageView8 = (ImageView) view.findViewById(2131363519);
        this.playButton = imageView8;
        imageView8.setColorFilter(new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_ATOP));
        this.playButton.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.13
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view2) {
                if (DialogCallRecorderPlayer.this.seekBarManager != null) {
                    DialogCallRecorderPlayer.this.seekBarManager.b();
                }
            }
        });
        view.findViewById(2131363565).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.14
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view2) {
                if (DialogCallRecorderPlayer.this.contact != null) {
                    DialogCallRecorderPlayer.this.dismiss();
                    Activities.a(CallAppApplication.get(), ContactDetailsActivity.createIntent(CallAppApplication.get(), DialogCallRecorderPlayer.this.contact.getDeviceId(), DialogCallRecorderPlayer.this.contact.getPhone().getRawNumber(), null, true, DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), DataChangedInfo.POSITION_ALL, 3), "DialogCallRecorder", null));
                }
            }
        });
        SeekBar seekBar = (SeekBar) view.findViewById(2131363796);
        this.seekBarManager = new SeekBarManager(seekBar, this, this.callRecorder, "From files screen");
        seekBar.getProgressDrawable().setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.MULTIPLY));
        seekBar.getThumb().setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        if (this.autoStartPlay) {
            this.seekBarManager.b();
        }
        View findViewById = view.findViewById(2131362825);
        this.firstTimeExperienceContainer = findViewById;
        findViewById.setVisibility(8);
    }

    private void showFirstTimeExperienceContainerIfNeeded() {
        this.firstTimeExperienceContainer.setVisibility(this.seenRecordDialogBefore ? 8 : 0);
        if (!this.seenRecordDialogBefore) {
            this.firstTimeExperienceContainer.setBackgroundColor(ThemeUtils.getColor(2131099891));
            TextView textView = (TextView) this.firstTimeExperienceContainer.findViewById(2131362826);
            textView.setText(Activities.getString(2131887885));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView2 = (TextView) this.firstTimeExperienceContainer.findViewById(2131362247);
            textView2.setText(Activities.getString(2131886505));
            textView2.setTextColor(ThemeUtils.getColor(2131099784));
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder._$$Lambda$DialogCallRecorderPlayer$nix4E6ncfXAsT6E2gttmflZJbUU
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogCallRecorderPlayer.this.lambda$showFirstTimeExperienceContainerIfNeeded$0$DialogCallRecorderPlayer(view);
                }
            });
            TextView textView3 = (TextView) this.firstTimeExperienceContainer.findViewById(2131362329);
            textView3.setText(Activities.getString(2131887858));
            textView3.setTextColor(ThemeUtils.getColor(2131100108));
            textView3.setOnClickListener(_$$Lambda$DialogCallRecorderPlayer$fS_as6gq1tSYlpr_3FvoM1Ha87A.INSTANCE);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_RECORDER_DIALOG_SCREEN);
        super.dismiss();
    }

    protected String getExperimentRemoteConfigName() {
        return "CallRecorderContactExperiments";
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    protected String getPreferencesRemoteConfigName() {
        return "CallRecorderContactPreferences";
    }

    protected ViewBinder getViewBinder(AdSettings adSettings) {
        return AdUtils.b(adSettings);
    }

    public /* synthetic */ void lambda$showFirstTimeExperienceContainerIfNeeded$0$DialogCallRecorderPlayer(View view) {
        this.firstTimeExperienceContainer.setVisibility(8);
    }

    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
    public void onAdClick() {
        dismiss();
    }

    protected void onAdLoaded(final View view) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.6
            @Override // java.lang.Runnable
            public void run() {
                DialogCallRecorderPlayer.this.adPlaceHolder.setBackgroundColor(DialogCallRecorderPlayer.this.backgroundColor);
                View view2 = view;
                if (view2 != null) {
                    view2.setBackgroundColor(DialogCallRecorderPlayer.this.backgroundColor);
                    DialogCallRecorderPlayer.this.adPlaceHolder.removeAllViews();
                    DialogCallRecorderPlayer.this.adPlaceHolder.addView(view);
                    View view3 = view;
                    if (!(view3 instanceof MoPubView)) {
                        TextView textView = (TextView) view3.findViewById(2131363360);
                        if (textView != null) {
                            textView.setTextColor(ThemeUtils.getColor(2131100140));
                        }
                        TextView textView2 = (TextView) view.findViewById(2131361973);
                        if (textView2 != null) {
                            textView2.setTextColor(DialogCallRecorderPlayer.this.secondaryText);
                        }
                        TextView textView3 = (TextView) view.findViewById(2131363359);
                        if (textView3 != null) {
                            textView3.setTextColor(DialogCallRecorderPlayer.this.secondaryText);
                        }
                    }
                }
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
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.4
                @Override // java.lang.Runnable
                public void run() {
                    DialogCallRecorderPlayer.this.clearAd();
                    DialogCallRecorderPlayer.this.currentAd = moPubView;
                    DialogCallRecorderPlayer.this.onAdLoaded(moPubView);
                }
            });
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        this.presenterContainer.onContactChanged(contactData, set);
        if (CollectionUtils.a(set, ContactField.names, ContactField.fullName)) {
            DataChangedInfo create = DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), DataChangedInfo.POSITION_ALL, 3);
            DataChangedInfo create2 = DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), DataChangedInfo.POSITION_ALL, 4);
            EventBusManager.f14368a.a((EventType<L, EventType<NotifyDataChangedListener, DataChangedInfo>>) NotifyDataChangedListener.f12951b, (EventType<NotifyDataChangedListener, DataChangedInfo>) create, false);
            EventBusManager.f14368a.a((EventType<L, EventType<NotifyDataChangedListener, DataChangedInfo>>) NotifyDataChangedListener.f12951b, (EventType<NotifyDataChangedListener, DataChangedInfo>) create2, false);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogDismissed(DialogInterface dialogInterface) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this);
        FrameLayout frameLayout = this.adPlaceHolder;
        if (!(frameLayout == null || (onAttachStateChangeListener = this.onAttachStateChangeListener) == null)) {
            frameLayout.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        BaseMultiSizeAdLoader baseMultiSizeAdLoader = this.multiSizeAdLoader;
        if (baseMultiSizeAdLoader != null) {
            baseMultiSizeAdLoader.b();
            this.multiSizeAdLoader = null;
        }
        StoreItemAssetManager storeItemAssetManager = this.assetManager;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.b();
        }
        clearAd();
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.a();
        }
        PresenterManager presenterManager = this.presenterManager;
        if (presenterManager != null) {
            presenterManager.a();
        }
        PresentersContainerImpl presentersContainerImpl = this.presenterContainer;
        if (presentersContainerImpl != null) {
            presentersContainerImpl.onDestroy();
        }
        super.onDialogDismissed(dialogInterface);
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
    public void onNativeAdLoaded(final NativeAd nativeAd, boolean z) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.5
            @Override // java.lang.Runnable
            public void run() {
                View createAdView = nativeAd.createAdView(CallAppApplication.get(), null);
                nativeAd.renderAdView(createAdView);
                nativeAd.prepare(createAdView);
                DialogCallRecorderPlayer.this.clearAd();
                DialogCallRecorderPlayer.this.nativeAdView = createAdView;
                DialogCallRecorderPlayer.this.currentAd = nativeAd;
                DialogCallRecorderPlayer dialogCallRecorderPlayer = DialogCallRecorderPlayer.this;
                dialogCallRecorderPlayer.onAdLoaded(dialogCallRecorderPlayer.nativeAdView);
            }
        });
    }

    @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
    public void onPlayerPaused() {
        ImageUtils.a(this.playButton, 2131231841, new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_IN));
    }

    @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
    public void onPlayerReset() {
        ImageUtils.a(this.playButton, 2131231841, new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_IN));
    }

    @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
    public void onPlayerStarted() {
        ImageUtils.a(this.playButton, 2131231813, new PorterDuffColorFilter(this.primaryColor, PorterDuff.Mode.SRC_IN));
        CallRecorderPlayerEvents callRecorderPlayerEvents = this.callRecorderPlayerEventsListener;
        if (callRecorderPlayerEvents != null) {
            callRecorderPlayerEvents.a();
        }
        showFirstTimeExperienceContainerIfNeeded();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f6, code lost:
        if (r0.equals(com.callapp.framework.phone.Phone.f17100b) != false) goto L_0x00f9;
     */
    @Override // com.callapp.contacts.manager.popup.DialogPopup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View ovViewCreated(android.view.LayoutInflater r10, android.view.ViewGroup r11) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.ovViewCreated(android.view.LayoutInflater, android.view.ViewGroup):android.view.View");
    }

    public void pausePlayer() {
        SeekBarManager seekBarManager = this.seekBarManager;
        if (seekBarManager != null) {
            seekBarManager.d();
        }
    }

    @Override // com.callapp.contacts.recorder.SeekBarManager.OnSeekBarChanged
    public void seekBarUpdated(int i, int i2) {
        this.durationText.setText(CallRecorderUtils.a(i, i2));
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setGravity(17);
    }
}
