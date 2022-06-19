package com.callapp.contacts.activity.contact.details;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.ContactsContract;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.C0790b;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.AbstractC1269v;
import androidx.p046g.p047a.p048a.C1157b;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.local.AddCallReminderAction;
import com.callapp.contacts.action.local.AddIncognitoContactAction;
import com.callapp.contacts.action.local.BlockCallAction;
import com.callapp.contacts.action.local.CreateContactsAction;
import com.callapp.contacts.action.local.NoteAction;
import com.callapp.contacts.action.local.RemoveIncognitoContactAction;
import com.callapp.contacts.action.local.SpamAction;
import com.callapp.contacts.action.local.UnBlockCallAction;
import com.callapp.contacts.action.local.UnSpamAction;
import com.callapp.contacts.activity.analytics.cards.CDAnalyticsAdCard;
import com.callapp.contacts.activity.callappplus.CallAppFirstTimeCallDialog;
import com.callapp.contacts.activity.callappplus.CallAppPlusActivity;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.contact.cards.AnalyticsCarouselCard;
import com.callapp.contacts.activity.contact.cards.CDLargeAdCard;
import com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard;
import com.callapp.contacts.activity.contact.cards.ScrollWhenCDAnalyticsExpand;
import com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.CallFabWithActionsView;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PostCallActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment;
import com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter;
import com.callapp.contacts.activity.contact.details.presenter.CallFabUtils;
import com.callapp.contacts.activity.contact.details.presenter.IsSpamPresenter;
import com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup;
import com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.AudioRouteSelectorDialogListener;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter;
import com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.contact.list.keypad.KeypadFragment;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.interfaces.CardShowingAdEvent;
import com.callapp.contacts.activity.interfaces.DefaultDialer;
import com.callapp.contacts.activity.interfaces.DialpadToggleListener;
import com.callapp.contacts.activity.interfaces.FastCacheChangedListener;
import com.callapp.contacts.activity.interfaces.FinishActivityListener;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityEvents;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityListener;
import com.callapp.contacts.activity.interfaces.NotifyDataChangedListener;
import com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener;
import com.callapp.contacts.activity.interfaces.PresenterEvents;
import com.callapp.contacts.activity.interfaces.RecorderStateListener;
import com.callapp.contacts.activity.interfaces.RefreshSearchListener;
import com.callapp.contacts.activity.interfaces.SearchContactsEvents;
import com.callapp.contacts.activity.interfaces.SearchContactsFilter;
import com.callapp.contacts.activity.interfaces.ShowKeypadListener;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.loader.device.CallHistoryLoader;
import com.callapp.contacts.loader.device.NoteLoader;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.MainThreadTimer;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.keyguard.KeyguardActivityStateManager;
import com.callapp.contacts.manager.phone.BluetoothHeadsetConnectivityManager;
import com.callapp.contacts.manager.phone.CallDetailsListener;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.DeviceData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.observers.CallAppContentObserver;
import com.callapp.contacts.observers.OneShotContentContentObserver;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.popup.contact.DialogBulletListTopImage;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.contacts.popup.contact.DrawOverAppsRequestDialog;
import com.callapp.contacts.popup.contact.EditContactPopup;
import com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.interfaces.CallRecorderEvent;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.recorder.recordertest.RecorderTestFragment;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.AppRater;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.Fragments;
import com.callapp.contacts.util.MissedCallUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.InterstitialLoaderLifecycle;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.AudioRouteSelectorDialogFragment;
import com.callapp.contacts.widget.CallAppCheckBox;
import com.callapp.contacts.widget.IncognitoToolTip;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppChatHeadLifecycleObserverManager;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
import com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.p346ui.PlayerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.snackbar.Snackbar;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.skyfishjy.library.RippleBackground;
import it.gmariotti.cardslib.library.recyclerview.p513a.AbstractC18112a;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity.class */
public class ContactDetailsActivity extends BaseContactDetailsActivity implements CallAppFirstTimeCallDialog.ActionClick, ScrollWhenCDAnalyticsExpand, CallFabWithActionsView.OnCallFabActionListener, InCallActionFragment.InCallActionFragmentInterface, BottomBarScrollListener.Listener, TopSheetPresenter.TopSheetListener, KeypadFragment.KeypadEvents, CardShowingAdEvent, DefaultDialer, DialpadToggleListener, FinishActivityListener, KeypadVisibilityListener, SearchContactsEvents, ThemeChangedListener, CallScreenThemeBannerViewController.Listener, CallDetailsListener, CallStateListener, ContactDataChangeListener, CallRecorderEvent, RecorderTestFragment.RecorderTestFragmentEvents, AudioRouteSelectorDialogFragment.AudioRouteSelectorListener {
    public static final String ACTION_DONT_CLEAR_POPUPS = "DONT_CLEAR_POPUP_ACTION";
    private static final int BRING_TO_FRONT_REPEATS = 4;
    private static final int BRING_TO_FRONT_SHOW_DETAILS_DELAY = 300;
    private static final int BRING_TO_FRONT_SHOW_DETAILS_DELAY_VIA_INTENT = 200;
    public static final String EXTRA_BRING_TO_FRONT_RETRY = "EXTRA_BRING_TO_FRONT_RETRY";
    private static final String EXTRA_BRING_TO_FRONT_RETRY_LEFT = "EXTRA_BRING_TO_FRONT_RETRY_LEFT";
    public static final String EXTRA_DATA_CHANGE_INFO = "EXTRA_DATA_CHANGE_INFO";
    public static final String EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER = "EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER";
    public static final String EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER = "EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER";
    public static final String EXTRA_FULL_NAME = "fullName";
    public static final String EXTRA_IS_CALL_WAITING = "EXTRA_IS_CALL_WAITING";
    private static final String EXTRA_SUPPRESS_ACTIVITY_CREATION_ANIMATION = "shouldSuppressAnimation";
    public static final String EXTRA_WHO_VIEW_PROFILE_NOTIFICATION = "EXTRA_WHO_VIEW_PROFILE_NOTIFICATION";
    private static final int FADE_DURATION_MILLIS = 300;
    public static final int FADE_START_DELAY_MILLIS = 2000;
    public static final int MAXIMUM_AMOUNT_ALLOWED_TO_SHOW_POPUP = 3;
    public static final int ONE_SEC_IN_MILLIS = 1000;
    public static final int PHOTO_POPUP_DISSMIS_CODE = 1;
    private static final String SHOULD_FINISH_ACTIVITY = "SHOULD_FINISH_ACTIVITY";
    private static final int SHOW_IMAGE_CHANGE_TOAST_AFTER_X_CONTACT_DETAILS_INTERVAL = 4;
    private static final long SIX_SEC = 6000;
    private static final int SNACK_BAR_DURATION = 4000;
    private static final long TEN_SEC = 1000;
    private static final Handler handler;
    private static final HandlerThread handlerThread;
    private static String keypadNumbers;
    private AudioRouteSelectorDialogFragment audioRouteSelectorDialogFragment;
    private View bottomActionBar;
    private ValueAnimator bottomActionBarClosingAnimation;
    private View bottomActionsContainerWithShadow;
    private View callActionBtn;
    private ObjectAnimator callActionBtnFadeInAnim;
    private View callBarLayoutRoot;
    private CallBarPresenter callBarPresenter;
    private CallData callData;
    private CallFabWithActionsView callFab;
    private CallScreenThemeBannerViewController callScreenThemeBannerViewController;
    private CardRecyclerView cardsRecyclerview;
    private View cardsRecyclerviewContainer;
    private ImageView centerBottomActionSmallIcon;
    private View contactDetailsActionAdd;
    private View contactDetailsActionEditContainer;
    private View contactDetailsActionMore;
    private View contactDetailsActionNote;
    private View contactDetailsActionVideoRingtone;
    private View contactDetailsFirstCircleButton;
    private ViewGroup contactDetailsRootView;
    private View contactDetailsSecondCircleButton;
    private View contactDetailsThirdCircleButton;
    private View contactDetailsTopStrip;
    private View coverFrameLayout;
    private boolean failedToSetDefaultDialer;
    private CallAppCheckBox favoritesBtn;
    private boolean forcePreCallState;
    private FrameLayout fullScreenBannerContainer;
    private InCallActionFragment inCallActionFragment;
    private IncognitoToolTip incognitoToolTip;
    private MoPubInterstitial interstitial;
    private InterstitialLoaderLifecycle interstitialLoaderLifecycle;
    private boolean isAdLoaded;
    private boolean isAnalyticsAdLoaded;
    private boolean isAutoScrollEnabled;
    private boolean keypadShown;
    private KeypadVisibilityEvents keypadVisiblityEvents;
    private CardView noteBannerlayout;
    private PlayerView playerView;
    private ViewStub playerViewStub;
    private RippleBackground profileRippleBackground;
    private View recorderTestContainer;
    private ViewStub recorderTestContainerStub;
    private RecorderTestFragment recorderTestFragment;
    private SingleContactContentObserver singleContactContentObserver;
    private View snackBarContainer;
    private View snackBarContainerKeypad;
    private View topSheetContainer;
    private TopSheetPresenter topSheetPresenter;
    public static final int BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN = (int) CallAppApplication.get().getResources().getDimension(2131165417);
    public static final int BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED = (int) CallAppApplication.get().getResources().getDimension(2131165414);
    public static final AtomicBoolean isStartedFromACall = new AtomicBoolean(false);
    private final String classSimpleName = getClass().getSimpleName();
    private boolean isIdentified = false;
    private long autoScrollType = 0;
    private long extraDelayAfterShowingCorrectedInfo = 0;
    private CallState callState = CallState.PRE_CALL;
    private boolean manualRecorderDialogShown = false;
    private long timeRequestedToOpenDefaultPhoneAppDialog = 0;
    private final BringToFrontLifecycleObserver bringToFrontLifecycleObserver = new BringToFrontLifecycleObserver();
    private boolean interstitialLoaded = false;
    private boolean decidedToLoadInterstitial = false;
    private boolean presentersInitialized = false;
    private boolean lastBottomBarDirectionWasExpand = true;
    private DetailsActivityMode detailsActivityMode = DetailsActivityMode.CONTACT_DETAILS;
    private ExtractedInfo origin = null;
    private ENTRYPOINT whoViewedMyProfileEntrypoint = null;
    private boolean genomeLoaded = false;
    private boolean incognitoLoaded = false;
    private AtomicBoolean isAutoScrollRunning = new AtomicBoolean(false);
    private long remainingTimesToAutoScroll = CallAppRemoteConfigManager.get().m28699b("cdTimesToAutoScroll");
    private final Runnable runAutoScrollIfNeeded = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.1
        @Override // java.lang.Runnable
        public void run() {
            ContactDetailsActivity.this.isAutoScrollRunning.set(false);
            ContactDetailsActivity.this.doAutoScrollIfNeeded();
        }
    };
    private final Runnable fadeInCallActionBtnRunnable = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.2
        @Override // java.lang.Runnable
        public void run() {
            ContactDetailsActivity.this.enableCallActionBtn(true);
        }
    };
    private FastCacheChangedListener fastCacheChangedListener = new FastCacheChangedListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.3
        @Override // com.callapp.contacts.activity.interfaces.FastCacheChangedListener
        /* renamed from: a */
        public void mo30215a(ContactData contactData) {
            if (ContactDetailsActivity.this.presenterContainer.getContact() == contactData) {
                ContactDetailsActivity.this.notifyEventBusData();
            }
        }
    };
    private InvalidateDataListener invalidateDataListener = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.4
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            if (callAppDataType == EventBusManager.CallAppDataType.UNSET_INCOGNITO) {
                if (ContactDetailsActivity.this.contact != null) {
                    CallHistoryLoader.m28857a(ContactDetailsActivity.this.contact);
                }
                Intent intent = ContactDetailsActivity.this.getIntent();
                if (intent == null || !intent.getBooleanExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, false)) {
                    return;
                }
                intent.removeExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL);
                ContactDetailsActivity.this.onNewIntent(intent);
            }
        }
    };
    private PresenterEvents presenterEvents = new PresenterEvents() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.5
        @Override // com.callapp.contacts.activity.interfaces.PresenterEvents
        /* renamed from: a */
        public final void mo30199a() {
            ContactDetailsActivity.this.extraDelayAfterShowingCorrectedInfo = 3000L;
        }
    };
    private ProximityManager.AudioModeChanged audioModeChangedListener = new ProximityManager.AudioModeChanged() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.6
        @Override // com.callapp.contacts.manager.ProximityManager.AudioModeChanged
        /* renamed from: a */
        public final void mo28508a() {
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.6.1
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsActivity.this.requestUpdateUI();
                }
            });
        }
    };
    private MainThreadTimer finishTask = new MainThreadTimer(new MainThreadTimer.DelaytedTaskEvents() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.7
        /* renamed from: b */
        public void m30935b() {
            if (PhoneManager.get().isRinging() || ContactDetailsActivity.this.isDestroyed()) {
                return;
            }
            ContactDetailsActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.7.2
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsActivity.this.finish();
                }
            });
        }

        @Override // com.callapp.contacts.manager.MainThreadTimer.DelaytedTaskEvents
        /* renamed from: a */
        public final void mo28637a() {
            if (Activities.m27696a((Activity) ContactDetailsActivity.this)) {
                if (ContactDetailsActivity.this.extraDelayAfterShowingCorrectedInfo > 0) {
                    new Task() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.7.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            m30935b();
                        }
                    }.schedule((int) ContactDetailsActivity.this.extraDelayAfterShowingCorrectedInfo);
                } else {
                    m30935b();
                }
            }
        }
    });
    private float callIconScale = 1.0f;
    private boolean showSmallIcon = false;

    /* renamed from: com.callapp.contacts.activity.contact.details.ContactDetailsActivity$26 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$26.class */
    public class RunnableC618226 implements Runnable {
        RunnableC618226() {
            ContactDetailsActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ContactDetailsActivity.this.noteBannerlayout == null) {
                ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                contactDetailsActivity.noteBannerlayout = (CardView) contactDetailsActivity.findViewById(2131363383);
                ((LinearLayout) ContactDetailsActivity.this.findViewById(2131363386)).setBackgroundColor(ThemeUtils.getColor(2131099686));
                TextView textView = (TextView) ContactDetailsActivity.this.findViewById(2131363380);
                textView.setTextColor(ThemeUtils.getColor(2131100140));
                textView.setText(Activities.getString(2131886212));
                TextView textView2 = (TextView) ContactDetailsActivity.this.noteBannerlayout.findViewById(2131362153);
                TextView textView3 = (TextView) ContactDetailsActivity.this.noteBannerlayout.findViewById(2131362166);
                textView3.setTextColor(ThemeUtils.getColor(2131100140));
                textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.26.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ContactDetailsActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.26.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ViewUtils.m27314a((View) ContactDetailsActivity.this.noteBannerlayout, false);
                                ContactDetailsActivity.this.coverFrameLayout.setVisibility(0);
                                Prefs.f26571gd.set(Boolean.FALSE);
                            }
                        });
                    }
                });
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.26.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ContactDetailsActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.26.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ViewUtils.m27314a((View) ContactDetailsActivity.this.noteBannerlayout, false);
                                ContactDetailsActivity.this.coverFrameLayout.setVisibility(0);
                                AddNoteActivity.m31038a(ContactDetailsActivity.this.getContact().getId(), ContactDetailsActivity.this);
                                Prefs.f26571gd.set(Boolean.FALSE);
                            }
                        });
                    }
                });
            }
            ViewUtils.m27314a((View) ContactDetailsActivity.this.noteBannerlayout, true);
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.details.ContactDetailsActivity$33 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$33.class */
    public class RunnableC619533 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ boolean f21807a;

        RunnableC619533(boolean z) {
            ContactDetailsActivity.this = r4;
            this.f21807a = z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004f, code lost:
            if (com.callapp.contacts.CallAppApplication.get().getDaysSinceInstall() >= r0) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x011f, code lost:
            if (com.callapp.framework.util.StringUtils.m26044b((java.lang.Object) r0, (java.lang.Object) "outgoing") == false) goto L31;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ boolean m30939a(boolean r6, com.callapp.contacts.util.ads.JSONAdPreferences r7) {
            /*
                Method dump skipped, instructions count: 359
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.RunnableC619533.m30939a(boolean, com.callapp.contacts.util.ads.JSONAdPreferences):boolean");
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ContactDetailsActivity.this.interstitialLoaderLifecycle != null) {
                ContactDetailsActivity.this.getLifecycle().removeObserver(ContactDetailsActivity.this.interstitialLoaderLifecycle);
            }
            ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
            Pair<String, Boolean> m27261b = AdUtils.m27261b("CDInterstitialBidding", CallAppRemoteConfigManager.f25636x);
            AdUtils.AdEvents adEvents = new AdUtils.AdEvents() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.33.1
                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onAdClick() {
                    AdUtils.AdEvents._CC.$default$onAdClick(this);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                    AdUtils.AdEvents._CC.$default$onBannerAdFailed(this, moPubView, moPubErrorCode);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onBannerAdLoaded(MoPubView moPubView, boolean z) {
                    AdUtils.AdEvents._CC.$default$onBannerAdLoaded(this, moPubView, z);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                    AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                    if (ContactDetailsActivity.this.interstitial != null) {
                        ContactDetailsActivity.this.interstitial = null;
                        ContactDetailsActivity.this.postCallDismiss(false);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                    ContactDetailsActivity.this.interstitial = null;
                    ContactDetailsActivity.this.interstitialLoaded = false;
                    ContactDetailsActivity.this.decidedToLoadInterstitial = false;
                    if (ContactDetailsActivity.this.callData == null || ContactDetailsActivity.this.callData.getState() != CallState.POST_CALL) {
                        return;
                    }
                    ContactDetailsActivity.this.postCallDismiss(false);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                    CLog.m27611a(ContactDetailsActivity.class, "onInterstitialLoaded");
                    ContactDetailsActivity.this.interstitial = moPubInterstitial;
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                    Prefs.f26337cH.m28169b(1);
                    Prefs.f26338cI.set(Boolean.FALSE);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    AdUtils.AdEvents._CC.$default$onNativeAdFailed(this, nativeErrorCode);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
                    AdUtils.AdEvents._CC.$default$onNativeAdLoaded(this, nativeAd, z);
                }
            };
            final boolean z = this.f21807a;
            contactDetailsActivity.interstitialLoaderLifecycle = new InterstitialLoaderLifecycle(contactDetailsActivity, m27261b, "CDInterstitialPreferences", adEvents, new InterstitialLoaderLifecycle.ShouldLoadIntervalPredicate() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$33$gubne3NVVqcfoE4E8QXJC2L2SgU
                @Override // com.callapp.contacts.util.ads.InterstitialLoaderLifecycle.ShouldLoadIntervalPredicate
                public final boolean shouldLoadIntervalPredicate(JSONAdPreferences jSONAdPreferences) {
                    boolean m30939a;
                    m30939a = ContactDetailsActivity.RunnableC619533.this.m30939a(z, jSONAdPreferences);
                    return m30939a;
                }
            });
            ContactDetailsActivity.this.getLifecycle().addObserver(ContactDetailsActivity.this.interstitialLoaderLifecycle);
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.details.ContactDetailsActivity$53 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$53.class */
    public class C621953 implements DialogContactMultiNumber.DialogContactMultiNumberListener {
        C621953() {
            ContactDetailsActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m30938a(Phone phone, Activity activity) {
            if (phone == null || !phone.isNotEmpty() || CallLogUtils.m27556b(phone.getRawNumber())) {
                return;
            }
            ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
            contactDetailsActivity.callPhone(contactDetailsActivity, phone, false);
        }

        /* renamed from: b */
        public /* synthetic */ void m30937b(Phone phone, Activity activity) {
            if (phone == null || !phone.isNotEmpty() || CallLogUtils.m27556b(phone.getRawNumber())) {
                return;
            }
            ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
            contactDetailsActivity.callPhone(contactDetailsActivity, phone, true);
            ContactDetailsActivity.this.eventBus.m29046a((EventType<L, EventType<OnIncognitoCallStartedListener, ContactData>>) OnIncognitoCallStartedListener.f23126a, (EventType<OnIncognitoCallStartedListener, ContactData>) ContactDetailsActivity.this.contact, false);
        }

        @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
        public void onDone(final Phone phone, boolean z) {
            if (OptInWithTopImagePopup.m28052b()) {
                OptInWithTopImagePopup.m28051b(ContactDetailsActivity.this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$53$9F3wPLxXWqzdugPT5q8fbmathxM
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        ContactDetailsActivity.C621953.this.m30937b(phone, activity);
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$53$4vyk6xdcJE7X1xt09IIOFvqdZf0
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        ContactDetailsActivity.C621953.this.m30938a(phone, activity);
                    }
                });
            } else if (phone == null || !phone.isNotEmpty() || CallLogUtils.m27556b(phone.getRawNumber())) {
            } else {
                ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                contactDetailsActivity.callPhone(contactDetailsActivity, phone, true);
            }
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.details.ContactDetailsActivity$58 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$58.class */
    public class RunnableC622458 implements Runnable {
        RunnableC622458() {
            ContactDetailsActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContactDetailsActivity.this.profileRippleBackground.setVisibility(0);
            ContactDetailsActivity.this.profileRippleBackground.m5866a();
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.58.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!ContactDetailsActivity.this.isActivityVisible()) {
                        if (ContactDetailsActivity.this.profileRippleBackground == null) {
                            return;
                        }
                        ContactDetailsActivity.this.profileRippleBackground.m5863b();
                        ContactDetailsActivity.this.profileRippleBackground.setVisibility(8);
                        return;
                    }
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.85f, (float) BitmapDescriptorFactory.HUE_RED);
                    alphaAnimation.setDuration(250L);
                    alphaAnimation.setFillAfter(true);
                    alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.58.1.1
                        @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            super.onAnimationEnd(animation);
                            ContactDetailsActivity.this.profileRippleBackground.m5863b();
                            ContactDetailsActivity.this.profileRippleBackground.setVisibility(8);
                        }
                    });
                    ContactDetailsActivity.this.profileRippleBackground.startAnimation(alphaAnimation);
                }
            }, 4000L);
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.details.ContactDetailsActivity$59 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$59.class */
    public static /* synthetic */ class C622759 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21856a;

        /* renamed from: b */
        static final /* synthetic */ int[] f21857b;

        /* renamed from: c */
        static final /* synthetic */ int[] f21858c;

        /* renamed from: d */
        static final /* synthetic */ int[] f21859d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0211 -> B:113:0x016b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0215 -> B:64:0x0176). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x0219 -> B:121:0x018a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x021d -> B:133:0x0195). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x01a1 -> B:131:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x01a5 -> B:145:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x01a9 -> B:141:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x01ad -> B:153:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x01b1 -> B:149:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x01b5 -> B:161:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x01b9 -> B:157:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01bd -> B:169:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x01c1 -> B:165:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x01c5 -> B:111:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x01c9 -> B:107:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01cd -> B:119:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x01d1 -> B:115:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x01d5 -> B:127:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x01d9 -> B:123:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x01dd -> B:135:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x01e1 -> B:129:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x01e5 -> B:143:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x01e9 -> B:139:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x01ed -> B:42:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x01f1 -> B:147:0x0108). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x01f5 -> B:159:0x0113). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x01f9 -> B:155:0x011e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x01fd -> B:167:0x0129). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x0201 -> B:163:0x0134). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0205 -> B:109:0x0140). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0209 -> B:57:0x014c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x020d -> B:117:0x0160). Please submit an issue!!! */
        static {
            int[] iArr = new int[ContactAction.values().length];
            f21859d = iArr;
            try {
                iArr[ContactAction.SMS_MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21859d[ContactAction.WHATSAPP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21859d[ContactAction.HANGOUTS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21859d[ContactAction.SIGNAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21859d[ContactAction.SKYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f21859d[ContactAction.DUO.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f21859d[ContactAction.WECHAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f21859d[ContactAction.ALLO.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f21859d[ContactAction.TELEGRAM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f21859d[ContactAction.VIBER.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f21859d[ContactAction.NOTE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f21859d[ContactAction.BLOCK.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f21859d[ContactAction.UN_BLOCK.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f21859d[ContactAction.SPAM.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f21859d[ContactAction.UN_SPAM.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f21859d[ContactAction.ADD_CONTACT.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f21859d[ContactAction.PVR.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f21859d[ContactAction.INCOGNITO.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f21859d[ContactAction.UN_INCOGNITO.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f21859d[ContactAction.REFER_AND_EARN.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            int[] iArr2 = new int[CallState.values().length];
            f21858c = iArr2;
            try {
                iArr2[CallState.RINGING_OUTGOING.ordinal()] = 1;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f21858c[CallState.RINGING_INCOMING.ordinal()] = 2;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f21858c[CallState.TALKING.ordinal()] = 3;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f21858c[CallState.ON_HOLD.ordinal()] = 4;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f21858c[CallState.POST_CALL.ordinal()] = 5;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f21858c[CallState.DISCONNECTED.ordinal()] = 6;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f21858c[CallState.PRE_CALL.ordinal()] = 7;
            } catch (NoSuchFieldError e27) {
            }
            int[] iArr3 = new int[BaseContactDetailsParallaxImpl.Position.values().length];
            f21857b = iArr3;
            try {
                iArr3[BaseContactDetailsParallaxImpl.Position.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError e28) {
            }
            try {
                f21857b[BaseContactDetailsParallaxImpl.Position.SEMI_OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError e29) {
            }
            try {
                f21857b[BaseContactDetailsParallaxImpl.Position.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError e30) {
            }
            int[] iArr4 = new int[DetailsActivityMode.values().length];
            f21856a = iArr4;
            try {
                iArr4[DetailsActivityMode.INCOMING_CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e31) {
            }
            try {
                f21856a[DetailsActivityMode.RECORDER_TEST.ordinal()] = 2;
            } catch (NoSuchFieldError e32) {
            }
            try {
                f21856a[DetailsActivityMode.CONTACT_DETAILS.ordinal()] = 3;
            } catch (NoSuchFieldError e33) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver.class */
    public class BringToFrontLifecycleObserver implements AbstractC1262o {

        /* renamed from: a */
        boolean f21868a;

        private BringToFrontLifecycleObserver() {
            ContactDetailsActivity.this = r4;
            this.f21868a = true;
        }

        @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_PAUSE)
        void start() {
            this.f21868a = false;
        }

        @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_RESUME)
        void stop() {
            this.f21868a = true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask.class */
    public static final class BringToFrontTask extends Task {

        /* renamed from: a */
        final Intent f21870a;

        public BringToFrontTask(Intent intent) {
            this.f21870a = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            Activities.m27656b(CallAppApplication.get(), this.f21870a);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$CallRecorderDialogMessageWithTopImageListener.class */
    public static class CallRecorderDialogMessageWithTopImageListener implements DialogPopup.IDialogOnClickListener {
        private CallRecorderDialogMessageWithTopImageListener() {
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(Activity activity) {
            Prefs.f26459eX.set(Boolean.TRUE);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode.class */
    public enum DetailsActivityMode {
        INCOMING_CALL,
        CONTACT_DETAILS,
        RECORDER_TEST
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver.class */
    public class SingleContactContentObserver extends CallAppContentObserver {

        /* renamed from: b */
        private long f21872b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        SingleContactContentObserver(Handler handler) {
            super(handler);
            ContactDetailsActivity.this = r4;
        }

        /* renamed from: c */
        public /* synthetic */ void m30932c() {
            CLog.m27611a(SingleContactContentObserver.class, "Contact content observer fired for device deviceId: " + this.f21872b);
            if (ContactDetailsActivity.this.contact != null) {
                ContactDetailsActivity.this.contact.fireChange(ContactFieldEnumSets.DEVICE_ID_MONITORED.clone());
            }
        }

        /* renamed from: a */
        public final void m30934a() {
            try {
                if (this.f21872b <= 0) {
                    return;
                }
                CLog.m27611a(SingleContactContentObserver.class, "Contact content observer unregistering for deviceId: " + this.f21872b);
                CallAppApplication.get().getContentResolver().unregisterContentObserver(this);
                this.f21872b = 0L;
            } catch (Exception e) {
            }
        }

        /* renamed from: a */
        public final void m30933a(long j) {
            if (this.f21872b == j) {
                return;
            }
            m30934a();
            this.f21872b = j;
            if (j <= 0) {
                return;
            }
            try {
                CLog.m27611a(SingleContactContentObserver.class, "Contact content observer registering for deviceId: ".concat(String.valueOf(j)));
                CallAppApplication.get().getContentResolver().registerContentObserver(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(j)), true, ContactDetailsActivity.this.singleContactContentObserver);
            } catch (Exception e) {
            }
        }

        @Override // com.callapp.contacts.observers.CallAppContentObserver
        /* renamed from: b */
        public final Runnable mo28080b() {
            return new Runnable() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$SingleContactContentObserver$n5kmFAXBuBvWIXJneQdxhoubO_4
                @Override // java.lang.Runnable
                public final void run() {
                    ContactDetailsActivity.SingleContactContentObserver.this.m30932c();
                }
            };
        }
    }

    static {
        HandlerThread handlerThread2 = new HandlerThread(SingleContactContentObserver.class.getSimpleName());
        handlerThread = handlerThread2;
        handlerThread2.start();
        AndroidUtils.m27631a(handlerThread2.getLooper());
        handler = new Handler(handlerThread2.getLooper());
    }

    public void callPhone(Context context, Phone phone, boolean z) {
        if (phone != null) {
            if (!z) {
                PhoneManager.m28248a(context, phone, this.contact.getDeviceId(), this.contact.getFullName(), "Contact name or number", "Call", this.contact.isIncognito(), null);
                return;
            }
            PhoneManager.m28248a(context, phone, this.contact.getDeviceId(), this.contact.getFullName(), "Contact name or number", "Call", true, null);
            this.eventBus.m29046a((EventType<L, EventType<OnIncognitoCallStartedListener, ContactData>>) OnIncognitoCallStartedListener.f23126a, (EventType<OnIncognitoCallStartedListener, ContactData>) this.contact, false);
        }
    }

    private boolean cleanAllDataIfContactChanged(long j, Phone phone) {
        if (shouldReplaceContact(j, phone, false)) {
            releaseContact();
            this.contact = new ContactData(phone, 0L, this.origin);
            TopSheetPresenter topSheetPresenter = this.topSheetPresenter;
            if (topSheetPresenter != null) {
                topSheetPresenter.m30714a();
            }
            onContactChanged(this.contact, ContactFieldEnumSets.ALL.clone());
            this.contact = new ContactData(Phone.f29662b, 0L, this.origin);
            resetLayoutState();
            return true;
        }
        return false;
    }

    private static void copyIntentCallData(Intent intent, Intent intent2) {
        if (intent == null) {
            return;
        }
        long longExtra = intent.getLongExtra(Constants.EXTRA_CONTACT_ID, 0L);
        String stringExtra = intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER);
        if (longExtra != 0) {
            intent2.putExtra(Constants.EXTRA_CONTACT_ID, longExtra);
        }
        if (StringUtils.m26045b((CharSequence) stringExtra)) {
            intent2.putExtra(Constants.EXTRA_PHONE_NUMBER, stringExtra);
        }
        intent2.putExtra(Constants.EXTRA_PHONE_ORIGIN, intent.getSerializableExtra(Constants.EXTRA_PHONE_ORIGIN));
        if (intent.hasExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL)) {
            intent2.putExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, intent.getBooleanExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, false));
        }
        if (!intent.hasExtra(Constants.EXTRA_CALL_TELECOM_ID)) {
            return;
        }
        intent2.putExtra(Constants.EXTRA_CALL_TELECOM_ID, intent.getStringExtra(Constants.EXTRA_CALL_TELECOM_ID));
    }

    public static Intent createIntent(Context context, long j, String str, ExtractedInfo extractedInfo, boolean z, DataChangedInfo dataChangedInfo, String str2, ENTRYPOINT entrypoint) {
        if (StringUtils.m26045b((CharSequence) str)) {
            ContactLoaderManager.get().registerForContactDetailsStack(Phone.m26093b(str), extractedInfo, j, null, ContactFieldEnumSets.ALL);
        }
        Intent addFlags = new Intent(context, ContactDetailsActivity.class).setFlags(268435456).addFlags(537198592);
        fillIntentWithCallData(addFlags, j, str, null, extractedInfo, z, dataChangedInfo, entrypoint);
        addFlags.putExtra(Constants.EXTRA_ENTRY_POINT, str2);
        return addFlags;
    }

    public void doAutoScrollIfNeeded() {
        if (!this.isAdLoaded || !this.isAutoScrollEnabled || this.isAutoScrollRunning.getAndSet(true) || getRecyclerView().isUserTouchedItOrItsChildrenOnce() || this.callState.isPreCall() || this.callState.isPostCall() || this.callState.isIncoming()) {
            return;
        }
        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "AutoScrollContactScreen");
        CardRecyclerView recyclerView = getRecyclerView();
        CardRecyclerView.OnAutoScrollEventsListener onAutoScrollEventsListener = new CardRecyclerView.OnAutoScrollEventsListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.32
            @Override // com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.OnAutoScrollEventsListener
            /* renamed from: a */
            public final void mo26347a() {
                ContactDetailsActivity.this.snapToPosition(BaseContactDetailsParallaxImpl.Position.CLOSED, true);
            }

            @Override // com.callapp.contacts.widget.recyclerviewext.CardRecyclerView.OnAutoScrollEventsListener
            /* renamed from: b */
            public final void mo26346b() {
                ContactDetailsActivity.this.snapToPosition(BaseContactDetailsParallaxImpl.Position.SEMI_OPEN, true);
                ContactDetailsActivity.this.updateRemaingTimeToAutoScroll();
            }
        };
        long j = this.autoScrollType;
        int cDAnalyticsAdPosition = (!Prefs.f26644hx.get().booleanValue() || !this.isAnalyticsAdLoaded) ? 0 : getCDAnalyticsAdPosition();
        if (recyclerView.f29318R != null) {
            return;
        }
        recyclerView.f29319S = onAutoScrollEventsListener;
        recyclerView.m26352i();
        recyclerView.f29318R = new CardRecyclerView.AutoScroller(j, cDAnalyticsAdPosition);
        recyclerView.postDelayed(recyclerView.f29318R, 4000L);
    }

    private void doFlip(View view) {
        view.animate().setStartDelay(3000L).rotationBy(720.0f).setDuration(4000L).start();
    }

    private void editOrCreateContact() {
        if (this.contact != null) {
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Edit or Create contact", Constants.CLICK);
            new Task() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.55
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    PopupManager popupManager = PopupManager.get();
                    ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                    popupManager.m28207a(contactDetailsActivity, new EditContactPopup(contactDetailsActivity.contact, true));
                }
            }.execute();
        }
    }

    public void enableCallActionBtn(boolean z) {
        if (this.callActionBtnFadeInAnim != null) {
            CallAppApplication.get().m31861c(this.fadeInCallActionBtnRunnable);
            this.callActionBtnFadeInAnim.cancel();
        }
        if (!z) {
            setBottomBarFunctionality(this.callActionBtn, true);
            return;
        }
        ObjectAnimator m27173b = CallappAnimationUtils.m27173b(this.callActionBtn, (int) VastError.ERROR_CODE_GENERAL_WRAPPER, 0);
        this.callActionBtnFadeInAnim = m27173b;
        if (m27173b == null) {
            return;
        }
        m27173b.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.52
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                contactDetailsActivity.setBottomBarFunctionality(contactDetailsActivity.callActionBtn, true);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.callActionBtnFadeInAnim.start();
    }

    public static void fillIntentWithCallData(Intent intent, long j, String str, String str2, ExtractedInfo extractedInfo, boolean z, DataChangedInfo dataChangedInfo, ENTRYPOINT entrypoint) {
        if (j != 0) {
            intent.putExtra(Constants.EXTRA_CONTACT_ID, j);
        }
        if (StringUtils.m26045b((CharSequence) str)) {
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, str);
        }
        intent.putExtra(Constants.EXTRA_PHONE_ORIGIN, extractedInfo);
        if (z) {
            intent.putExtra("forceIdleState", true);
        }
        if (dataChangedInfo != null) {
            intent.putExtra(EXTRA_DATA_CHANGE_INFO, dataChangedInfo);
        }
        if (entrypoint != null) {
            intent.putExtra(Constants.EXTRA_WHO_VIEWED_ENTRY_POINT, entrypoint);
        }
        if (StringUtils.m26045b((CharSequence) str2)) {
            intent.putExtra(Constants.EXTRA_CALL_TELECOM_ID, str2);
        }
    }

    public void fireContactChange() {
        synchronized (this.contactFieldsLock) {
            if (this.presentersInitialized && CollectionUtils.m26068b(this.contactFields)) {
                onContactChanged(this.contact, this.contactFields);
                this.contactFields = null;
            }
        }
    }

    private void flipPVRIconIfNeeded() {
        int intValue = Prefs.f26440eE.get().intValue();
        if (intValue % 10 == 0) {
            if (!Prefs.f26556gO.get().booleanValue() && DateUtils.m27118b(Prefs.f26257ah.get(), new Date()) <= 5) {
                doFlip(this.contactDetailsActionVideoRingtone);
            } else if (intValue % 20 != 0) {
            } else {
                doFlip(this.contactDetailsActionVideoRingtone);
            }
        }
    }

    public <T extends BaseUserCorrectedInfoPresenter> void forceShowPresenterIfNeeded(Intent intent, String str, Class<T> cls) {
        BaseUserCorrectedInfoPresenter baseUserCorrectedInfoPresenter;
        if (!intent.getBooleanExtra(str, false) || (baseUserCorrectedInfoPresenter = (BaseUserCorrectedInfoPresenter) this.presenterManager.m30925a(cls)) == null) {
            return;
        }
        baseUserCorrectedInfoPresenter.forceShowPresenter();
    }

    private ValueAnimator getBottomActionBarAnimation(final int i, int i2) {
        this.showSmallIcon = i2 < i;
        return CallappAnimationUtils.m27191a(i, i2, CallappAnimationUtils.f28093d, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.28
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                float f = ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED;
                float f2 = (i - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED) / f;
                if (!ContactDetailsActivity.this.showSmallIcon) {
                    ContactDetailsActivity.this.callIconScale = f2 + (((ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN - i) / f) * animatedFraction);
                } else {
                    ContactDetailsActivity.this.callIconScale = f2 - (((i - ContactDetailsActivity.BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED) / f) * animatedFraction);
                    ContactDetailsActivity.this.centerBottomActionSmallIcon.setColorFilter(ThemeUtils.getColor(2131099914));
                }
                if (Prefs.f26654k.get().booleanValue()) {
                    if (!ContactDetailsActivity.this.callFab.isActionsHidden()) {
                        ContactDetailsActivity.this.callFab.m30965a();
                        return;
                    }
                    ContactDetailsActivity.this.callFab.setScaleX(ContactDetailsActivity.this.callIconScale);
                    ContactDetailsActivity.this.callFab.setScaleY(ContactDetailsActivity.this.callIconScale);
                }
            }
        });
    }

    private int getCDAnalyticsAdPosition() {
        for (int i = 0; i < getRecyclerViewAdapter().getItemCount(); i++) {
            if (getRecyclerViewAdapter().getItem(i) instanceof CDAnalyticsAdCard) {
                return i;
            }
        }
        return 0;
    }

    private CallData getCallData(Phone phone, String str) {
        return (this.forcePreCallState || phone == null) ? new CallData(phone, CallState.PRE_CALL, null) : StringUtils.m26045b((CharSequence) str) ? PhoneStateManager.get().getCallForPhoneByTelecomId(str) : PhoneStateManager.get().getCallForPhone(phone);
    }

    private CardArrayRecyclerViewAdapterWithPriority getRecyclerViewAdapter() {
        return (CardArrayRecyclerViewAdapterWithPriority) getRecyclerView().getAdapter();
    }

    private void handleRemoveIncognitoMode() {
        if (ThemeUtils.isThemeLight() != ((ThemeState) Prefs.f26417di.get()).isLightTheme()) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.16
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                    contactDetailsActivity.changeContactDetailsThemeColor(contactDetailsActivity.contactDetailsParallaxThemeState, false);
                }
            });
            this.presenterContainer.getEventBus().m29046a((EventType<L, EventType<ThemeChangedListener, EventBusManager.CallAppDataType>>) ThemeChangedListener.f23141i, (EventType<ThemeChangedListener, EventBusManager.CallAppDataType>) null, false);
        }
    }

    private void incSeenContactDetailsPref(Phone phone) {
        Prefs.f26331cB.set(phone.m26101a());
        if (Prefs.f26330cA.get().longValue() < Long.MAX_VALUE) {
            Prefs.f26330cA.m28168a();
        } else {
            Prefs.f26330cA.set(0L);
        }
    }

    private boolean isCallSmallIcon() {
        return ((double) this.callIconScale) <= 0.5d;
    }

    private boolean isScreenLocked() {
        CardArrayRecyclerViewAdapterWithPriority recyclerViewAdapter = getRecyclerViewAdapter();
        return recyclerViewAdapter != null && recyclerViewAdapter.getIsScreenLocked();
    }

    public boolean isSpammer() {
        CallData callData;
        if (this.contact == null || !UserCorrectedInfoUtil.m27345a(this.contact)) {
            return (this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS || (callData = this.callData) == null || !callData.isBlocked()) ? false : true;
        }
        return true;
    }

    public boolean isUnknownNumber() {
        return this.presenterContainer.getContact() != null && this.presenterContainer.getContact().isUnknownNumber();
    }

    public static /* synthetic */ void lambda$null$0(AnalyticsManager analyticsManager, boolean z) {
        if (z) {
            analyticsManager.m28449a(Constants.PERMISSIONS, "Gave Permission", "");
        }
    }

    public static /* synthetic */ void lambda$null$2(Activity activity) {
    }

    public static /* synthetic */ void lambda$onCallStateChanged$7(Activity activity) {
    }

    public static /* synthetic */ void lambda$showOverlayPermissionDialog$1(final AnalyticsManager analyticsManager, Activity activity) {
        analyticsManager.m28449a(Constants.PERMISSIONS, "Draw On Screen", "Clicked yes from Contact Details");
        Activities.m27649c(activity, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$aQhmIk_W5zNi0c7BEjzx9T9JVsA
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public final void popupDone(boolean z) {
                ContactDetailsActivity.lambda$null$0(AnalyticsManager.this, z);
            }
        });
    }

    public void loadContact(Intent intent, long j, Phone phone, boolean z) {
        Pair<ContactData, Set<ContactField>> loadNewContact = loadNewContact(phone, j);
        this.contact = (ContactData) loadNewContact.first;
        synchronized (this.contactFieldsLock) {
            this.contactFields = (Set) loadNewContact.second;
        }
        updateStorePersonalCoverIfNeeded(j);
        String stringExtra = intent.getStringExtra(EXTRA_FULL_NAME);
        if (StringUtils.m26045b((CharSequence) stringExtra)) {
            this.contact.assertIntentDataExists();
            this.contact.getIntentData().setFullName(stringExtra);
            this.contact.updateFullName();
        }
        if (z) {
            fireContactChange();
        }
        if (this.callFab == null || !Prefs.f26654k.get().booleanValue()) {
            return;
        }
        this.callFab.m30962a(this, CallFabUtils.f22134a.m30837a(this.contact));
    }

    private void loadContactWhenCreated() {
        if (getIntent() == null || getIntent().getExtras() == null) {
            return;
        }
        final long j = getIntent().getExtras().getLong(Constants.EXTRA_CONTACT_ID);
        final Phone m28239a = PhoneManager.get().m28239a(getIntent().getExtras().getString(Constants.EXTRA_PHONE_NUMBER));
        handler.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.17
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                contactDetailsActivity.loadContact(contactDetailsActivity.getIntent(), j, m28239a, false);
            }
        });
    }

    private void loadInterstitialIfNeeded(boolean z) {
        if (this.interstitialLoaded) {
            return;
        }
        this.interstitialLoaded = true;
        runOnUiThread(new RunnableC619533(z));
    }

    public void notifyEventBusData() {
        Intent intent = getIntent();
        if (intent != null) {
            if (intent.hasExtra(EXTRA_DATA_CHANGE_INFO)) {
                EventBusManager.f25138a.m29046a((EventType<L, EventType<NotifyDataChangedListener, DataChangedInfo>>) NotifyDataChangedListener.f23124b, (EventType<NotifyDataChangedListener, DataChangedInfo>) ((DataChangedInfo) intent.getParcelableExtra(EXTRA_DATA_CHANGE_INFO)), false);
            }
            EventBusManager.f25138a.m29046a((EventType<L, EventType<RefreshSearchListener, EventBusManager.CallAppDataType>>) RefreshSearchListener.f23136b, (EventType<RefreshSearchListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.REFRESH_SEARCH, false);
        }
    }

    public void pausePlayerCardIdNeeded() {
        final CallRecorderPlayerCard callRecorderPlayerCard = (CallRecorderPlayerCard) this.presenterManager.m30922b(CallRecorderPlayerCard.class);
        if (callRecorderPlayerCard != null) {
            safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    callRecorderPlayerCard.onPausePlayerCard();
                }
            });
        }
    }

    public void postCallDismiss(boolean z) {
        if (z) {
            this.finishTask.m28643a();
        }
        if (this.interstitial != null || this.contact == null || !this.contact.hasPhone(this.callData.getNumber())) {
            return;
        }
        int i = ((PostCallActivity.PostCallDuration) Prefs.f26292bP.get()).duration * 1000;
        if (i <= 0 || !Prefs.f26653j.get().booleanValue()) {
            if (z) {
                return;
            }
            finish();
            return;
        }
        if (!PhoneManager.get().isDefaultPhoneApp() && (CallAppRemoteConfigManager.get().m28698c("postCallEnabled") || this.bringToFrontLifecycleObserver.f21868a)) {
            Intent intent = new Intent(getIntent());
            intent.putExtra(EXTRA_BRING_TO_FRONT_RETRY, true);
            intent.putExtra(EXTRA_BRING_TO_FRONT_RETRY_LEFT, 4);
            for (int i2 = 0; i2 < 4; i2++) {
                new BringToFrontTask(intent).schedule(i2 * VastError.ERROR_CODE_GENERAL_WRAPPER);
            }
        }
        if (z) {
            return;
        }
        this.finishTask.m28642a(i, true);
    }

    public void removeFragment(String... strArr) {
        AbstractC1121s m43765a = getSupportFragmentManager().m43765a();
        for (String str : strArr) {
            Fragment m43740a = getSupportFragmentManager().m43740a(str);
            if (m43740a != null && m43740a.isAdded()) {
                m43765a.mo43539a(m43740a);
            }
        }
        if (!m43765a.mo43528h()) {
            m43765a.mo43532c();
        }
    }

    public void requestUpdateUI() {
        CallBarPresenter callBarPresenter = (CallBarPresenter) this.presenterManager.m30925a(CallBarPresenter.class);
        this.callBarPresenter = callBarPresenter;
        if (callBarPresenter != null && !PhoneManager.get().isDefaultPhoneApp()) {
            this.callBarPresenter.m30759b();
        }
        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.56
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneStateManager.get().isAnyCallActive()) {
                    PhoneStateManager.get().updateCallAppInCallNotification();
                }
            }
        }, TEN_SEC);
    }

    private void resetKeypadNumbers() {
        keypadNumbers = "";
    }

    private void resetLayoutState() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.27
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsActivity.this.snapToPositionByOrientation();
                ContactDetailsActivity.this.getRecyclerView().setToInitialState();
                if (ContactDetailsActivity.this.callBarPresenter != null) {
                    ContactDetailsActivity.this.callBarPresenter.m30771a(CallBarPresenter.CallBarState.OPEN, false);
                }
            }
        });
    }

    public void scrollToEndWhenLargeAdIsVisible() {
        int itemCount = getRecyclerViewAdapter().getItemCount();
        if (getRecyclerView() == null || !getRecyclerView().isUserTouchedItOrItsChildrenOnce() || !ViewUtils.m27319a(getRecyclerView(), getRecyclerView().getLayoutManager().mo40376b(itemCount - 2))) {
            return;
        }
        getRecyclerView().m40449d(getRecyclerViewAdapter().getItemCount() - 1);
        snapToPosition(BaseContactDetailsParallaxImpl.Position.CLOSED, true);
    }

    private void scrollToPosition(final int i, final BaseContactDetailsParallaxImpl.Position position) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.10
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsActivity.this.getRecyclerView().m40449d(i);
                ContactDetailsActivity.this.snapToPosition(position, true);
            }
        });
    }

    private void sendFabActionEvent(String str) {
        AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, str);
    }

    private void sendFabActionEvent(String str, String str2) {
        AnalyticsManager.get().m28449a(Constants.BOTTOM_ACTION_BAR, str, str2);
    }

    private void sendWhoViewedMyProfileIfNeeded() {
        final ENTRYPOINT entrypoint = this.whoViewedMyProfileEntrypoint;
        if (!this.genomeLoaded || !this.incognitoLoaded || this.contact.isIncognito() || this.presenterContainer.mo30920a(this.contact) || Prefs.f26595hA.get().booleanValue() || entrypoint == null || !this.contact.isInstalledApp()) {
            return;
        }
        new Task() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.47
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                WhoViewedMyProfileDataManager.m29356a(ContactDetailsActivity.this.contact.getPhone().m26101a(), entrypoint);
            }
        }.execute();
    }

    public void setBottomBarFunctionality(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.15f);
        view.setClickable(z);
        view.setEnabled(z);
    }

    public void setContactDetailsMode(DetailsActivityMode detailsActivityMode) {
        if (C622759.f21856a[detailsActivityMode.ordinal()] == 1) {
            ViewUtils.m27320a(this.contactDetailsRootView, ThemeUtils.getDrawable(2131232020));
            setIsInCallModeVisibility(false);
            setParallaxAndStatusBarColors(isSpammer(), true);
            return;
        }
        this.shouldPlayVideoBackground = false;
        getParallax().m31007a(this.contactDetailsParallaxThemeState);
        getParallax().m31005b();
        setIsInCallModeVisibility(true);
        setParallaxAndStatusBarColors(isSpammer(), false);
    }

    private void setDetailsActivityMode() {
        safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ContactDetailsActivity.this.getParallax().setIncomingCallScreen(ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.INCOMING_CALL);
                    AbstractC1121s m43765a = ContactDetailsActivity.this.getSupportFragmentManager().m43765a();
                    String simpleName = InCallActionFragment.class.getSimpleName();
                    String simpleName2 = RecorderTestFragment.class.getSimpleName();
                    int i = C622759.f21856a[ContactDetailsActivity.this.detailsActivityMode.ordinal()];
                    if (i == 1) {
                        ContactDetailsActivity.this.setContactDetailsMode(DetailsActivityMode.INCOMING_CALL);
                        ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                        contactDetailsActivity.inCallActionFragment = (InCallActionFragment) contactDetailsActivity.getSupportFragmentManager().m43740a(simpleName);
                        String rawNumber = ContactDetailsActivity.this.callData != null ? ContactDetailsActivity.this.callData.getNumber().getRawNumber() : ContactDetailsActivity.this.getIntent().getExtras().getString(Constants.EXTRA_PHONE_NUMBER);
                        if (ContactDetailsActivity.this.inCallActionFragment == null && StringUtils.m26045b((CharSequence) rawNumber)) {
                            ContactDetailsActivity.this.inCallActionFragment = (InCallActionFragment) InCallActionFragment.m30891a(rawNumber);
                        }
                        if (ContactDetailsActivity.this.inCallActionFragment.isAdded() || Fragments.m27543a(ContactDetailsActivity.this.getSupportFragmentManager(), ContactDetailsActivity.this.inCallActionFragment.getClass().getSimpleName())) {
                            return;
                        }
                        m43765a.m43541a(2131363066, ContactDetailsActivity.this.inCallActionFragment, simpleName).mo43529e();
                    } else if (i != 2) {
                        if (i != 3) {
                            return;
                        }
                        ContactDetailsActivity.this.setContactDetailsMode(DetailsActivityMode.CONTACT_DETAILS);
                        ViewUtils.m27314a((View) ContactDetailsActivity.this.cardsRecyclerview, true);
                        ContactDetailsActivity.this.removeFragment(simpleName, simpleName2);
                        ContactDetailsActivity.this.callBarPresenter.setHangButton(false);
                    } else {
                        if (ContactDetailsActivity.this.recorderTestContainer == null) {
                            ContactDetailsActivity contactDetailsActivity2 = ContactDetailsActivity.this;
                            contactDetailsActivity2.recorderTestContainer = ViewUtils.m27302b(contactDetailsActivity2.recorderTestContainerStub);
                        }
                        ContactDetailsActivity contactDetailsActivity3 = ContactDetailsActivity.this;
                        contactDetailsActivity3.recorderTestFragment = (RecorderTestFragment) contactDetailsActivity3.getSupportFragmentManager().m43740a(simpleName2);
                        if (ContactDetailsActivity.this.recorderTestFragment == null) {
                            ContactDetailsActivity.this.recorderTestFragment = new RecorderTestFragment();
                        }
                        if (!ContactDetailsActivity.this.recorderTestFragment.isAdded() && !Fragments.m27543a(ContactDetailsActivity.this.getSupportFragmentManager(), ContactDetailsActivity.this.recorderTestFragment.getClass().getSimpleName())) {
                            m43765a.m43541a(2131363630, ContactDetailsActivity.this.recorderTestFragment, simpleName2).mo43529e();
                        }
                        ContactDetailsActivity.this.setContactDetailsMode(DetailsActivityMode.RECORDER_TEST);
                        ViewUtils.m27314a(ContactDetailsActivity.this.bottomActionsContainerWithShadow, false);
                        ViewUtils.m27314a((View) ContactDetailsActivity.this.cardsRecyclerview, false);
                        ContactDetailsActivity.this.removeFragment(simpleName);
                    }
                } catch (Exception e) {
                    CLog.m27609a(ContactDetailsActivity.class, e);
                }
            }
        });
    }

    public void setFavoriteButton() {
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.48
            @Override // java.lang.Runnable
            public void run() {
                if (ContactDetailsActivity.this.favoritesBtn != null) {
                    if (ContactDetailsActivity.this.contact == null || !ContactDetailsActivity.this.contact.isContactInDevice() || ContactDetailsActivity.this.presenterContainer.mo30920a(ContactDetailsActivity.this.contact)) {
                        ContactDetailsActivity.this.favoritesBtn.setVisibility(4);
                        return;
                    }
                    if (ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS) {
                        ContactDetailsActivity.this.favoritesBtn.setVisibility(0);
                    }
                    DeviceData deviceData = ContactDetailsActivity.this.contact.getDeviceData();
                    boolean z = false;
                    if (deviceData != null) {
                        Boolean isFavorite = deviceData.isFavorite();
                        z = false;
                        if (isFavorite != null) {
                            z = isFavorite.booleanValue();
                        }
                    }
                    ContactDetailsActivity.this.favoritesBtn.setChecked(z);
                }
            }
        });
    }

    private void setIsInCallModeVisibility(boolean z) {
        boolean z2;
        boolean z3;
        if (hasCover() || this.shouldPlayVideoBackground) {
            ViewUtils.m27314a(getParallax().getFullImageContainer(), z);
        } else {
            ViewUtils.m27287g(getParallax().getFullImageContainer(), CallAppApplication.get().getResources().getDimensionPixelOffset(z ? 2131165422 : 2131165425));
            ViewUtils.m27314a((View) getParallax().getFullImageContainer(), true);
        }
        ViewUtils.m27314a(getParallax().getShadowView(), z);
        ViewUtils.m27314a(this.cardsRecyclerviewContainer, z);
        ViewUtils.m27314a(this.topSheetContainer, z);
        ViewUtils.m27314a(this.callBarLayoutRoot, z);
        ViewUtils.m27314a(this.bottomActionsContainerWithShadow, z);
        if (this.contact != null) {
            z3 = this.contact.isUnsearchableNumber();
            z2 = this.presenterContainer.mo30920a(this.contact);
        } else {
            z3 = false;
            z2 = false;
        }
        ViewUtils.m27314a(this.contactDetailsActionEditContainer, !z2 && !z3 && z);
        ViewUtils.m27314a(this.contactDetailsTopStrip, z);
        ViewUtils.m27314a(this.contactDetailsActionMore, z && !z3 && this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS);
        if (this.contact != null) {
            if (this.contact.isContactInDevice()) {
                ViewUtils.m27314a(this.contactDetailsActionNote, !z3 && z);
                ViewUtils.m27314a(this.contactDetailsActionVideoRingtone, !z3 && z && BillingManager.isBillingAvailable() && Build.VERSION.SDK_INT >= 23);
                ViewUtils.m27314a(this.favoritesBtn, z);
            } else {
                ViewUtils.m27314a(this.contactDetailsActionAdd, !z3 && z);
                ViewUtils.m27314a(this.contactDetailsActionNote, false);
                ViewUtils.m27314a(this.contactDetailsActionVideoRingtone, false);
            }
        }
        ViewUtils.m27314a(this.contactDetailsFirstCircleButton, z);
        ViewUtils.m27314a(this.contactDetailsSecondCircleButton, z && !hasCover());
        ViewUtils.m27314a(this.contactDetailsThirdCircleButton, z);
    }

    private void setMode(DetailsActivityMode detailsActivityMode) {
        if (this.detailsActivityMode != detailsActivityMode) {
            this.detailsActivityMode = detailsActivityMode;
            setDetailsActivityMode();
        }
    }

    public void setScreenLocked(boolean z) {
        CardArrayRecyclerViewAdapterWithPriority recyclerViewAdapter = getRecyclerViewAdapter();
        if (recyclerViewAdapter != null) {
            recyclerViewAdapter.setIsScreenLocked(z);
        }
    }

    public void setUpViewIfNeeded() {
        setBottomBarFunctionality(this.callActionBtn, !isUnknownNumber());
    }

    private void setupContactActions(ContactData contactData) {
        if (contactData == null) {
            return;
        }
        final boolean isContactInDevice = contactData.isContactInDevice();
        boolean z = this.presenterContainer.mo30920a(contactData) || this.isIncognitoCall;
        final boolean isVoiceMail = contactData.isVoiceMail();
        final boolean isUnknownNumber = contactData.isUnknownNumber();
        final boolean z2 = z;
        final boolean z3 = contactData.hasAnyPhotoUrl() || contactData.getGoogleMapsLatLng() != null;
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.49
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsActivity.this.setFavoriteButton();
                ViewUtils.m27314a(ContactDetailsActivity.this.getParallax().getThemeChangeViewController().getRootView(), !z2);
                ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionEditContainer, ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS && !z2 && !isUnknownNumber);
                if (isContactInDevice) {
                    ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionAdd, false);
                    if (!z2) {
                        ContactDetailsActivity.this.setShouldHideSocialProfileAction(isVoiceMail);
                    }
                    ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionNote, ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS);
                    ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionVideoRingtone, ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS && BillingManager.isBillingAvailable());
                } else {
                    if (ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS) {
                        ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionAdd, !z2 && !isUnknownNumber);
                    }
                    ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionNote, false);
                    ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionVideoRingtone, false);
                    ContactDetailsActivity.this.setShouldHideSocialProfileAction(z2);
                }
                ViewUtils.m27314a(ContactDetailsActivity.this.contactDetailsActionMore, !isUnknownNumber && ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS);
                BaseContactDetailsParallaxImpl parallax = ContactDetailsActivity.this.getParallax();
                boolean z4 = true;
                if (!z2) {
                    z4 = !z3;
                }
                parallax.m31001b(z4);
            }
        });
    }

    private boolean shouldReplaceContact(long j, Phone phone, boolean z) {
        if (this.contact == null) {
            if (StringUtils.m26042b(Prefs.f26331cB.get(), phone.m26101a()) || !z) {
                return false;
            }
            incSeenContactDetailsPref(phone);
            return false;
        } else if (j != 0) {
            if (j == this.contact.getDeviceId()) {
                return false;
            }
            if (z) {
                incSeenContactDetailsPref(phone);
            }
            this.isIdentified = false;
            return true;
        } else if (!phone.isNotEmpty() || phone.equals(this.contact.getPhone()) || this.contact.getPhones().contains(phone)) {
            return false;
        } else {
            if (z) {
                incSeenContactDetailsPref(phone);
            }
            this.isIdentified = false;
            return true;
        }
    }

    private boolean shouldShowBanner() {
        if (Prefs.f26571gd.get().booleanValue()) {
            int intValue = Prefs.f26327by.get().intValue();
            return intValue == 10 || intValue == 100 || intValue == 499;
        }
        return false;
    }

    private boolean shouldShowCallScreenEncouragementPopup() {
        if (23 > Build.VERSION.SDK_INT || PhoneManager.get().isDefaultSystemPhoneApp()) {
            return false;
        }
        return Prefs.f26495fG.get().intValue() == 0 ? Prefs.f26435e.get().intValue() == 3 : Prefs.f26495fG.get().intValue() < 3 && 259200000 <= System.currentTimeMillis() - Prefs.f26494fF.get().longValue();
    }

    private boolean shouldShowFabIntro() {
        return Prefs.f26654k.get().booleanValue() && !PhoneStateManager.get().isAnyCallActive() && this.callFab.isValid() && !Prefs.f26356ca.get().booleanValue() && Prefs.f26357cb.get().intValue() % 10 == 0;
    }

    public static void showDialogToAllowNotificationAccessAfterMissedCall(Activity activity) {
        if (Activities.isNotificationListenerServiceSupportedOnDevice()) {
            if (Prefs.f26300bX.get().intValue() <= 3) {
                Prefs.f26300bX.m28169b(1);
            }
            if (Prefs.f26300bX.get().intValue() == 3) {
                Activities.m27688a(activity, Activities.getString(2131887107), Activities.getString(2131887106));
                return;
            }
            FeedbackManager feedbackManager = FeedbackManager.get();
            feedbackManager.m28670a("missed notification click count:" + Prefs.f26300bX.get(), 80);
        }
    }

    public void showLockedNotificationOnScreen() {
        if (this.snackBarContainer == null) {
            this.snackBarContainer = findViewById(2131363904);
        }
        View view = this.keypadShown ? this.snackBarContainerKeypad : this.snackBarContainer;
        if (view != null) {
            final Snackbar m10169a = Snackbar.m10169a(view, Activities.getString(2131887429));
            Snackbar.SnackbarLayout snackbarLayout = (Snackbar.SnackbarLayout) m10169a.m10208b();
            snackbarLayout.findViewById(C14376a.C14382f.snackbar_text).setVisibility(4);
            View inflate = getLayoutInflater().inflate(2131558578, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(2131364483);
            textView.setText(Activities.getString(2131887429));
            textView.setTextColor(ThemeUtils.getColor(2131100228));
            TextView textView2 = (TextView) inflate.findViewById(2131364482);
            textView2.setText(Activities.getString(2131888109));
            textView2.setTextColor(ThemeUtils.getColor(2131099784));
            textView2.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.42
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view2) {
                    ContactDetailsActivity.this.setScreenLocked(false);
                    m10169a.mo10167d();
                }
            });
            snackbarLayout.addView(inflate, 0);
            m10169a.mo10168c();
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.43
                @Override // java.lang.Runnable
                public void run() {
                    if (m10169a.mo10166e()) {
                        m10169a.mo10167d();
                    }
                }
            }, 4000L);
        }
    }

    private void showNoteBannerLayout() {
        runOnUiThread(new RunnableC618226());
    }

    public void showOverlayPermissionDialog() {
        Prefs.f26496fH.m28169b(1);
        final AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.mo28444a(Constants.PERMISSIONS, "Draw On Screen", "Popup shown from Contact Details", Prefs.f26496fH.get().intValue(), new String[0]);
        PopupManager.get().m28209a(this, new DrawOverAppsRequestDialog(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$N9PreGYw6flsRv_UtjjroPdvbpI
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                ContactDetailsActivity.lambda$showOverlayPermissionDialog$1(AnalyticsManager.this, activity);
            }
        }) { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.14
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                analyticsManager.m28449a(Constants.PERMISSIONS, "Draw On Screen", "Clicked no from Contact Details");
            }
        });
    }

    public void snapToPosition(BaseContactDetailsParallaxImpl.Position position, boolean z) {
        if (!RecorderTestManager.get().isInRecorderTestMode()) {
            getParallax().m31012a(position, z);
        }
    }

    public static boolean startFullDetailsActivity(Context context, Intent intent, ExtractedInfo extractedInfo, boolean z, boolean z2, DataChangedInfo dataChangedInfo, String str, boolean z3) {
        Intent createIntent = createIntent(context, 0L, extractedInfo != null ? extractedInfo.phoneAsRaw : null, extractedInfo, false, dataChangedInfo, str, null);
        copyIntentCallData(intent, createIntent);
        createIntent.addFlags(262144);
        createIntent.putExtra("shouldSuppressAnimation", true);
        if (!z2) {
            if (z3) {
                createIntent.setFlags(268468224);
            }
            Activities.m27656b(context, createIntent);
        } else if (!Activities.m27685a(context, createIntent)) {
            return false;
        }
        if (z) {
            createIntent.putExtra(EXTRA_BRING_TO_FRONT_RETRY, true);
            createIntent.putExtra(EXTRA_BRING_TO_FRONT_RETRY_LEFT, 1);
            new BringToFrontTask(createIntent).schedule(200);
            return true;
        }
        return true;
    }

    private void startInstantMessaging(Singletons.SenderType senderType) {
        if (senderType != null) {
            Singletons.get();
            ImSender m28494a = Singletons.m28494a(senderType);
            if (m28494a == null) {
                return;
            }
            m28494a.openIm(this, this.contact);
        }
    }

    private void startInviteDialog() {
        ShareCallAppDialogFragment.m26304a(null, 1, "float").mo19242a(this.presenterContainer.getFragmentManager(), ShareCallAppDialogFragment.getTAG());
    }

    private void startNewNote() {
        if (this.contact != null) {
            AddNoteActivity.m31038a(this.contact.getId(), this);
        }
    }

    private void startPersonalCallScreen() {
        PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
        Intent m30054a = PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(this, PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE));
        m30054a.putExtra("EXTRA_CONTACT_ID", this.contact.getId());
        startActivity(m30054a);
    }

    public void tryToShowRippleOnProfileView() {
        int intValue = Prefs.f26440eE.m28169b(1).get().intValue();
        if (intValue >= 4 && intValue % 4 == 0 && Prefs.f26441eF.get().intValue() < 4) {
            Prefs.f26441eF.m28169b(1);
            CallAppApplication.get().m31858d(new RunnableC622458());
        }
    }

    private void updateCallFabOnActionComplete(ContactAction contactAction) {
        List<ContactAction> actions = this.callFab.getActions();
        int indexOf = actions.indexOf(contactAction);
        if (indexOf == -1) {
            return;
        }
        switch (C622759.f21859d[contactAction.ordinal()]) {
            case 12:
                actions.set(indexOf, ContactAction.UN_BLOCK);
                this.callFab.m30962a(this, actions);
                return;
            case 13:
                actions.set(indexOf, ContactAction.BLOCK);
                this.callFab.m30962a(this, actions);
                return;
            case 14:
                actions.set(indexOf, ContactAction.UN_SPAM);
                this.callFab.m30962a(this, actions);
                return;
            case 15:
                actions.set(indexOf, ContactAction.SPAM);
                this.callFab.m30962a(this, actions);
                return;
            case 16:
            case 17:
            default:
                return;
            case 18:
                actions.set(indexOf, ContactAction.UN_INCOGNITO);
                this.callFab.m30962a(this, actions);
                return;
            case 19:
                actions.set(indexOf, ContactAction.INCOGNITO);
                this.callFab.m30962a(this, actions);
                return;
        }
    }

    private void updateCallFabOnContactChanged(ContactData contactData) {
        CallFabWithActionsView callFabWithActionsView;
        if (!Prefs.f26654k.get().booleanValue() || (callFabWithActionsView = this.callFab) == null || !callFabWithActionsView.isValid()) {
            return;
        }
        updateCallFabOnActionComplete(contactData.isSpammer() ? ContactAction.SPAM : ContactAction.UN_SPAM);
        updateCallFabOnActionComplete(BlockManager.m28746b(contactData.getPhone()) ? ContactAction.BLOCK : ContactAction.UN_BLOCK);
        updateCallFabOnActionComplete(contactData.isIncognito() ? ContactAction.INCOGNITO : ContactAction.UN_INCOGNITO);
    }

    private void updateContactData(Intent intent, long j, Phone phone, boolean z) {
        if (!z) {
            fireContactChange();
            return;
        }
        releaseContact();
        setParallaxAndStatusBarColors(isSpammer(), PhoneStateManager.get().isIncomingCallRingingState());
        loadContact(intent, j, phone, true);
    }

    public void updateModelAndFireEvents(Intent intent, long j, Phone phone, String str, boolean z) {
        updateContactData(intent, j, phone, z);
        CallData callData = getCallData(phone, str);
        if (callData != null) {
            onCallStateChanged(callData);
            if (callData.getState() != CallState.PRE_CALL || this.detailsActivityMode != DetailsActivityMode.CONTACT_DETAILS) {
                return;
            }
            MissedCallManager.m29823a(this.contact.getPhone(), CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
        }
    }

    public void updateRemaingTimeToAutoScroll() {
        long m28699b = CallAppRemoteConfigManager.get().m28699b("cdSecondsToWaitBeforeNextAutoScroll");
        if (m28699b > 0) {
            long j = this.remainingTimesToAutoScroll;
            if (j <= 0) {
                return;
            }
            this.remainingTimesToAutoScroll = j - 1;
            CallAppApplication.get().m31861c(this.runAutoScrollIfNeeded);
            CallAppApplication.get().m31869a(this.runAutoScrollIfNeeded, m28699b * TEN_SEC);
        }
    }

    private void updateScreenLockState(final boolean z) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.41
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsActivity.this.setScreenLocked(z);
            }
        });
    }

    private void updateStorePersonalCoverIfNeeded(long j) {
        PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
        final String m28912b = PersonalStoreItemDataManager.Companion.m28912b(Long.toString(j), PersonalStoreItemUrlData.PersonalStoreItemType.COVER);
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.46
            @Override // java.lang.Runnable
            public void run() {
                if (!ContactDetailsActivity.this.hasPersonalCover) {
                    if (!Prefs.f26384dB.get().booleanValue() || !StringUtils.m26045b((CharSequence) m28912b)) {
                        ContactDetailsActivity.this.setHasPersonalStoreItemTypeCover(false);
                        try {
                            GlideUtils.m27035b(ContactDetailsActivity.this).m37549a((View) ContactDetailsActivity.this.coverImageView);
                        } catch (Exception e) {
                            CLog.m27609a(ContactDetailsActivity.class, e);
                        }
                        ContactDetailsActivity.this.assetManager.getAssets();
                    } else {
                        ContactDetailsActivity.this.setHasPersonalStoreItemTypeCover(true);
                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(ContactDetailsActivity.this.coverImageView, m28912b, ContactDetailsActivity.this);
                        glideRequestBuilder.f28251q = true;
                        glideRequestBuilder.f28253s = true;
                        glideRequestBuilder.m27013d();
                    }
                }
                ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                contactDetailsActivity.setParallaxAndStatusBarColors(contactDetailsActivity.isSpammer(), PhoneStateManager.get().isIncomingCallRingingState());
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean allowLifecycleChangesDuringCalls() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener.Listener
    public void animateBottomActionBar(final boolean z, final boolean z2) {
        if (this.lastBottomBarDirectionWasExpand == z || RecorderTestManager.get().isInRecorderTestMode()) {
            return;
        }
        this.lastBottomBarDirectionWasExpand = z;
        View view = this.bottomActionBar;
        if (view != null && view.getVisibility() == 0) {
            this.presenterContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$RqFwB0gwSed4IMhFRHg5TUzlR4c
                @Override // java.lang.Runnable
                public final void run() {
                    ContactDetailsActivity.this.lambda$animateBottomActionBar$4$ContactDetailsActivity(z, z2);
                }
            });
        }
        CallBarPresenter callBarPresenter = this.callBarPresenter;
        if (callBarPresenter == null) {
            return;
        }
        callBarPresenter.m30771a(z ? CallBarPresenter.CallBarState.OPEN : CallBarPresenter.CallBarState.CLOSE, z2);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter.TopSheetListener
    public void animateBottomBar(boolean z, boolean z2) {
        animateBottomActionBar(z, z2);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 0) {
            this.finishTask.m28643a();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        this.finishTask.m28643a();
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent e) {
        KeypadFragment keypadFragment;
        boolean dispatchTouchEvent = super.dispatchTouchEvent(e);
        int i = 0;
        if (e.getAction() == 0) {
            this.finishTask.m28643a();
            CardRecyclerView recyclerView = getRecyclerView();
            if (recyclerView != null) {
                recyclerView.m26351j();
                this.remainingTimesToAutoScroll = CallAppRemoteConfigManager.get().m28699b("cdTimesToAutoScroll");
                long m28699b = CallAppRemoteConfigManager.get().m28699b("cdSecondsToWaitBeforeNextAutoScroll");
                if (m28699b > 0 && !this.callState.isPreCall() && !this.callState.isPostCall()) {
                    recyclerView.f29317Q = false;
                    CallAppApplication.get().m31861c(this.runAutoScrollIfNeeded);
                    CallAppApplication.get().m31869a(this.runAutoScrollIfNeeded, m28699b * TEN_SEC);
                }
            }
        } else if (e.getAction() == 1) {
            if (this.keypadShown && (keypadFragment = (KeypadFragment) getSupportFragmentManager().m43740a("KEYPAD_FRAGMENT_TAG")) != null) {
                keypadFragment.m30503a();
            }
            CallFabWithActionsView callFabWithActionsView = this.callFab;
            C18524p.m3840d(e, "e");
            if (callFabWithActionsView.f21705c == CallFabWithActionsView.State.Show) {
                Iterator<T> it2 = callFabWithActionsView.f21704b.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (i < 0) {
                        C18282n.m4175a();
                    }
                    if (ViewUtils.m27328a((View) next, e.getRawX(), e.getRawY())) {
                        ContactAction contactAction = callFabWithActionsView.f21706d.get(i);
                        callFabWithActionsView.f21708f.removeCallbacks(callFabWithActionsView.f21707e);
                        AndroidUtils.m27630a(callFabWithActionsView, 1);
                        CallFabWithActionsView.OnCallFabActionListener onCallFabActionListener = callFabWithActionsView.f21703a;
                        if (onCallFabActionListener != null) {
                            onCallFabActionListener.onCallFabActionClicked(contactAction);
                        }
                        callFabWithActionsView.m30957b();
                    } else {
                        i++;
                    }
                }
            }
        }
        return dispatchTouchEvent;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        this.finishTask.m28643a();
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.app.Activity
    public void finish() {
        isStartedFromACall.set(false);
        super.finish();
    }

    @Override // com.callapp.contacts.activity.interfaces.FinishActivityListener
    public void finishActivity(Boolean bool) {
        finish();
    }

    public View getBottomActionBar() {
        return this.bottomActionBar;
    }

    @Override // com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents
    public CallBarPresenter getCallBarPresenter() {
        return this.callBarPresenter;
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public String getCurrentFilter() {
        return keypadNumbers;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558444;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents
    public BaseContactDetailsParallaxImpl getParallax() {
        return super.getParallax();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected BaseContactDetailsParallaxImpl getParallaxImpl(BaseContactDetailsActivity.FlingListener flingListener) {
        return new ContactDetailsParallaxImpl(this.presenterContainer, findViewById(2131362415), getPositionChangedListener(), flingListener, Prefs.f26396dN.isNotNull(), getLifecycle(), this);
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.InCallActionFragmentInterface
    public PlayerView getPlayerView() {
        if (this.playerView == null) {
            this.playerView = (PlayerView) ViewUtils.m27302b(this.playerViewStub);
        }
        return this.playerView;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected BaseContactDetailsParallaxImpl.PositionChangedListener getPositionChangedListener() {
        return new BaseContactDetailsParallaxImpl.PositionChangedListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.11
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.PositionChangedListener
            /* renamed from: a */
            public final void mo30715a(BaseContactDetailsParallaxImpl.Position position) {
                int i = C622759.f21857b[position.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    ContactDetailsActivity.this.animateBottomActionBar(true, true);
                    return;
                }
                if (!Activities.isOrientationLandscape() || ContactDetailsActivity.this.topSheetPresenter == null || ContactDetailsActivity.this.topSheetPresenter.isTopSheetClosed()) {
                    ContactDetailsActivity.this.animateBottomActionBar(false, true);
                } else {
                    ContactDetailsActivity.this.animateBottomActionBar(true, false);
                }
                if (ContactDetailsActivity.this.noteBannerlayout == null) {
                    return;
                }
                ViewUtils.m27314a((View) ContactDetailsActivity.this.noteBannerlayout, false);
            }
        };
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.CONTACT_DETAILS_SCREEN;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        Intent intent = getIntent();
        return (intent == null || !intent.getBooleanExtra("shouldSuppressAnimation", false)) ? super.getThemeResId() : ThemeUtils.getNoTitleThemeNoTransitions();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public void handleIncognitoMode() {
        if (this.callState.isIdle()) {
            if (this.callState != CallState.POST_CALL) {
                return;
            }
            this.isIncognitoCall = false;
            this.isOneTimeIncognitoCall = false;
            handleRemoveIncognitoMode();
            return;
        }
        this.isIncognitoCall = (this.contact != null && this.contact.isIncognito()) || this.isOneTimeIncognitoCall;
        setupContactActions(this.contact);
        if (!this.isIncognitoCall) {
            handleRemoveIncognitoMode();
            return;
        }
        if (ThemeUtils.isThemeLight()) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.15
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsActivity.this.changeContactDetailsThemeColor(ThemeState.DARK, false);
                }
            });
        }
        this.presenterContainer.getEventBus().m29046a((EventType<L, EventType<ThemeChangedListener, EventBusManager.CallAppDataType>>) ThemeChangedListener.f23141i, (EventType<ThemeChangedListener, EventBusManager.CallAppDataType>) null, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d7 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00b3  */
    @Override // com.callapp.contacts.activity.base.BaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isClickValid(android.view.View r5) {
        /*
            r4 = this;
            com.callapp.contacts.manager.phone.PhoneStateManager r0 = com.callapp.contacts.manager.phone.PhoneStateManager.get()
            boolean r0 = r0.isAnyCallActive()
            if (r0 != 0) goto Lb
            r0 = 1
            return r0
        Lb:
            r0 = r5
            int r0 = r0.getId()
            r6 = r0
            r0 = r6
            switch(r0) {
                case 2131362049: goto Lb3;
                case 2131362416: goto Lb3;
                case 2131362426: goto Lb3;
                case 2131362428: goto Lb3;
                case 2131362432: goto Lb3;
                case 2131362434: goto Lb3;
                case 2131362455: goto Lb3;
                case 2131362496: goto Lb3;
                case 2131362881: goto Lb3;
                case 2131362883: goto Lb3;
                case 2131362949: goto Lb3;
                case 2131363236: goto Lb3;
                case 2131363348: goto Lb3;
                case 2131363567: goto Lb3;
                default: goto L8c;
            }
        L8c:
            r0 = r6
            switch(r0) {
                case 2131362420: goto Lb3;
                case 2131362421: goto Lb3;
                case 2131362422: goto Lb3;
                case 2131362423: goto Lc0;
                case 2131362424: goto Lb3;
                default: goto Lb0;
            }
        Lb0:
            goto Ld7
        Lb3:
            r0 = r4
            boolean r0 = r0.isScreenLocked()
            if (r0 == 0) goto Lc0
            r0 = r4
            r0.showLockedNotificationOnScreen()
            r0 = 0
            return r0
        Lc0:
            r0 = r4
            boolean r0 = r0.isScreenLocked()
            if (r0 == 0) goto Ld7
            com.callapp.contacts.manager.FeedbackManager r0 = com.callapp.contacts.manager.FeedbackManager.get()
            r1 = 2131887357(0x7f1204fd, float:1.9409319E38)
            java.lang.String r1 = com.callapp.contacts.util.Activities.getString(r1)
            r2 = 16
            r0.m28670a(r1, r2)
            r0 = 0
            return r0
        Ld7:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.isClickValid(android.view.View):boolean");
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected boolean isSnapOnUpRulesOk() {
        return this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS;
    }

    public /* synthetic */ void lambda$animateBottomActionBar$4$ContactDetailsActivity(boolean z, boolean z2) {
        int i;
        int i2;
        ValueAnimator valueAnimator = this.bottomActionBarClosingAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (z) {
            i2 = BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN;
            i = BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED;
        } else {
            i2 = BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED;
            i = BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN;
        }
        ValueAnimator bottomActionBarAnimation = getBottomActionBarAnimation(i, i2);
        this.bottomActionBarClosingAnimation = bottomActionBarAnimation;
        if (!z2) {
            bottomActionBarAnimation.setDuration(0L);
        }
        this.bottomActionBarClosingAnimation.start();
    }

    public /* synthetic */ void lambda$onCallStateChanged$5$ContactDetailsActivity() {
        FrameLayout frameLayout = new FrameLayout(this);
        this.fullScreenBannerContainer = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.contactDetailsRootView.addView(this.fullScreenBannerContainer);
        CallScreenThemeBannerViewController callScreenThemeBannerViewController = new CallScreenThemeBannerViewController(this, this.fullScreenBannerContainer);
        this.callScreenThemeBannerViewController = callScreenThemeBannerViewController;
        callScreenThemeBannerViewController.setListener(this);
        this.callScreenThemeBannerViewController.m30152a();
    }

    public /* synthetic */ void lambda$onCallStateChanged$6$ContactDetailsActivity(Activity activity) {
        onSetAsDefaultAppClicked();
    }

    public /* synthetic */ void lambda$onContactChanged$8$ContactDetailsActivity(ContactData contactData) {
        if (StringUtils.m26045b((CharSequence) contactData.getCover())) {
            setHasPersonalCover(true);
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.coverImageView, contactData.getCover(), this);
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        } else {
            setHasPersonalCover(false);
            if (!this.hasPersonalStoreItemTypeCover) {
                GlideUtils.m27035b(this).m37549a((View) this.coverImageView);
            }
            this.assetManager.getAssets();
        }
        setParallaxAndStatusBarColors(isSpammer(), PhoneStateManager.get().isIncomingCallRingingState());
    }

    public /* synthetic */ void lambda$onCreate$3$ContactDetailsActivity(View view) {
        this.incognitoToolTip.setVisibility(8);
        PopupManager.get().m28209a(this, new DialogBulletListTopImage(2131232023, Activities.getString(2131887036), new int[]{2131887032, 2131887034, 2131887035, 2131887033, 2131887031}, Activities.getString(2131887338), _$$Lambda$ContactDetailsActivity$b_2pZvI_ktG383P8kSdAp_OzOhw.INSTANCE, null, 0, null));
    }

    protected Pair<ContactData, Set<ContactField>> loadNewContact(Phone phone, long j) {
        this.presenterManager.m30927a(this.presenterContainer);
        this.singleContactContentObserver.m30933a(j);
        return Singletons.get().getContactLoaderManager().registerForContactDetailsStack(phone, this.origin, j, this, ContactFieldEnumSets.ALL);
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.InCallActionFragmentInterface
    public void onActionSelected(int i) {
        if (i == 0) {
            if (RecorderTestManager.get().isInRecorderTestMode()) {
                setMode(DetailsActivityMode.RECORDER_TEST);
            } else {
                setMode(DetailsActivityMode.CONTACT_DETAILS);
            }
            PhoneManager.get();
            PhoneManager.m28224f();
        } else if (i != 1) {
            if (i == 2) {
                ((AddCallReminderAction) ActionsManager.get().m28766a(AddCallReminderAction.class)).mo31800b(this, this.contact, null);
            } else if (i != 3) {
            } else {
                PopupManager.get().m28198b(this, new QuickResponseDialogPopup(this.contact.getPhone()));
            }
        } else {
            setMode(DetailsActivityMode.CONTACT_DETAILS);
            PhoneManager.get();
            PhoneManager.m28231c();
            CallBarPresenter callBarPresenter = this.callBarPresenter;
            if (callBarPresenter == null) {
                return;
            }
            callBarPresenter.m30765a(this.callData);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, final Intent intent) {
        super.onActivityResult(i, i2, intent);
        SocialNetworksSearchUtil.m29233a(i, i2, intent);
        if (i == 100) {
            if (this.contact == null || intent == null) {
                return;
            }
            String stringExtra = intent.getStringExtra("note");
            this.contact.assertDeviceDataExist();
            DeviceData deviceData = this.contact.getDeviceData();
            String m28839a = NoteLoader.m28839a(deviceData.getNote());
            deviceData.setNote(NoteLoader.m28840a(m28839a + "@@@" + stringExtra));
            this.contact.fireChange(ContactField.note);
        } else if (i == 996) {
            if (i2 != -1 || intent == null) {
                return;
            }
            String string = intent.getExtras().getString("PERSON_SELECT_SELECTED_USER_ID");
            int i3 = intent.getExtras().getInt("PERSON_SELECT_NET_ID");
            if ("DONTHAVE".equals(string)) {
                Singletons.get().getRemoteAccountHelper(i3).setDoesntHave(this.contact);
            } else {
                Singletons.get().getRemoteAccountHelper(i3).m29245a(this.contact, string, true);
            }
        } else if (i != 9625) {
            if (i != 64206 || this.contact == null) {
                return;
            }
            this.contact.fireChange(EnumSet.of(ContactField.facebookId, ContactField.facebookSearchResults));
        } else {
            if (intent != null) {
                new Task() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.13
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        List<DataSource> m27627a = AndroidUtils.FieldsChangedHandler.m27627a(DataSource.class, intent);
                        if (ContactDetailsActivity.this.contact != null) {
                            ContactDetailsActivity.this.contact.assertDeviceDataExist();
                            ContactDetailsActivity.this.contact.resetSocialNetworks(m27627a);
                        }
                    }
                }.execute();
            }
            if (this.contact == null || !CollectionUtils.m26073a(AndroidUtils.FieldsChangedHandler.m27627a(ContactField.class, intent), ContactField.photoUrl)) {
                return;
            }
            this.contact.resetChosenPicture();
            this.contact.updatePhoto();
        }
    }

    @Override // com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents
    public void onAppliedConfiguration() {
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void onAttachFragment(Fragment fragment) {
        if (Build.VERSION.SDK_INT < 23 || !fragment.equals(this.audioRouteSelectorDialogFragment)) {
            return;
        }
        this.audioRouteSelectorDialogFragment.setAudioRouteSelectorListener(this);
    }

    @Override // com.callapp.contacts.widget.AudioRouteSelectorDialogFragment.AudioRouteSelectorListener
    public void onAudioRouteSelected(int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            TelecomAdapter.getInstance().setAudioRoute(i);
        }
    }

    @Override // com.callapp.contacts.widget.AudioRouteSelectorDialogFragment.AudioRouteSelectorListener
    public void onAudioRouteSelectorDismiss() {
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.setForeGroundVisible(false);
        if (this.detailsActivityMode == DetailsActivityMode.RECORDER_TEST) {
            Activities.m27656b(this, new Intent(this, ContactsListActivity.class));
            finish();
            return;
        }
        this.finishTask.m28643a();
        CallScreenThemeBannerViewController callScreenThemeBannerViewController = this.callScreenThemeBannerViewController;
        if (callScreenThemeBannerViewController != null && callScreenThemeBannerViewController.isViewShown()) {
            this.callScreenThemeBannerViewController.f23280a.callOnClick();
            return;
        }
        CallBarPresenter callBarPresenter = (CallBarPresenter) this.presenterManager.m30925a(CallBarPresenter.class);
        this.callBarPresenter = callBarPresenter;
        if (callBarPresenter != null && callBarPresenter.m30748d()) {
            return;
        }
        if (!PhoneManager.m28221i() && this.contact != null && AppRater.m27623a((Context) this, this.contact, true)) {
            return;
        }
        TopSheetPresenter topSheetPresenter = this.topSheetPresenter;
        if (topSheetPresenter == null || topSheetPresenter.isTopSheetClosed()) {
            finish();
        } else {
            this.topSheetPresenter.m30714a();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected void onButtonBarIconClicked(View view) {
        CallFabWithActionsView callFabWithActionsView;
        if (!Activities.m27696a((Activity) this) || view == null || this.contact == null) {
            return;
        }
        Collection<Phone> phones = this.contact.getPhones();
        ArrayList arrayList = new ArrayList();
        for (Phone phone : phones) {
            arrayList.add(T9Helper.m30360a((CharSequence) phone.getRawNumber()));
        }
        AndroidUtils.m27635a((Activity) this);
        if (view.getId() != 2131362207) {
            return;
        }
        if (Prefs.f26654k.get().booleanValue() && (callFabWithActionsView = this.callFab) != null) {
            callFabWithActionsView.m30965a();
        }
        TopSheetPresenter topSheetPresenter = this.topSheetPresenter;
        if (topSheetPresenter != null) {
            topSheetPresenter.m30714a();
        }
        AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "Call button clicked");
        ContactUtils.m28333a(this, this.contact.getPhone(), this.contact.getDeviceId(), arrayList, new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.54
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public void onDone(Phone phone2, boolean z) {
                if (phone2 == null || !phone2.isNotEmpty() || CallLogUtils.m27556b(phone2.getRawNumber())) {
                    return;
                }
                boolean mo30920a = ContactDetailsActivity.this.presenterContainer.mo30920a(ContactDetailsActivity.this.contact);
                ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                contactDetailsActivity.callPhone(contactDetailsActivity, phone2, mo30920a);
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected void onButtonBarIconLongClicked(View view) {
        if (!Activities.m27696a((Activity) this) || view == null || this.contact == null) {
            return;
        }
        Collection<Phone> phones = this.contact.getPhones();
        ArrayList arrayList = new ArrayList();
        for (Phone phone : phones) {
            arrayList.add(T9Helper.m30360a((CharSequence) phone.getRawNumber()));
        }
        if (view.getId() != 2131362207) {
            return;
        }
        if (!Prefs.f26654k.get().booleanValue()) {
            TopSheetPresenter topSheetPresenter = this.topSheetPresenter;
            if (topSheetPresenter != null) {
                topSheetPresenter.m30714a();
            }
            AnalyticsManager.get().m28450a(Constants.BOTTOM_ACTION_BAR, "ClickLongCallButton");
            ContactUtils.m28333a(this, this.contact.getPhone(), this.contact.getDeviceId(), arrayList, new C621953());
        } else if (!isCallSmallIcon()) {
            this.centerBottomActionSmallIcon.setVisibility(8);
            CallFabWithActionsView callFabWithActionsView = this.callFab;
            if (callFabWithActionsView.f21705c != CallFabWithActionsView.State.Show && callFabWithActionsView.f21705c != CallFabWithActionsView.State.AnimatingShow && callFabWithActionsView.f21705c != CallFabWithActionsView.State.AnimateInto && callFabWithActionsView.f21704b.size() != 0) {
                callFabWithActionsView.m30964a(0L);
            }
            Prefs.f26356ca.set(Boolean.TRUE);
            sendFabActionEvent("ClickLongCallButton");
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.ScrollWhenCDAnalyticsExpand
    public void onCDAnalyticsExpand(boolean z) {
        if (getRecyclerView() == null || getRecyclerViewAdapter() == null) {
            return;
        }
        if (z) {
            int i = 0;
            while (true) {
                if (i >= getRecyclerViewAdapter().getItemCount()) {
                    break;
                } else if (getRecyclerViewAdapter().getItem(i) instanceof AnalyticsCarouselCard) {
                    scrollToPosition(i, BaseContactDetailsParallaxImpl.Position.CLOSED);
                    break;
                } else {
                    i++;
                }
            }
        }
        getRecyclerViewAdapter().notifyDataSetChanged();
    }

    @Override // com.callapp.contacts.manager.phone.CallDetailsListener
    public void onCallDetailsChanged(int[] iArr) {
        CLog.m27611a(ContactDetailsActivity.class, "onCallDetailsChanged: ".concat(String.valueOf(iArr)));
        this.eventBus.m29046a((EventType<L, EventType<CallDetailsListener, int[]>>) CallDetailsListener.f26069d, (EventType<CallDetailsListener, int[]>) iArr, true);
        boolean[] m27619a = ArrayUtils.m27619a(iArr);
        if ((Arrays.equals(m27619a, Constants.CALL_ON_HOLD) || Arrays.equals(m27619a, Constants.CALL_ADDED) || Arrays.equals(m27619a, Constants.CALL_BEFORE_MERGE)) && !this.forcePreCallState) {
            setHoldContactData(true);
        } else {
            setHoldContactData(false);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.CallFabWithActionsView.OnCallFabActionListener
    public void onCallFabActionClicked(ContactAction contactAction) {
        switch (C622759.f21859d[contactAction.ordinal()]) {
            case 1:
                startInstantMessaging(contactAction.getType());
                sendFabActionEvent("ClickLongCallSMS");
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                startInstantMessaging(contactAction.getType());
                sendFabActionEvent("ClickLongCall_IM", contactAction.name());
                return;
            case 11:
                new NoteAction().mo31800b(this, this.contact, null);
                sendFabActionEvent("ClickLongCallNote");
                return;
            case 12:
                new BlockCallAction().mo31800b(this, this.contact, null);
                sendFabActionEvent("ClickLongCallBlock");
                return;
            case 13:
                new UnBlockCallAction().mo31800b(this, this.contact, null);
                sendFabActionEvent("ClickLongCallUnBlock");
                return;
            case 14:
                new SpamAction().mo31800b(this, this.contact, null);
                sendFabActionEvent("ClickLongCallSpam");
                return;
            case 15:
                new UnSpamAction().mo31800b(this, this.contact, null);
                sendFabActionEvent("ClickLongCallUnSpam");
                return;
            case 16:
                new CreateContactsAction().mo31800b(this, this.contact, null);
                sendFabActionEvent("ClickLongCallAddToContacts");
                return;
            case 17:
                startPersonalCallScreen();
                sendFabActionEvent("ClickLongCallPromotedFeature", contactAction.name());
                return;
            case 18:
                new AddIncognitoContactAction().m31839a(this, this.contact);
                sendFabActionEvent("ClickLongCallIncognito", contactAction.name());
                return;
            case 19:
                new RemoveIncognitoContactAction().m31839a(this, this.contact);
                sendFabActionEvent("ClickLongCallUnIncognito", contactAction.name());
                return;
            case 20:
                startInviteDialog();
                sendFabActionEvent("ClickLongCallInvite", contactAction.name());
                return;
            default:
                return;
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.CallFabWithActionsView.OnCallFabActionListener
    public void onCallFabActionsHidden() {
        this.centerBottomActionSmallIcon.setVisibility(0);
        if (Prefs.f26654k.get().booleanValue()) {
            this.callFab.clearAnimation();
            this.callFab.animate().scaleX(this.callIconScale).scaleY(this.callIconScale).setDuration(250L).start();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.CallFabWithActionsView.OnCallFabActionListener
    public void onCallFabActionsShown(List<? extends ContactAction> list) {
        StringBuilder sb = new StringBuilder();
        for (ContactAction contactAction : list) {
            sb.append(contactAction.name());
            sb.append(", ");
        }
        sendFabActionEvent("LongCallOptions", sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x03cf, code lost:
        if (com.callapp.contacts.manager.preferences.Prefs.f26444eI.get().booleanValue() != false) goto L123;
     */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0571  */
    @Override // com.callapp.contacts.manager.phone.CallStateListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCallStateChanged(final com.callapp.contacts.model.call.CallData r13) {
        /*
            Method dump skipped, instructions count: 2469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.onCallStateChanged(com.callapp.contacts.model.call.CallData):void");
    }

    @Override // com.callapp.contacts.activity.interfaces.CardShowingAdEvent
    public void onCardShowingAd(AdCard adCard) {
        if (!(adCard instanceof CDLargeAdCard)) {
            if (!(adCard instanceof CDAnalyticsAdCard)) {
                return;
            }
            this.isAnalyticsAdLoaded = true;
            return;
        }
        this.isAdLoaded = true;
        if (!this.callState.isPreCall()) {
            doAutoScrollIfNeeded();
        } else {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.31
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsActivity.this.scrollToEndWhenLargeAdIsVisible();
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.Listener
    public void onCloseCallScreenThemeBannerClicked() {
        CallScreenThemeBannerViewController callScreenThemeBannerViewController = this.callScreenThemeBannerViewController;
        if (callScreenThemeBannerViewController != null) {
            this.fullScreenBannerContainer.removeView(callScreenThemeBannerViewController.getRootView());
            this.contactDetailsRootView.removeView(this.fullScreenBannerContainer);
            this.callScreenThemeBannerViewController.setListener(null);
            this.callScreenThemeBannerViewController = null;
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onCloseKeypadRequestedByUser(boolean z) {
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
        CardView cardView;
        if (!this.presentersInitialized) {
            synchronized (this.contactFieldsLock) {
                if (this.contactFields != null) {
                    this.contactFields.addAll(set);
                } else {
                    this.contactFields = set;
                }
            }
            return;
        }
        CallRecorder callRecorder = null;
        if (Prefs.f26443eH.get().booleanValue() && this.callState == CallState.POST_CALL && !this.manualRecorderDialogShown && set.contains(ContactField.records) && !set.contains(ContactField.newContact) && this.detailsActivityMode != DetailsActivityMode.RECORDER_TEST) {
            this.manualRecorderDialogShown = true;
            List<CallRecorder> records = this.presenterContainer.getContact().getRecords();
            if (CollectionUtils.m26068b(records)) {
                callRecorder = records.get(0);
            }
            if (callRecorder != null) {
                File file = new File(callRecorder.getFileName());
                boolean z = TimeUnit.MILLISECONDS.toSeconds(Math.abs(callRecorder.getDate() - this.callData.getTalkingStartTime())) < 120;
                if (file.exists() && z) {
                    PopupManager.get().m28209a(this, new DialogCallRecorderPlayer(callRecorder, false, new DialogCallRecorderPlayer.CallRecorderPlayerEvents() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.44
                        @Override // com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer.CallRecorderPlayerEvents
                        /* renamed from: a */
                        public final void mo27922a() {
                            ContactDetailsActivity.this.finishTask.m28643a();
                        }
                    }));
                }
            }
        }
        this.presenterContainer.onContactChanged(contactData, set);
        updateCallFabOnContactChanged(contactData);
        if (CollectionUtils.m26073a(set, ContactField.cover)) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc
                @Override // java.lang.Runnable
                public final void run() {
                    ContactDetailsActivity.this.lambda$onContactChanged$8$ContactDetailsActivity(contactData);
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.isIncognito)) {
            handleIncognitoMode();
            this.incognitoLoaded = true;
            sendWhoViewedMyProfileIfNeeded();
        }
        if (CollectionUtils.m26073a(set, ContactField.spamScore, ContactField.deviceId)) {
            setParallaxAndStatusBarColors(isSpammer(), PhoneStateManager.get().isIncomingCallRingingState());
        }
        if (CollectionUtils.m26073a(set, ContactField.deviceId, ContactField.deviceIdChanged)) {
            this.singleContactContentObserver.m30933a(contactData.getDeviceId());
        }
        if (CollectionUtils.m26073a(set, ContactField.deviceId, ContactField.isIncognito, ContactField.photoUrl, ContactField.googleMap)) {
            setupContactActions(contactData);
        }
        if (set.contains(ContactField.phone)) {
            runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.45
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailsActivity.this.setShouldHideSocialProfileAction(contactData.isUnsearchableNumber() || contactData.isVoiceMail() || ContactDetailsActivity.this.presenterContainer.mo30920a(contactData));
                }
            });
        }
        if (set.contains(ContactField.favorite)) {
            setFavoriteButton();
        }
        if (CollectionUtils.m26073a(set, ContactField.photoUrl)) {
            CallAppChatHeadLifecycleObserverManager.get().m26493a();
            FastCacheDataManager.m28942b(contactData);
        }
        if (CollectionUtils.m26073a(set, ContactField.fullName)) {
            FastCacheDataManager.m28948a(contactData);
        }
        if (CollectionUtils.m26073a(set, ContactField.spamScore)) {
            FastCacheDataManager.m28941c(contactData);
        }
        if (!this.isIdentified && ((set.contains(ContactField.deviceId) || set.contains(ContactField.fullName)) && !contactData.isContactInDevice() && StringUtils.m26045b((CharSequence) contactData.getFullName()))) {
            this.isIdentified = true;
        }
        if (CollectionUtils.m26073a(set, ContactField.newContact) && (cardView = this.noteBannerlayout) != null) {
            ViewUtils.m27314a((View) cardView, false);
        }
        if (!CollectionUtils.m26073a(set, ContactField.genomeData)) {
            return;
        }
        this.genomeLoaded = true;
        sendWhoViewedMyProfileIfNeeded();
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        CLog.m27611a(ContactDetailsActivity.class, "OnCreate: " + AndroidUtils.m27632a(getIntent()));
        Handler handler2 = handler;
        this.singleContactContentObserver = new SingleContactContentObserver(handler2);
        if (getIntent() != null && getIntent().getExtras() != null) {
            ExtractedInfo extractedInfo = (ExtractedInfo) getIntent().getExtras().getSerializable(Constants.EXTRA_PHONE_ORIGIN);
            this.origin = extractedInfo;
            if (extractedInfo == null) {
                Prefs.f26357cb.m28169b(1);
            }
        }
        getIntent().putExtra("EXTRA_REPORT_TRACK_VIEW", true);
        loadContactWhenCreated();
        setKeyguardDismissAndScreenWindowFlags();
        getWindow().setSoftInputMode(48);
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        this.contactDetailsRootView = (ViewGroup) findViewById(2131362415);
        this.bottomActionsContainerWithShadow = findViewById(2131362117);
        this.cardsAdapter = new CardArrayRecyclerViewAdapterWithPriority(this, new ArrayList(), new CardArrayRecyclerViewAdapterWithPriority.CardEventsListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.18
            @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
            /* renamed from: a */
            public final void mo30941a() {
                ContactDetailsActivity.this.showLockedNotificationOnScreen();
            }

            @Override // com.callapp.contacts.activity.contact.cards.framework.CardArrayRecyclerViewAdapterWithPriority.CardEventsListener
            /* renamed from: b */
            public final void mo30940b() {
                ContactDetailsActivity.this.snapToPosition(BaseContactDetailsParallaxImpl.Position.SEMI_OPEN, false);
            }
        });
        getRecyclerView().setAdapter((AbstractC18112a) this.cardsAdapter);
        getRecyclerView().m40478a(new BottomBarScrollListener(this));
        getRecyclerView().m40479a(new RecyclerView.AbstractC2642j() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.19
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2642j
            /* renamed from: a */
            public final void mo29864a(View view) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2642j
            /* renamed from: b */
            public final void mo29863b(View view) {
                if (view.findViewById(2131363796) != null) {
                    ContactDetailsActivity.this.pausePlayerCardIdNeeded();
                }
            }
        });
        this.presenterManager.m30921c(this.presenterContainer);
        this.presentersInitialized = true;
        handler2.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.20
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsActivity.this.fireContactChange();
            }
        });
        showActionBar(false);
        this.forcePreCallState = extras != null && extras.getBoolean("forceIdleState", false);
        ((AppBarLayout.Behavior) ((CoordinatorLayout.C0702d) findViewById(2131362019).getLayoutParams()).f3200a).setDragCallback(new AppBarLayout.Behavior.AbstractC14407a() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.21
            @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior.AbstractC14406a
            /* renamed from: a */
            public final boolean mo11289a() {
                return ContactDetailsActivity.this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS;
            }
        });
        this.centerBottomActionSmallIcon = (ImageView) findViewById(2131362314);
        this.callActionBtn = findViewById(2131362312);
        this.callFab = (CallFabWithActionsView) findViewById(2131362313);
        if (Prefs.f26654k.get().booleanValue()) {
            this.callFab.m30962a(this, CallFabUtils.f22134a.m30837a(this.contact));
            this.callFab.setActionListener(this);
            if (shouldShowFabIntro()) {
                final CallFabWithActionsView callFabWithActionsView = this.callFab;
                ImageView imageView = callFabWithActionsView.getBinding().f24982e;
                imageView.setScaleX(1.2f);
                imageView.setScaleY(1.2f);
                imageView.setVisibility(0);
                imageView.animate().setStartDelay(500L).scaleX(1.0f).scaleY(1.0f).setDuration(450L).setInterpolator(new C1157b()).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$showIntro$$inlined$apply$lambda$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallFabWithActionsView.this.m30964a(750L);
                        r0.getBinding().f24982e.animate().scaleX(1.4f).scaleY(1.4f).alpha(BitmapDescriptorFactory.HUE_RED).setStartDelay(1700L).setDuration(850L).withEndAction(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.CallFabWithActionsView$animateHandOff$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                long j;
                                CallFabWithActionsView callFabWithActionsView2 = CallFabWithActionsView.this;
                                j = callFabWithActionsView2.f21712j;
                                callFabWithActionsView2.m30956b(j);
                            }
                        });
                    }
                });
            }
        }
        KeyguardActivityStateManager.get().m28282a(this.classSimpleName);
        this.profileRippleBackground = (RippleBackground) findViewById(2131363701);
        new Task() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.22
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactDetailsActivity.this.presenterManager.m30923b(ContactDetailsActivity.this.presenterContainer);
                ContactDetailsActivity.this.autoScrollType = CallAppRemoteConfigManager.get().m28699b("InCallAutoScroll");
                ContactDetailsActivity.this.isAutoScrollEnabled = !RecorderTestManager.get().isInRecorderTestMode() && ContactDetailsActivity.this.autoScrollType > 0;
                long longValue = Prefs.f26302bZ.get().longValue();
                if (longValue < Long.MAX_VALUE) {
                    Prefs.f26302bZ.m28168a();
                    if ((longValue + 1) % 4 == 0) {
                        FeedbackManager.get().m28668a(Activities.getString(2131888131), (Integer) 48, 1);
                        Prefs.f26302bZ.set(Long.MAX_VALUE);
                    }
                }
                ContactDetailsActivity.this.tryToShowRippleOnProfileView();
            }
        }.execute();
        CallBarPresenter callBarPresenter = (CallBarPresenter) this.presenterManager.m30925a(CallBarPresenter.class);
        this.callBarPresenter = callBarPresenter;
        if (callBarPresenter != null) {
            callBarPresenter.setForcePreCall(this.forcePreCallState);
            if (Build.VERSION.SDK_INT >= 23) {
                this.callBarPresenter.setAudioRouteSelectorDialogListener(new AudioRouteSelectorDialogListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.23
                    @Override // com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.AudioRouteSelectorDialogListener
                    /* renamed from: a */
                    public final void mo30782a() {
                        ContactDetailsActivity.this.audioRouteSelectorDialogFragment = AudioRouteSelectorDialogFragment.m26844d();
                        ContactDetailsActivity.this.audioRouteSelectorDialogFragment.mo19242a(ContactDetailsActivity.this.getSupportFragmentManager(), AudioRouteSelectorDialogFragment.f28547c);
                    }
                });
            }
        }
        TopSheetPresenter topSheetPresenter = (TopSheetPresenter) this.presenterManager.m30925a(TopSheetPresenter.class);
        this.topSheetPresenter = topSheetPresenter;
        topSheetPresenter.setTopSheetListener(this);
        this.presenterContainer.getEventBus().m29048a(DialpadToggleListener.f23114a, this);
        this.presenterContainer.getEventBus().m29048a(DefaultDialer.f23113a, this);
        this.presenterContainer.getEventBus().m29048a(CardShowingAdEvent.f23112a, this);
        this.presenterContainer.getEventBus().m29048a(ScrollWhenCDAnalyticsExpand.f21235a, this);
        getLifecycle().addObserver(this.bringToFrontLifecycleObserver);
        boolean addListenerIfNotPreCall = PhoneStateManager.get().addListenerIfNotPreCall(this, this.forcePreCallState);
        if (isStartedFromACall.getAndSet(false) && !addListenerIfNotPreCall && !this.forcePreCallState) {
            finish();
            return;
        }
        PhoneStateManager.get().addDetailsListener(this);
        findViewById(2131362883).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContactDetailsActivity.this.isClickValid(view)) {
                    ContactDetailsActivity.this.onFullProfileImageClicked(view);
                }
            }
        });
        this.bottomActionBar = findViewById(2131362116);
        setTopBarClickedListeners(2131362949, 2131362420, 2131362423, 2131362424, 2131362049, 2131363348, 2131362421, 2131362416, 2131362422, 2131362428, 2131362426, 2131362434);
        setButtonBarLongClickedListeners(2131362207);
        setButtonBarClickedListeners(2131362207);
        View findViewById = findViewById(2131362420);
        this.contactDetailsActionEditContainer = findViewById;
        findViewById.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.25
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AddNoteActivity.m31038a(ContactDetailsActivity.this.getContact().getId(), ContactDetailsActivity.this);
                return false;
            }
        });
        this.recorderTestContainerStub = (ViewStub) findViewById(2131363631);
        this.cardsRecyclerview = (CardRecyclerView) findViewById(2131362293);
        onNewIntent(getIntent());
        this.eventBus.m29048a(PresenterEvents.f23131b, this.presenterEvents);
        EventBusManager.f25138a.m29048a(FinishActivityListener.f23120a, this);
        EventBusManager.f25138a.m29048a(FastCacheChangedListener.f23119b, this.fastCacheChangedListener);
        EventBusManager.f25138a.m29048a(InvalidateDataListener.f23122b, this.invalidateDataListener);
        CallRecorderManager.get().m27874a(this, !RecorderTestManager.get().isInRecorderTestMode());
        IncognitoToolTip incognitoToolTip = (IncognitoToolTip) findViewById(2131363070);
        this.incognitoToolTip = incognitoToolTip;
        incognitoToolTip.setLearnMoreOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$ContactDetailsActivity$4ymtA3GiJLYKlAQYffH6mGvSTmg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactDetailsActivity.this.lambda$onCreate$3$ContactDetailsActivity(view);
            }
        });
        this.cardsRecyclerviewContainer = findViewById(2131362294);
        this.topSheetContainer = findViewById(2131364179);
        this.callBarLayoutRoot = findViewById(2131362206);
        this.contactDetailsTopStrip = findViewById(2131362455);
        this.contactDetailsActionMore = findViewById(2131362422);
        this.contactDetailsActionNote = findViewById(2131362423);
        this.contactDetailsActionVideoRingtone = findViewById(2131362424);
        this.favoritesBtn = (CallAppCheckBox) findViewById(2131362421);
        this.contactDetailsActionAdd = findViewById(2131362416);
        this.contactDetailsFirstCircleButton = findViewById(2131362426);
        this.contactDetailsSecondCircleButton = findViewById(2131362428);
        this.contactDetailsThirdCircleButton = findViewById(2131362434);
        this.coverFrameLayout = findViewById(2131362496);
        this.snackBarContainerKeypad = findViewById(2131363905);
        flipPVRIconIfNeeded();
        this.playerViewStub = (ViewStub) findViewById(2131363523);
        if ((extras == null || !extras.getBoolean(Constants.EXTRA_IS_INCOMING) || extras.getString(Constants.EXTRA_PHONE_NUMBER) == null) && !PhoneStateManager.get().isIncomingCallRingingState()) {
            this.bottomActionsContainerWithShadow.setVisibility(0);
            this.contactDetailsRootView.setBackgroundColor(ThemeUtils.m27379a(!this.presenterContainer.mo30920a(this.contact), 2131099686).get(2131099686));
            return;
        }
        this.bottomActionsContainerWithShadow.setVisibility(8);
        setMode(DetailsActivityMode.INCOMING_CALL);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        CLog.m27611a(ContactDetailsActivity.class, "onDestroy");
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CONTACT_DETAILS_ACTIVITY_SCREEN);
        this.singleContactContentObserver.m30934a();
        Handler handler2 = handler;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
        this.finishTask.m28643a();
        releaseContact();
        PhoneStateManager.get().removeListener(this);
        PhoneStateManager.get().removeDetailsListener(this);
        getLifecycle().removeObserver(this.bringToFrontLifecycleObserver);
        CallAppApplication.get().m31861c(this.runAutoScrollIfNeeded);
        this.interstitial = null;
        KeyguardActivityStateManager.get().m28279b(this.classSimpleName);
        this.eventBus.m29045b(PresenterEvents.f23131b, this.presenterEvents);
        this.eventBus.m29045b(CardShowingAdEvent.f23112a, this);
        this.eventBus.m29045b(ScrollWhenCDAnalyticsExpand.f21235a, this);
        this.presenterContainer.getEventBus().m29045b(DialpadToggleListener.f23114a, this);
        this.presenterContainer.getEventBus().m29045b(DefaultDialer.f23113a, this);
        IncognitoToolTip incognitoToolTip = this.incognitoToolTip;
        if (incognitoToolTip != null) {
            incognitoToolTip.m26723b();
        }
        CallScreenThemeBannerViewController callScreenThemeBannerViewController = this.callScreenThemeBannerViewController;
        if (callScreenThemeBannerViewController != null) {
            callScreenThemeBannerViewController.setListener(null);
        }
        CallRecorderManager.get().m27865b(this, !RecorderTestManager.get().isInRecorderTestMode());
        EventBusManager.f25138a.m29045b(FastCacheChangedListener.f23119b, this.fastCacheChangedListener);
        EventBusManager.f25138a.m29045b(InvalidateDataListener.f23122b, this.invalidateDataListener);
        this.isAdLoaded = false;
        this.isAnalyticsAdLoaded = false;
        PlayerView playerView = this.playerView;
        if (playerView != null && playerView.f37964a != null) {
            this.playerView.f37964a.removeAllViews();
        }
        EventBusManager.f25138a.m29045b(FinishActivityListener.f23120a, this);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onError(Bundle bundle) {
        this.eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    public void onFullProfileImageClicked(View view) {
        if (view.getId() != 2131362883 || BaseContactDetailsParallaxImpl.getCurrentPosition() == BaseContactDetailsParallaxImpl.Position.SEMI_OPEN || this.presenterContainer.mo30920a(this.contact) || this.contact == null || this.contact.isVoiceMail()) {
            return;
        }
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Top bar button clicked: large image.", Constants.CLICK);
        AndroidUtils.m27635a((Activity) this);
        ChooseSocialProfileActivity.openContactProfile(this, this.contact);
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.Listener
    public void onGetItNowCallScreenThemeBannerClicked() {
        CallScreenThemeBannerViewController callScreenThemeBannerViewController = this.callScreenThemeBannerViewController;
        if (callScreenThemeBannerViewController != null) {
            this.fullScreenBannerContainer.removeView(callScreenThemeBannerViewController.getRootView());
            this.contactDetailsRootView.removeView(this.fullScreenBannerContainer);
            Activities.m27656b(this, new Intent(this, MarketPlaceActivity.class));
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment.InCallActionFragmentInterface
    public void onInCallActionFragmentCreated(boolean z) {
        int i;
        this.shouldPlayVideoBackground = z;
        if (z) {
            i = ThemeUtils.getColor(2131099918);
            getParallax().m31007a(ThemeState.COVER);
        } else {
            i = C0790b.m44492c(CallAppApplication.get(), 2131099784);
            getParallax().m31007a(ThemeState.PRIMARY);
        }
        setParallaxAndStatusBarColors(isSpammer(), true);
        setStatusBarColor(i);
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.KeypadEvents
    public void onKeypadStateChanged(KeypadFragment.KeypadState keypadState) {
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(final Intent intent) {
        CLog.m27611a(ContactDetailsActivity.class, "OnNewIntent: " + AndroidUtils.m27632a(intent));
        if (intent.getBooleanExtra(EXTRA_BRING_TO_FRONT_RETRY, false)) {
            int intExtra = intent.getIntExtra(EXTRA_BRING_TO_FRONT_RETRY_LEFT, 4);
            if (intExtra < 4) {
                int i = intExtra + 1;
                intent.putExtra(EXTRA_BRING_TO_FRONT_RETRY, true);
                intent.putExtra(EXTRA_BRING_TO_FRONT_RETRY_LEFT, i);
                new BringToFrontTask(intent).schedule(i * 200);
            }
            Intent intent2 = getIntent();
            if (intent2 != null && !intent2.getBooleanExtra(EXTRA_BRING_TO_FRONT_RETRY, false)) {
                return;
            }
            finish();
        } else {
            this.finishTask.m28643a();
        }
        setIntent(intent);
        super.onNewIntent(intent);
        if (getLastCustomNonConfigurationInstance() != null) {
            intent.putExtra(ACTION_DONT_CLEAR_POPUPS, true);
        }
        OverlayManager.get().m28527a();
        Bundle extras = intent.getExtras();
        if (extras == null) {
            CLog.m27611a(ContactDetailsActivity.class, "Got empty extras: " + AndroidUtils.m27632a(intent));
            return;
        }
        if (extras.getBoolean("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED", false)) {
            intent.removeExtra("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED");
            AnalyticsManager.get().m28450a(Constants.MISSED_CALL_ACTIONS, "User clicked the missed call notification");
            MissedCallUtils.m27439b(false);
            showDialogToAllowNotificationAccessAfterMissedCall(this);
        }
        if (extras.getBoolean("EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED", false)) {
            intent.removeExtra("EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED");
            AnalyticsManager.get().m28450a(Constants.MISSED_CALL_ACTIONS, "User clicked the not answered notification");
            MissedCallUtils.m27440a(false);
        }
        this.whoViewedMyProfileEntrypoint = (ENTRYPOINT) getIntent().getExtras().getSerializable(Constants.EXTRA_WHO_VIEWED_ENTRY_POINT);
        if (getIntent().getBooleanExtra(EXTRA_WHO_VIEW_PROFILE_NOTIFICATION, false)) {
            WhoViewedMyProfileDataManager.m29352d();
        }
        if (getIntent().getBooleanExtra(Constants.WHO_VIEWED_MY_NOTIFICATION_CLICKED, false)) {
            AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfile_notification_open");
        }
        if (!extras.getBoolean(ACTION_DONT_CLEAR_POPUPS, false)) {
            PopupManager.get().m28211a();
            IncognitoToolTip incognitoToolTip = this.incognitoToolTip;
            if (incognitoToolTip != null) {
                incognitoToolTip.m26723b();
                this.incognitoToolTip.setVisibility(8);
            }
        }
        final long j = extras.getLong(Constants.EXTRA_CONTACT_ID);
        final Phone m28239a = PhoneManager.get().m28239a(extras.getString(Constants.EXTRA_PHONE_NUMBER));
        final String string = extras.getString(Constants.EXTRA_CALL_TELECOM_ID);
        this.origin = (ExtractedInfo) extras.getSerializable(Constants.EXTRA_PHONE_ORIGIN);
        if (j == 0 && m28239a.isEmpty()) {
            CLog.m27611a(ContactDetailsActivity.class, "OnNewIntent got empty contactId and phone: " + AndroidUtils.m27632a(intent));
            return;
        }
        CLog.m27611a(ContactDetailsActivity.class, "OnNewIntent: " + AndroidUtils.m27632a(intent));
        boolean z = cleanAllDataIfContactChanged(j, m28239a) || this.contact == null;
        if (z || getIntent().getBooleanExtra("EXTRA_REPORT_TRACK_VIEW", false)) {
            AnalyticsManager.get().mo28441b(Constants.CONTACT_DETAILS_ACTIVITY_SCREEN);
            String stringExtra = intent.getStringExtra(Constants.EXTRA_ENTRY_POINT);
            if (StringUtils.m26045b((CharSequence) stringExtra)) {
                AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, Constants.CONTACT_SCREEN, stringExtra);
            }
        }
        boolean z2 = getIntent().getExtras().getBoolean("forceIdleState", false);
        this.forcePreCallState = z2;
        if (z2) {
            setHoldContactData(false);
            setMode(DetailsActivityMode.CONTACT_DETAILS);
        } else if (RecorderTestManager.get().isInRecorderTestMode() && StringUtils.m26042b(RecorderTestManager.get().getRecorderTestRawNumber(), m28239a.getRawNumber())) {
            setMode(DetailsActivityMode.RECORDER_TEST);
        }
        final boolean z3 = z;
        new Task() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.12
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactDetailsActivity.this.forceShowPresenterIfNeeded(intent, ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, UserCorrectedInfoPresenter.class);
                ContactDetailsActivity.this.forceShowPresenterIfNeeded(intent, ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, IsSpamPresenter.class);
                ContactDetailsActivity.this.updateModelAndFireEvents(intent, j, m28239a, string, z3);
                if (intent.getBooleanExtra("EXTRA_ASK_OPEN_RATE_US", false)) {
                    ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                    AppRater.m27622a(contactDetailsActivity, contactDetailsActivity.contact, false, !AppRater.isRatedYet());
                }
                if (intent.getBooleanExtra("EXTRA_BLOCKED_CALL_NOTIFICATION_CLICKED", false)) {
                    NotificationManager.m28533d();
                }
            }
        }.execute();
        this.isOneTimeIncognitoCall = intent.getBooleanExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, false);
        if (intent.getBooleanExtra(BaseContactDetailsActivity.EXTRA_SHOW_KEYPAD, false)) {
            this.presenterContainer.getEventBus().m29043c(ShowKeypadListener.f23137d, Boolean.TRUE);
        }
        if (!intent.hasExtra("future_target_index_key")) {
            return;
        }
        NotificationManager.get().m28534c(intent.getIntExtra("future_target_index_key", -1));
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onNumberChanged(String str, int i, int i2, int i3, boolean z) {
        keypadNumbers = str;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        CLog.m27611a(ContactDetailsActivity.class, "onPause");
        ProximityManager.get().setAudioModeChangedListener(null);
        KeyguardActivityStateManager.get().m28276d(this.classSimpleName);
        PhoneStateManager.get().setContactDetailsActivityVisible(false);
        if (this.isIncognitoCall || this.isOneTimeIncognitoCall) {
            ThemeUtils.setIsLight(((ThemeState) Prefs.f26417di.get()).isLightTheme());
        }
        AudioRouteSelectorDialogFragment audioRouteSelectorDialogFragment = this.audioRouteSelectorDialogFragment;
        if (audioRouteSelectorDialogFragment != null) {
            audioRouteSelectorDialogFragment.mo11082a();
        }
        if (this.detailsActivityMode == DetailsActivityMode.RECORDER_TEST && !RecorderTestManager.get().isInRecorderTestMode()) {
            finish();
        }
        super.onPause();
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onPreRecord(Bundle bundle) {
        this.eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onRecordFileReady(Bundle bundle) {
        this.eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onRecorderStarted(Bundle bundle) {
        this.eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    @Override // com.callapp.contacts.recorder.interfaces.CallRecorderEvent
    public void onRecorderStopped(Bundle bundle) {
        CallRecorderLoader.m27830a(this.contact);
        this.eventBus.m29046a((EventType<L, EventType<RecorderStateListener, Bundle>>) RecorderStateListener.f23132b, (EventType<RecorderStateListener, Bundle>) bundle, false);
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle.getBoolean(SHOULD_FINISH_ACTIVITY)) {
            finish();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        CLog.m27611a(ContactDetailsActivity.class, "onResume");
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            if (BluetoothHeadsetConnectivityManager.isUsingBT()) {
                setVolumeControlStream(1);
            } else {
                setVolumeControlStream(0);
            }
        }
        requestUpdateUI();
        ProximityManager.get().setAudioModeChangedListener(this.audioModeChangedListener);
        KeyguardActivityStateManager.get().m28277c(this.classSimpleName);
        PhoneStateManager.get().setContactDetailsActivityVisible(true);
        if (this.isIncognitoCall || this.isOneTimeIncognitoCall) {
            ThemeUtils.setIsLight(false);
        }
    }

    @Override // androidx.activity.ComponentActivity
    public Object onRetainCustomNonConfigurationInstance() {
        return Boolean.TRUE;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(SHOULD_FINISH_ACTIVITY, this.finishTask.isRunning());
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        return true;
    }

    @Override // com.callapp.contacts.activity.interfaces.DefaultDialer
    public void onSetAsDefaultAppClicked() {
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default call screen", "Pop up Shown");
        this.timeRequestedToOpenDefaultPhoneAppDialog = System.currentTimeMillis();
        Activities.m27687a((Activity) this, true, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.30
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                if (i2 != 0 || System.currentTimeMillis() - ContactDetailsActivity.this.timeRequestedToOpenDefaultPhoneAppDialog > 400) {
                    ContactDetailsActivity contactDetailsActivity = ContactDetailsActivity.this;
                    contactDetailsActivity.callBarPresenter = (CallBarPresenter) contactDetailsActivity.presenterManager.m30925a(CallBarPresenter.class);
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    StringBuilder sb = new StringBuilder("Click ");
                    sb.append(i2 == -1 ? "yes" : "no");
                    analyticsManager.mo28444a(Constants.PERMISSIONS, "Default call screen", sb.toString(), 0.0d, new String[0]);
                    AnalyticsManager.get().mo28446a(Constants.PERMISSIONS, "Default dailer from CD", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false", 0.0d);
                    AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default dialer", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false");
                    AnalyticsManager.get().mo28434g();
                    if (ContactDetailsActivity.this.callBarPresenter != null && i2 == -1) {
                        CallBarPresenter callBarPresenter = ContactDetailsActivity.this.callBarPresenter;
                        if (!PhoneManager.get().isDefaultSystemPhoneApp()) {
                            FeedbackManager.get().m28669a(callBarPresenter.presentersContainer.getRealContext().getString(2131887159), (Integer) 17);
                        } else if (callBarPresenter.f22235a != null) {
                            callBarPresenter.f22235a.setText(Activities.getString(2131887017));
                            ViewUtils.m27298b((View) callBarPresenter.f22240b, false);
                            ViewUtils.m27298b((View) callBarPresenter.f22241c, false);
                        } else {
                            FeedbackManager.get().m28669a(callBarPresenter.presentersContainer.getRealContext().getString(2131887017), (Integer) 17);
                        }
                    } else if (!PhoneManager.get().isDefaultSystemPhoneApp()) {
                        ContactDetailsActivity.this.failedToSetDefaultDialer = true;
                    }
                    if (PhoneManager.get().isDefaultSystemPhoneApp() && !Activities.m27641e()) {
                        ContactDetailsActivity.this.showOverlayPermissionDialog();
                        return;
                    }
                } else {
                    Activities.m27687a((Activity) ContactDetailsActivity.this, false, (ActivityResult) this);
                }
                ContactDetailsActivity.this.timeRequestedToOpenDefaultPhoneAppDialog = 0L;
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.57
            @Override // java.lang.Runnable
            public void run() {
                if (!ContactDetailsActivity.this.isActivityVisible()) {
                    ContactDetailsActivity.this.recreate();
                }
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public void onTopBarIconClicked(View view) {
        if (!Activities.m27696a((Activity) this) || view == null) {
            return;
        }
        int id = view.getId();
        switch (id) {
            case 2131362049:
                AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Top bar button clicked: back.", Constants.CLICK);
                onBackPressed();
                return;
            case 2131362416:
                AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Top bar button clicked: add/edit.", Constants.CLICK);
                editOrCreateContact();
                return;
            case 2131362426:
                if (ThemeUtils.isThemeLight()) {
                    AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickModeButtonToDark");
                } else {
                    AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickModeButtonToLight");
                }
                getParallax().getThemeChangeViewController().m30703a(this.contactDetailsParallaxThemeState.getLeftThemeChangedEvent());
                return;
            case 2131362428:
                if (ThemeUtils.isThemeLight()) {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ClickThemeButtonToLight", Prefs.f26416dh.get());
                } else {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "ClickThemeButtonToDark", Prefs.f26416dh.get());
                }
                getParallax().getThemeChangeViewController().m30703a(this.contactDetailsParallaxThemeState.getRightThemeChangedEvent());
                return;
            case 2131362434:
                getParallax().getThemeChangeViewController().m30706a();
                return;
            case 2131363348:
                break;
            default:
                switch (id) {
                    case 2131362420:
                        break;
                    case 2131362421:
                        if (this.contact == null) {
                            return;
                        }
                        CallAppCheckBox callAppCheckBox = (CallAppCheckBox) view;
                        callAppCheckBox.toggle();
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.m28449a(Constants.CONTACT_DETAILS, "Top bar button clicked: favorite. set contact as favorite:" + callAppCheckBox.isChecked(), Constants.CLICK);
                        OneShotContentContentObserver.m28072a(ContactsContract.Contacts.CONTENT_URI, new CallAppContentObserver.ContentObserverListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.50
                            @Override // com.callapp.contacts.observers.CallAppContentObserver.ContentObserverListener
                            public void onContentChanged() {
                                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.FAVORITES, false);
                            }
                        });
                        ContactDataUtils.setIsFavorite(this.presenterContainer.getContact(), callAppCheckBox.isChecked());
                        return;
                    case 2131362422:
                        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Top bar button clicked: more.", Constants.CLICK);
                        TopSheetPresenter topSheetPresenter = this.topSheetPresenter;
                        if (topSheetPresenter == null) {
                            return;
                        }
                        topSheetPresenter.m30710b();
                        this.topSheetPresenter.m30708c();
                        return;
                    case 2131362423:
                        startNewNote();
                        return;
                    case 2131362424:
                        Prefs.f26556gO.set(Boolean.TRUE);
                        AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                        analyticsManager2.m28449a(Constants.PERSONAL_STORE_ITEM, "Icon clicked", PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", CD header icon");
                        startPersonalCallScreen();
                        return;
                    default:
                        return;
                }
        }
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Top bar button clicked: add/edit.", Constants.CLICK);
        if (this.contact == null) {
            return;
        }
        if (this.contact.isContactInDevice()) {
            editOrCreateContact();
            return;
        }
        boolean m27339b = UserCorrectedInfoUtil.m27339b(this.contact.getPhone());
        UserCorrectedData m27346a = UserCorrectedInfoUtil.m27346a(this.contact.getDeviceId(), this.contact.getPhone());
        UserCorrectedInfoUtil.m27340a(Constants.CONTACT_DETAILS, "Edit clicked - User corrected a contact info data", this, this.contact.getFullName(), m27346a != null ? m27346a.isBusiness() : this.contact.isBusiness() ? 1 : 0, m27339b, this.contact, this.contact.getPhone(), new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.51
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public void popupDone(boolean z) {
                if (z) {
                    FeedbackManager.get().m28677a();
                    UserCorrectedInfoPresenter userCorrectedInfoPresenter = (UserCorrectedInfoPresenter) ContactDetailsActivity.this.presenterManager.m30925a(UserCorrectedInfoPresenter.class);
                    if (userCorrectedInfoPresenter == null) {
                        return;
                    }
                    userCorrectedInfoPresenter.collapseCorrectedInfoViewForHelpUsIdentifyNumber();
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onVoiceSearchRequested() {
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        KeyguardActivityStateManager.get().m28281a(this.classSimpleName, z);
    }

    @Override // com.callapp.contacts.activity.callappplus.CallAppFirstTimeCallDialog.ActionClick
    public void openCallAppPlus() {
        startActivity(new Intent(this, CallAppPlusActivity.class));
        finish();
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void registerFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        this.keypadVisiblityEvents = keypadVisibilityEvents;
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public void registerFilteredEvents(SearchContactsFilter searchContactsFilter) {
    }

    protected void releaseContact() {
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this);
        this.incognitoLoaded = false;
        this.genomeLoaded = false;
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    protected boolean shouldColorHeaderBackground() {
        return this.detailsActivityMode == DetailsActivityMode.CONTACT_DETAILS;
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public boolean shouldSkipEmptyView() {
        return false;
    }

    @Override // com.callapp.contacts.activity.interfaces.DialpadToggleListener
    public void toggleDialpad(final boolean z, boolean z2, final int i, final int i2) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.29
            @Override // java.lang.Runnable
            public void run() {
                ContactDetailsActivity.this.keypadShown = z;
                final AbstractC1121s m43765a = ContactDetailsActivity.this.getSupportFragmentManager().m43765a();
                KeypadFragment keypadFragment = (KeypadFragment) ContactDetailsActivity.this.getSupportFragmentManager().m43740a("KEYPAD_FRAGMENT_TAG");
                KeypadFragment keypadFragment2 = keypadFragment;
                if (keypadFragment == null) {
                    keypadFragment2 = KeypadFragment.m30496a(true, i2, i, 1);
                }
                if (z) {
                    m43765a.m43535b(2131363143, keypadFragment2, "KEYPAD_FRAGMENT_TAG").mo43530d();
                } else if (ContactDetailsActivity.this.keypadVisiblityEvents == null) {
                } else {
                    final KeypadFragment keypadFragment3 = keypadFragment2;
                    ContactDetailsActivity.this.keypadVisiblityEvents.mo30207a(true, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.details.ContactDetailsActivity.29.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (!ContactDetailsActivity.this.getSupportFragmentManager().f4230v) {
                                m43765a.mo43539a(keypadFragment3).mo43532c();
                                ContactDetailsActivity.this.getSupportFragmentManager().m43732b();
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void unRegisterFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        if (this.keypadVisiblityEvents == keypadVisibilityEvents) {
            this.keypadVisiblityEvents = null;
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public void unRegisterFilteredEvents(SearchContactsFilter searchContactsFilter) {
    }
}
