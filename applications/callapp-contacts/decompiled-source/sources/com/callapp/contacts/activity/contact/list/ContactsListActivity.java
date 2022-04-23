package com.callapp.contacts.activity.contact.list;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.s;
import androidx.viewpager.widget.ViewPager;
import com.appsflyer.internal.referrer.Payload;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.common.model.json.JSONClientValidationResponse;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.AboutActivity;
import com.callapp.contacts.activity.EditUserProfileActivity;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.birthday.BirthdaysActivity;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.activity.calllog.CallLogFragment;
import com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLog;
import com.callapp.contacts.activity.callreminder.CallReminderActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PresenterManager;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainerImpl;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.activity.contact.details.overlay.ImageAndTextPusherOverlayView;
import com.callapp.contacts.activity.contact.details.presenter.ContactListCollapsingBottomBarPresenter;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.contact.list.MoreDialogManager;
import com.callapp.contacts.activity.contact.list.PusherManager;
import com.callapp.contacts.activity.contact.list.keypad.KeypadFragment;
import com.callapp.contacts.activity.contact.list.search.ContactsClickEvents;
import com.callapp.contacts.activity.contact.list.search.SearchContactsFragment;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.identify.IdentifyContactsDialog;
import com.callapp.contacts.activity.interfaces.CallEventListener;
import com.callapp.contacts.activity.interfaces.CallLogFirstTimeExperienceEventListener;
import com.callapp.contacts.activity.interfaces.CallLogLastSeenTimestampEventListener;
import com.callapp.contacts.activity.interfaces.ContactScrollEvent;
import com.callapp.contacts.activity.interfaces.DataFragmentsEvents;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.KeypadLayoutChanges;
import com.callapp.contacts.activity.interfaces.KeypadParamsChanged;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityEvents;
import com.callapp.contacts.activity.interfaces.KeypadVisibilityListener;
import com.callapp.contacts.activity.interfaces.MultiSelectChangeListener;
import com.callapp.contacts.activity.interfaces.MultiSelectEvents;
import com.callapp.contacts.activity.interfaces.NotifyDataChangedListener;
import com.callapp.contacts.activity.interfaces.OnSlideMenuOpenedListener;
import com.callapp.contacts.activity.interfaces.SearchContactsEvents;
import com.callapp.contacts.activity.interfaces.SearchContactsFilter;
import com.callapp.contacts.activity.interfaces.SuperSkinWizardScrollListener;
import com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.CoverStoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.FreeStoreItemDialog;
import com.callapp.contacts.activity.marketplace.KeypadBannerViewController;
import com.callapp.contacts.activity.marketplace.KeypadStoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.marketplace.ThemeStoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemPremiumAppItem;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.records.CallRecordsActivity;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.activity.setup.SetupWizardProfileActivity;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.CallAppBarManager;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.CallAppDrawerManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.asset.mappers.AssetListenerMapper;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.messaging.CallAppFirebaseMessagingService;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.BirthdayData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.popup.WhatsNewPopup;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.DrawOverAppsRequestDialog;
import com.callapp.contacts.popup.contact.callrecorder.AccessibilityServiceDialog;
import com.callapp.contacts.popup.contact.callrecorder.CallRecordingUpdateDialog;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.AppRater;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.MissedCallUtils;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.TCF2Manager;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.callappRomHelper.AutoStartPermissionHelper;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.servermessage.CheckQuotaLimitation;
import com.callapp.contacts.util.servermessage.ValidateClientTask;
import com.callapp.contacts.widget.CallAppToolbar;
import com.callapp.contacts.widget.ImageViewWithTopMark;
import com.callapp.contacts.widget.PagingTogglableViewPager;
import com.callapp.contacts.widget.SlideMenuAdapter;
import com.callapp.contacts.widget.SlideMenuFragment;
import com.callapp.contacts.widget.referandearn.ReferAndEarnActivity;
import com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment;
import com.callapp.contacts.widget.tutorial.TutorialPageManager;
import com.callapp.contacts.widget.tutorial.TutorialPageRepository;
import com.callapp.contacts.widget.tutorial.TutorialViewController;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.File;
import java.io.FileWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.json.internal.JsonReaderKt;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity.class */
public class ContactsListActivity extends BaseNoTitleActivity implements BaseCallAppFragment.OnScrollListener, BaseCallAppFragment.StoreItemAssetManagerProvider, CallLogFragment.ShowKeypadPromotionListener, ViewPagerManager, KeypadFragment.KeypadEvents, ContactsClickEvents, ContactScrollEvent, KeypadParamsChanged, KeypadVisibilityListener, MultiSelectChangeListener, SearchContactsEvents, FreeStoreItemDialog.FreeStoreItemDialogEvents, KeypadBannerViewController.Listener, SlideMenuAdapter.SlideMenuEvents {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f12558a = new Objects();
    private static ContentState r = ContentState.UNSET;
    private Map<String, ContentState> C;
    private FloatingActionButton D;
    private KeypadVisibilityEvents J;
    private EventBus L;
    private KeypadBannerViewController M;
    private CallAppToolbar P;
    private String R;
    private final PresentersContainerImpl V;
    private BillingManager Y;

    /* renamed from: b  reason: collision with root package name */
    private ImageAndTextPusherOverlayView f12559b;

    /* renamed from: d  reason: collision with root package name */
    private DrawerLayout f12561d;
    private AppBarLayout f;
    private ViewGroup g;
    private Intent n;
    private TabsAdapter p;
    private TabLayout q;
    private PagingTogglableViewPager s;
    private ImageView t;
    private ImageView u;
    private CallAppBarManager v;
    private StoreItemAssetManager w;
    private SuperSkinWizardScrollListener x;
    private TutorialViewController y;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12560c = true;
    private CallAppDrawerManager e = new CallAppDrawerManager();
    private Set<SearchContactsFilter> h = new HashSet();
    private Set<KeypadLayoutChanges> j = new HashSet();
    private Set<Integer> k = new HashSet();
    private boolean l = false;
    private int m = 0;
    private final PresenterManager o = new PresenterManager(PresentersContainer.MODE.CONTACT_LIST);
    private ContentState z = null;
    private boolean A = false;
    private boolean B = false;
    private final UiChangingEventController E = new UiChangingEventController();
    private boolean F = false;
    private boolean G = false;
    private boolean H = false;
    private String I = "";
    private boolean K = false;
    private boolean N = false;
    private boolean O = false;
    private boolean Q = false;
    private boolean S = false;
    private boolean T = false;
    private boolean U = false;
    private CallEventListener W = new CallEventListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.2
        @Override // com.callapp.contacts.activity.interfaces.CallEventListener
        public final void a() {
            if (ContactsListActivity.this.isForeGroundVisible()) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsListActivity.this.d();
                        boolean isKeypadOpenedOrOpening = ContactsListActivity.this.isKeypadOpenedOrOpening();
                        boolean isUserEnteredSomeOfTheTextInKeypad = ContactsListActivity.this.isUserEnteredSomeOfTheTextInKeypad();
                        if (isKeypadOpenedOrOpening && isUserEnteredSomeOfTheTextInKeypad) {
                            AnalyticsManager.get().a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from contact list");
                        }
                        ContactsListActivity.this.K = false;
                        ContactsListActivity.this.c(true);
                    }
                });
            } else {
                ContactsListActivity.this.K = true;
            }
        }
    };
    private CallLogFirstTimeExperienceEventListener X = new CallLogFirstTimeExperienceEventListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.3
        @Override // com.callapp.contacts.activity.interfaces.CallLogFirstTimeExperienceEventListener
        public final void a() {
            if (ContactsListActivity.y()) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsListActivity.this.v();
                    }
                });
            }
        }
    };

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$10  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$10.class */
    class AnonymousClass10 implements StoreItemAssetManager.AssetListener<String> {
        AnonymousClass10() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            if (ContactsListActivity.this.t == null) {
                ContactsListActivity.this.o();
            }
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(ContactsListActivity.this.t, str, ContactsListActivity.this);
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, String str2) {
            final String str3 = str;
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$10$_rotaqJjLdhCco17fyk_h7_xUMM
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.AnonymousClass10.this.a(str3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$15  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$15.class */
    public class AnonymousClass15 implements ValidateClientTask.OnResultListener {
        AnonymousClass15() {
        }

        @Override // com.callapp.contacts.util.servermessage.ValidateClientTask.OnResultListener
        public final void a(JSONClientValidationResponse jSONClientValidationResponse) {
            if (jSONClientValidationResponse.getMessageType() == 5 || jSONClientValidationResponse.getMessageType() == 4) {
                ContactsListActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsListActivity.this.finish();
                    }
                });
            } else {
                TCF2Manager.a(ContactsListActivity.this, new OutcomeListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2
                    @Override // com.callapp.contacts.manager.task.OutcomeListener
                    public final void a(boolean z) {
                        ContactsListActivity.this.G = z || WhatsNewPopup.a(ContactsListActivity.this, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.1
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            public final void a(DialogPopup dialogPopup) {
                                ContactsListActivity.this.l();
                                if (Prefs.ai.get() != null) {
                                    AnalyticsManager.get().a(Constants.PERMISSIONS, "Run in background", "show after upgrade");
                                    PowerUtils.a(ContactsListActivity.this, null);
                                }
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            public final void b(DialogPopup dialogPopup) {
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                            public void onShow(DialogInterface dialogInterface) {
                            }
                        });
                        if (ContactsListActivity.this.G) {
                            if (!z) {
                                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Showing whats new popup");
                            }
                            if (!Activities.e()) {
                                PopupManager.get().a(ContactsListActivity.this, new DialogMessageWithTopImage(2131231356, Activities.getString(2131887474), Activities.getString(2131887473), Activities.getString(2131887920), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.2
                                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                                    public void onClickListener(Activity activity) {
                                        Activities.c(ContactsListActivity.this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.2.1
                                            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                                            public void popupDone(boolean z2) {
                                                if (z2) {
                                                    AnalyticsManager.get().a(Constants.PUSHER, "Pusher clicked", "Draw overlay access opened", 0.0d, new String[0]);
                                                }
                                            }
                                        });
                                    }
                                }, Activities.getString(2131887104), ThemeUtils.a(ContactsListActivity.this, 2131099917), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.3
                                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                                    public void onClickListener(Activity activity) {
                                    }
                                }));
                                return;
                            }
                            return;
                        }
                        ContactsListActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.4
                            @Override // java.lang.Runnable
                            public void run() {
                                ContactsListActivity.this.l();
                            }
                        });
                    }
                }, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$37  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$37.class */
    public static /* synthetic */ class AnonymousClass37 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12621a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f12622b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f12623c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f12624d;
        static final /* synthetic */ int[] e;
        static final /* synthetic */ int[] f;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0225 -> B:165:0x00ee). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0229 -> B:159:0x00f9). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x022d -> B:173:0x0104). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x0231 -> B:47:0x0110). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x0235 -> B:181:0x0124). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x0239 -> B:52:0x012f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x023d -> B:189:0x0143). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x0241 -> B:57:0x014e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0245 -> B:123:0x0162). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0249 -> B:119:0x016d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x024d -> B:64:0x0178). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x0251 -> B:127:0x018c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x0255 -> B:141:0x0197). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0259 -> B:135:0x01a2). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x025d -> B:151:0x01ad). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x0261 -> B:145:0x01b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x0265 -> B:163:0x01c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x0269 -> B:157:0x01d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x01dd -> B:155:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01e1 -> B:149:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x01e5 -> B:167:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x01e9 -> B:161:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x01ed -> B:175:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x01f1 -> B:171:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x01f5 -> B:183:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x01f9 -> B:179:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x01fd -> B:191:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x0201 -> B:187:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0205 -> B:125:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0209 -> B:121:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x020d -> B:133:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x0211 -> B:129:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x0215 -> B:143:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0219 -> B:34:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x021d -> B:153:0x00d8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0221 -> B:147:0x00e3). Please submit an issue!!! */
        static {
            int[] iArr = new int[UiEvent.values().length];
            f = iArr;
            try {
                iArr[UiEvent.ON_KEYPAD_CLOSE_PRESSED.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f[UiEvent.ON_KEYPAD_CLOSING.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f[UiEvent.ON_DIALER_PRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f[UiEvent.ON_KEYPAD_OPENED.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f[UiEvent.ON_SEARCH_CONTACTS_START.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f[UiEvent.ON_CONTACT_LIST_MULTI_SELECT_STARTED.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f[UiEvent.ON_CALL_LOG_LIST_MULTI_SELECT_STARTED.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f[UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_START.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f[UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_FINISH.ordinal()] = 9;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f[UiEvent.ON_LIST_MULTI_SELECT_ENDED.ordinal()] = 10;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f[UiEvent.ON_LIST_SCROLLED.ordinal()] = 11;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f[UiEvent.ON_BACK_PRESSED_KEYPAD_OPEN.ordinal()] = 12;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f[UiEvent.ON_RESET_SEARCH_AFTER_DELAY.ordinal()] = 13;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f[UiEvent.ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD.ordinal()] = 14;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f[UiEvent.ON_SLIDE_MENU_OPEN.ordinal()] = 15;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f[UiEvent.ON_BACK_PRESSED_SEARCH_OPEN.ordinal()] = 16;
            } catch (NoSuchFieldError e17) {
            }
            int[] iArr2 = new int[DownloaderCardViewHandler.StoreItemType.values().length];
            e = iArr2;
            try {
                iArr2[DownloaderCardViewHandler.StoreItemType.COVER.ordinal()] = 1;
            } catch (NoSuchFieldError e18) {
            }
            try {
                e[DownloaderCardViewHandler.StoreItemType.PERSONAL_COVER.ordinal()] = 2;
            } catch (NoSuchFieldError e19) {
            }
            try {
                e[DownloaderCardViewHandler.StoreItemType.CALL_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError e20) {
            }
            try {
                e[DownloaderCardViewHandler.StoreItemType.VIDEO_RINGTONE.ordinal()] = 4;
            } catch (NoSuchFieldError e21) {
            }
            try {
                e[DownloaderCardViewHandler.StoreItemType.KEYPAD.ordinal()] = 5;
            } catch (NoSuchFieldError e22) {
            }
            try {
                e[DownloaderCardViewHandler.StoreItemType.THEME.ordinal()] = 6;
            } catch (NoSuchFieldError e23) {
            }
            int[] iArr3 = new int[KeypadFragment.KeypadState.values().length];
            f12624d = iArr3;
            try {
                iArr3[KeypadFragment.KeypadState.KEYPAD_OPENED.ordinal()] = 1;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f12624d[KeypadFragment.KeypadState.KEYPAD_CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError e25) {
            }
            int[] iArr4 = new int[ContactField.values().length];
            f12623c = iArr4;
            try {
                iArr4[ContactField.photoUrl.ordinal()] = 1;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f12623c[ContactField.fullName.ordinal()] = 2;
            } catch (NoSuchFieldError e27) {
            }
            int[] iArr5 = new int[PusherManager.PusherStates.values().length];
            f12622b = iArr5;
            try {
                iArr5[PusherManager.PusherStates.MISSING_AUTO_START_PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError e28) {
            }
            try {
                f12622b[PusherManager.PusherStates.HUAWEI_PROTECTED_APPS.ordinal()] = 2;
            } catch (NoSuchFieldError e29) {
            }
            try {
                f12622b[PusherManager.PusherStates.SHOW_ALLOW_DRAW_OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e30) {
            }
            int[] iArr6 = new int[ContentState.values().length];
            f12621a = iArr6;
            try {
                iArr6[ContentState.DIALER.ordinal()] = 1;
            } catch (NoSuchFieldError e31) {
            }
            try {
                f12621a[ContentState.CONTACTS_NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e32) {
            }
            try {
                f12621a[ContentState.CALL_LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e33) {
            }
            try {
                f12621a[ContentState.CALL_LOG_MULTI_SELECT.ordinal()] = 4;
            } catch (NoSuchFieldError e34) {
            }
            try {
                f12621a[ContentState.CALL_LOG_FIRST_EXPERIENCE.ordinal()] = 5;
            } catch (NoSuchFieldError e35) {
            }
            try {
                f12621a[ContentState.CONTACTS_NONE_MULTI_SELECT.ordinal()] = 6;
            } catch (NoSuchFieldError e36) {
            }
            try {
                f12621a[ContentState.UNSET.ordinal()] = 7;
            } catch (NoSuchFieldError e37) {
            }
            try {
                f12621a[ContentState.DIALER_INCALL.ordinal()] = 8;
            } catch (NoSuchFieldError e38) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$7  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$7.class */
    public class AnonymousClass7 implements TutorialViewController.OnWidgetAddedListener {
        AnonymousClass7() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            ContactsListActivity.this.b();
            ContactsListActivity.this.c();
        }

        @Override // com.callapp.contacts.widget.tutorial.TutorialViewController.OnWidgetAddedListener
        public final void a() {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$7$Ymv_0BLZKHW7gDeMCIph8ZRszP8
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.AnonymousClass7.this.b();
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$8  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$8.class */
    class AnonymousClass8 implements StoreItemAssetManager.AssetListener<String> {
        AnonymousClass8() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            if (ContactsListActivity.this.u == null) {
                ContactsListActivity contactsListActivity = ContactsListActivity.this;
                contactsListActivity.u = (ImageView) contactsListActivity.findViewById(2131362458);
            }
            ContactsListActivity.this.u.setVisibility(0);
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(ContactsListActivity.this.u, str, ContactsListActivity.this);
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
            ContactsListActivity.this.u.setAlpha(0.2f);
            final EventBus eventBus = EventBusManager.f14368a;
            final EventType<InvalidateDataListener, EventBusManager.CallAppDataType> eventType = InvalidateDataListener.f12949b;
            final EventBusManager.CallAppDataType callAppDataType = EventBusManager.CallAppDataType.SUPER_SKIN_CHANGED;
            new Task() { // from class: com.callapp.contacts.event.bus.EventBus.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    eventBus.a((EventType<L, EventType>) eventType, (EventType) callAppDataType, false);
                }
            }.execute();
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, String str2) {
            final String str3 = str;
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$8$iSqlSXQQCnb9DowEIh8GEkDyIpY
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.AnonymousClass8.this.a(str3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$9  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$9.class */
    public class AnonymousClass9 implements StoreItemAssetManager.AssetListener<String> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$9$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$9$1.class */
        public class AnonymousClass1 implements g {
            AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void a() {
                ContactsListActivity.this.v.setHasImageDrawable(true);
                ContactsListActivity.this.q.setBackgroundColor(ThemeUtils.getColor(2131100145));
                ContactsListActivity.this.v.getToolbarBackground().setAlpha(0.8f);
            }

            @Override // com.bumptech.glide.e.g
            public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.e.g
            public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$9$1$k2a2tcxoN3p73afYIGt6VVKpnbE
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactsListActivity.AnonymousClass9.AnonymousClass1.this.a();
                    }
                });
                return false;
            }
        }

        AnonymousClass9() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(ContactsListActivity.this.v.getToolbarBackground(), str, ContactsListActivity.this);
            glideRequestBuilder.n = new AnonymousClass1();
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, String str2) {
            final String str3 = str;
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$9$VoRcaoI2nupXCDSovggzQ3Qlt3g
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.AnonymousClass9.this.a(str3);
                }
            });
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState.class */
    public enum ContentState {
        DIALER,
        DIALER_INCALL,
        CONTACTS_NONE,
        FAVORITES,
        CONTACTS_NONE_MULTI_SELECT,
        CALL_LOG,
        CALL_LOG_FIRST_EXPERIENCE,
        CALL_LOG_MULTI_SELECT,
        UNSET
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$FirstTimeExperienceCallLogListener.class */
    public static class FirstTimeExperienceCallLogListener implements FirstTimeExperienceCallLog.FirstTimeExperienceListener {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<ContactsListActivity> f12632a;

        FirstTimeExperienceCallLogListener(ContactsListActivity contactsListActivity) {
            this.f12632a = new WeakReference<>(contactsListActivity);
        }

        @Override // com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLog.FirstTimeExperienceListener
        public final void a() {
            EventBusManager.f14368a.a((EventType<L, EventType<NotifyDataChangedListener, DataChangedInfo>>) NotifyDataChangedListener.f12951b, (EventType<NotifyDataChangedListener, DataChangedInfo>) DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), DataChangedInfo.POSITION_ALL, 2), false);
            ContactsListActivity contactsListActivity = this.f12632a.get();
            if (Activities.a((Activity) contactsListActivity)) {
                contactsListActivity.getBottomBarPresenter().c();
                contactsListActivity.s.setPagingEnabled(contactsListActivity.s());
                contactsListActivity.setState(ContentState.CALL_LOG);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController.class */
    public class UiChangingEventController {

        /* renamed from: b  reason: collision with root package name */
        private String f12634b;

        /* renamed from: c  reason: collision with root package name */
        private UiEvent f12635c;

        private UiChangingEventController() {
        }

        private void a() {
            ContactsListActivity.this.v.c();
        }

        static /* synthetic */ void a(UiChangingEventController uiChangingEventController) {
            ContactsListActivity.this.v.a(2131623945, Activities.a(2131886649, 0), new CallAppBarManager.OnActionModeClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.4
                @Override // com.callapp.contacts.manager.CallAppBarManager.OnActionModeClickListener
                public final void a(int i) {
                    if (i == 2131362547) {
                        ContactsListActivity.K(ContactsListActivity.this);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(UiEvent uiEvent, boolean z) {
            switch (AnonymousClass37.f[uiEvent.ordinal()]) {
                case 1:
                    b(z);
                    ContactsListActivity.b(ContactsListActivity.this, false);
                    break;
                case 2:
                    a();
                    a(uiEvent, true, (AnimatorListenerAdapter) null);
                    ContactsListActivity.b(ContactsListActivity.this, true);
                    ContactsListActivity.this.a("Keypad close button clicked");
                    break;
                case 3:
                    ViewUtils.a(ContactsListActivity.this.f, false);
                    ContactsListActivity.this.c(0);
                    ContactsListActivity.this.e(z);
                    ContactsListActivity.this.v.f14803c.setVisibility(8);
                    a(z);
                    if (StringUtils.a((CharSequence) ContactsListActivity.this.I)) {
                        String latestNumberFromClipboard = CallAppClipboardManager.get().getLatestNumberFromClipboard();
                        if (PhoneNumberUtils.a(latestNumberFromClipboard) && !StringUtils.b(latestNumberFromClipboard, this.f12634b)) {
                            ContactsListActivity.this.I = latestNumberFromClipboard;
                            this.f12634b = latestNumberFromClipboard;
                        }
                    }
                    ContactsListActivity.a(ContactsListActivity.this, true, z);
                    CallAppBarManager callAppBarManager = ContactsListActivity.this.v;
                    CallAppToolbar callAppToolbar = callAppBarManager.f14803c;
                    callAppToolbar.b(false);
                    Activities.b(callAppToolbar.f16435b);
                    callAppToolbar.f16434a.requestFocus();
                    callAppBarManager.j();
                    ContactsListActivity.this.v.f14801a.setVisibility(8);
                    ContactsListActivity.this.getBottomBarPresenter().b();
                    ContactsListActivity.this.x();
                    break;
                case 4:
                    a(uiEvent, true, (AnimatorListenerAdapter) null);
                    break;
                case 5:
                    ContactsListActivity.this.c(0);
                    a(uiEvent, z, (AnimatorListenerAdapter) null);
                    b(z);
                    ContactsListActivity.b(ContactsListActivity.this, z);
                    ContactsListActivity.this.getBottomBarPresenter().b();
                    ContactsListActivity.this.x();
                    if (ContactsListActivity.this.y != null) {
                        ContactsListActivity.this.y.c();
                        break;
                    }
                    break;
                case 6:
                    ContactsListActivity.this.h(true);
                    a(uiEvent, true, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            UiChangingEventController.a(UiChangingEventController.this);
                        }
                    });
                    a(z);
                    ContactsListActivity.this.getBottomBarPresenter().b();
                    ContactsListActivity.this.x();
                    if (ContactsListActivity.this.y != null) {
                        ContactsListActivity.this.y.c();
                        break;
                    }
                    break;
                case 7:
                    b();
                    a(uiEvent, true, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            UiChangingEventController.b(UiChangingEventController.this);
                        }
                    });
                    a(z);
                    if (ContactsListActivity.this.y != null) {
                        ContactsListActivity.this.y.c();
                        break;
                    }
                    break;
                case 8:
                    b();
                    b(uiEvent, z);
                    b(z);
                    a(z);
                    break;
                case 9:
                    ContactsListActivity.b(ContactsListActivity.this, z);
                    break;
                case 10:
                    b(uiEvent, z);
                    a();
                    ContactsListActivity.b(ContactsListActivity.this, z);
                    ContactsListActivity.this.getBottomBarPresenter().c();
                    ContactsListActivity.A(ContactsListActivity.this);
                    if (ContactsListActivity.this.y != null) {
                        ContactsListActivity.this.y.d();
                        break;
                    }
                    break;
                case 11:
                    b(z);
                    break;
                case 12:
                    b(z);
                    break;
                case 13:
                    b();
                    break;
                case 14:
                    ContactsListActivity.b(ContactsListActivity.this, z);
                    break;
                case 15:
                    b();
                    b(uiEvent, z);
                    b(z);
                    ContactsListActivity.b(ContactsListActivity.this, z);
                    break;
                case 16:
                    b();
                    a();
                    b(uiEvent, z);
                    b(z);
                    ContactsListActivity.this.v.a(false);
                    ContactsListActivity.b(ContactsListActivity.this, z);
                    ContactsListActivity.this.getBottomBarPresenter().c();
                    ContactsListActivity.A(ContactsListActivity.this);
                    if (ContactsListActivity.this.y != null) {
                        ContactsListActivity.this.y.d();
                        break;
                    }
                    break;
            }
            this.f12635c = uiEvent;
        }

        private void a(boolean z) {
            if (z || !ContactsListActivity.this.isActivityVisible()) {
                ContactsListActivity.this.D.setTranslationY(ContactsListActivity.this.D.getHeight());
                ContactsListActivity.this.D.setVisibility(4);
                return;
            }
            ContactsListActivity.this.D.animate().translationY(ContactsListActivity.this.D.getHeight()).setInterpolator(new DecelerateInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ContactsListActivity.this.D.setVisibility(4);
                }
            });
        }

        private boolean a(UiEvent uiEvent) {
            int i = AnonymousClass37.f[uiEvent.ordinal()];
            if (i == 6 || i == 7 || i == 10) {
                return ContactsListActivity.this.isActivityVisible();
            }
            return false;
        }

        private boolean a(UiEvent uiEvent, boolean z, final AnimatorListenerAdapter animatorListenerAdapter) {
            ContactsListActivity.this.b();
            if (!ContactsListActivity.this.isTabsVisible()) {
                return false;
            }
            float height = ((-ContactsListActivity.this.q.getY()) - ContactsListActivity.this.q.getHeight()) + ContactsListActivity.this.v.getBarHeight();
            if (z || !a(uiEvent)) {
                ContactsListActivity.this.q.setTranslationY(height);
                ContactsListActivity.this.q.setVisibility(8);
                if (animatorListenerAdapter != null) {
                    animatorListenerAdapter.onAnimationEnd(null);
                }
            } else {
                ContactsListActivity.this.q.animate().translationY(height).setInterpolator(new DecelerateInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        ContactsListActivity.this.q.setVisibility(8);
                        AnimatorListenerAdapter animatorListenerAdapter2 = animatorListenerAdapter;
                        if (animatorListenerAdapter2 != null) {
                            animatorListenerAdapter2.onAnimationEnd(animator);
                        }
                    }
                });
            }
            ContactsListActivity.this.s.setPagingEnabled(false);
            return true;
        }

        private void b() {
            KeypadFragment keypadFragment = (KeypadFragment) ContactsListActivity.this.getSupportFragmentManager().a("KEYPAD_FRAGMENT_TAG");
            if (keypadFragment != null) {
                keypadFragment.b();
            }
        }

        static /* synthetic */ void b(UiChangingEventController uiChangingEventController) {
            ContactsListActivity.this.v.a(2131623944, Activities.a(2131886386, 0), new CallAppBarManager.OnActionModeClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.5
                @Override // com.callapp.contacts.manager.CallAppBarManager.OnActionModeClickListener
                public final void a(int i) {
                    if (i == 2131362547) {
                        ContactsListActivity.L(ContactsListActivity.this);
                    }
                }
            });
        }

        private void b(UiEvent uiEvent, boolean z) {
            ContactsListActivity.this.c();
            if (StringUtils.a((CharSequence) ContactsListActivity.this.I) && !ContactsListActivity.this.isTabsVisible()) {
                if (z || !a(uiEvent)) {
                    ContactsListActivity.this.q.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    ContactsListActivity.this.q.setVisibility(0);
                } else {
                    ContactsListActivity.this.q.animate().translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new AccelerateInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.6
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            super.onAnimationStart(animator);
                            ContactsListActivity.this.q.setVisibility(0);
                        }
                    });
                }
                ContactsListActivity.this.s.setPagingEnabled(Prefs.t.get().booleanValue());
            }
        }

        private void b(boolean z) {
            ContactsListActivity.a(ContactsListActivity.this, false, z);
        }

        UiEvent getPrevEvent() {
            return this.f12635c;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent.class */
    public enum UiEvent {
        ON_KEYPAD_CLOSING,
        ON_KEYPAD_OPENED,
        ON_KEYPAD_CLOSE_PRESSED,
        ON_DIALER_PRESSED,
        ON_LIST_SCROLLED,
        ON_BACK_PRESSED_KEYPAD_OPEN,
        ON_BACK_PRESSED_SEARCH_OPEN,
        ON_RESET_SEARCH_AFTER_DELAY,
        ON_SLIDE_MENU_OPEN,
        ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD,
        ON_CONTACT_LIST_MULTI_SELECT_STARTED,
        ON_CALL_LOG_LIST_MULTI_SELECT_STARTED,
        ON_CALL_LOG_FIRST_EXPERIENCE_START,
        ON_CALL_LOG_FIRST_EXPERIENCE_FINISH,
        ON_LIST_MULTI_SELECT_ENDED,
        ON_SEARCH_CONTACTS_START
    }

    public ContactsListActivity() {
        EventBus eventBus = new EventBus();
        this.L = eventBus;
        this.V = new PresentersContainerImpl(eventBus, PresentersContainer.MODE.CONTACT_LIST) { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.1
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public View findViewById(int i) {
                return ContactsListActivity.this.findViewById(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public void finish() {
                ContactsListActivity.this.finish();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public ContactData getContact() {
                return null;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public EventBus getEventBus() {
                return ContactsListActivity.this.L;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public Context getRealContext() {
                return ContactsListActivity.this;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean hasIntentExtra(String str) {
                Intent intent = ContactsListActivity.this.getIntent();
                if (intent == null || !StringUtils.b((CharSequence) str)) {
                    return false;
                }
                return intent.hasExtra(str);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isFinishing() {
                return ContactsListActivity.this.isFinishing();
            }
        };
    }

    private void A() {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Default call screen", "Pop up Shown");
        Activities.a((Activity) this, true, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.36
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                if (i2 == 0) {
                    Activities.a((Activity) ContactsListActivity.this, false, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.36.1
                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(Activity activity2, int i3, int i4, Intent intent2) {
                            Singletons.get().getWearableClientHandler().a();
                        }
                    });
                    return;
                }
                AnalyticsManager.get().a(Constants.PERMISSIONS, "Default dialer from watch", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false");
                Singletons.get().getWearableClientHandler().a();
            }
        });
    }

    static /* synthetic */ void A(ContactsListActivity contactsListActivity) {
        ImageView imageView = contactsListActivity.t;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B() {
        SlideMenuFragment slideMenuFragment = getSlideMenuFragment();
        if (slideMenuFragment != null) {
            getSupportFragmentManager().a().a(slideMenuFragment).e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        this.f12559b.onCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D() {
        ImageAndTextPusherOverlayView imageAndTextPusherOverlayView = this.f12559b;
        if (imageAndTextPusherOverlayView != null) {
            imageAndTextPusherOverlayView.finishViewContainer(false);
            this.f12559b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E() {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "SMS reminder - Permission not granted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F() {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "SMS reminder - Permission granted");
    }

    static /* synthetic */ void I(ContactsListActivity contactsListActivity) {
        if (CollectionUtils.b(contactsListActivity.j)) {
            for (KeypadLayoutChanges keypadLayoutChanges : contactsListActivity.j) {
                keypadLayoutChanges.b();
            }
        }
    }

    static /* synthetic */ void K(ContactsListActivity contactsListActivity) {
        Fragment fragmentByPosition = contactsListActivity.getFragmentByPosition(contactsListActivity.s.getCurrentItem());
        if (fragmentByPosition instanceof MultiSelectEvents) {
            final MultiSelectEvents multiSelectEvents = (MultiSelectEvents) fragmentByPosition;
            ArrayList<BaseAdapterItemData> selectedContacts = multiSelectEvents.getSelectedContacts();
            if (selectedContacts == null || selectedContacts.size() == 0) {
                FeedbackManager.get().a(Activities.getString(2131887251), (Integer) null);
            } else {
                ContactItemContextMenuHelper.a(contactsListActivity, selectedContacts, new ActionDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.34
                    @Override // com.callapp.contacts.action.ActionDoneListener
                    public final void a() {
                    }

                    @Override // com.callapp.contacts.action.ActionDoneListener
                    public final void a(final boolean z) {
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.34.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (z) {
                                    ContactsListActivity.this.setState(ContactsListActivity.d(ContactsListActivity.this.getState()));
                                    multiSelectEvents.setMultiSelectModeEnable(false);
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    static /* synthetic */ void L(ContactsListActivity contactsListActivity) {
        Fragment fragmentByPosition = contactsListActivity.getFragmentByPosition(contactsListActivity.s.getCurrentItem());
        if (fragmentByPosition instanceof MultiSelectEvents) {
            final MultiSelectEvents multiSelectEvents = (MultiSelectEvents) fragmentByPosition;
            ArrayList<BaseAdapterItemData> selectedContacts = multiSelectEvents.getSelectedContacts();
            if (selectedContacts == null || selectedContacts.size() == 0) {
                FeedbackManager.get().a(Activities.getString(2131887251), (Integer) null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<BaseAdapterItemData> it2 = selectedContacts.iterator();
            while (it2.hasNext()) {
                for (AggregateCallLogData.CallLogData callLogData : ((AggregateCallLogData) it2.next()).getCallLogs()) {
                    arrayList.add(Long.valueOf(callLogData.getCallId()));
                }
            }
            ContactItemContextMenuHelper.a(contactsListActivity, arrayList, selectedContacts.size(), false, false, new ActionDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.35
                @Override // com.callapp.contacts.action.ActionDoneListener
                public final void a() {
                }

                @Override // com.callapp.contacts.action.ActionDoneListener
                public final void a(boolean z) {
                    if (z) {
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.35.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ContactsListActivity.this.setState(ContactsListActivity.d(ContactsListActivity.this.getState()));
                            }
                        });
                    }
                }
            });
        }
    }

    public static Intent a(Application application) {
        return new Intent(application, ContactsListActivity.class).setFlags(268435456).setAction("com.android.phone.action.BLOCKED");
    }

    public static Intent a(Context context, BirthdayData birthdayData) {
        Intent flags = new Intent(context, ContactsListActivity.class).setFlags(268435456);
        flags.putExtra("reminder", BirthdayData.birthdayPojoToReminder(birthdayData));
        flags.setAction("com.callapp.contacts/reexecuteIntent");
        flags.putExtra("tab", "REMINDERS");
        flags.putExtra("START_BIRTHDAY_POPUP", true);
        if (birthdayData.getContactId() > 0) {
            flags.setData(Uri.parse(String.format("callapp://reminder/%s", Long.valueOf(birthdayData.getContactId()))));
        } else {
            flags.setData(Uri.parse(String.format("callapp://reminder/%s/%s", Integer.valueOf(birthdayData.getSocialNetId()), birthdayData.getSocialProfileId())));
        }
        return flags;
    }

    private void a(int i, int i2, int i3, final String str, final PusherManager.PusherStates pusherStates) {
        this.f12559b = new ImageAndTextPusherOverlayView(this, 2131231567, -1, PorterDuff.Mode.SRC_IN, i, i2, i3, new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i4 = AnonymousClass37.f12622b[pusherStates.ordinal()];
                if (i4 == 1) {
                    AutoStartPermissionHelper.getInstance().a(ContactsListActivity.this, (ActivityResult) null);
                    Prefs.cc.set(Boolean.TRUE);
                } else if (i4 == 2) {
                    Activities.c((Context) ContactsListActivity.this);
                    Prefs.cd.set(Boolean.TRUE);
                } else if (i4 == 3) {
                    Activities.c(ContactsListActivity.this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.27.1
                        @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                        public void popupDone(boolean z) {
                            if (z) {
                                AnalyticsManager.get().a(Constants.PUSHER, "Open draw on screen access");
                                ContactsListActivity.this.b();
                            }
                        }
                    });
                    AnalyticsManager.get().a(Constants.PUSHER, "Pusher clicked", str, 0.0d, new String[0]);
                }
                ContactsListActivity.this.b();
                AnalyticsManager.get().a(Constants.PUSHER, "Pusher clicked", str, 0.0d, new String[0]);
            }
        }, new BaseOverlayView.OverlayViewListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.28
            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            public final void a() {
                ContactsListActivity.this.f12560c = false;
                AnalyticsManager.get().a(Constants.PUSHER, "Pusher closed");
            }

            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            public final void b() {
            }
        });
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$irBiqFjtu7ZftO5OlZl9TG_BD_8
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.C();
            }
        });
        this.f12560c = true;
        AnalyticsManager.get().a(Constants.PUSHER, "Pusher created", str, 0.0d, new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        Activities.c(this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$_CG_2GQ4VtH1Zijq23sIjy4AMME
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public final void popupDone(boolean z) {
                ContactsListActivity.this.i(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Intent intent) {
        if (!intent.getBooleanExtra(ContactDetailsActivity.EXTRA_BRING_TO_FRONT_RETRY, false)) {
            b(intent);
            if (intent.hasExtra("future_target_index_key")) {
                NotificationManager.get().c(intent.getIntExtra("future_target_index_key", -1));
            }
            if (getIntent().hasExtra("extra_default_phone_app_from_watch")) {
                A();
            }
            p();
        }
    }

    private void a(Bundle bundle) {
        String str;
        int i;
        if (bundle != null && bundle.getBoolean("from_sync_progress", false)) {
            boolean z = bundle.getBoolean("sync_progress_no_internet", false) && !HttpUtils.a();
            boolean z2 = bundle.getBoolean("sync_progress_screen_on", false);
            boolean z3 = false;
            if (bundle.getBoolean("sync_progress_low_battery", false)) {
                z3 = false;
                if (!PowerUtils.isConnectedToPower()) {
                    z3 = true;
                }
            }
            if (z) {
                str = Activities.getString(2131887762);
            } else {
                if (z2) {
                    i = 2131887765;
                } else if (z3) {
                    i = 2131887760;
                } else {
                    str = Activities.getString(2131887766);
                }
                str = Activities.getString(i);
            }
            a(str, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        j();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void a(ContentState contentState, boolean z) {
        if (c(getState()) == ContentState.CALL_LOG && c(contentState) != ContentState.CALL_LOG) {
            Prefs.da.set(new Date());
            EventBusManager.f14368a.c(CallLogLastSeenTimestampEventListener.f12937c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
        }
        boolean z2 = false;
        if (isSlideMenuOpen()) {
            this.f12561d.a(8388611, false);
        }
        if (!e(contentState) && e(r)) {
            this.E.a(UiEvent.ON_LIST_MULTI_SELECT_ENDED, z);
        }
        String str = "CL Screen - with keypad";
        switch (AnonymousClass37.f12621a[contentState.ordinal()]) {
            case 1:
                setupContentContainer(1);
                this.E.a(UiEvent.ON_DIALER_PRESSED, z);
                break;
            case 2:
                this.E.a(UiEvent.ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD, z);
                setupContentContainer(1);
                h(false);
                str = "CL Screen - without keypad";
                z2 = true;
                break;
            case 3:
                setupContentContainer(0);
                this.E.a(UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_FINISH, z);
                new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.25
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        NotificationManager.c();
                    }
                }.execute();
                h(false);
                str = "CL Screen - History";
                z2 = true;
                break;
            case 4:
                setupContentContainer(0);
                this.E.a(UiEvent.ON_CALL_LOG_LIST_MULTI_SELECT_STARTED, z);
                h(true);
                str = "CL Screen - History multi";
                break;
            case 5:
                setupContentContainer(0);
                this.E.a(UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_START, z);
                View f = f(false);
                if (f != null) {
                    ViewGroup viewGroup = (ViewGroup) f.findViewById(2131363875);
                    ViewUtils.a(viewGroup, (Drawable) null);
                    CallappAnimationUtils.c(viewGroup);
                }
                this.s.setPagingEnabled(false);
                getBottomBarPresenter().b();
                x();
                FirstTimeExperienceCallLog.get().b();
                str = null;
                break;
            case 6:
                setupContentContainer(1);
                this.E.a(UiEvent.ON_CONTACT_LIST_MULTI_SELECT_STARTED, z);
                str = "CL Screen - multi select";
                break;
            case 7:
            default:
                str = null;
                break;
            case 8:
                setupContentContainer(1);
                this.P.a();
                d(z);
                break;
        }
        if (contentState != r && StringUtils.b((CharSequence) str)) {
            AnalyticsManager.get().b(str);
        }
        r = contentState;
        if (z2) {
            c();
        } else {
            b();
        }
    }

    static /* synthetic */ void a(ContactsListActivity contactsListActivity, boolean z, boolean z2) {
        final s a2 = contactsListActivity.getSupportFragmentManager().a();
        KeypadFragment keypadFragment = (KeypadFragment) contactsListActivity.getSupportFragmentManager().a("KEYPAD_FRAGMENT_TAG");
        final KeypadFragment keypadFragment2 = keypadFragment;
        if (keypadFragment == null) {
            keypadFragment2 = KeypadFragment.a(!z2, contactsListActivity.D.getWidth(), contactsListActivity.D.getHeight(), 0);
        }
        if (z) {
            a2.b(2131363143, keypadFragment2, "KEYPAD_FRAGMENT_TAG");
            if (!contactsListActivity.getSupportFragmentManager().f()) {
                a2.b();
            } else {
                a2.c();
            }
            if (!contactsListActivity.getSupportFragmentManager().v) {
                contactsListActivity.getSupportFragmentManager().b();
            }
            TutorialViewController tutorialViewController = contactsListActivity.y;
            if (tutorialViewController != null) {
                tutorialViewController.c();
                return;
            }
            return;
        }
        KeypadVisibilityEvents keypadVisibilityEvents = contactsListActivity.J;
        if (keypadVisibilityEvents != null) {
            keypadVisibilityEvents.a(!z2, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.26
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    a2.a(keypadFragment2).c();
                    if (!ContactsListActivity.this.getSupportFragmentManager().v) {
                        ContactsListActivity.this.getSupportFragmentManager().b();
                    }
                    ContactsListActivity.I(ContactsListActivity.this);
                }
            });
        }
    }

    private static void a(ImageViewWithTopMark imageViewWithTopMark, boolean z) {
        if (imageViewWithTopMark != null) {
            imageViewWithTopMark.setDrawCircle(z);
            imageViewWithTopMark.requestLayout();
        }
    }

    private void a(Class cls) {
        if (cls != null) {
            startActivity(new Intent(this, cls));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.F) {
            this.F = false;
            AnalyticsManager.get().a("Keypad Usage", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final String str, String str2) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$_9Xp4ZKYwIhwhmH63uHPvbGtLmE
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.c(str);
            }
        });
    }

    private void a(String str, boolean z) {
        if (z) {
            PopupManager.get().a(this, new DialogSimpleMessage(Activities.getString(2131886658), str, "Visit Setting & Enable Internet", "Later", new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.19
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Come from sync notification without internet and press on enable", Constants.CLICK);
                    Activities.a(ContactsListActivity.this, new Intent("android.settings.SETTINGS"));
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.20
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Come from sync notification without internet and press on later", Constants.CLICK);
                }
            }));
        } else {
            PopupManager.get().a(this, new DialogSimpleMessage(Activities.getString(2131886658), str, Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.21
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Come from sync notification", Constants.CLICK);
                }
            }, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z, boolean z2, boolean z3) {
        if (CollectionUtils.b(this.h)) {
            if (!StringUtils.b(this.I, str)) {
                for (SearchContactsFilter searchContactsFilter : this.h) {
                    searchContactsFilter.a(str, z, z2, z3);
                }
            }
            this.I = str;
        }
    }

    private void a(List<Fragment> list) {
        TabLayout.f a2;
        ViewGroup viewGroup;
        for (int i = 0; i < list.size(); i++) {
            ContactListFragmentMarker contactListFragmentMarker = (ContactListFragmentMarker) list.get(i);
            int fragmentIconResId = contactListFragmentMarker.getFragmentIconResId();
            if (!(fragmentIconResId == 0 || (a2 = this.q.a(i)) == null || (viewGroup = (ViewGroup) LayoutInflater.from(this).inflate(2131558579, (ViewGroup) this.q, false)) == null)) {
                ((ImageViewWithTopMark) viewGroup.findViewById(2131364051)).setImageResource(fragmentIconResId);
                a2.a(viewGroup);
                a2.f30862a = Integer.valueOf(list.indexOf(contactListFragmentMarker));
            }
        }
    }

    private void b(Intent intent) {
        Uri data = intent.getData();
        if (data != null && data.isHierarchical()) {
            try {
                String queryParameter = data.getQueryParameter("callapp-source");
                if (StringUtils.b((CharSequence) queryParameter)) {
                    Prefs.fj.set(queryParameter);
                }
                String queryParameter2 = data.getQueryParameter("callapp-medium");
                if (StringUtils.b((CharSequence) queryParameter2)) {
                    Prefs.fk.set(queryParameter2);
                }
                String queryParameter3 = data.getQueryParameter("callapp-campaign");
                if (StringUtils.b((CharSequence) queryParameter3)) {
                    Prefs.fl.set(queryParameter3);
                }
                String queryParameter4 = data.getQueryParameter("callapp-term");
                if (StringUtils.b((CharSequence) queryParameter4)) {
                    Prefs.fm.set(queryParameter4);
                }
                CLog.a(ContactsListActivity.class, "Deeplink tracking - source: " + queryParameter + ", medium: " + queryParameter2 + ", campaign: " + queryParameter3 + ", term: " + queryParameter4);
            } catch (UnsupportedOperationException e) {
                CLog.b(ContactsListActivity.class, e, "Error while trying to read deeplink parameters");
            }
        }
        if (SetupWizardActivity.a()) {
            r();
            return;
        }
        new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.16
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                NotificationManager.get().a(9);
                AnalyticsManager.get().b(Constants.CONTACT_LIST_SCREEN);
                if (!Prefs.bY.get().booleanValue() && Activities.b()) {
                    AnalyticsManager.get().a(Constants.MISSED_CALL_ACTIONS, "User gave us permission as notification listeners");
                    Prefs.bY.set(Boolean.TRUE);
                }
            }
        }.execute();
        if (this.z == null) {
            PopupManager.get().a();
        }
        String type = intent.getType();
        String action = intent.getAction();
        Bundle extras = intent.getExtras();
        ContentState d2 = d(intent);
        if (d2 != null) {
            if (StringUtils.a(d2, ContentState.DIALER)) {
                this.B = true;
                a(d2, true);
            } else {
                setState(d2);
            }
        } else if ("android.intent.action.MAIN".equals(action)) {
            if (extras != null) {
                String string = extras.getString("from");
                if (StringUtils.b((CharSequence) string)) {
                    HashMap hashMap = new HashMap();
                    for (String str : extras.keySet()) {
                        hashMap.put(str, extras.getString(str));
                    }
                    CallAppFirebaseMessagingService.a(string, hashMap);
                }
            }
            a((ContentState) Prefs.cZ.get(), true);
        } else if (data != null && (MRAIDNativeFeature.TEL.equals(data.getScheme()) || "voicemail".equals(data.getScheme()))) {
            this.K = false;
            String schemeSpecificPart = data.getSchemeSpecificPart();
            if (schemeSpecificPart != null) {
                a(T9Helper.getT9TextFilter().filter(schemeSpecificPart, 0, schemeSpecificPart.length(), null, 0, 0).toString(), false, false, true);
            }
            a(ContentState.DIALER, true);
        } else if ("android.intent.action.DIAL".equals(action) || "android.intent.action.CALL".equals(action)) {
            this.K = false;
            if (isSearchContactFragmentVisible()) {
                a("", true, true, false);
            }
            a(ContentState.DIALER_INCALL, true);
        } else if ("com.callapp.contacts/reexecuteIntent".equals(action)) {
            setState(ContentState.CALL_LOG);
        } else if (Objects.a("vnd.android.cursor.dir/calls", type) || "com.android.phone.action.RECENT_CALLS".equals(action)) {
            if (extras != null && extras.getBoolean("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED", false)) {
                MissedCallUtils.b(false);
                intent.removeExtra("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED");
                AnalyticsManager.get().a(Constants.MISSED_CALL_ACTIONS, "User clicked the missed call notification");
                ContactDetailsActivity.showDialogToAllowNotificationAccessAfterMissedCall(this);
            }
            if (extras != null && extras.getBoolean("EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED", false)) {
                MissedCallUtils.a(false);
                intent.removeExtra("EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED");
                AnalyticsManager.get().a(Constants.MISSED_CALL_ACTIONS, "User clicked the not answered notification");
                String stringExtra = intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER);
                if (StringUtils.b((CharSequence) stringExtra)) {
                    MissedCallManager.a(PhoneManager.get().a(stringExtra), CallReminderFrequentData.FrequentType.DELETE, 40, 0L);
                }
            }
            if (!q()) {
                setState(ContentState.CALL_LOG);
            }
        } else if ("com.callapp.contacts/showTutorial".equals(action)) {
            TutorialViewController tutorialViewController = this.y;
            if (tutorialViewController != null) {
                tutorialViewController.a(this);
            }
        } else {
            ContentState contentState = this.z;
            if (contentState == null) {
                contentState = ContentState.CONTACTS_NONE;
                AnalyticsManager.get().a(Constants.CALLAPP_ICON, "ContactList Icon Clicked", (String) null, 0.0d, Payload.SOURCE, this.R);
            }
            setState(contentState);
            if (this.z == null) {
                a(extras);
            }
        }
        this.z = null;
        if (intent.hasExtra("tab") && !StringUtils.b("com.callapp.contacts.FROM_SUB_ACTIVITY", intent.getAction()) && intent.getBooleanExtra("START_BIRTHDAY_POPUP", false)) {
            BirthdaysActivity.a((ReminderData) intent.getSerializableExtra("reminder"));
        }
        c(intent);
    }

    static /* synthetic */ void b(ContactsListActivity contactsListActivity, boolean z) {
        if (z || !contactsListActivity.isActivityVisible()) {
            contactsListActivity.D.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        } else {
            contactsListActivity.D.animate().translationY(BitmapDescriptorFactory.HUE_RED).setListener(null).setInterpolator(new AccelerateInterpolator());
        }
        contactsListActivity.D.setVisibility(0);
    }

    private void b(String str) {
        this.v.b();
        a(str, true, false, false);
    }

    private void b(boolean z) {
        this.v.a(!z);
        this.q.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.q.setVisibility(0);
        this.s.setPagingEnabled(s());
    }

    private static ContentState c(ContentState contentState) {
        int i = AnonymousClass37.f12621a[contentState.ordinal()];
        return (i == 3 || i == 4 || i == 5) ? ContentState.CALL_LOG : ContentState.CONTACTS_NONE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0317, code lost:
        if (r0.contains(r0) != false) goto L_0x031a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(android.content.Intent r13) {
        /*
            Method dump skipped, instructions count: 1432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.ContactsListActivity.c(android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        if (this.t == null) {
            o();
        }
        SuperSkinWizardScrollListener superSkinWizardScrollListener = this.x;
        ImageView imageView = this.t;
        superSkinWizardScrollListener.f12964a = new GlideUtils.GifPlayer(imageView.getContext(), imageView, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        b(z);
        this.E.a(UiEvent.ON_BACK_PRESSED_SEARCH_OPEN, z);
    }

    private ContentState d(Intent intent) {
        ContentState contentState;
        if ("com.callapp.contacts.FROM_SUB_ACTIVITY".equals(intent.getAction()) && intent.getExtras() != null) {
            String string = intent.getExtras().getString("tab");
            if (StringUtils.b((CharSequence) string)) {
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.a(Constants.CALLAPP_ICON, string + " Icon Clicked");
                if (StringUtils.a(string, ContentState.DIALER)) {
                    this.F = true;
                }
                contentState = this.C.get(string);
                return contentState;
            }
        }
        contentState = null;
        return contentState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ContentState d(ContentState contentState) {
        int i = AnonymousClass37.f12621a[contentState.ordinal()];
        return i != 4 ? i != 6 ? contentState : ContentState.CONTACTS_NONE : ContentState.CALL_LOG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        this.E.a(UiEvent.ON_SEARCH_CONTACTS_START, z);
        e(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        Fragment fragmentByPosition = getFragmentByPosition(i);
        if (fragmentByPosition instanceof DataFragmentsEvents) {
            ((DataFragmentsEvents) fragmentByPosition).refreshData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(boolean z) {
        if (!isSearchContactFragmentVisible()) {
            s a2 = getSupportFragmentManager().a();
            if (!z && isActivityVisible()) {
                a2.i();
            }
            SearchContactsFragment searchContactsFragment = (SearchContactsFragment) getSupportFragmentManager().a("SEARCH_BAR_TAG");
            SearchContactsFragment searchContactsFragment2 = searchContactsFragment;
            if (searchContactsFragment == null) {
                searchContactsFragment2 = (SearchContactsFragment) Fragment.instantiate(this, SearchContactsFragment.class.getName());
            }
            a2.b(2131363757, searchContactsFragment2, "SEARCH_BAR_TAG").c();
            setSlideMenuLockState(true);
            this.f12560c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(ContentState contentState) {
        int i = AnonymousClass37.f12621a[contentState.ordinal()];
        return i == 4 || i == 6;
    }

    private View f(boolean z) {
        View view;
        ImageViewWithTopMark imageViewWithTopMark;
        TabLayout.f a2 = this.q.a(0);
        if (a2 == null || (view = a2.f) == null || (imageViewWithTopMark = (ImageViewWithTopMark) view.findViewById(2131364051)) == null) {
            return null;
        }
        a(imageViewWithTopMark, z);
        this.H = z;
        return view;
    }

    static /* synthetic */ void g(ContactsListActivity contactsListActivity) {
        if (StringUtils.b(Prefs.fT.get(), "")) {
            Prefs.fY.set(2);
        } else if (CallAppRemoteConfigManager.get().c("showTutorialWidget")) {
            int b2 = (int) CallAppRemoteConfigManager.get().b("tutorialPagesNumber");
            EventBus eventBus = new EventBus();
            TutorialPageManager tutorialPageManager = new TutorialPageManager(new TutorialPageRepository(b2, eventBus));
            if (tutorialPageManager.a()) {
                if (Prefs.fV.get() == null) {
                    Prefs.fV.set(new Date());
                }
                contactsListActivity.y = new TutorialViewController(tutorialPageManager, eventBus, (ViewGroup) contactsListActivity.findViewById(2131363711), contactsListActivity, new AnonymousClass7());
                contactsListActivity.getLifecycle().addObserver(contactsListActivity.y);
            }
        }
    }

    private void g(final boolean z) {
        CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.33
            @Override // java.lang.Runnable
            public void run() {
                ContactsFragment contactsFragment;
                if (ContactsListActivity.this.isTooltipShowing() && (contactsFragment = ContactsListActivity.this.getContactsFragment()) != null) {
                    boolean z2 = z;
                    if (contactsFragment.f12551a != null) {
                        contactsFragment.f12551a.a(z2);
                        contactsFragment.f12551a = null;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ContactListCollapsingBottomBarPresenter getBottomBarPresenter() {
        return (ContactListCollapsingBottomBarPresenter) this.o.a(ContactListCollapsingBottomBarPresenter.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment getFragmentByPosition(int i) {
        if (i < 0) {
            return null;
        }
        return getSupportFragmentManager().a("android:switcher:2131364054:".concat(String.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SlideMenuFragment getSlideMenuFragment() {
        Fragment a2 = getSupportFragmentManager().a("slide_menu_frag");
        if (a2 != null) {
            return (SlideMenuFragment) a2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ContentState getStateByPageIndex(int i) {
        return i != 0 ? i != 1 ? ContentState.CONTACTS_NONE : ContentState.CONTACTS_NONE : (!this.H || !y()) ? ContentState.CALL_LOG : ContentState.CALL_LOG_FIRST_EXPERIENCE;
    }

    static /* synthetic */ void h(ContactsListActivity contactsListActivity) {
        new ValidateClientTask(new AnonymousClass15(), contactsListActivity, Constants.CONTACT_LIST).execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(boolean z) {
        setSlideMenuLockState(z);
        Fragment fragmentByPosition = getFragmentByPosition(this.s.getCurrentItem());
        if (fragmentByPosition instanceof MultiSelectEvents) {
            ((MultiSelectEvents) fragmentByPosition).setMultiSelectModeEnable(z);
            if (!z) {
                this.v.k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(boolean z) {
        if (!Activities.e()) {
            p();
            return;
        }
        b();
        c();
    }

    private boolean isFromRecorderTest() {
        return getIntent().getBooleanExtra("extra_from_recorder_test", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isKeypadOpenedOrOpening() {
        KeypadFragment keypadFragment = (KeypadFragment) getSupportFragmentManager().a("KEYPAD_FRAGMENT_TAG");
        return keypadFragment != null && keypadFragment.isKeypadOpenedOrOpenning();
    }

    private boolean isSearchContactFragmentVisible() {
        SearchContactsFragment searchContactsFragment = (SearchContactsFragment) getSupportFragmentManager().a("SEARCH_BAR_TAG");
        return searchContactsFragment != null && searchContactsFragment.isVisible();
    }

    private boolean isSearchState() {
        return isSearchContactFragmentVisible();
    }

    private boolean isSlideMenuOpen() {
        DrawerLayout drawerLayout = this.f12561d;
        if (drawerLayout == null) {
            return false;
        }
        View b2 = drawerLayout.b(8388611);
        return b2 != null ? DrawerLayout.e(b2) : false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTooltipShowing() {
        ContactsFragment contactsFragment = getContactsFragment();
        return contactsFragment != null && contactsFragment.isTooltipShowing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUserEnteredSomeOfTheTextInKeypad() {
        KeypadFragment keypadFragment = (KeypadFragment) getSupportFragmentManager().a("KEYPAD_FRAGMENT_TAG");
        return keypadFragment != null && keypadFragment.isUserEnteredSomeOfTheText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362843);
        this.t = new ImageView(getApplicationContext());
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131166079);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
        layoutParams.addRule(16, 2131362772);
        layoutParams.addRule(2, 2131362117);
        this.t.setLayoutParams(layoutParams);
        viewGroup.addView(this.t, 0);
        this.t.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$vLLbZL4rXN62KnxS_TqkM8lm_zU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactsListActivity.this.a(view);
            }
        });
    }

    private boolean p() {
        if (this.Q || PhoneManager.get().isDefaultSystemPhoneApp() || Activities.e()) {
            return false;
        }
        this.Q = true;
        DrawOverAppsRequestDialog drawOverAppsRequestDialog = new DrawOverAppsRequestDialog(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$NsbSh_T9h9hJsdBXLfEOH6kxOXQ
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                ContactsListActivity.this.a(activity);
            }
        }) { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.14
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                super.onDialogDismissed(dialogInterface);
                ContactsListActivity.this.Q = false;
            }
        };
        drawOverAppsRequestDialog.setCancelable(false);
        PopupManager.get().a(this, drawOverAppsRequestDialog);
        return true;
    }

    private boolean q() {
        if (!Activities.c((Activity) this)) {
            return false;
        }
        this.A = true;
        return true;
    }

    private void r() {
        Intent intent = new Intent(this, SetupWizardActivity.class);
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        Activities.a(this, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s() {
        return Prefs.t.get().booleanValue() && isTabsVisible() && getState() != ContentState.CALL_LOG_FIRST_EXPERIENCE;
    }

    private void setMultiSelectBarTitle(String str) {
        this.v.setActionModeText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSlideMenuLockState(boolean z) {
        DrawerLayout drawerLayout = this.f12561d;
        if (drawerLayout == null) {
            return;
        }
        if (z) {
            drawerLayout.setDrawerLockMode(1, 8388611);
        } else {
            drawerLayout.setDrawerLockMode(0, 8388611);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(ContentState contentState) {
        a(contentState, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0096 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setupContentContainer(int r5) {
        /*
            r4 = this;
            r0 = 2131100228(0x7f060244, float:1.7812832E38)
            int r0 = com.callapp.contacts.util.ThemeUtils.getColor(r0)
            r6 = r0
            com.callapp.contacts.util.ThemeUtils$THEME r0 = com.callapp.contacts.util.ThemeUtils.getTheme()
            r7 = r0
            com.callapp.contacts.util.ThemeUtils$THEME r0 = com.callapp.contacts.util.ThemeUtils.THEME.DARK_DEFAULT
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L_0x001f
            r0 = 1
            r10 = r0
            goto L_0x0022
        L_0x001f:
            r0 = 0
            r10 = r0
        L_0x0022:
            r0 = r9
            r1 = r4
            com.google.android.material.tabs.TabLayout r1 = r1.q
            java.util.ArrayList<com.google.android.material.tabs.TabLayout$f> r1 = r1.f30839a
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x009c
            r0 = r10
            if (r0 == 0) goto L_0x004d
            r0 = r9
            r1 = r5
            if (r0 != r1) goto L_0x0042
        L_0x003c:
            r0 = r6
            r11 = r0
            goto L_0x005e
        L_0x0042:
            r0 = 2131099890(0x7f0600f2, float:1.7812146E38)
            int r0 = com.callapp.contacts.util.ThemeUtils.getColor(r0)
            r11 = r0
            goto L_0x005e
        L_0x004d:
            r0 = r9
            r1 = r5
            if (r0 != r1) goto L_0x0056
            goto L_0x003c
        L_0x0056:
            r0 = 2131099786(0x7f06008a, float:1.7811935E38)
            int r0 = com.callapp.contacts.util.ThemeUtils.getColor(r0)
            r11 = r0
        L_0x005e:
            r0 = r4
            com.google.android.material.tabs.TabLayout r0 = r0.q
            r1 = r9
            com.google.android.material.tabs.TabLayout$f r0 = r0.a(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0096
            r0 = r8
            android.view.View r0 = r0.f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0096
            r0 = r8
            r1 = 2131364051(0x7f0a08d3, float:1.8347928E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0096
            r0 = r8
            r1 = r11
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.SRC_IN
            r0.setColorFilter(r1, r2)
        L_0x0096:
            int r9 = r9 + 1
            goto L_0x0022
        L_0x009c:
            r0 = r4
            com.callapp.contacts.widget.PagingTogglableViewPager r0 = r0.s
            r1 = r5
            r2 = 1
            r0.setCurrentItem(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.ContactsListActivity.setupContentContainer(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        this.L.a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f14380d, (EventType<ResumeListener, Object>) null, false);
        if (this.K) {
            this.K = false;
            if (this.v != null) {
                c(true);
                this.v.a(false);
            }
        }
        if (y()) {
            v();
        }
        if (AdUtils.b()) {
            u();
        }
        IdentifyContactsDialog.b(this);
        if (!RecorderTestManager.get().isRecorderTestRunning() && !isFromRecorderTest()) {
            RecorderTestManager.get().setInRecorderTestMode(false);
        } else if (RecorderTestManager.get().isInRecorderTestMode() && !RecorderTestManager.get().isRecorderTestRunning()) {
            this.E.a(UiEvent.ON_DIALER_PRESSED, false);
        }
    }

    private void u() {
        this.Y = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a() {
                CatalogManager.get().a(ContactsListActivity.this.Y, new ArrayList()).a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1
                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        JSONStoreItemPremiumAppItem a2;
                        CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                        String priceWithCurrency = (catalogAttributes2 == null || (a2 = StoreUtils.a(catalogAttributes2.f13257a, true)) == null || !StringUtils.b((CharSequence) a2.getPriceWithCurrency())) ? null : a2.getPriceWithCurrency();
                        String str = priceWithCurrency;
                        if (StringUtils.a((CharSequence) priceWithCurrency)) {
                            str = "$1 USD";
                        }
                        String a3 = Activities.a(2131886373, str);
                        SpannableString spannableString = new SpannableString(Activities.getString(2131886374));
                        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                        int indexOf = a3.indexOf(str);
                        int indexOf2 = a3.indexOf(str.length() + indexOf);
                        SpannableString spannableString2 = new SpannableString(a3);
                        if (indexOf != -1) {
                            spannableString2.setSpan(new StyleSpan(1), indexOf, str.length() + indexOf, 33);
                        }
                        if (indexOf2 != -1) {
                            spannableString2.setSpan(new RelativeSizeSpan(0.7f), indexOf2, indexOf2 + 3, 33);
                        }
                        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131232138, (CharSequence) spannableString, (CharSequence) spannableString2, Activities.getString(2131886372), true, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1.1
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                                Prefs.dc.set(Boolean.TRUE);
                                AnalyticsManager.get().a(Constants.PREMIUM_POPUP, "Buy");
                                Intent intent = new Intent(activity, PlanPageActivity.class);
                                intent.putExtra("PLAN_PAGE_SOURCE", "premiumDialogPopUp");
                                Activities.b(activity, intent);
                            }
                        }, Activities.getString(2131886371), ThemeUtils.a(ContactsListActivity.this, 2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1.2
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                            }
                        });
                        dialogMessageWithTopImage.setDialogCustomListener(new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1.3
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            public final void a(DialogPopup dialogPopup) {
                                AnalyticsManager.get().a(Constants.PREMIUM_POPUP, "Dismiss");
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            public final void b(DialogPopup dialogPopup) {
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                            public void onShow(DialogInterface dialogInterface) {
                                AnalyticsManager.get().a(Constants.PREMIUM_POPUP, "Show");
                                Prefs.dd.a(3);
                            }
                        });
                        PopupManager.get().a(ContactsListActivity.this, dialogMessageWithTopImage);
                    }
                });
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void a(com.android.billingclient.api.g gVar, List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void a(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        View f = f(true);
        if (f != null) {
            ViewGroup viewGroup = (ViewGroup) f.findViewById(2131363875);
            ViewUtils.a(viewGroup, ViewUtils.getDrawable(2131232165));
            CallappAnimationUtils.b(viewGroup);
        }
    }

    private boolean w() {
        return (r == ContentState.CONTACTS_NONE || r == ContentState.CALL_LOG) && !isKeypadOpenedOrOpening();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        ImageView imageView = this.t;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean y() {
        if (r == ContentState.CALL_LOG_FIRST_EXPERIENCE || r == ContentState.CALL_LOG || r == ContentState.CALL_LOG_MULTI_SELECT) {
            return false;
        }
        FirstTimeExperienceCallLog.get();
        return FirstTimeExperienceCallLog.c();
    }

    private void z() {
        DrawerLayout drawerLayout = this.f12561d;
        if (drawerLayout != null) {
            drawerLayout.a();
        }
    }

    @Override // com.callapp.contacts.activity.calllog.CallLogFragment.ShowKeypadPromotionListener
    public final void a() {
        KeypadBannerViewController keypadBannerViewController = new KeypadBannerViewController(this, (ViewGroup) findViewById(2131362890));
        this.M = keypadBannerViewController;
        if (keypadBannerViewController != null) {
            keypadBannerViewController.setListener(this);
            final KeypadBannerViewController keypadBannerViewController2 = this.M;
            keypadBannerViewController2.f13124b.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadBannerViewController.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (view == null || view.getId() == 2131362076 || view.getId() == 2131363149 || view.getId() == 2131363147 || view.getId() == 2131363030 || view.getId() == 2131362521 || view.getId() == 2131363154 || view.getId() == 2131363153) {
                        return false;
                    }
                    keypadBannerViewController2.f13123a.callOnClick();
                    return false;
                }
            });
            this.M.b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    public final void a(int i) {
        synchronized (f12558a) {
            this.k.add(Integer.valueOf(i));
            for (int i2 = 0; i2 < 2; i2++) {
                if (!this.k.contains(Integer.valueOf(i2))) {
                    e(i2);
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectChangeListener
    public final void a(int i, int i2) {
        setMultiSelectBarTitle(Activities.a(i2, Integer.valueOf(i)));
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadParamsChanged
    public final void a(KeypadLayoutChanges keypadLayoutChanges) {
        this.j.add(keypadLayoutChanges);
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    public final void a(DownloaderCardViewHandler.StoreItemType storeItemType) {
        Intent intent;
        switch (AnonymousClass37.e[storeItemType.ordinal()]) {
            case 1:
            case 2:
                intent = new Intent(this, CoverStoreItemsListActivity.class);
                break;
            case 3:
            case 4:
                intent = new Intent(this, CallScreenThemeStoreItemsListActivity.class);
                break;
            case 5:
                intent = new Intent(this, KeypadStoreItemsListActivity.class);
                break;
            case 6:
                intent = new Intent(this, ThemeStoreItemsListActivity.class);
                break;
            default:
                intent = null;
                break;
        }
        if (intent != null) {
            startActivity(intent);
        }
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    public final void a(boolean z) {
        if (z) {
            AnalyticsManager.get().a("Menu", "ClickMenuModeButtonToLight");
        } else {
            AnalyticsManager.get().a("Menu", "ClickMenuModeButtonToDark");
        }
    }

    public final void b() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$PONjvP7NMdppnbSbu0X1cuqbjW4
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.D();
            }
        });
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    public final void b(int i) {
        Uri uri;
        switch (i) {
            case 1:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open Call Reminders from slide menu", Constants.CLICK);
                CallReminderActivity.a(this);
                return;
            case 2:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open Birthday from slide menu", Constants.CLICK);
                BirthdaysActivity.a(this);
                return;
            case 3:
            case 13:
            default:
                return;
            case 4:
                ShareCallAppDialogFragment.a(null, 1, "ref").a(getSupportFragmentManager(), ShareCallAppDialogFragment.getTAG());
                return;
            case 5:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open Rate Us from slide menu", Constants.CLICK);
                Activities.b(this, AppRater.getRateIntent$7ec49240());
                return;
            case 6:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open New in this version from slide menu", Constants.CLICK);
                PopupManager.get().a(this, new WhatsNewPopup());
                Prefs.el.set(Boolean.FALSE);
                return;
            case 7:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open Help from slide menu", Constants.CLICK);
                Activities.b(this, Activities.a(2131886967, HttpUtils.getCallAppDomain()));
                return;
            case 8:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open Feedback from slide menu", Constants.CLICK);
                if (HttpUtils.a()) {
                    String a2 = CallAppRemoteConfigManager.get().a("feedbackUrl");
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a2));
                    if (Activities.a(intent)) {
                        Activities.b(this, intent);
                        return;
                    } else {
                        Activities.c(this, a2);
                        return;
                    }
                } else {
                    FeedbackManager.a(this);
                    return;
                }
            case 9:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open Contact us from slide menu", Constants.CLICK);
                String string = Activities.getString(Prefs.cJ.get().booleanValue() ? 2131886901 : 2131886900);
                String a3 = Activities.a(2131886904, CallAppApplication.get().getVersion());
                try {
                    File file = new File(IoUtils.getCacheFolder(), "callapp_device_info.txt");
                    FileWriter fileWriter = new FileWriter(file);
                    fileWriter.write(Activities.getDeviceDataString());
                    fileWriter.close();
                    StringBuilder sb = new StringBuilder();
                    sb.append(getApplicationContext().getPackageName());
                    sb.append(".fileprovider");
                    uri = IoUtils.a(this, file);
                } catch (Exception e) {
                    CLog.a(ContactsListActivity.class, e, "unable to write file: " + e.getMessage());
                    uri = null;
                }
                Activities.a(this, new String[]{string}, a3, (String) null, uri);
                return;
            case 10:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open About from slide menu", Constants.CLICK);
                Activities.b(this, new Intent(this, AboutActivity.class));
                return;
            case 11:
                Activities.b(this, new Intent(this, ReferAndEarnActivity.class));
                AnalyticsManager.get().a(Constants.REFER_AND_EARN, "ClickInviteReferEarn");
                return;
            case 12:
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open upgrade to professional from slide menu", Constants.CLICK);
                Intent intent2 = new Intent(this, PlanPageActivity.class);
                intent2.putExtra("PLAN_PAGE_SOURCE", "goPremiumSlideMenu");
                Activities.b(this, intent2);
                return;
            case 14:
                AnalyticsManager.get().a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickMenuViewProfile");
                Activities.b(this, new Intent(this, WhoViewedMyProfileActivity.class));
                return;
            case 15:
                BackupUtils.a("menu");
                return;
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadParamsChanged
    public final void b(KeypadLayoutChanges keypadLayoutChanges) {
        this.j.remove(keypadLayoutChanges);
    }

    public final void c() {
        int i;
        int i2;
        String str;
        int i3;
        if (this.f12560c && w() && this.f12559b == null) {
            PusherManager.PusherStates pusherStateByRules = PusherManager.getPusherStateByRules();
            int i4 = AnonymousClass37.f12622b[pusherStateByRules.ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    str = "huawei protected apps";
                } else if (i4 != 3) {
                    str = null;
                    i2 = 0;
                    i = 0;
                    i3 = 2131887920;
                } else {
                    str = "allow draw overlay";
                }
                i2 = 2131887477;
                i = 2131887475;
                i3 = 2131887920;
            } else {
                str = "auto start permission";
                i2 = 2131887478;
                i = 2131887476;
                i3 = 2131887472;
            }
            if (i2 != 0) {
                a(i2, i, i3, str, pusherStateByRules);
            }
        }
    }

    public final void c(int i) {
        ViewGroup viewGroup = this.g;
        if (viewGroup != null) {
            viewGroup.setVisibility(i);
        }
    }

    public final void d() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.29
            @Override // java.lang.Runnable
            public void run() {
                ContactsListActivity.this.E.a(UiEvent.ON_RESET_SEARCH_AFTER_DELAY, false);
            }
        }, 1000L);
    }

    @Override // com.callapp.contacts.activity.contact.list.search.ContactsClickEvents
    public final void d(int i) {
        if (i == 0) {
            d();
            boolean isKeypadOpenedOrOpening = isKeypadOpenedOrOpening();
            boolean isUserEnteredSomeOfTheTextInKeypad = isUserEnteredSomeOfTheTextInKeypad();
            if (isKeypadOpenedOrOpening && isUserEnteredSomeOfTheTextInKeypad) {
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from contact list");
            }
            if (this.v.isInSearchMode()) {
                this.K = true;
            }
        } else if (i == 1) {
            d();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        PagingTogglableViewPager pagingTogglableViewPager;
        PagingTogglableViewPager pagingTogglableViewPager2;
        LinearLayout linearLayout = (LinearLayout) findViewById(2131362790);
        if (motionEvent.getAction() == 0) {
            g(true);
            View firstTimeExperienceCallLogRootContainer = FirstTimeExperienceCallLog.get().getFirstTimeExperienceCallLogRootContainer();
            if (r == ContentState.CALL_LOG_FIRST_EXPERIENCE && firstTimeExperienceCallLogRootContainer != null && !ViewUtils.a(firstTimeExperienceCallLogRootContainer, motionEvent.getX(), motionEvent.getY())) {
                return true;
            }
            if (!(linearLayout == null || !ViewUtils.a(linearLayout, motionEvent.getRawX(), motionEvent.getRawY()) || (pagingTogglableViewPager2 = this.s) == null)) {
                pagingTogglableViewPager2.setPagingEnabled(false);
            }
        }
        if (motionEvent.getAction() == 1 && (pagingTogglableViewPager = this.s) != null) {
            pagingTogglableViewPager.setPagingEnabled(s());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.marketplace.KeypadBannerViewController.Listener
    public final void e() {
        if (this.M != null) {
            ((ViewGroup) findViewById(2131362890)).removeView(this.M.getRootView());
            Activities.a(this, new Intent(this, MarketPlaceActivity.class));
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.KeypadBannerViewController.Listener
    public final void f() {
        ((ViewGroup) findViewById(2131362890)).removeView(this.M.getRootView());
        this.M.setListener(null);
        this.M = null;
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    public final void g() {
        Prefs.cR.set(Boolean.FALSE);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment.OnScrollListener
    public BottomBarScrollListener.Listener getBottomBarScrollListener() {
        return getBottomBarPresenter();
    }

    public ContactsFragment getContactsFragment() {
        return (ContactsFragment) getFragmentByPosition(1);
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public String getCurrentFilter() {
        return this.I;
    }

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    public int getCurrentPage() {
        return this.s.getCurrentItem();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558446;
    }

    public ContentState getState() {
        int i = AnonymousClass37.f12621a[r.ordinal()];
        return (i == 1 || i == 2) ? isKeypadOpenedOrOpening() ? ContentState.DIALER : ContentState.CONTACTS_NONE : r;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        return ThemeUtils.a(this, ThemeUtils.isThemeLight() ? 2131099784 : 2131099686);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment.StoreItemAssetManagerProvider
    public StoreItemAssetManager getStoreItemAssetManager() {
        return this.w;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment.OnScrollListener
    public SuperSkinWizardScrollListener getSuperSkinWizardScrollListener() {
        return this.x;
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    public final void h() {
        j();
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    public final void i() {
        AnalyticsManager.get().a("Menu", "ClickMenuOrangeStoreButton");
        Activities.b(this, new Intent(this, MarketPlaceActivity.class));
    }

    public boolean isTabsVisible() {
        return this.q.getVisibility() == 0;
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    public final void j() {
        if (!this.N) {
            this.N = true;
            startActivityForResult(new Intent(this, EditUserProfileActivity.class), 7000);
        }
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    public final void k() {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open Settings from slide menu", Constants.CLICK);
        Activities.d(this);
    }

    public final void l() {
        this.G = false;
        boolean z = true;
        if (CallAppRemoteConfigManager.get().c("UpdatedFromPlayEnabled") && StringUtils.b((Object) Activities.getString(2131887752), (Object) Constants.GOOGLE_PLAY_STORE_NAME)) {
            if (Prefs.gS.get().intValue() % CallAppRemoteConfigManager.get().b("UpdatedFromPlayIntervals") == 0) {
                UpdateManager.a(this);
            } else {
                Prefs.gS.b(1);
            }
        }
        if (!p()) {
            if (Prefs.eY.get().booleanValue()) {
                Prefs.eY.set(Boolean.FALSE);
                PopupManager.get().a(this, new AccessibilityServiceDialog(new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.32
                    @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                    public void popupDone(boolean z2) {
                    }
                }));
            } else {
                if (Build.VERSION.SDK_INT < 23 || !Prefs.R.isNotNull() || Prefs.R.get().intValue() >= Prefs.T.get().intValue() || !Prefs.eM.get().booleanValue()) {
                    z = false;
                } else {
                    CallRecordingUpdateDialog callRecordingUpdateDialog = null;
                    if (CallRecorderManager.get().isTermsAccepted()) {
                        PermissionManager.get();
                        callRecordingUpdateDialog = null;
                        if (PermissionManager.a("android.permission.RECORD_AUDIO")) {
                            callRecordingUpdateDialog = null;
                            if (!PhoneManager.get().isDefaultPhoneApp()) {
                                callRecordingUpdateDialog = new CallRecordingUpdateDialog();
                            }
                        }
                    }
                    if (callRecordingUpdateDialog != null) {
                        callRecordingUpdateDialog.setCancelable(false);
                        PopupManager.get().a(this, callRecordingUpdateDialog);
                        z = true;
                    } else {
                        z = false;
                    }
                    Prefs.eM.set(Boolean.FALSE);
                }
                if (!z && Prefs.hR.get().booleanValue()) {
                    BackupUtils.a("");
                    Prefs.hR.set(Boolean.FALSE);
                }
                if (!z && Prefs.cO.get().intValue() > 0 && Prefs.cR.get().booleanValue()) {
                    FreeStoreItemDialog freeStoreItemDialog = new FreeStoreItemDialog(this);
                    freeStoreItemDialog.setCancelable(false);
                    PopupManager.get().a(this, freeStoreItemDialog);
                    return;
                }
                return;
            }
        }
        z = true;
        if (!z) {
            BackupUtils.a("");
            Prefs.hR.set(Boolean.FALSE);
        }
        if (!z) {
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.ContactScrollEvent
    public final void m() {
        this.E.a(UiEvent.ON_LIST_SCROLLED, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (!SocialNetworksSearchUtil.a(i, i2, intent)) {
            if (i == 15000 && i2 == -1111111) {
                finish();
                System.exit(0);
            } else if (i != 555) {
                if (i == 5000 || i == 6000) {
                    if (i2 == -1) {
                        this.m = 6000;
                        this.l = true;
                        this.n = intent;
                    }
                } else if (i == 7000) {
                    this.N = false;
                    if (i2 == -1) {
                        List<ContactField> a2 = AndroidUtils.FieldsChangedHandler.a(ContactField.class, intent);
                        SlideMenuFragment slideMenuFragment = getSlideMenuFragment();
                        if (CollectionUtils.b(a2)) {
                            for (ContactField contactField : a2) {
                                int i3 = AnonymousClass37.f12623c[contactField.ordinal()];
                                if (i3 != 1) {
                                    if (i3 == 2 && slideMenuFragment != null) {
                                        slideMenuFragment.f16662a.a((String) null);
                                    }
                                } else if (slideMenuFragment != null) {
                                    slideMenuFragment.f16662a.b();
                                }
                            }
                        }
                    }
                } else if (i == 12345 && i2 == -1) {
                    recreate();
                    overridePendingTransition(17432576, 17432577);
                }
            } else if (i2 == -1) {
                AnalyticsManager.get().a(Constants.UPGRADE_VERSION, "ClickOKUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            } else if (i2 == 0) {
                AnalyticsManager.get().a(Constants.UPGRADE_VERSION, "ClickCancelUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            } else if (i2 == 1) {
                AnalyticsManager.get().a(Constants.UPGRADE_VERSION, "FailUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!RecorderTestManager.get().isRecorderTestRunning() && RecorderTestManager.get().isInRecorderTestMode() && !isKeypadOpenedOrOpening()) {
            CallRecordsActivity.a((Context) this);
            RecorderTestManager.get().setInRecorderTestMode(false);
            super.onBackPressed();
        } else if (r == ContentState.CALL_LOG_FIRST_EXPERIENCE) {
            FirstTimeExperienceCallLog.get().e();
        } else if (isSlideMenuOpen()) {
            z();
        } else if (e(getState())) {
            h(false);
            setState(d(getState()));
        } else if (isKeypadOpenedOrOpening()) {
            this.E.a(UiEvent.ON_BACK_PRESSED_KEYPAD_OPEN, false);
        } else if (!this.S || !this.v.isInSearchMode()) {
            if (c(getState()) == ContentState.CALL_LOG) {
                Prefs.da.set(new Date());
                EventBusManager.f14368a.c(CallLogLastSeenTimestampEventListener.f12937c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
            }
            super.onBackPressed();
        } else if (StringUtils.b((CharSequence) this.v.getCurrentSearchText())) {
            this.v.a();
            a("", false, true, false);
        } else {
            c(false);
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onCloseKeypadRequestedByUser(boolean z) {
        if (z) {
            b(this.I);
            this.v.f14803c.f16435b.requestFocus();
            return;
        }
        this.E.a(UiEvent.ON_KEYPAD_CLOSE_PRESSED, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().setSoftInputMode(35);
        if (bundle != null) {
            bundle.remove("android:support:fragments");
            bundle.remove("android:fragments");
        }
        super.onCreate(bundle);
        this.O = getLastCustomNonConfigurationInstance() != null;
        if (SetupWizardActivity.a()) {
            r();
        } else if (SetupWizardProfileActivity.d()) {
            r();
        } else {
            this.o.c(this.V);
            new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.11
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    CheckQuotaLimitation.a(false);
                }
            }.execute();
            final RetentionAnalytics retentionAnalytics = RetentionAnalytics.get();
            if (Prefs.bq.get() != null) {
                new Task() { // from class: com.callapp.contacts.activity.contact.list.RetentionAnalytics.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        Date date = new Date();
                        long a2 = DateUtils.a(Prefs.bq.get(), date, TimeUnit.DAYS);
                        if (DateUtils.a(Prefs.fZ.get(), date, TimeUnit.HOURS) >= 24) {
                            AnalyticsManager.get().b(Constants.RETENTION, "Store Abandonment", "");
                        }
                        if (a2 >= 5) {
                            PermissionManager.get();
                            if (!PermissionManager.a("android.permission.RECORD_AUDIO")) {
                                AnalyticsManager.get().b(Constants.RETENTION, "InActive Call Recorder", "");
                            }
                        }
                        if (a2 >= 7 && Prefs.eG.get().intValue() >= 5) {
                            AnalyticsManager.get().b(Constants.RETENTION, "Engaging User", "");
                        }
                        if (a2 >= 4 && Activities.isNotificationListenerServiceSupportedOnDevice() && !Activities.b()) {
                            AnalyticsManager.get().b(Constants.RETENTION, "Never Activated CallApp+", "");
                        }
                    }
                }.execute();
            }
            setTitle(Activities.getString(2131886654));
            boolean z = bundle != null;
            DrawerLayout drawerLayout = (DrawerLayout) findViewById(2131362639);
            this.f12561d = drawerLayout;
            drawerLayout.a(new DrawerLayout.d() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.12

                /* renamed from: b  reason: collision with root package name */
                private int f12565b = 0;

                @Override // androidx.drawerlayout.widget.DrawerLayout.d, androidx.drawerlayout.widget.DrawerLayout.c
                public final void a() {
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Slide menu opened", Constants.SLIDE_MENU);
                    ContactsListActivity.this.E.a(UiEvent.ON_SLIDE_MENU_OPEN, false);
                    ContactsListActivity.this.b();
                    this.f12565b = 2;
                }

                @Override // androidx.drawerlayout.widget.DrawerLayout.d, androidx.drawerlayout.widget.DrawerLayout.c
                public final void a(float f) {
                    if (f > this.f12565b) {
                        this.f12565b = 1;
                        EventBusManager.f14368a.a((EventType<L, EventType<OnSlideMenuOpenedListener, Boolean>>) OnSlideMenuOpenedListener.f12955a, (EventType<OnSlideMenuOpenedListener, Boolean>) Boolean.TRUE, false);
                        ContactsListActivity.this.b();
                    }
                }

                @Override // androidx.drawerlayout.widget.DrawerLayout.d, androidx.drawerlayout.widget.DrawerLayout.c
                public final void b() {
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Slide menu closed", Constants.SLIDE_MENU);
                    ContactsListActivity.this.c();
                    this.f12565b = 0;
                    SlideMenuFragment slideMenuFragment = ContactsListActivity.this.getSlideMenuFragment();
                    if (slideMenuFragment != null && slideMenuFragment.f16663b != null) {
                        slideMenuFragment.f16663b.b(0);
                    }
                }
            });
            ViewUtils.h(findViewById(2131363899), Activities.getScreenWidth(Activities.getScreenOrientation()) - ((int) CallAppApplication.get().getResources().getDimension(2131166067)));
            getSupportFragmentManager().a().b(2131363899, SlideMenuFragment.a(this.e.getDrawerItems(), this, z), "slide_menu_frag").c();
            CallAppToolbar callAppToolbar = (CallAppToolbar) findViewById(2131362201);
            this.P = callAppToolbar;
            this.v = new CallAppBarManager(this, this.f12561d, callAppToolbar, new CallAppBarManager.CallAppBarEvents() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.13
                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                public final void a() {
                    ContactsListActivity.this.q.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    ContactsListActivity.this.q.setVisibility(0);
                    ContactsListActivity.this.s.setPagingEnabled(ContactsListActivity.this.s());
                    ContactsListActivity.b(ContactsListActivity.this, false);
                    SearchContactsFragment searchContactsFragment = (SearchContactsFragment) ContactsListActivity.this.getSupportFragmentManager().a("SEARCH_BAR_TAG");
                    if (searchContactsFragment != null) {
                        ContactsListActivity.this.getSupportFragmentManager().a().a(searchContactsFragment).c();
                        ContactsListActivity.this.setSlideMenuLockState(false);
                    }
                    ContactsListActivity.this.f12560c = true;
                    ContactsListActivity contactsListActivity = ContactsListActivity.this;
                    contactsListActivity.e(contactsListActivity.s.getCurrentItem());
                    ContactsListActivity.this.a("", false, false, false);
                    ContactsListActivity.this.c(8);
                    if (ContactsListActivity.e(ContactsListActivity.this.getState())) {
                        ContactsListActivity.this.h(false);
                        ContactsListActivity contactsListActivity2 = ContactsListActivity.this;
                        contactsListActivity2.setState(ContactsListActivity.d(contactsListActivity2.getState()));
                    }
                    ContactsListActivity.this.getBottomBarPresenter().c();
                    if (ContactsListActivity.this.y != null) {
                        ContactsListActivity.this.y.d();
                    }
                    ContactsListActivity.A(ContactsListActivity.this);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                public final void a(String str) {
                    ContactsListActivity.this.a(str, false, true, false);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                public final void b() {
                    ContactsListActivity.this.d(true);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                public final void b(String str) {
                    ContactsListActivity.this.a(str, false, false, false);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                public final void c() {
                    ContactsListActivity contactsListActivity = ContactsListActivity.this;
                    MoreDialogManager.a(contactsListActivity, contactsListActivity.s.getCurrentItem(), new MoreDialogManager.OnMoreDialogItemClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.13.1
                        @Override // com.callapp.contacts.activity.contact.list.MoreDialogManager.OnMoreDialogItemClickListener
                        public final void a() {
                            ContactsListActivity.this.setState(ContentState.CONTACTS_NONE_MULTI_SELECT);
                        }

                        @Override // com.callapp.contacts.activity.contact.list.MoreDialogManager.OnMoreDialogItemClickListener
                        public final void b() {
                            ContactsListActivity.this.setState(ContentState.CALL_LOG_MULTI_SELECT);
                        }

                        @Override // com.callapp.contacts.activity.contact.list.MoreDialogManager.OnMoreDialogItemClickListener
                        public final void c() {
                            CallLogFragment callLogFragment = (CallLogFragment) ContactsListActivity.this.getFragmentByPosition(0);
                            if (callLogFragment != null) {
                                callLogFragment.a();
                            }
                        }
                    });
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                public final void d() {
                    Activities.a(ContactsListActivity.this, 5000);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                public final void e() {
                    Intent intent = new Intent(ContactsListActivity.this, PlanPageActivity.class);
                    intent.putExtra("PLAN_PAGE_SOURCE", "topBar");
                    Activities.b(ContactsListActivity.this, intent);
                }
            });
            FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131362772);
            this.D = floatingActionButton;
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.a(this, 2131099784)));
            this.D.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.24
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(ContactsListActivity.this.D, 1);
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "FAB action performed", ContactsListActivity.this.getState().toString());
                    ContactsListActivity.this.E.a(UiEvent.ON_DIALER_PRESSED, false);
                }
            });
            ContactsFragment contactsFragment = (ContactsFragment) getFragmentByPosition(1);
            ContactsFragment contactsFragment2 = contactsFragment;
            if (contactsFragment == null) {
                contactsFragment2 = new ContactsFragment();
            }
            CallLogFragment callLogFragment = (CallLogFragment) getFragmentByPosition(0);
            CallLogFragment callLogFragment2 = callLogFragment;
            if (callLogFragment == null) {
                callLogFragment2 = new CallLogFragment();
            }
            FirstTimeExperienceCallLog.get();
            if (FirstTimeExperienceCallLog.d()) {
                FirstTimeExperienceCallLog firstTimeExperienceCallLog = FirstTimeExperienceCallLog.get();
                FirstTimeExperienceCallLogListener firstTimeExperienceCallLogListener = new FirstTimeExperienceCallLogListener(this);
                if (firstTimeExperienceCallLog.f11396a == null) {
                    firstTimeExperienceCallLog.f11396a = new ArrayList();
                }
                firstTimeExperienceCallLog.f11396a.add(firstTimeExperienceCallLogListener);
            }
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(0, callLogFragment2);
            arrayList.add(1, contactsFragment2);
            this.p = new TabsAdapter(getSupportFragmentManager(), arrayList);
            this.s = (PagingTogglableViewPager) findViewById(2131364054);
            ViewGroup viewGroup = (ViewGroup) findViewById(2131363757);
            this.g = viewGroup;
            viewGroup.setBackgroundColor(ThemeUtils.getColor(2131099686));
            c(8);
            this.s.setPagingEnabled(Prefs.t.get().booleanValue());
            this.s.setOffscreenPageLimit(arrayList.size());
            this.s.setAdapter(this.p);
            TabLayout tabLayout = (TabLayout) findViewById(2131364052);
            this.q = tabLayout;
            tabLayout.setupWithViewPager(this.s);
            a(arrayList);
            this.q.setBackgroundColor(ThemeUtils.getColor(2131099943));
            this.x = new SuperSkinWizardScrollListener();
            StoreItemAssetManager.Builder a2 = new StoreItemAssetManager.Builder().b(Prefs.dW, new AssetListenerMapper(new AnonymousClass9())).a(Prefs.dV, new AssetListenerMapper(new AnonymousClass8()));
            if (Prefs.dM.isNotNull()) {
                a2.d(Prefs.dX, new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$03RmOv9BrPl1D9_e4KDh7l5XZVg
                    @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
                    public final void onAssetReady(Object obj, String str) {
                        ContactsListActivity.this.a((String) obj, str);
                    }
                });
            } else {
                a2.c(Prefs.dX, new AssetListenerMapper(new AnonymousClass10()));
            }
            StoreItemAssetManager a3 = a2.a();
            this.w = a3;
            a3.getAssets();
            HashMap hashMap = new HashMap();
            this.C = hashMap;
            hashMap.put("CONTACTS", ContentState.CONTACTS_NONE);
            this.C.put("KEYBOARD", ContentState.CONTACTS_NONE);
            this.C.put("KEYPAD", ContentState.CONTACTS_NONE);
            this.C.put("CALL_LOG", ContentState.CALL_LOG);
            this.C.put("FAVORITES", ContentState.FAVORITES);
            this.C.put(ContentState.DIALER.name(), ContentState.DIALER);
            this.C.put(ContentState.FAVORITES.name(), ContentState.FAVORITES);
            this.C.put(ContentState.CALL_LOG.name(), ContentState.CALL_LOG);
            this.C.put(ContentState.CONTACTS_NONE.name(), ContentState.CONTACTS_NONE);
            AppBarLayout appBarLayout = (AppBarLayout) findViewById(2131362020);
            this.f = appBarLayout;
            appBarLayout.setBackgroundColor(ThemeUtils.getColor(2131099943));
            EventBusManager.f14368a.a(CallEventListener.f12935b, this.W);
            EventBusManager.f14368a.a(CallLogFirstTimeExperienceEventListener.f12936b, this.X);
            b(getIntent());
            z();
            this.q.a(new TabLayout.h(this.s) { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.5
                @Override // com.google.android.material.tabs.TabLayout.h, com.google.android.material.tabs.TabLayout.b
                public final void a(TabLayout.f fVar) {
                    int intValue = ((Integer) fVar.f30862a).intValue();
                    ContactsListActivity contactsListActivity = ContactsListActivity.this;
                    contactsListActivity.setState(contactsListActivity.getStateByPageIndex(intValue));
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.a(Constants.CONTACT_LIST, "Tab selected: " + ContactsListActivity.this.getState(), Constants.CLICK);
                }

                @Override // com.google.android.material.tabs.TabLayout.h, com.google.android.material.tabs.TabLayout.b
                public final void b(TabLayout.f fVar) {
                    Fragment fragmentByPosition = ContactsListActivity.this.getFragmentByPosition(fVar.e);
                    if (fragmentByPosition instanceof DataFragmentsEvents) {
                        ((DataFragmentsEvents) fragmentByPosition).markAsViewed();
                    }
                }

                @Override // com.google.android.material.tabs.TabLayout.h, com.google.android.material.tabs.TabLayout.b
                public final void c(TabLayout.f fVar) {
                    Fragment fragmentByPosition = ContactsListActivity.this.getFragmentByPosition(fVar.e);
                    if (fragmentByPosition instanceof DataFragmentsEvents) {
                        ((DataFragmentsEvents) fragmentByPosition).scrollToTop();
                    }
                }
            });
            this.s.addOnPageChangeListener(new ViewPager.e() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.6
                @Override // androidx.viewpager.widget.ViewPager.e
                public void onPageScrollStateChanged(int i) {
                }

                @Override // androidx.viewpager.widget.ViewPager.e
                public void onPageScrolled(int i, float f, int i2) {
                }

                @Override // androidx.viewpager.widget.ViewPager.e
                public void onPageSelected(int i) {
                    Fragment item = ContactsListActivity.this.p.getItem(i);
                    if (item instanceof DataFragmentsEvents) {
                        ViewUtils.a(ContactsListActivity.this.f, true);
                        DataFragmentsEvents dataFragmentsEvents = (DataFragmentsEvents) item;
                        dataFragmentsEvents.scrollToTop();
                        dataFragmentsEvents.markAsViewed();
                    }
                    if (!(i == 1 || ContactsListActivity.this.getContactsFragment() == null)) {
                        ContactsFragment contactsFragment3 = ContactsListActivity.this.getContactsFragment();
                        if (contactsFragment3.f12551a != null) {
                            contactsFragment3.f12551a.setCancelled(true);
                        }
                    }
                    ContactListCollapsingBottomBarPresenter bottomBarPresenter = ContactsListActivity.this.getBottomBarPresenter();
                    if (bottomBarPresenter != null) {
                        bottomBarPresenter.a();
                    }
                }
            });
            if (Prefs.fv.get().booleanValue() && Prefs.ai.get() == null && Prefs.ah.get() != null && DateUtils.b(Prefs.ah.get(), new Date(System.currentTimeMillis())) >= 1) {
                Prefs.fv.set(Boolean.FALSE);
                AnalyticsManager.get().a(Constants.PERMISSIONS, "Run in background", "show after 1 day");
                PowerUtils.a(this, null);
            }
            PermissionManager.get();
            if (!PermissionManager.a("android.permission.READ_SMS") && ((Prefs.bG.get().intValue() == 0 && DateUtils.a(Prefs.bF.get(), new Date(), TimeUnit.DAYS) >= 4) || (Prefs.bG.get().intValue() == 1 && DateUtils.a(Prefs.bF.get(), new Date(), TimeUnit.DAYS) >= 8))) {
                getPermissionManager().a(this, _$$Lambda$ContactsListActivity$70XIPOyAMGMPPjarvJWhJ0CMh2s.INSTANCE, _$$Lambda$ContactsListActivity$a3Wu9gUmISynWi1KmNOFzqbsUAU.INSTANCE, PermissionManager.PermissionGroup.SMS);
                Prefs.bG.a(2);
                Prefs.bF.set(new Date());
            }
            if (BillingManager.isBillingAvailable() && !Prefs.cJ.get().booleanValue() && Prefs.aL.get().booleanValue() && !Prefs.aO.get().booleanValue() && DateUtils.a(Prefs.aM.get(), new Date(), TimeUnit.DAYS) == 8) {
                String string = Activities.getString(2131886477);
                String string2 = Activities.getString(2131886475);
                Prefs.aO.set(Boolean.TRUE);
                PopupManager.get().a(this, new DialogMessageWithTopImage(2131230890, 0, 2131230841, StringUtils.a(string, new char[0]), 2131099784, string2, Activities.getString(2131886471), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.30
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        Intent intent = new Intent(ContactsListActivity.this, PlanPageActivity.class);
                        intent.putExtra("PLAN_PAGE_SOURCE", "callAppPlus");
                        Activities.b(ContactsListActivity.this, intent);
                    }
                }, "", true, 2131100108, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.31
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        ContactsListActivity.this.finish();
                    }
                }));
            }
            if (getIntent().hasExtra("extra_default_phone_app_from_watch")) {
                A();
            }
            CallAppRemoteConfigManager.get().setDefaultsIfNeeded(new Task.DoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.4
                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                public void onDone() {
                    ContactsListActivity.this.S = true;
                    ContactsListActivity.g(ContactsListActivity.this);
                    ContactsListActivity.h(ContactsListActivity.this);
                    if (ContactsListActivity.this.U) {
                        ContactsListActivity.this.U = false;
                        ContactsListActivity contactsListActivity = ContactsListActivity.this;
                        contactsListActivity.a(contactsListActivity.getIntent());
                    }
                    if (ContactsListActivity.this.T) {
                        ContactsListActivity.this.T = false;
                        ContactsListActivity.this.t();
                    }
                }
            });
            if (StringUtils.a((CharSequence) Prefs.aR.get()) || StringUtils.b((Object) Prefs.aR.get(), (Object) JsonReaderKt.NULL) || StringUtils.a((CharSequence) Prefs.aV.get()) || StringUtils.b((Object) Prefs.aV.get(), (Object) JsonReaderKt.NULL)) {
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.a(Constants.REGISTRATION, "Empty callappid or token", Prefs.aR.get() + "," + Prefs.aV.get());
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f14368a.b(CallEventListener.f12935b, this.W);
        EventBusManager.f14368a.b(CallLogFirstTimeExperienceEventListener.f12936b, this.X);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CONTACT_LIST_SCREEN);
        g(false);
        CallAppBarManager callAppBarManager = this.v;
        if (callAppBarManager != null) {
            CLog.a("CallAppBarManager");
            if (callAppBarManager.f14804d != null) {
                callAppBarManager.f14804d.unRegisterFilteredEvents(callAppBarManager);
                callAppBarManager.f14804d = null;
            }
            callAppBarManager.f14802b = null;
        }
        this.L.a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f14378d, (EventType<DestroyListener, Object>) null, false);
        this.o.a();
        this.V.onDestroy();
        if (this.y != null) {
            getLifecycle().removeObserver(this.y);
        }
        StoreItemAssetManager storeItemAssetManager = this.w;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.b();
        }
        TutorialViewController tutorialViewController = this.y;
        if (tutorialViewController != null) {
            tutorialViewController.onDestroy();
        }
        BillingManager billingManager = this.Y;
        if (billingManager != null) {
            billingManager.b();
        }
        SuperSkinWizardScrollListener superSkinWizardScrollListener = this.x;
        if (superSkinWizardScrollListener != null) {
            if (superSkinWizardScrollListener.f12964a != null) {
                superSkinWizardScrollListener.f12964a.b();
            }
            this.x = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 82 || keyEvent.isLongPress()) {
            return super.onKeyUp(i, keyEvent);
        }
        Activities.d(this);
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.KeypadEvents
    public void onKeypadStateChanged(KeypadFragment.KeypadState keypadState) {
        int i = AnonymousClass37.f12624d[keypadState.ordinal()];
        if (i == 1) {
            this.E.a(UiEvent.ON_KEYPAD_OPENED, false);
        } else if (i == 2 && isSearchState() && this.E.getPrevEvent() != UiEvent.ON_BACK_PRESSED_SEARCH_OPEN) {
            this.E.a(UiEvent.ON_KEYPAD_CLOSING, true);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (this.S) {
            a(intent);
        } else {
            this.U = true;
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onNumberChanged(String str, int i, int i2, int i3, boolean z) {
        if (z) {
            if (StringUtils.a((CharSequence) str)) {
                this.v.a();
            }
            a(str, i3 > 0 || i2 > 0, false, true);
        }
        if (StringUtils.b((CharSequence) str)) {
            a("Keypad numbers buttons clicked");
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.L.a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f14379a, (EventType<PauseListener, Object>) null, false);
        if (this.A) {
            this.A = false;
            final Intent intent = new Intent(CallAppApplication.get(), getClass());
            intent.setAction("com.callapp.contacts/reexecuteIntent");
            intent.setFlags(65536);
            new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.22
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    ContactsListActivity.this.finish();
                    Activities.a(ContactsListActivity.this, intent);
                }
            }.schedule(DrawableConstants.CtaButton.WIDTH_DIPS);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        Intent intent;
        super.onPostResume();
        if (this.l) {
            this.l = false;
            int i = this.m;
            if ((i == 5000 || i == 6000) && (intent = this.n) != null) {
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
                if (CollectionUtils.b(stringArrayListExtra)) {
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Voice search successfully finished");
                    this.B = true;
                    b(stringArrayListExtra.get(0));
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.S) {
            c(true);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.S) {
            t();
        } else {
            this.T = true;
        }
    }

    @Override // androidx.activity.ComponentActivity
    public Object onRetainCustomNonConfigurationInstance() {
        return Boolean.TRUE;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        Prefs.cZ.set(c(getState()));
        super.onStop();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$uwCcGDh5KriB2TY7hBV3CaTxfn4
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.B();
            }
        });
        super.onThemeChanged();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public void onUserLeaveHint() {
        if (c(getState()) == ContentState.CALL_LOG) {
            Prefs.da.set(new Date());
            EventBusManager.f14368a.c(CallLogLastSeenTimestampEventListener.f12937c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
            EventBusManager.f14368a.c(NotifyDataChangedListener.f12951b, DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1));
        }
        super.onUserLeaveHint();
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onVoiceSearchRequested() {
        Activities.a(this, 6000);
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void registerFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        this.J = keypadVisibilityEvents;
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public void registerFilteredEvents(SearchContactsFilter searchContactsFilter) {
        this.h.add(searchContactsFilter);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return !SetupWizardActivity.a() && !SetupWizardProfileActivity.d();
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public boolean shouldSkipEmptyView() {
        if (!this.B) {
            return false;
        }
        this.B = false;
        return true;
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void unRegisterFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        if (this.J == keypadVisibilityEvents) {
            this.J = null;
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public void unRegisterFilteredEvents(SearchContactsFilter searchContactsFilter) {
        this.h.remove(searchContactsFilter);
    }
}
