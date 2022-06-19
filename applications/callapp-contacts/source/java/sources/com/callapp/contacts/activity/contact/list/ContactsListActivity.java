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
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.android.billingclient.api.C3341g;
import com.appsflyer.internal.referrer.Payload;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
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

    /* renamed from: a */
    private static final Object f22468a = new Objects();

    /* renamed from: r */
    private static ContentState f22469r = ContentState.UNSET;

    /* renamed from: C */
    private Map<String, ContentState> f22472C;

    /* renamed from: D */
    private FloatingActionButton f22473D;

    /* renamed from: J */
    private KeypadVisibilityEvents f22479J;

    /* renamed from: L */
    private EventBus f22481L;

    /* renamed from: M */
    private KeypadBannerViewController f22482M;

    /* renamed from: P */
    private CallAppToolbar f22485P;

    /* renamed from: R */
    private String f22487R;

    /* renamed from: V */
    private final PresentersContainerImpl f22491V;

    /* renamed from: Y */
    private BillingManager f22494Y;

    /* renamed from: b */
    private ImageAndTextPusherOverlayView f22495b;

    /* renamed from: d */
    private DrawerLayout f22497d;

    /* renamed from: f */
    private AppBarLayout f22499f;

    /* renamed from: g */
    private ViewGroup f22500g;

    /* renamed from: n */
    private Intent f22506n;

    /* renamed from: p */
    private TabsAdapter f22508p;

    /* renamed from: q */
    private TabLayout f22509q;

    /* renamed from: s */
    private PagingTogglableViewPager f22510s;

    /* renamed from: t */
    private ImageView f22511t;

    /* renamed from: u */
    private ImageView f22512u;

    /* renamed from: v */
    private CallAppBarManager f22513v;

    /* renamed from: w */
    private StoreItemAssetManager f22514w;

    /* renamed from: x */
    private SuperSkinWizardScrollListener f22515x;

    /* renamed from: y */
    private TutorialViewController f22516y;

    /* renamed from: c */
    private boolean f22496c = true;

    /* renamed from: e */
    private CallAppDrawerManager f22498e = new CallAppDrawerManager();

    /* renamed from: h */
    private Set<SearchContactsFilter> f22501h = new HashSet();

    /* renamed from: j */
    private Set<KeypadLayoutChanges> f22502j = new HashSet();

    /* renamed from: k */
    private Set<Integer> f22503k = new HashSet();

    /* renamed from: l */
    private boolean f22504l = false;

    /* renamed from: m */
    private int f22505m = 0;

    /* renamed from: o */
    private final PresenterManager f22507o = new PresenterManager(PresentersContainer.MODE.CONTACT_LIST);

    /* renamed from: z */
    private ContentState f22517z = null;

    /* renamed from: A */
    private boolean f22470A = false;

    /* renamed from: B */
    private boolean f22471B = false;

    /* renamed from: E */
    private final UiChangingEventController f22474E = new UiChangingEventController();

    /* renamed from: F */
    private boolean f22475F = false;

    /* renamed from: G */
    private boolean f22476G = false;

    /* renamed from: H */
    private boolean f22477H = false;

    /* renamed from: I */
    private String f22478I = "";

    /* renamed from: K */
    private boolean f22480K = false;

    /* renamed from: N */
    private boolean f22483N = false;

    /* renamed from: O */
    private boolean f22484O = false;

    /* renamed from: Q */
    private boolean f22486Q = false;

    /* renamed from: S */
    private boolean f22488S = false;

    /* renamed from: T */
    private boolean f22489T = false;

    /* renamed from: U */
    private boolean f22490U = false;

    /* renamed from: W */
    private CallEventListener f22492W = new CallEventListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.2
        @Override // com.callapp.contacts.activity.interfaces.CallEventListener
        /* renamed from: a */
        public final void mo30229a() {
            if (ContactsListActivity.this.isForeGroundVisible()) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsListActivity.this.m30607d();
                        boolean isKeypadOpenedOrOpening = ContactsListActivity.this.isKeypadOpenedOrOpening();
                        boolean isUserEnteredSomeOfTheTextInKeypad = ContactsListActivity.this.isUserEnteredSomeOfTheTextInKeypad();
                        if (isKeypadOpenedOrOpening && isUserEnteredSomeOfTheTextInKeypad) {
                            AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from contact list");
                        }
                        ContactsListActivity.this.f22480K = false;
                        ContactsListActivity.this.m30608c(true);
                    }
                });
            } else {
                ContactsListActivity.this.f22480K = true;
            }
        }
    };

    /* renamed from: X */
    private CallLogFirstTimeExperienceEventListener f22493X = new CallLogFirstTimeExperienceEventListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.3
        @Override // com.callapp.contacts.activity.interfaces.CallLogFirstTimeExperienceEventListener
        /* renamed from: a */
        public final void mo30227a() {
            if (ContactsListActivity.m30560y()) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsListActivity.this.m30566v();
                    }
                });
            }
        }
    };

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$10 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$10.class */
    public class C646010 implements StoreItemAssetManager.AssetListener<String> {
        C646010() {
            ContactsListActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m30556a(String str) {
            if (ContactsListActivity.this.f22511t == null) {
                ContactsListActivity.this.m30580o();
            }
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(ContactsListActivity.this.f22511t, str, ContactsListActivity.this);
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, String str2) {
            final String str3 = str;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$10$_rotaqJjLdhCco17fyk_h7_xUMM
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.C646010.this.m30556a(str3);
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$15 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$15.class */
    public class C646615 implements ValidateClientTask.OnResultListener {
        C646615() {
            ContactsListActivity.this = r4;
        }

        @Override // com.callapp.contacts.util.servermessage.ValidateClientTask.OnResultListener
        /* renamed from: a */
        public final void mo26901a(JSONClientValidationResponse jSONClientValidationResponse) {
            if (jSONClientValidationResponse.getMessageType() == 5 || jSONClientValidationResponse.getMessageType() == 4) {
                ContactsListActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsListActivity.this.finish();
                    }
                });
            } else {
                TCF2Manager.m27215a(ContactsListActivity.this, new OutcomeListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2
                    @Override // com.callapp.contacts.manager.task.OutcomeListener
                    /* renamed from: a */
                    public final void mo28119a(boolean z) {
                        ContactsListActivity.this.f22476G = z || WhatsNewPopup.m28017a(ContactsListActivity.this, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.1
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            /* renamed from: a */
                            public final void mo26209a(DialogPopup dialogPopup) {
                                ContactsListActivity.this.m30585l();
                                if (Prefs.f26258ai.get() != null) {
                                    AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Run in background", "show after upgrade");
                                    PowerUtils.m27429a(ContactsListActivity.this, null);
                                }
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            /* renamed from: b */
                            public final void mo26208b(DialogPopup dialogPopup) {
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                            public void onShow(DialogInterface dialogInterface) {
                            }
                        });
                        if (!ContactsListActivity.this.f22476G) {
                            ContactsListActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    ContactsListActivity.this.m30585l();
                                }
                            });
                            return;
                        }
                        if (!z) {
                            AnalyticsManager.get().m28450a(Constants.CONTACT_LIST, "Showing whats new popup");
                        }
                        if (Activities.m27641e()) {
                            return;
                        }
                        PopupManager.get().m28209a(ContactsListActivity.this, new DialogMessageWithTopImage(2131231356, Activities.getString(2131887474), Activities.getString(2131887473), Activities.getString(2131887920), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.2
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                                Activities.m27649c(ContactsListActivity.this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.2.1
                                    @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                                    public void popupDone(boolean z2) {
                                        if (z2) {
                                            AnalyticsManager.get().mo28444a(Constants.PUSHER, "Pusher clicked", "Draw overlay access opened", 0.0d, new String[0]);
                                        }
                                    }
                                });
                            }
                        }, Activities.getString(2131887104), ThemeUtils.m27386a(ContactsListActivity.this, 2131099917), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.15.2.3
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                            }
                        }));
                    }
                }, false);
            }
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$37 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$37.class */
    public static /* synthetic */ class C650737 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22577a;

        /* renamed from: b */
        static final /* synthetic */ int[] f22578b;

        /* renamed from: c */
        static final /* synthetic */ int[] f22579c;

        /* renamed from: d */
        static final /* synthetic */ int[] f22580d;

        /* renamed from: e */
        static final /* synthetic */ int[] f22581e;

        /* renamed from: f */
        static final /* synthetic */ int[] f22582f;

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
            f22582f = iArr;
            try {
                iArr[UiEvent.ON_KEYPAD_CLOSE_PRESSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22582f[UiEvent.ON_KEYPAD_CLOSING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22582f[UiEvent.ON_DIALER_PRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f22582f[UiEvent.ON_KEYPAD_OPENED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f22582f[UiEvent.ON_SEARCH_CONTACTS_START.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f22582f[UiEvent.ON_CONTACT_LIST_MULTI_SELECT_STARTED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f22582f[UiEvent.ON_CALL_LOG_LIST_MULTI_SELECT_STARTED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f22582f[UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_START.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f22582f[UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_FINISH.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f22582f[UiEvent.ON_LIST_MULTI_SELECT_ENDED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f22582f[UiEvent.ON_LIST_SCROLLED.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f22582f[UiEvent.ON_BACK_PRESSED_KEYPAD_OPEN.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f22582f[UiEvent.ON_RESET_SEARCH_AFTER_DELAY.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f22582f[UiEvent.ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f22582f[UiEvent.ON_SLIDE_MENU_OPEN.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f22582f[UiEvent.ON_BACK_PRESSED_SEARCH_OPEN.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            int[] iArr2 = new int[DownloaderCardViewHandler.StoreItemType.values().length];
            f22581e = iArr2;
            try {
                iArr2[DownloaderCardViewHandler.StoreItemType.COVER.ordinal()] = 1;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f22581e[DownloaderCardViewHandler.StoreItemType.PERSONAL_COVER.ordinal()] = 2;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f22581e[DownloaderCardViewHandler.StoreItemType.CALL_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f22581e[DownloaderCardViewHandler.StoreItemType.VIDEO_RINGTONE.ordinal()] = 4;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f22581e[DownloaderCardViewHandler.StoreItemType.KEYPAD.ordinal()] = 5;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f22581e[DownloaderCardViewHandler.StoreItemType.THEME.ordinal()] = 6;
            } catch (NoSuchFieldError e22) {
            }
            int[] iArr3 = new int[KeypadFragment.KeypadState.values().length];
            f22580d = iArr3;
            try {
                iArr3[KeypadFragment.KeypadState.KEYPAD_OPENED.ordinal()] = 1;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f22580d[KeypadFragment.KeypadState.KEYPAD_CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError e24) {
            }
            int[] iArr4 = new int[ContactField.values().length];
            f22579c = iArr4;
            try {
                iArr4[ContactField.photoUrl.ordinal()] = 1;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f22579c[ContactField.fullName.ordinal()] = 2;
            } catch (NoSuchFieldError e26) {
            }
            int[] iArr5 = new int[PusherManager.PusherStates.values().length];
            f22578b = iArr5;
            try {
                iArr5[PusherManager.PusherStates.MISSING_AUTO_START_PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError e27) {
            }
            try {
                f22578b[PusherManager.PusherStates.HUAWEI_PROTECTED_APPS.ordinal()] = 2;
            } catch (NoSuchFieldError e28) {
            }
            try {
                f22578b[PusherManager.PusherStates.SHOW_ALLOW_DRAW_OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e29) {
            }
            int[] iArr6 = new int[ContentState.values().length];
            f22577a = iArr6;
            try {
                iArr6[ContentState.DIALER.ordinal()] = 1;
            } catch (NoSuchFieldError e30) {
            }
            try {
                f22577a[ContentState.CONTACTS_NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e31) {
            }
            try {
                f22577a[ContentState.CALL_LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e32) {
            }
            try {
                f22577a[ContentState.CALL_LOG_MULTI_SELECT.ordinal()] = 4;
            } catch (NoSuchFieldError e33) {
            }
            try {
                f22577a[ContentState.CALL_LOG_FIRST_EXPERIENCE.ordinal()] = 5;
            } catch (NoSuchFieldError e34) {
            }
            try {
                f22577a[ContentState.CONTACTS_NONE_MULTI_SELECT.ordinal()] = 6;
            } catch (NoSuchFieldError e35) {
            }
            try {
                f22577a[ContentState.UNSET.ordinal()] = 7;
            } catch (NoSuchFieldError e36) {
            }
            try {
                f22577a[ContentState.DIALER_INCALL.ordinal()] = 8;
            } catch (NoSuchFieldError e37) {
            }
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$7 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$7.class */
    public class C65117 implements TutorialViewController.OnWidgetAddedListener {
        C65117() {
            ContactsListActivity.this = r4;
        }

        /* renamed from: b */
        public /* synthetic */ void m30552b() {
            ContactsListActivity.this.m30625b();
            ContactsListActivity.this.m30616c();
        }

        @Override // com.callapp.contacts.widget.tutorial.TutorialViewController.OnWidgetAddedListener
        /* renamed from: a */
        public final void mo26207a() {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$7$Ymv_0BLZKHW7gDeMCIph8ZRszP8
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.C65117.this.m30552b();
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$8 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$8.class */
    public class C65128 implements StoreItemAssetManager.AssetListener<String> {
        C65128() {
            ContactsListActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m30551a(String str) {
            if (ContactsListActivity.this.f22512u == null) {
                ContactsListActivity contactsListActivity = ContactsListActivity.this;
                contactsListActivity.f22512u = (ImageView) contactsListActivity.findViewById(2131362458);
            }
            ContactsListActivity.this.f22512u.setVisibility(0);
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(ContactsListActivity.this.f22512u, str, ContactsListActivity.this);
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
            ContactsListActivity.this.f22512u.setAlpha(0.2f);
            final EventBus eventBus = EventBusManager.f25138a;
            final EventType<InvalidateDataListener, EventBusManager.CallAppDataType> eventType = InvalidateDataListener.f23122b;
            final EventBusManager.CallAppDataType callAppDataType = EventBusManager.CallAppDataType.SUPER_SKIN_CHANGED;
            new Task() { // from class: com.callapp.contacts.event.bus.EventBus.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    eventBus.m29046a((EventType<L, EventType>) eventType, (EventType) callAppDataType, false);
                }
            }.execute();
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, String str2) {
            final String str3 = str;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$8$iSqlSXQQCnb9DowEIh8GEkDyIpY
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.C65128.this.m30551a(str3);
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$9 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$9.class */
    public class C65139 implements StoreItemAssetManager.AssetListener<String> {

        /* renamed from: com.callapp.contacts.activity.contact.list.ContactsListActivity$9$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$9$1.class */
        public class C65141 implements AbstractC3604g {
            C65141() {
                C65139.this = r4;
            }

            /* renamed from: a */
            public /* synthetic */ void m30549a() {
                ContactsListActivity.this.f22513v.setHasImageDrawable(true);
                ContactsListActivity.this.f22509q.setBackgroundColor(ThemeUtils.getColor(2131100145));
                ContactsListActivity.this.f22513v.getToolbarBackground().setAlpha(0.8f);
            }

            @Override // com.bumptech.glide.p112e.AbstractC3604g
            /* renamed from: a */
            public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                return false;
            }

            @Override // com.bumptech.glide.p112e.AbstractC3604g
            /* renamed from: a */
            public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$9$1$k2a2tcxoN3p73afYIGt6VVKpnbE
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactsListActivity.C65139.C65141.this.m30549a();
                    }
                });
                return false;
            }
        }

        C65139() {
            ContactsListActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m30550a(String str) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(ContactsListActivity.this.f22513v.getToolbarBackground(), str, ContactsListActivity.this);
            glideRequestBuilder.f28248n = new C65141();
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        }

        @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
        public /* synthetic */ void onAssetReady(String str, String str2) {
            final String str3 = str;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$9$VoRcaoI2nupXCDSovggzQ3Qlt3g
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsListActivity.C65139.this.m30550a(str3);
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

        /* renamed from: a */
        private WeakReference<ContactsListActivity> f22590a;

        FirstTimeExperienceCallLogListener(ContactsListActivity contactsListActivity) {
            this.f22590a = new WeakReference<>(contactsListActivity);
        }

        @Override // com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLog.FirstTimeExperienceListener
        /* renamed from: a */
        public final void mo30548a() {
            EventBusManager.f25138a.m29046a((EventType<L, EventType<NotifyDataChangedListener, DataChangedInfo>>) NotifyDataChangedListener.f23124b, (EventType<NotifyDataChangedListener, DataChangedInfo>) DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), DataChangedInfo.POSITION_ALL, 2), false);
            ContactsListActivity contactsListActivity = this.f22590a.get();
            if (Activities.m27696a((Activity) contactsListActivity)) {
                contactsListActivity.getBottomBarPresenter().m30799c();
                contactsListActivity.f22510s.setPagingEnabled(contactsListActivity.m30572s());
                contactsListActivity.setState(ContentState.CALL_LOG);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController.class */
    public class UiChangingEventController {

        /* renamed from: b */
        private String f22592b;

        /* renamed from: c */
        private UiEvent f22593c;

        private UiChangingEventController() {
            ContactsListActivity.this = r4;
        }

        /* renamed from: a */
        private void m30547a() {
            ContactsListActivity.this.f22513v.m28729c();
        }

        /* renamed from: a */
        static /* synthetic */ void m30546a(UiChangingEventController uiChangingEventController) {
            ContactsListActivity.this.f22513v.m28735a(2131623945, Activities.m27697a(2131886649, 0), new CallAppBarManager.OnActionModeClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.4
                @Override // com.callapp.contacts.manager.CallAppBarManager.OnActionModeClickListener
                /* renamed from: a */
                public final void mo28715a(int i) {
                    if (i == 2131362547) {
                        ContactsListActivity.m30655K(ContactsListActivity.this);
                    }
                }
            });
        }

        /* renamed from: a */
        public void m30542a(UiEvent uiEvent, boolean z) {
            switch (C650737.f22582f[uiEvent.ordinal()]) {
                case 1:
                    m30536b(z);
                    ContactsListActivity.m30619b(ContactsListActivity.this, false);
                    break;
                case 2:
                    m30547a();
                    m30541a(uiEvent, true, (AnimatorListenerAdapter) null);
                    ContactsListActivity.m30619b(ContactsListActivity.this, true);
                    ContactsListActivity.this.m30630a("Keypad close button clicked");
                    break;
                case 3:
                    ViewUtils.m27309a(ContactsListActivity.this.f22499f, false);
                    ContactsListActivity.this.m30615c(0);
                    ContactsListActivity.this.m30597e(z);
                    ContactsListActivity.this.f22513v.f25598c.setVisibility(8);
                    m30540a(z);
                    if (StringUtils.m26059a((CharSequence) ContactsListActivity.this.f22478I)) {
                        String latestNumberFromClipboard = CallAppClipboardManager.get().getLatestNumberFromClipboard();
                        if (PhoneNumberUtils.m26084a(latestNumberFromClipboard) && !StringUtils.m26042b(latestNumberFromClipboard, this.f22592b)) {
                            ContactsListActivity.this.f22478I = latestNumberFromClipboard;
                            this.f22592b = latestNumberFromClipboard;
                        }
                    }
                    ContactsListActivity.m30633a(ContactsListActivity.this, true, z);
                    CallAppBarManager callAppBarManager = ContactsListActivity.this.f22513v;
                    CallAppToolbar callAppToolbar = callAppBarManager.f25598c;
                    callAppToolbar.m26810b(false);
                    Activities.m27653b(callAppToolbar.f28615b);
                    callAppToolbar.f28614a.requestFocus();
                    callAppBarManager.m28728j();
                    ContactsListActivity.this.f22513v.f25596a.setVisibility(8);
                    ContactsListActivity.this.getBottomBarPresenter().m30800b();
                    ContactsListActivity.this.m30562x();
                    break;
                case 4:
                    m30541a(uiEvent, true, (AnimatorListenerAdapter) null);
                    break;
                case 5:
                    ContactsListActivity.this.m30615c(0);
                    m30541a(uiEvent, z, (AnimatorListenerAdapter) null);
                    m30536b(z);
                    ContactsListActivity.m30619b(ContactsListActivity.this, z);
                    ContactsListActivity.this.getBottomBarPresenter().m30800b();
                    ContactsListActivity.this.m30562x();
                    if (ContactsListActivity.this.f22516y != null) {
                        ContactsListActivity.this.f22516y.m26216c();
                        break;
                    }
                    break;
                case 6:
                    ContactsListActivity.this.m30590h(true);
                    m30541a(uiEvent, true, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            UiChangingEventController.m30546a(UiChangingEventController.this);
                        }
                    });
                    m30540a(z);
                    ContactsListActivity.this.getBottomBarPresenter().m30800b();
                    ContactsListActivity.this.m30562x();
                    if (ContactsListActivity.this.f22516y != null) {
                        ContactsListActivity.this.f22516y.m26216c();
                        break;
                    }
                    break;
                case 7:
                    m30539b();
                    m30541a(uiEvent, true, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            UiChangingEventController.m30538b(UiChangingEventController.this);
                        }
                    });
                    m30540a(z);
                    if (ContactsListActivity.this.f22516y != null) {
                        ContactsListActivity.this.f22516y.m26216c();
                        break;
                    }
                    break;
                case 8:
                    m30539b();
                    m30537b(uiEvent, z);
                    m30536b(z);
                    m30540a(z);
                    break;
                case 9:
                    ContactsListActivity.m30619b(ContactsListActivity.this, z);
                    break;
                case 10:
                    m30537b(uiEvent, z);
                    m30547a();
                    ContactsListActivity.m30619b(ContactsListActivity.this, z);
                    ContactsListActivity.this.getBottomBarPresenter().m30799c();
                    ContactsListActivity.m30670A(ContactsListActivity.this);
                    if (ContactsListActivity.this.f22516y != null) {
                        ContactsListActivity.this.f22516y.m26214d();
                        break;
                    }
                    break;
                case 11:
                    m30536b(z);
                    break;
                case 12:
                    m30536b(z);
                    break;
                case 13:
                    m30539b();
                    break;
                case 14:
                    ContactsListActivity.m30619b(ContactsListActivity.this, z);
                    break;
                case 15:
                    m30539b();
                    m30537b(uiEvent, z);
                    m30536b(z);
                    ContactsListActivity.m30619b(ContactsListActivity.this, z);
                    break;
                case 16:
                    m30539b();
                    m30547a();
                    m30537b(uiEvent, z);
                    m30536b(z);
                    ContactsListActivity.this.f22513v.m28732a(false);
                    ContactsListActivity.m30619b(ContactsListActivity.this, z);
                    ContactsListActivity.this.getBottomBarPresenter().m30799c();
                    ContactsListActivity.m30670A(ContactsListActivity.this);
                    if (ContactsListActivity.this.f22516y != null) {
                        ContactsListActivity.this.f22516y.m26214d();
                        break;
                    }
                    break;
            }
            this.f22593c = uiEvent;
        }

        /* renamed from: a */
        private void m30540a(boolean z) {
            if (!z && ContactsListActivity.this.isActivityVisible()) {
                ContactsListActivity.this.f22473D.animate().translationY(ContactsListActivity.this.f22473D.getHeight()).setInterpolator(new DecelerateInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        ContactsListActivity.this.f22473D.setVisibility(4);
                    }
                });
                return;
            }
            ContactsListActivity.this.f22473D.setTranslationY(ContactsListActivity.this.f22473D.getHeight());
            ContactsListActivity.this.f22473D.setVisibility(4);
        }

        /* renamed from: a */
        private boolean m30543a(UiEvent uiEvent) {
            int i = C650737.f22582f[uiEvent.ordinal()];
            if (i == 6 || i == 7 || i == 10) {
                return ContactsListActivity.this.isActivityVisible();
            }
            return false;
        }

        /* renamed from: a */
        private boolean m30541a(UiEvent uiEvent, boolean z, final AnimatorListenerAdapter animatorListenerAdapter) {
            ContactsListActivity.this.m30625b();
            if (ContactsListActivity.this.isTabsVisible()) {
                float height = ((-ContactsListActivity.this.f22509q.getY()) - ContactsListActivity.this.f22509q.getHeight()) + ContactsListActivity.this.f22513v.getBarHeight();
                if (z || !m30543a(uiEvent)) {
                    ContactsListActivity.this.f22509q.setTranslationY(height);
                    ContactsListActivity.this.f22509q.setVisibility(8);
                    if (animatorListenerAdapter != null) {
                        animatorListenerAdapter.onAnimationEnd(null);
                    }
                } else {
                    ContactsListActivity.this.f22509q.animate().translationY(height).setInterpolator(new DecelerateInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.7
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            ContactsListActivity.this.f22509q.setVisibility(8);
                            AnimatorListenerAdapter animatorListenerAdapter2 = animatorListenerAdapter;
                            if (animatorListenerAdapter2 != null) {
                                animatorListenerAdapter2.onAnimationEnd(animator);
                            }
                        }
                    });
                }
                ContactsListActivity.this.f22510s.setPagingEnabled(false);
                return true;
            }
            return false;
        }

        /* renamed from: b */
        private void m30539b() {
            KeypadFragment keypadFragment = (KeypadFragment) ContactsListActivity.this.getSupportFragmentManager().m43740a("KEYPAD_FRAGMENT_TAG");
            if (keypadFragment != null) {
                keypadFragment.m30495b();
            }
        }

        /* renamed from: b */
        static /* synthetic */ void m30538b(UiChangingEventController uiChangingEventController) {
            ContactsListActivity.this.f22513v.m28735a(2131623944, Activities.m27697a(2131886386, 0), new CallAppBarManager.OnActionModeClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.5
                @Override // com.callapp.contacts.manager.CallAppBarManager.OnActionModeClickListener
                /* renamed from: a */
                public final void mo28715a(int i) {
                    if (i == 2131362547) {
                        ContactsListActivity.m30654L(ContactsListActivity.this);
                    }
                }
            });
        }

        /* renamed from: b */
        private void m30537b(UiEvent uiEvent, boolean z) {
            ContactsListActivity.this.m30616c();
            if (!StringUtils.m26059a((CharSequence) ContactsListActivity.this.f22478I) || ContactsListActivity.this.isTabsVisible()) {
                return;
            }
            if (z || !m30543a(uiEvent)) {
                ContactsListActivity.this.f22509q.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                ContactsListActivity.this.f22509q.setVisibility(0);
            } else {
                ContactsListActivity.this.f22509q.animate().translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(new AccelerateInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.UiChangingEventController.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        ContactsListActivity.this.f22509q.setVisibility(0);
                    }
                });
            }
            ContactsListActivity.this.f22510s.setPagingEnabled(Prefs.f26663t.get().booleanValue());
        }

        /* renamed from: b */
        private void m30536b(boolean z) {
            ContactsListActivity.m30633a(ContactsListActivity.this, false, z);
        }

        UiEvent getPrevEvent() {
            return this.f22593c;
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
        this.f22481L = eventBus;
        this.f22491V = new PresentersContainerImpl(eventBus, PresentersContainer.MODE.CONTACT_LIST) { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.1
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
                return ContactsListActivity.this.f22481L;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public Context getRealContext() {
                return ContactsListActivity.this;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean hasIntentExtra(String str) {
                Intent intent = ContactsListActivity.this.getIntent();
                if (intent == null || !StringUtils.m26045b((CharSequence) str)) {
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

    /* renamed from: A */
    private void m30671A() {
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default call screen", "Pop up Shown");
        Activities.m27687a((Activity) this, true, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.36
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                if (i2 == 0) {
                    Activities.m27687a((Activity) ContactsListActivity.this, false, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.36.1
                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(Activity activity2, int i3, int i4, Intent intent2) {
                            Singletons.get().getWearableClientHandler().m26866a();
                        }
                    });
                    return;
                }
                AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default dialer from watch", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false");
                Singletons.get().getWearableClientHandler().m26866a();
            }
        });
    }

    /* renamed from: A */
    static /* synthetic */ void m30670A(ContactsListActivity contactsListActivity) {
        ImageView imageView = contactsListActivity.f22511t;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    /* renamed from: B */
    public /* synthetic */ void m30669B() {
        SlideMenuFragment slideMenuFragment = getSlideMenuFragment();
        if (slideMenuFragment != null) {
            getSupportFragmentManager().m43765a().mo43539a(slideMenuFragment).mo43529e();
        }
    }

    /* renamed from: C */
    public /* synthetic */ void m30667C() {
        this.f22495b.onCreate();
    }

    /* renamed from: D */
    public /* synthetic */ void m30665D() {
        ImageAndTextPusherOverlayView imageAndTextPusherOverlayView = this.f22495b;
        if (imageAndTextPusherOverlayView != null) {
            imageAndTextPusherOverlayView.finishViewContainer(false);
            this.f22495b = null;
        }
    }

    /* renamed from: E */
    public static /* synthetic */ void m30663E() {
        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "SMS reminder - Permission not granted");
    }

    /* renamed from: F */
    public static /* synthetic */ void m30661F() {
        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "SMS reminder - Permission granted");
    }

    /* renamed from: I */
    static /* synthetic */ void m30657I(ContactsListActivity contactsListActivity) {
        if (CollectionUtils.m26068b(contactsListActivity.f22502j)) {
            for (KeypadLayoutChanges keypadLayoutChanges : contactsListActivity.f22502j) {
                keypadLayoutChanges.mo30210b();
            }
        }
    }

    /* renamed from: K */
    static /* synthetic */ void m30655K(ContactsListActivity contactsListActivity) {
        Fragment fragmentByPosition = contactsListActivity.getFragmentByPosition(contactsListActivity.f22510s.getCurrentItem());
        if (fragmentByPosition instanceof MultiSelectEvents) {
            final MultiSelectEvents multiSelectEvents = (MultiSelectEvents) fragmentByPosition;
            ArrayList<BaseAdapterItemData> selectedContacts = multiSelectEvents.getSelectedContacts();
            if (selectedContacts == null || selectedContacts.size() == 0) {
                FeedbackManager.get().m28669a(Activities.getString(2131887251), (Integer) null);
            } else {
                ContactItemContextMenuHelper.m30689a(contactsListActivity, selectedContacts, new ActionDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.34
                    @Override // com.callapp.contacts.action.ActionDoneListener
                    /* renamed from: a */
                    public final void mo27472a() {
                    }

                    @Override // com.callapp.contacts.action.ActionDoneListener
                    /* renamed from: a */
                    public final void mo27471a(final boolean z) {
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.34.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (z) {
                                    ContactsListActivity.this.setState(ContactsListActivity.m30605d(ContactsListActivity.this.getState()));
                                    multiSelectEvents.setMultiSelectModeEnable(false);
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    /* renamed from: L */
    static /* synthetic */ void m30654L(ContactsListActivity contactsListActivity) {
        Fragment fragmentByPosition = contactsListActivity.getFragmentByPosition(contactsListActivity.f22510s.getCurrentItem());
        if (fragmentByPosition instanceof MultiSelectEvents) {
            final MultiSelectEvents multiSelectEvents = (MultiSelectEvents) fragmentByPosition;
            ArrayList<BaseAdapterItemData> selectedContacts = multiSelectEvents.getSelectedContacts();
            if (selectedContacts == null || selectedContacts.size() == 0) {
                FeedbackManager.get().m28669a(Activities.getString(2131887251), (Integer) null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<BaseAdapterItemData> it2 = selectedContacts.iterator();
            while (it2.hasNext()) {
                for (AggregateCallLogData.CallLogData callLogData : ((AggregateCallLogData) it2.next()).getCallLogs()) {
                    arrayList.add(Long.valueOf(callLogData.getCallId()));
                }
            }
            ContactItemContextMenuHelper.m30695a(contactsListActivity, arrayList, selectedContacts.size(), false, false, new ActionDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.35
                @Override // com.callapp.contacts.action.ActionDoneListener
                /* renamed from: a */
                public final void mo27472a() {
                }

                @Override // com.callapp.contacts.action.ActionDoneListener
                /* renamed from: a */
                public final void mo27471a(boolean z) {
                    if (z) {
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.35.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ContactsListActivity.this.setState(ContactsListActivity.m30605d(ContactsListActivity.this.getState()));
                            }
                        });
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static Intent m30648a(Application application) {
        return new Intent(application, ContactsListActivity.class).setFlags(268435456).setAction("com.android.phone.action.BLOCKED");
    }

    /* renamed from: a */
    public static Intent m30647a(Context context, BirthdayData birthdayData) {
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

    /* renamed from: a */
    private void m30650a(int i, int i2, int i3, final String str, final PusherManager.PusherStates pusherStates) {
        this.f22495b = new ImageAndTextPusherOverlayView(this, 2131231567, -1, PorterDuff.Mode.SRC_IN, i, i2, i3, new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i4 = C650737.f22578b[pusherStates.ordinal()];
                if (i4 == 1) {
                    AutoStartPermissionHelper.getInstance().m27160a(ContactsListActivity.this, (ActivityResult) null);
                    Prefs.f26358cc.set(Boolean.TRUE);
                } else if (i4 == 2) {
                    Activities.m27648c((Context) ContactsListActivity.this);
                    Prefs.f26359cd.set(Boolean.TRUE);
                } else if (i4 == 3) {
                    Activities.m27649c(ContactsListActivity.this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.27.1
                        @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                        public void popupDone(boolean z) {
                            if (z) {
                                AnalyticsManager.get().m28450a(Constants.PUSHER, "Open draw on screen access");
                                ContactsListActivity.this.m30625b();
                            }
                        }
                    });
                    AnalyticsManager.get().mo28444a(Constants.PUSHER, "Pusher clicked", str, 0.0d, new String[0]);
                }
                ContactsListActivity.this.m30625b();
                AnalyticsManager.get().mo28444a(Constants.PUSHER, "Pusher clicked", str, 0.0d, new String[0]);
            }
        }, new BaseOverlayView.OverlayViewListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.28
            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            /* renamed from: a */
            public final void mo28217a() {
                ContactsListActivity.this.f22496c = false;
                AnalyticsManager.get().m28450a(Constants.PUSHER, "Pusher closed");
            }

            @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
            /* renamed from: b */
            public final void mo28216b() {
            }
        });
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$irBiqFjtu7ZftO5OlZl9TG_BD_8
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.m30667C();
            }
        });
        this.f22496c = true;
        AnalyticsManager.get().mo28444a(Constants.PUSHER, "Pusher created", str, 0.0d, new String[0]);
    }

    /* renamed from: a */
    public /* synthetic */ void m30649a(Activity activity) {
        Activities.m27649c(this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$_CG_2GQ4VtH1Zijq23sIjy4AMME
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public final void popupDone(boolean z) {
                ContactsListActivity.this.m30588i(z);
            }
        });
    }

    /* renamed from: a */
    public void m30646a(Intent intent) {
        if (intent.getBooleanExtra(ContactDetailsActivity.EXTRA_BRING_TO_FRONT_RETRY, false)) {
            return;
        }
        m30624b(intent);
        if (intent.hasExtra("future_target_index_key")) {
            NotificationManager.get().m28534c(intent.getIntExtra("future_target_index_key", -1));
        }
        if (getIntent().hasExtra("extra_default_phone_app_from_watch")) {
            m30671A();
        }
        m30578p();
    }

    /* renamed from: a */
    private void m30645a(Bundle bundle) {
        String str;
        int i;
        if (bundle == null || !bundle.getBoolean("from_sync_progress", false)) {
            return;
        }
        boolean z = bundle.getBoolean("sync_progress_no_internet", false) && !HttpUtils.m26985a();
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
        m30628a(str, z);
    }

    /* renamed from: a */
    public /* synthetic */ void m30644a(View view) {
        mo26581j();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private void m30642a(ContentState contentState, boolean z) {
        if (m30613c(getState()) == ContentState.CALL_LOG && m30613c(contentState) != ContentState.CALL_LOG) {
            Prefs.f26409da.set(new Date());
            EventBusManager.f25138a.m29043c(CallLogLastSeenTimestampEventListener.f23110c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
        }
        boolean z2 = false;
        if (isSlideMenuOpen()) {
            this.f22497d.m43867a(8388611, false);
        }
        if (!m30600e(contentState) && m30600e(f22469r)) {
            this.f22474E.m30542a(UiEvent.ON_LIST_MULTI_SELECT_ENDED, z);
        }
        String str = "CL Screen - with keypad";
        switch (C650737.f22577a[contentState.ordinal()]) {
            case 1:
                setupContentContainer(1);
                this.f22474E.m30542a(UiEvent.ON_DIALER_PRESSED, z);
                break;
            case 2:
                this.f22474E.m30542a(UiEvent.ON_TAB_CHANGED_TO_CONTACTS_WITHOUT_KEYPAD, z);
                setupContentContainer(1);
                m30590h(false);
                str = "CL Screen - without keypad";
                z2 = true;
                break;
            case 3:
                setupContentContainer(0);
                this.f22474E.m30542a(UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_FINISH, z);
                new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.25
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        NotificationManager.m28535c();
                    }
                }.execute();
                m30590h(false);
                str = "CL Screen - History";
                z2 = true;
                break;
            case 4:
                setupContentContainer(0);
                this.f22474E.m30542a(UiEvent.ON_CALL_LOG_LIST_MULTI_SELECT_STARTED, z);
                m30590h(true);
                str = "CL Screen - History multi";
                break;
            case 5:
                setupContentContainer(0);
                this.f22474E.m30542a(UiEvent.ON_CALL_LOG_FIRST_EXPERIENCE_START, z);
                View m30594f = m30594f(false);
                if (m30594f != null) {
                    ViewGroup viewGroup = (ViewGroup) m30594f.findViewById(2131363875);
                    ViewUtils.m27320a(viewGroup, (Drawable) null);
                    CallappAnimationUtils.m27171c(viewGroup);
                }
                this.f22510s.setPagingEnabled(false);
                getBottomBarPresenter().m30800b();
                m30562x();
                FirstTimeExperienceCallLog.get().m31329b();
                str = null;
                break;
            case 6:
                setupContentContainer(1);
                this.f22474E.m30542a(UiEvent.ON_CONTACT_LIST_MULTI_SELECT_STARTED, z);
                str = "CL Screen - multi select";
                break;
            case 7:
            default:
                str = null;
                break;
            case 8:
                setupContentContainer(1);
                this.f22485P.m26818a();
                m30602d(z);
                break;
        }
        if (contentState != f22469r && StringUtils.m26045b((CharSequence) str)) {
            AnalyticsManager.get().mo28441b(str);
        }
        f22469r = contentState;
        if (z2) {
            m30616c();
        } else {
            m30625b();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m30633a(ContactsListActivity contactsListActivity, boolean z, boolean z2) {
        final AbstractC1121s m43765a = contactsListActivity.getSupportFragmentManager().m43765a();
        KeypadFragment keypadFragment = (KeypadFragment) contactsListActivity.getSupportFragmentManager().m43740a("KEYPAD_FRAGMENT_TAG");
        KeypadFragment keypadFragment2 = keypadFragment;
        if (keypadFragment == null) {
            keypadFragment2 = KeypadFragment.m30496a(!z2, contactsListActivity.f22473D.getWidth(), contactsListActivity.f22473D.getHeight(), 0);
        }
        if (!z) {
            KeypadVisibilityEvents keypadVisibilityEvents = contactsListActivity.f22479J;
            if (keypadVisibilityEvents == null) {
                return;
            }
            final KeypadFragment keypadFragment3 = keypadFragment2;
            keypadVisibilityEvents.mo30207a(!z2, new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.26
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    m43765a.mo43539a(keypadFragment3).mo43532c();
                    if (!ContactsListActivity.this.getSupportFragmentManager().f4230v) {
                        ContactsListActivity.this.getSupportFragmentManager().m43732b();
                    }
                    ContactsListActivity.m30657I(ContactsListActivity.this);
                }
            });
            return;
        }
        m43765a.m43535b(2131363143, keypadFragment2, "KEYPAD_FRAGMENT_TAG");
        if (!contactsListActivity.getSupportFragmentManager().m43707f()) {
            m43765a.mo43536b();
        } else {
            m43765a.mo43532c();
        }
        if (!contactsListActivity.getSupportFragmentManager().f4230v) {
            contactsListActivity.getSupportFragmentManager().m43732b();
        }
        TutorialViewController tutorialViewController = contactsListActivity.f22516y;
        if (tutorialViewController == null) {
            return;
        }
        tutorialViewController.m26216c();
    }

    /* renamed from: a */
    private static void m30632a(ImageViewWithTopMark imageViewWithTopMark, boolean z) {
        if (imageViewWithTopMark != null) {
            imageViewWithTopMark.setDrawCircle(z);
            imageViewWithTopMark.requestLayout();
        }
    }

    /* renamed from: a */
    private void m30631a(Class cls) {
        if (cls != null) {
            startActivity(new Intent(this, cls));
        }
        finish();
    }

    /* renamed from: a */
    public void m30630a(String str) {
        if (this.f22475F) {
            this.f22475F = false;
            AnalyticsManager.get().m28450a("Keypad Usage", str);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m30629a(final String str, String str2) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$_9Xp4ZKYwIhwhmH63uHPvbGtLmE
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.m30609c(str);
            }
        });
    }

    /* renamed from: a */
    private void m30628a(String str, boolean z) {
        if (z) {
            PopupManager.get().m28209a(this, new DialogSimpleMessage(Activities.getString(2131886658), str, "Visit Setting & Enable Internet", "Later", new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.19
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Come from sync notification without internet and press on enable", Constants.CLICK);
                    Activities.m27685a(ContactsListActivity.this, new Intent("android.settings.SETTINGS"));
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.20
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Come from sync notification without internet and press on later", Constants.CLICK);
                }
            }));
        } else {
            PopupManager.get().m28209a(this, new DialogSimpleMessage(Activities.getString(2131886658), str, Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.21
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Come from sync notification", Constants.CLICK);
                }
            }, null));
        }
    }

    /* renamed from: a */
    public void m30627a(String str, boolean z, boolean z2, boolean z3) {
        if (CollectionUtils.m26068b(this.f22501h)) {
            if (!StringUtils.m26042b(this.f22478I, str)) {
                for (SearchContactsFilter searchContactsFilter : this.f22501h) {
                    searchContactsFilter.mo28733a(str, z, z2, z3);
                }
            }
            this.f22478I = str;
        }
    }

    /* renamed from: a */
    private void m30626a(List<Fragment> list) {
        TabLayout.C14778f m10143a;
        ViewGroup viewGroup;
        for (int i = 0; i < list.size(); i++) {
            ContactListFragmentMarker contactListFragmentMarker = (ContactListFragmentMarker) list.get(i);
            int fragmentIconResId = contactListFragmentMarker.getFragmentIconResId();
            if (fragmentIconResId != 0 && (m10143a = this.f22509q.m10143a(i)) != null && (viewGroup = (ViewGroup) LayoutInflater.from(this).inflate(2131558579, (ViewGroup) this.f22509q, false)) != null) {
                ((ImageViewWithTopMark) viewGroup.findViewById(2131364051)).setImageResource(fragmentIconResId);
                m10143a.m10085a(viewGroup);
                m10143a.f53956a = Integer.valueOf(list.indexOf(contactListFragmentMarker));
            }
        }
    }

    /* renamed from: b */
    private void m30624b(Intent intent) {
        Uri data = intent.getData();
        if (data != null && data.isHierarchical()) {
            try {
                String queryParameter = data.getQueryParameter("callapp-source");
                if (StringUtils.m26045b((CharSequence) queryParameter)) {
                    Prefs.f26524fj.set(queryParameter);
                }
                String queryParameter2 = data.getQueryParameter("callapp-medium");
                if (StringUtils.m26045b((CharSequence) queryParameter2)) {
                    Prefs.f26525fk.set(queryParameter2);
                }
                String queryParameter3 = data.getQueryParameter("callapp-campaign");
                if (StringUtils.m26045b((CharSequence) queryParameter3)) {
                    Prefs.f26526fl.set(queryParameter3);
                }
                String queryParameter4 = data.getQueryParameter("callapp-term");
                if (StringUtils.m26045b((CharSequence) queryParameter4)) {
                    Prefs.f26527fm.set(queryParameter4);
                }
                CLog.m27611a(ContactsListActivity.class, "Deeplink tracking - source: " + queryParameter + ", medium: " + queryParameter2 + ", campaign: " + queryParameter3 + ", term: " + queryParameter4);
            } catch (UnsupportedOperationException e) {
                CLog.m27595b(ContactsListActivity.class, e, "Error while trying to read deeplink parameters");
            }
        }
        if (SetupWizardActivity.m29518a()) {
            m30574r();
            return;
        }
        new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.16
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                NotificationManager.get().m28578a(9);
                AnalyticsManager.get().mo28441b(Constants.CONTACT_LIST_SCREEN);
                if (Prefs.f26301bY.get().booleanValue() || !Activities.m27661b()) {
                    return;
                }
                AnalyticsManager.get().m28450a(Constants.MISSED_CALL_ACTIONS, "User gave us permission as notification listeners");
                Prefs.f26301bY.set(Boolean.TRUE);
            }
        }.execute();
        if (this.f22517z == null) {
            PopupManager.get().m28211a();
        }
        String type = intent.getType();
        String action = intent.getAction();
        Bundle extras = intent.getExtras();
        ContentState m30606d = m30606d(intent);
        if (m30606d != null) {
            if (StringUtils.m26057a(m30606d, ContentState.DIALER)) {
                this.f22471B = true;
                m30642a(m30606d, true);
            } else {
                setState(m30606d);
            }
        } else if ("android.intent.action.MAIN".equals(action)) {
            if (extras != null) {
                String string = extras.getString("from");
                if (StringUtils.m26045b((CharSequence) string)) {
                    HashMap hashMap = new HashMap();
                    for (String str : extras.keySet()) {
                        hashMap.put(str, extras.getString(str));
                    }
                    CallAppFirebaseMessagingService.m28267a(string, hashMap);
                }
            }
            m30642a((ContentState) Prefs.f26355cZ.get(), true);
        } else if (data != null && (MRAIDNativeFeature.TEL.equals(data.getScheme()) || "voicemail".equals(data.getScheme()))) {
            this.f22480K = false;
            String schemeSpecificPart = data.getSchemeSpecificPart();
            if (schemeSpecificPart != null) {
                m30627a(T9Helper.getT9TextFilter().filter(schemeSpecificPart, 0, schemeSpecificPart.length(), null, 0, 0).toString(), false, false, true);
            }
            m30642a(ContentState.DIALER, true);
        } else if ("android.intent.action.DIAL".equals(action) || "android.intent.action.CALL".equals(action)) {
            this.f22480K = false;
            if (isSearchContactFragmentVisible()) {
                m30627a("", true, true, false);
            }
            m30642a(ContentState.DIALER_INCALL, true);
        } else if ("com.callapp.contacts/reexecuteIntent".equals(action)) {
            setState(ContentState.CALL_LOG);
        } else if (Objects.m31915a("vnd.android.cursor.dir/calls", type) || "com.android.phone.action.RECENT_CALLS".equals(action)) {
            if (extras != null && extras.getBoolean("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED", false)) {
                MissedCallUtils.m27439b(false);
                intent.removeExtra("EXTRA_MISSED_CALL_NOTIFICATION_CLICKED");
                AnalyticsManager.get().m28450a(Constants.MISSED_CALL_ACTIONS, "User clicked the missed call notification");
                ContactDetailsActivity.showDialogToAllowNotificationAccessAfterMissedCall(this);
            }
            if (extras != null && extras.getBoolean("EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED", false)) {
                MissedCallUtils.m27440a(false);
                intent.removeExtra("EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED");
                AnalyticsManager.get().m28450a(Constants.MISSED_CALL_ACTIONS, "User clicked the not answered notification");
                String stringExtra = intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER);
                if (StringUtils.m26045b((CharSequence) stringExtra)) {
                    MissedCallManager.m29823a(PhoneManager.get().m28239a(stringExtra), CallReminderFrequentData.FrequentType.DELETE, 40, 0L);
                }
            }
            if (!m30576q()) {
                setState(ContentState.CALL_LOG);
            }
        } else if ("com.callapp.contacts/showTutorial".equals(action)) {
            TutorialViewController tutorialViewController = this.f22516y;
            if (tutorialViewController != null) {
                tutorialViewController.m26221a(this);
            }
        } else {
            ContentState contentState = this.f22517z;
            if (contentState == null) {
                contentState = ContentState.CONTACTS_NONE;
                AnalyticsManager.get().mo28444a(Constants.CALLAPP_ICON, "ContactList Icon Clicked", (String) null, 0.0d, Payload.SOURCE, this.f22487R);
            }
            setState(contentState);
            if (this.f22517z == null) {
                m30645a(extras);
            }
        }
        this.f22517z = null;
        if (intent.hasExtra("tab") && !StringUtils.m26042b("com.callapp.contacts.FROM_SUB_ACTIVITY", intent.getAction()) && intent.getBooleanExtra("START_BIRTHDAY_POPUP", false)) {
            BirthdaysActivity.m31454a((ReminderData) intent.getSerializableExtra("reminder"));
        }
        m30614c(intent);
    }

    /* renamed from: b */
    static /* synthetic */ void m30619b(ContactsListActivity contactsListActivity, boolean z) {
        if (z || !contactsListActivity.isActivityVisible()) {
            contactsListActivity.f22473D.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        } else {
            contactsListActivity.f22473D.animate().translationY(BitmapDescriptorFactory.HUE_RED).setListener(null).setInterpolator(new AccelerateInterpolator());
        }
        contactsListActivity.f22473D.setVisibility(0);
    }

    /* renamed from: b */
    private void m30618b(String str) {
        this.f22513v.m28731b();
        m30627a(str, true, false, false);
    }

    /* renamed from: b */
    private void m30617b(boolean z) {
        this.f22513v.m28732a(!z);
        this.f22509q.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.f22509q.setVisibility(0);
        this.f22510s.setPagingEnabled(m30572s());
    }

    /* renamed from: c */
    private static ContentState m30613c(ContentState contentState) {
        int i = C650737.f22577a[contentState.ordinal()];
        return (i == 3 || i == 4 || i == 5) ? ContentState.CALL_LOG : ContentState.CONTACTS_NONE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0317, code lost:
        if (r0.contains(r0) != false) goto L102;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m30614c(android.content.Intent r13) {
        /*
            Method dump skipped, instructions count: 1432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.ContactsListActivity.m30614c(android.content.Intent):void");
    }

    /* renamed from: c */
    public /* synthetic */ void m30609c(String str) {
        if (this.f22511t == null) {
            m30580o();
        }
        SuperSkinWizardScrollListener superSkinWizardScrollListener = this.f22515x;
        ImageView imageView = this.f22511t;
        superSkinWizardScrollListener.f23138a = new GlideUtils.GifPlayer(imageView.getContext(), imageView, str);
    }

    /* renamed from: c */
    public void m30608c(boolean z) {
        m30617b(z);
        this.f22474E.m30542a(UiEvent.ON_BACK_PRESSED_SEARCH_OPEN, z);
    }

    /* renamed from: d */
    private ContentState m30606d(Intent intent) {
        ContentState contentState;
        if ("com.callapp.contacts.FROM_SUB_ACTIVITY".equals(intent.getAction()) && intent.getExtras() != null) {
            String string = intent.getExtras().getString("tab");
            if (StringUtils.m26045b((CharSequence) string)) {
                AnalyticsManager.get().m28450a(Constants.CALLAPP_ICON, string + " Icon Clicked");
                if (StringUtils.m26057a(string, ContentState.DIALER)) {
                    this.f22475F = true;
                }
                contentState = this.f22472C.get(string);
                return contentState;
            }
        }
        contentState = null;
        return contentState;
    }

    /* renamed from: d */
    public static ContentState m30605d(ContentState contentState) {
        int i = C650737.f22577a[contentState.ordinal()];
        return i != 4 ? i != 6 ? contentState : ContentState.CONTACTS_NONE : ContentState.CALL_LOG;
    }

    /* renamed from: d */
    public void m30602d(boolean z) {
        this.f22474E.m30542a(UiEvent.ON_SEARCH_CONTACTS_START, z);
        m30597e(z);
    }

    /* renamed from: e */
    public void m30601e(int i) {
        Fragment fragmentByPosition = getFragmentByPosition(i);
        if (fragmentByPosition instanceof DataFragmentsEvents) {
            ((DataFragmentsEvents) fragmentByPosition).refreshData();
        }
    }

    /* renamed from: e */
    public void m30597e(boolean z) {
        if (!isSearchContactFragmentVisible()) {
            AbstractC1121s m43765a = getSupportFragmentManager().m43765a();
            if (!z && isActivityVisible()) {
                m43765a.m43527i();
            }
            SearchContactsFragment searchContactsFragment = (SearchContactsFragment) getSupportFragmentManager().m43740a("SEARCH_BAR_TAG");
            SearchContactsFragment searchContactsFragment2 = searchContactsFragment;
            if (searchContactsFragment == null) {
                searchContactsFragment2 = (SearchContactsFragment) Fragment.instantiate(this, SearchContactsFragment.class.getName());
            }
            m43765a.m43535b(2131363757, searchContactsFragment2, "SEARCH_BAR_TAG").mo43532c();
            setSlideMenuLockState(true);
            this.f22496c = false;
        }
    }

    /* renamed from: e */
    public static boolean m30600e(ContentState contentState) {
        int i = C650737.f22577a[contentState.ordinal()];
        return i == 4 || i == 6;
    }

    /* renamed from: f */
    private View m30594f(boolean z) {
        View view;
        ImageViewWithTopMark imageViewWithTopMark;
        TabLayout.C14778f m10143a = this.f22509q.m10143a(0);
        if (m10143a == null || (view = m10143a.f53961f) == null || (imageViewWithTopMark = (ImageViewWithTopMark) view.findViewById(2131364051)) == null) {
            return null;
        }
        m30632a(imageViewWithTopMark, z);
        this.f22477H = z;
        return view;
    }

    /* renamed from: g */
    static /* synthetic */ void m30593g(ContactsListActivity contactsListActivity) {
        if (StringUtils.m26042b(Prefs.f26508fT.get(), "")) {
            Prefs.f26513fY.set(2);
        } else if (!CallAppRemoteConfigManager.get().m28698c("showTutorialWidget")) {
        } else {
            int m28699b = (int) CallAppRemoteConfigManager.get().m28699b("tutorialPagesNumber");
            EventBus eventBus = new EventBus();
            TutorialPageManager tutorialPageManager = new TutorialPageManager(new TutorialPageRepository(m28699b, eventBus));
            if (!tutorialPageManager.m26272a()) {
                return;
            }
            if (Prefs.f26510fV.get() == null) {
                Prefs.f26510fV.set(new Date());
            }
            contactsListActivity.f22516y = new TutorialViewController(tutorialPageManager, eventBus, (ViewGroup) contactsListActivity.findViewById(2131363711), contactsListActivity, new C65117());
            contactsListActivity.getLifecycle().addObserver(contactsListActivity.f22516y);
        }
    }

    /* renamed from: g */
    private void m30592g(final boolean z) {
        CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.33
            @Override // java.lang.Runnable
            public void run() {
                ContactsFragment contactsFragment;
                if (!ContactsListActivity.this.isTooltipShowing() || (contactsFragment = ContactsListActivity.this.getContactsFragment()) == null) {
                    return;
                }
                boolean z2 = z;
                if (contactsFragment.f22459a == null) {
                    return;
                }
                contactsFragment.f22459a.m30847a(z2);
                contactsFragment.f22459a = null;
            }
        });
    }

    public ContactListCollapsingBottomBarPresenter getBottomBarPresenter() {
        return (ContactListCollapsingBottomBarPresenter) this.f22507o.m30925a(ContactListCollapsingBottomBarPresenter.class);
    }

    public Fragment getFragmentByPosition(int i) {
        if (i < 0) {
            return null;
        }
        return getSupportFragmentManager().m43740a("android:switcher:2131364054:".concat(String.valueOf(i)));
    }

    public SlideMenuFragment getSlideMenuFragment() {
        Fragment m43740a = getSupportFragmentManager().m43740a("slide_menu_frag");
        if (m43740a != null) {
            return (SlideMenuFragment) m43740a;
        }
        return null;
    }

    public ContentState getStateByPageIndex(int i) {
        return i != 0 ? i != 1 ? ContentState.CONTACTS_NONE : ContentState.CONTACTS_NONE : (!this.f22477H || !m30560y()) ? ContentState.CALL_LOG : ContentState.CALL_LOG_FIRST_EXPERIENCE;
    }

    /* renamed from: h */
    static /* synthetic */ void m30591h(ContactsListActivity contactsListActivity) {
        new ValidateClientTask(new C646615(), contactsListActivity, Constants.CONTACT_LIST).execute();
    }

    /* renamed from: h */
    public void m30590h(boolean z) {
        setSlideMenuLockState(z);
        Fragment fragmentByPosition = getFragmentByPosition(this.f22510s.getCurrentItem());
        if (fragmentByPosition instanceof MultiSelectEvents) {
            ((MultiSelectEvents) fragmentByPosition).setMultiSelectModeEnable(z);
            if (z) {
                return;
            }
            this.f22513v.m28727k();
        }
    }

    /* renamed from: i */
    public /* synthetic */ void m30588i(boolean z) {
        if (!Activities.m27641e()) {
            m30578p();
            return;
        }
        m30625b();
        m30616c();
    }

    private boolean isFromRecorderTest() {
        return getIntent().getBooleanExtra("extra_from_recorder_test", false);
    }

    public boolean isKeypadOpenedOrOpening() {
        KeypadFragment keypadFragment = (KeypadFragment) getSupportFragmentManager().m43740a("KEYPAD_FRAGMENT_TAG");
        return keypadFragment != null && keypadFragment.isKeypadOpenedOrOpenning();
    }

    private boolean isSearchContactFragmentVisible() {
        SearchContactsFragment searchContactsFragment = (SearchContactsFragment) getSupportFragmentManager().m43740a("SEARCH_BAR_TAG");
        return searchContactsFragment != null && searchContactsFragment.isVisible();
    }

    private boolean isSearchState() {
        return isSearchContactFragmentVisible();
    }

    private boolean isSlideMenuOpen() {
        DrawerLayout drawerLayout = this.f22497d;
        if (drawerLayout != null) {
            View m43858b = drawerLayout.m43858b(8388611);
            return m43858b != null ? DrawerLayout.m43846e(m43858b) : false;
        }
        return false;
    }

    public boolean isTooltipShowing() {
        ContactsFragment contactsFragment = getContactsFragment();
        return contactsFragment != null && contactsFragment.isTooltipShowing();
    }

    public boolean isUserEnteredSomeOfTheTextInKeypad() {
        KeypadFragment keypadFragment = (KeypadFragment) getSupportFragmentManager().m43740a("KEYPAD_FRAGMENT_TAG");
        return keypadFragment != null && keypadFragment.isUserEnteredSomeOfTheText();
    }

    /* renamed from: o */
    public void m30580o() {
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362843);
        this.f22511t = new ImageView(getApplicationContext());
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131166079);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
        layoutParams.addRule(16, 2131362772);
        layoutParams.addRule(2, 2131362117);
        this.f22511t.setLayoutParams(layoutParams);
        viewGroup.addView(this.f22511t, 0);
        this.f22511t.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$vLLbZL4rXN62KnxS_TqkM8lm_zU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactsListActivity.this.m30644a(view);
            }
        });
    }

    /* renamed from: p */
    private boolean m30578p() {
        if (this.f22486Q || PhoneManager.get().isDefaultSystemPhoneApp() || Activities.m27641e()) {
            return false;
        }
        this.f22486Q = true;
        DrawOverAppsRequestDialog drawOverAppsRequestDialog = new DrawOverAppsRequestDialog(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$NsbSh_T9h9hJsdBXLfEOH6kxOXQ
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                ContactsListActivity.this.m30649a(activity);
            }
        }) { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.14
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                super.onDialogDismissed(dialogInterface);
                ContactsListActivity.this.f22486Q = false;
            }
        };
        drawOverAppsRequestDialog.setCancelable(false);
        PopupManager.get().m28209a(this, drawOverAppsRequestDialog);
        return true;
    }

    /* renamed from: q */
    private boolean m30576q() {
        if (Activities.m27650c((Activity) this)) {
            this.f22470A = true;
            return true;
        }
        return false;
    }

    /* renamed from: r */
    private void m30574r() {
        Intent intent = new Intent(this, SetupWizardActivity.class);
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        Activities.m27685a(this, intent);
        finish();
    }

    /* renamed from: s */
    public boolean m30572s() {
        return Prefs.f26663t.get().booleanValue() && isTabsVisible() && getState() != ContentState.CALL_LOG_FIRST_EXPERIENCE;
    }

    private void setMultiSelectBarTitle(String str) {
        this.f22513v.setActionModeText(str);
    }

    public void setSlideMenuLockState(boolean z) {
        DrawerLayout drawerLayout = this.f22497d;
        if (drawerLayout != null) {
            if (z) {
                drawerLayout.setDrawerLockMode(1, 8388611);
            } else {
                drawerLayout.setDrawerLockMode(0, 8388611);
            }
        }
    }

    public void setState(ContentState contentState) {
        m30642a(contentState, false);
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
            if (r0 != r1) goto L1f
            r0 = 1
            r10 = r0
            goto L22
        L1f:
            r0 = 0
            r10 = r0
        L22:
            r0 = r9
            r1 = r4
            com.google.android.material.tabs.TabLayout r1 = r1.f22509q
            java.util.ArrayList<com.google.android.material.tabs.TabLayout$f> r1 = r1.f53904a
            int r1 = r1.size()
            if (r0 >= r1) goto L9c
            r0 = r10
            if (r0 == 0) goto L4d
            r0 = r9
            r1 = r5
            if (r0 != r1) goto L42
        L3c:
            r0 = r6
            r11 = r0
            goto L5e
        L42:
            r0 = 2131099890(0x7f0600f2, float:1.7812146E38)
            int r0 = com.callapp.contacts.util.ThemeUtils.getColor(r0)
            r11 = r0
            goto L5e
        L4d:
            r0 = r9
            r1 = r5
            if (r0 != r1) goto L56
            goto L3c
        L56:
            r0 = 2131099786(0x7f06008a, float:1.7811935E38)
            int r0 = com.callapp.contacts.util.ThemeUtils.getColor(r0)
            r11 = r0
        L5e:
            r0 = r4
            com.google.android.material.tabs.TabLayout r0 = r0.f22509q
            r1 = r9
            com.google.android.material.tabs.TabLayout$f r0 = r0.m10143a(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L96
            r0 = r8
            android.view.View r0 = r0.f53961f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L96
            r0 = r8
            r1 = 2131364051(0x7f0a08d3, float:1.8347928E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L96
            r0 = r8
            r1 = r11
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.SRC_IN
            r0.setColorFilter(r1, r2)
        L96:
            int r9 = r9 + 1
            goto L22
        L9c:
            r0 = r4
            com.callapp.contacts.widget.PagingTogglableViewPager r0 = r0.f22510s
            r1 = r5
            r2 = 1
            r0.setCurrentItem(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.ContactsListActivity.setupContentContainer(int):void");
    }

    /* renamed from: t */
    public void m30570t() {
        this.f22481L.m29046a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f25150d, (EventType<ResumeListener, Object>) null, false);
        if (this.f22480K) {
            this.f22480K = false;
            if (this.f22513v != null) {
                m30608c(true);
                this.f22513v.m28732a(false);
            }
        }
        if (m30560y()) {
            m30566v();
        }
        if (AdUtils.m27264b()) {
            m30568u();
        }
        IdentifyContactsDialog.m30238b(this);
        if (!RecorderTestManager.get().isRecorderTestRunning() && !isFromRecorderTest()) {
            RecorderTestManager.get().setInRecorderTestMode(false);
        } else if (!RecorderTestManager.get().isInRecorderTestMode() || RecorderTestManager.get().isRecorderTestRunning()) {
        } else {
            this.f22474E.m30542a(UiEvent.ON_DIALER_PRESSED, false);
        }
    }

    /* renamed from: u */
    private void m30568u() {
        this.f22494Y = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26177a() {
                CatalogManager.get().m29979a(ContactsListActivity.this.f22494Y, new ArrayList()).m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1
                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        JSONStoreItemPremiumAppItem m29944a;
                        CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                        String priceWithCurrency = (catalogAttributes2 == null || (m29944a = StoreUtils.m29944a(catalogAttributes2.f23578a, true)) == null || !StringUtils.m26045b((CharSequence) m29944a.getPriceWithCurrency())) ? null : m29944a.getPriceWithCurrency();
                        String str = priceWithCurrency;
                        if (StringUtils.m26059a((CharSequence) priceWithCurrency)) {
                            str = "$1 USD";
                        }
                        String m27697a = Activities.m27697a(2131886373, str);
                        SpannableString spannableString = new SpannableString(Activities.getString(2131886374));
                        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                        int indexOf = m27697a.indexOf(str);
                        int indexOf2 = m27697a.indexOf(str.length() + indexOf);
                        SpannableString spannableString2 = new SpannableString(m27697a);
                        if (indexOf != -1) {
                            spannableString2.setSpan(new StyleSpan(1), indexOf, str.length() + indexOf, 33);
                        }
                        if (indexOf2 != -1) {
                            spannableString2.setSpan(new RelativeSizeSpan(0.7f), indexOf2, indexOf2 + 3, 33);
                        }
                        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131232138, (CharSequence) spannableString, (CharSequence) spannableString2, Activities.getString(2131886372), true, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1.1
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                                Prefs.f26411dc.set(Boolean.TRUE);
                                AnalyticsManager.get().m28450a(Constants.PREMIUM_POPUP, "Buy");
                                Intent intent = new Intent(activity, PlanPageActivity.class);
                                intent.putExtra("PLAN_PAGE_SOURCE", "premiumDialogPopUp");
                                Activities.m27656b(activity, intent);
                            }
                        }, Activities.getString(2131886371), ThemeUtils.m27386a(ContactsListActivity.this, 2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1.2
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                            }
                        });
                        dialogMessageWithTopImage.setDialogCustomListener(new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.23.1.3
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            /* renamed from: a */
                            public final void mo26209a(DialogPopup dialogPopup) {
                                AnalyticsManager.get().m28450a(Constants.PREMIUM_POPUP, "Dismiss");
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                            /* renamed from: b */
                            public final void mo26208b(DialogPopup dialogPopup) {
                            }

                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                            public void onShow(DialogInterface dialogInterface) {
                                AnalyticsManager.get().m28450a(Constants.PREMIUM_POPUP, "Show");
                                Prefs.f26412dd.m28170a(3);
                            }
                        });
                        PopupManager.get().m28209a(ContactsListActivity.this, dialogMessageWithTopImage);
                    }
                });
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public /* synthetic */ void mo26175a(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: b */
            public /* synthetic */ void mo26174b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        });
    }

    /* renamed from: v */
    public void m30566v() {
        View m30594f = m30594f(true);
        if (m30594f != null) {
            ViewGroup viewGroup = (ViewGroup) m30594f.findViewById(2131363875);
            ViewUtils.m27320a(viewGroup, ViewUtils.getDrawable(2131232165));
            CallappAnimationUtils.m27175b(viewGroup);
        }
    }

    /* renamed from: w */
    private boolean m30564w() {
        return (f22469r == ContentState.CONTACTS_NONE || f22469r == ContentState.CALL_LOG) && !isKeypadOpenedOrOpening();
    }

    /* renamed from: x */
    public void m30562x() {
        ImageView imageView = this.f22511t;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    /* renamed from: y */
    public static boolean m30560y() {
        if (f22469r == ContentState.CALL_LOG_FIRST_EXPERIENCE || f22469r == ContentState.CALL_LOG || f22469r == ContentState.CALL_LOG_MULTI_SELECT) {
            return false;
        }
        FirstTimeExperienceCallLog.get();
        return FirstTimeExperienceCallLog.m31328c();
    }

    /* renamed from: z */
    private void m30558z() {
        DrawerLayout drawerLayout = this.f22497d;
        if (drawerLayout != null) {
            drawerLayout.m43870a();
        }
    }

    @Override // com.callapp.contacts.activity.calllog.CallLogFragment.ShowKeypadPromotionListener
    /* renamed from: a */
    public final void mo30651a() {
        KeypadBannerViewController keypadBannerViewController = new KeypadBannerViewController(this, (ViewGroup) findViewById(2131362890));
        this.f22482M = keypadBannerViewController;
        if (keypadBannerViewController != null) {
            keypadBannerViewController.setListener(this);
            final KeypadBannerViewController keypadBannerViewController2 = this.f22482M;
            keypadBannerViewController2.f23393b.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadBannerViewController.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (view == null || view.getId() == 2131362076 || view.getId() == 2131363149 || view.getId() == 2131363147 || view.getId() == 2131363030 || view.getId() == 2131362521 || view.getId() == 2131363154 || view.getId() == 2131363153) {
                        return false;
                    }
                    keypadBannerViewController2.f23392a.callOnClick();
                    return false;
                }
            });
            this.f22482M.mo26534b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    /* renamed from: a */
    public final void mo30518a(int i) {
        synchronized (f22468a) {
            this.f22503k.add(Integer.valueOf(i));
            for (int i2 = 0; i2 < 2; i2++) {
                if (!this.f22503k.contains(Integer.valueOf(i2))) {
                    m30601e(i2);
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectChangeListener
    /* renamed from: a */
    public final void mo30205a(int i, int i2) {
        setMultiSelectBarTitle(Activities.m27697a(i2, Integer.valueOf(i)));
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadParamsChanged
    /* renamed from: a */
    public final void mo30209a(KeypadLayoutChanges keypadLayoutChanges) {
        this.f22502j.add(keypadLayoutChanges);
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    /* renamed from: a */
    public final void mo30089a(DownloaderCardViewHandler.StoreItemType storeItemType) {
        Intent intent;
        switch (C650737.f22581e[storeItemType.ordinal()]) {
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
    /* renamed from: a */
    public final void mo26585a(boolean z) {
        if (z) {
            AnalyticsManager.get().m28450a("Menu", "ClickMenuModeButtonToLight");
        } else {
            AnalyticsManager.get().m28450a("Menu", "ClickMenuModeButtonToDark");
        }
    }

    /* renamed from: b */
    public final void m30625b() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$PONjvP7NMdppnbSbu0X1cuqbjW4
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.m30665D();
            }
        });
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    /* renamed from: b */
    public final void mo26584b(int i) {
        Uri uri;
        switch (i) {
            case 1:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open Call Reminders from slide menu", Constants.CLICK);
                CallReminderActivity.m31291a(this);
                return;
            case 2:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open Birthday from slide menu", Constants.CLICK);
                BirthdaysActivity.m31458a(this);
                return;
            case 3:
            case 13:
            default:
                return;
            case 4:
                ShareCallAppDialogFragment.m26304a(null, 1, "ref").mo19242a(getSupportFragmentManager(), ShareCallAppDialogFragment.getTAG());
                return;
            case 5:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open Rate Us from slide menu", Constants.CLICK);
                Activities.m27656b(this, AppRater.getRateIntent$7ec49240());
                return;
            case 6:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open New in this version from slide menu", Constants.CLICK);
                PopupManager.get().m28209a(this, new WhatsNewPopup());
                Prefs.f26473el.set(Boolean.FALSE);
                return;
            case 7:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open Help from slide menu", Constants.CLICK);
                Activities.m27655b(this, Activities.m27697a(2131886967, HttpUtils.getCallAppDomain()));
                return;
            case 8:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open Feedback from slide menu", Constants.CLICK);
                if (!HttpUtils.m26985a()) {
                    FeedbackManager.m28675a(this);
                    return;
                }
                String m28703a = CallAppRemoteConfigManager.get().m28703a("feedbackUrl");
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(m28703a));
                if (Activities.m27672a(intent)) {
                    Activities.m27656b(this, intent);
                    return;
                } else {
                    Activities.m27646c(this, m28703a);
                    return;
                }
            case 9:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open Contact us from slide menu", Constants.CLICK);
                String string = Activities.getString(Prefs.f26339cJ.get().booleanValue() ? 2131886901 : 2131886900);
                String m27697a = Activities.m27697a(2131886904, CallAppApplication.get().getVersion());
                try {
                    File file = new File(IoUtils.getCacheFolder(), "callapp_device_info.txt");
                    FileWriter fileWriter = new FileWriter(file);
                    fileWriter.write(Activities.getDeviceDataString());
                    fileWriter.close();
                    StringBuilder sb = new StringBuilder();
                    sb.append(getApplicationContext().getPackageName());
                    sb.append(".fileprovider");
                    uri = IoUtils.m27518a(this, file);
                } catch (Exception e) {
                    CLog.m27608a(ContactsListActivity.class, e, "unable to write file: " + e.getMessage());
                    uri = null;
                }
                Activities.m27674a(this, new String[]{string}, m27697a, (String) null, uri);
                return;
            case 10:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open About from slide menu", Constants.CLICK);
                Activities.m27656b(this, new Intent(this, AboutActivity.class));
                return;
            case 11:
                Activities.m27656b(this, new Intent(this, ReferAndEarnActivity.class));
                AnalyticsManager.get().m28450a(Constants.REFER_AND_EARN, "ClickInviteReferEarn");
                return;
            case 12:
                AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open upgrade to professional from slide menu", Constants.CLICK);
                Intent intent2 = new Intent(this, PlanPageActivity.class);
                intent2.putExtra("PLAN_PAGE_SOURCE", "goPremiumSlideMenu");
                Activities.m27656b(this, intent2);
                return;
            case 14:
                AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ClickMenuViewProfile");
                Activities.m27656b(this, new Intent(this, WhoViewedMyProfileActivity.class));
                return;
            case 15:
                BackupUtils.m29297a("menu");
                return;
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadParamsChanged
    /* renamed from: b */
    public final void mo30208b(KeypadLayoutChanges keypadLayoutChanges) {
        this.f22502j.remove(keypadLayoutChanges);
    }

    /* renamed from: c */
    public final void m30616c() {
        int i;
        int i2;
        String str;
        int i3;
        int i4;
        if (!this.f22496c || !m30564w() || this.f22495b != null) {
            return;
        }
        PusherManager.PusherStates pusherStateByRules = PusherManager.getPusherStateByRules();
        int i5 = C650737.f22578b[pusherStateByRules.ordinal()];
        if (i5 != 1) {
            if (i5 == 2) {
                str = "huawei protected apps";
            } else if (i5 != 3) {
                str = null;
                i2 = 0;
                i4 = 0;
                i = i4;
                i3 = 2131887920;
            } else {
                str = "allow draw overlay";
            }
            i2 = 2131887477;
            i4 = 2131887475;
            i = i4;
            i3 = 2131887920;
        } else {
            str = "auto start permission";
            i2 = 2131887478;
            i = 2131887476;
            i3 = 2131887472;
        }
        if (i2 == 0) {
            return;
        }
        m30650a(i2, i, i3, str, pusherStateByRules);
    }

    /* renamed from: c */
    public final void m30615c(int i) {
        ViewGroup viewGroup = this.f22500g;
        if (viewGroup != null) {
            viewGroup.setVisibility(i);
        }
    }

    /* renamed from: d */
    public final void m30607d() {
        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.29
            @Override // java.lang.Runnable
            public void run() {
                ContactsListActivity.this.f22474E.m30542a(UiEvent.ON_RESET_SEARCH_AFTER_DELAY, false);
            }
        }, 1000L);
    }

    @Override // com.callapp.contacts.activity.contact.list.search.ContactsClickEvents
    /* renamed from: d */
    public final void mo30422d(int i) {
        if (i != 0) {
            if (i != 1) {
                return;
            }
            m30607d();
            return;
        }
        m30607d();
        boolean isKeypadOpenedOrOpening = isKeypadOpenedOrOpening();
        boolean isUserEnteredSomeOfTheTextInKeypad = isUserEnteredSomeOfTheTextInKeypad();
        if (isKeypadOpenedOrOpening && isUserEnteredSomeOfTheTextInKeypad) {
            AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from contact list");
        }
        if (!this.f22513v.isInSearchMode()) {
            return;
        }
        this.f22480K = true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        PagingTogglableViewPager pagingTogglableViewPager;
        PagingTogglableViewPager pagingTogglableViewPager2;
        LinearLayout linearLayout = (LinearLayout) findViewById(2131362790);
        if (motionEvent.getAction() == 0) {
            m30592g(true);
            View firstTimeExperienceCallLogRootContainer = FirstTimeExperienceCallLog.get().getFirstTimeExperienceCallLogRootContainer();
            if (f22469r == ContentState.CALL_LOG_FIRST_EXPERIENCE && firstTimeExperienceCallLogRootContainer != null && !ViewUtils.m27328a(firstTimeExperienceCallLogRootContainer, motionEvent.getX(), motionEvent.getY())) {
                return true;
            }
            if (linearLayout != null && ViewUtils.m27328a(linearLayout, motionEvent.getRawX(), motionEvent.getRawY()) && (pagingTogglableViewPager2 = this.f22510s) != null) {
                pagingTogglableViewPager2.setPagingEnabled(false);
            }
        }
        if (motionEvent.getAction() == 1 && (pagingTogglableViewPager = this.f22510s) != null) {
            pagingTogglableViewPager.setPagingEnabled(m30572s());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.marketplace.KeypadBannerViewController.Listener
    /* renamed from: e */
    public final void mo30101e() {
        if (this.f22482M != null) {
            ((ViewGroup) findViewById(2131362890)).removeView(this.f22482M.getRootView());
            Activities.m27685a(this, new Intent(this, MarketPlaceActivity.class));
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.KeypadBannerViewController.Listener
    /* renamed from: f */
    public final void mo30100f() {
        ((ViewGroup) findViewById(2131362890)).removeView(this.f22482M.getRootView());
        this.f22482M.setListener(null);
        this.f22482M = null;
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    /* renamed from: g */
    public final void mo30069g() {
        Prefs.f26347cR.set(Boolean.FALSE);
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
        return this.f22478I;
    }

    @Override // com.callapp.contacts.activity.contact.list.ViewPagerManager
    public int getCurrentPage() {
        return this.f22510s.getCurrentItem();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558446;
    }

    public ContentState getState() {
        int i = C650737.f22577a[f22469r.ordinal()];
        return (i == 1 || i == 2) ? isKeypadOpenedOrOpening() ? ContentState.DIALER : ContentState.CONTACTS_NONE : f22469r;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        return ThemeUtils.m27386a(this, ThemeUtils.isThemeLight() ? 2131099784 : 2131099686);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment.StoreItemAssetManagerProvider
    public StoreItemAssetManager getStoreItemAssetManager() {
        return this.f22514w;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment.OnScrollListener
    public SuperSkinWizardScrollListener getSuperSkinWizardScrollListener() {
        return this.f22515x;
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    /* renamed from: h */
    public final void mo26583h() {
        mo26581j();
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    /* renamed from: i */
    public final void mo26582i() {
        AnalyticsManager.get().m28450a("Menu", "ClickMenuOrangeStoreButton");
        Activities.m27656b(this, new Intent(this, MarketPlaceActivity.class));
    }

    public boolean isTabsVisible() {
        return this.f22509q.getVisibility() == 0;
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    /* renamed from: j */
    public final void mo26581j() {
        if (!this.f22483N) {
            this.f22483N = true;
            startActivityForResult(new Intent(this, EditUserProfileActivity.class), 7000);
        }
    }

    @Override // com.callapp.contacts.widget.SlideMenuAdapter.SlideMenuEvents
    /* renamed from: k */
    public final void mo26580k() {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open Settings from slide menu", Constants.CLICK);
        Activities.m27643d(this);
    }

    /* renamed from: l */
    public final void m30585l() {
        boolean z;
        this.f22476G = false;
        if (CallAppRemoteConfigManager.get().m28698c("UpdatedFromPlayEnabled") && StringUtils.m26044b((Object) Activities.getString(2131887752), (Object) Constants.GOOGLE_PLAY_STORE_NAME)) {
            if (Prefs.f26560gS.get().intValue() % CallAppRemoteConfigManager.get().m28699b("UpdatedFromPlayIntervals") == 0) {
                UpdateManager.m30521a(this);
            } else {
                Prefs.f26560gS.m28169b(1);
            }
        }
        if (!m30578p()) {
            if (!Prefs.f26460eY.get().booleanValue()) {
                if (Build.VERSION.SDK_INT < 23 || !Prefs.f26214R.isNotNull() || Prefs.f26214R.get().intValue() >= Prefs.f26216T.get().intValue() || !Prefs.f26448eM.get().booleanValue()) {
                    z = false;
                } else {
                    CallRecordingUpdateDialog callRecordingUpdateDialog = null;
                    if (CallRecorderManager.get().isTermsAccepted()) {
                        PermissionManager.get();
                        callRecordingUpdateDialog = null;
                        if (PermissionManager.m28253a("android.permission.RECORD_AUDIO")) {
                            callRecordingUpdateDialog = null;
                            if (!PhoneManager.get().isDefaultPhoneApp()) {
                                callRecordingUpdateDialog = new CallRecordingUpdateDialog();
                            }
                        }
                    }
                    if (callRecordingUpdateDialog != null) {
                        callRecordingUpdateDialog.setCancelable(false);
                        PopupManager.get().m28209a(this, callRecordingUpdateDialog);
                        z = true;
                    } else {
                        z = false;
                    }
                    Prefs.f26448eM.set(Boolean.FALSE);
                }
                if (!z && Prefs.f26612hR.get().booleanValue()) {
                    BackupUtils.m29297a("");
                    Prefs.f26612hR.set(Boolean.FALSE);
                    z = true;
                }
                if (!z || Prefs.f26344cO.get().intValue() <= 0 || !Prefs.f26347cR.get().booleanValue()) {
                    return;
                }
                FreeStoreItemDialog freeStoreItemDialog = new FreeStoreItemDialog(this);
                freeStoreItemDialog.setCancelable(false);
                PopupManager.get().m28209a(this, freeStoreItemDialog);
                return;
            }
            Prefs.f26460eY.set(Boolean.FALSE);
            PopupManager.get().m28209a(this, new AccessibilityServiceDialog(new PopupDoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.32
                @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                public void popupDone(boolean z2) {
                }
            }));
        }
        z = true;
        if (!z) {
            BackupUtils.m29297a("");
            Prefs.f26612hR.set(Boolean.FALSE);
            z = true;
        }
        if (!z) {
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.ContactScrollEvent
    /* renamed from: m */
    public final void mo30222m() {
        this.f22474E.m30542a(UiEvent.ON_LIST_SCROLLED, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (SocialNetworksSearchUtil.m29233a(i, i2, intent)) {
            return;
        }
        if (i == 15000 && i2 == -1111111) {
            finish();
            System.exit(0);
        } else if (i == 555) {
            if (i2 == -1) {
                AnalyticsManager.get().m28449a(Constants.UPGRADE_VERSION, "ClickOKUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            } else if (i2 == 0) {
                AnalyticsManager.get().m28449a(Constants.UPGRADE_VERSION, "ClickCancelUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            } else if (i2 == 1) {
                AnalyticsManager.get().m28449a(Constants.UPGRADE_VERSION, "FailUpgradePopup", String.valueOf(CallAppApplication.get().getVersionCode()));
            }
        } else if (i == 5000 || i == 6000) {
            if (i2 != -1) {
                return;
            }
            this.f22505m = 6000;
            this.f22504l = true;
            this.f22506n = intent;
        } else if (i != 7000) {
            if (i != 12345 || i2 != -1) {
                return;
            }
            recreate();
            overridePendingTransition(17432576, 17432577);
        } else {
            this.f22483N = false;
            if (i2 != -1) {
                return;
            }
            List<ContactField> m27627a = AndroidUtils.FieldsChangedHandler.m27627a(ContactField.class, intent);
            SlideMenuFragment slideMenuFragment = getSlideMenuFragment();
            if (!CollectionUtils.m26068b(m27627a)) {
                return;
            }
            for (ContactField contactField : m27627a) {
                int i3 = C650737.f22579c[contactField.ordinal()];
                if (i3 != 1) {
                    if (i3 == 2 && slideMenuFragment != null) {
                        slideMenuFragment.f29000a.m26604a((String) null);
                    }
                } else if (slideMenuFragment != null) {
                    slideMenuFragment.f29000a.m26603b();
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!RecorderTestManager.get().isRecorderTestRunning() && RecorderTestManager.get().isInRecorderTestMode() && !isKeypadOpenedOrOpening()) {
            CallRecordsActivity.m29758a((Context) this);
            RecorderTestManager.get().setInRecorderTestMode(false);
            super.onBackPressed();
        } else if (f22469r == ContentState.CALL_LOG_FIRST_EXPERIENCE) {
            FirstTimeExperienceCallLog.get().m31326e();
        } else if (isSlideMenuOpen()) {
            m30558z();
        } else if (m30600e(getState())) {
            m30590h(false);
            setState(m30605d(getState()));
        } else if (isKeypadOpenedOrOpening()) {
            this.f22474E.m30542a(UiEvent.ON_BACK_PRESSED_KEYPAD_OPEN, false);
        } else if (!this.f22488S || !this.f22513v.isInSearchMode()) {
            if (m30613c(getState()) == ContentState.CALL_LOG) {
                Prefs.f26409da.set(new Date());
                EventBusManager.f25138a.m29043c(CallLogLastSeenTimestampEventListener.f23110c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
            }
            super.onBackPressed();
        } else if (!StringUtils.m26045b((CharSequence) this.f22513v.getCurrentSearchText())) {
            m30608c(false);
        } else {
            this.f22513v.m28736a();
            m30627a("", false, true, false);
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onCloseKeypadRequestedByUser(boolean z) {
        if (!z) {
            this.f22474E.m30542a(UiEvent.ON_KEYPAD_CLOSE_PRESSED, false);
            return;
        }
        m30618b(this.f22478I);
        this.f22513v.f25598c.f28615b.requestFocus();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        getWindow().setSoftInputMode(35);
        if (bundle != null) {
            bundle.remove("android:support:fragments");
            bundle.remove("android:fragments");
        }
        super.onCreate(bundle);
        this.f22484O = getLastCustomNonConfigurationInstance() != null;
        if (SetupWizardActivity.m29518a()) {
            m30574r();
        } else if (SetupWizardProfileActivity.m29470d()) {
            m30574r();
        } else {
            this.f22507o.m30921c(this.f22491V);
            new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.11
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    CheckQuotaLimitation.m26909a(false);
                }
            }.execute();
            final RetentionAnalytics retentionAnalytics = RetentionAnalytics.get();
            if (Prefs.f26319bq.get() != null) {
                new Task() { // from class: com.callapp.contacts.activity.contact.list.RetentionAnalytics.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        Date date = new Date();
                        long m27124a = DateUtils.m27124a(Prefs.f26319bq.get(), date, TimeUnit.DAYS);
                        if (DateUtils.m27124a(Prefs.f26514fZ.get(), date, TimeUnit.HOURS) >= 24) {
                            AnalyticsManager.get().m28440b(Constants.RETENTION, "Store Abandonment", "");
                        }
                        if (m27124a >= 5) {
                            PermissionManager.get();
                            if (!PermissionManager.m28253a("android.permission.RECORD_AUDIO")) {
                                AnalyticsManager.get().m28440b(Constants.RETENTION, "InActive Call Recorder", "");
                            }
                        }
                        if (m27124a >= 7 && Prefs.f26442eG.get().intValue() >= 5) {
                            AnalyticsManager.get().m28440b(Constants.RETENTION, "Engaging User", "");
                        }
                        if (m27124a < 4 || !Activities.isNotificationListenerServiceSupportedOnDevice() || Activities.m27661b()) {
                            return;
                        }
                        AnalyticsManager.get().m28440b(Constants.RETENTION, "Never Activated CallApp+", "");
                    }
                }.execute();
            }
            setTitle(Activities.getString(2131886654));
            boolean z = bundle != null;
            DrawerLayout drawerLayout = (DrawerLayout) findViewById(2131362639);
            this.f22497d = drawerLayout;
            drawerLayout.m43861a(new DrawerLayout.AbstractC0989d() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.12

                /* renamed from: b */
                private int f22521b = 0;

                @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0989d, androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
                /* renamed from: a */
                public final void mo30555a() {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Slide menu opened", Constants.SLIDE_MENU);
                    ContactsListActivity.this.f22474E.m30542a(UiEvent.ON_SLIDE_MENU_OPEN, false);
                    ContactsListActivity.this.m30625b();
                    this.f22521b = 2;
                }

                @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0989d, androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
                /* renamed from: a */
                public final void mo30554a(float f) {
                    if (f > this.f22521b) {
                        this.f22521b = 1;
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnSlideMenuOpenedListener, Boolean>>) OnSlideMenuOpenedListener.f23129a, (EventType<OnSlideMenuOpenedListener, Boolean>) Boolean.TRUE, false);
                        ContactsListActivity.this.m30625b();
                    }
                }

                @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0989d, androidx.drawerlayout.widget.DrawerLayout.AbstractC0988c
                /* renamed from: b */
                public final void mo30553b() {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Slide menu closed", Constants.SLIDE_MENU);
                    ContactsListActivity.this.m30616c();
                    this.f22521b = 0;
                    SlideMenuFragment slideMenuFragment = ContactsListActivity.this.getSlideMenuFragment();
                    if (slideMenuFragment == null || slideMenuFragment.f29001b == null) {
                        return;
                    }
                    slideMenuFragment.f29001b.m40464b(0);
                }
            });
            ViewUtils.m27286h(findViewById(2131363899), Activities.getScreenWidth(Activities.getScreenOrientation()) - ((int) CallAppApplication.get().getResources().getDimension(2131166067)));
            getSupportFragmentManager().m43765a().m43535b(2131363899, SlideMenuFragment.m26558a(this.f22498e.getDrawerItems(), this, z), "slide_menu_frag").mo43532c();
            CallAppToolbar callAppToolbar = (CallAppToolbar) findViewById(2131362201);
            this.f22485P = callAppToolbar;
            this.f22513v = new CallAppBarManager(this, this.f22497d, callAppToolbar, new CallAppBarManager.CallAppBarEvents() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.13
                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                /* renamed from: a */
                public final void mo28722a() {
                    ContactsListActivity.this.f22509q.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    ContactsListActivity.this.f22509q.setVisibility(0);
                    ContactsListActivity.this.f22510s.setPagingEnabled(ContactsListActivity.this.m30572s());
                    ContactsListActivity.m30619b(ContactsListActivity.this, false);
                    SearchContactsFragment searchContactsFragment = (SearchContactsFragment) ContactsListActivity.this.getSupportFragmentManager().m43740a("SEARCH_BAR_TAG");
                    if (searchContactsFragment != null) {
                        ContactsListActivity.this.getSupportFragmentManager().m43765a().mo43539a(searchContactsFragment).mo43532c();
                        ContactsListActivity.this.setSlideMenuLockState(false);
                    }
                    ContactsListActivity.this.f22496c = true;
                    ContactsListActivity contactsListActivity = ContactsListActivity.this;
                    contactsListActivity.m30601e(contactsListActivity.f22510s.getCurrentItem());
                    ContactsListActivity.this.m30627a("", false, false, false);
                    ContactsListActivity.this.m30615c(8);
                    if (ContactsListActivity.m30600e(ContactsListActivity.this.getState())) {
                        ContactsListActivity.this.m30590h(false);
                        ContactsListActivity contactsListActivity2 = ContactsListActivity.this;
                        contactsListActivity2.setState(ContactsListActivity.m30605d(contactsListActivity2.getState()));
                    }
                    ContactsListActivity.this.getBottomBarPresenter().m30799c();
                    if (ContactsListActivity.this.f22516y != null) {
                        ContactsListActivity.this.f22516y.m26214d();
                    }
                    ContactsListActivity.m30670A(ContactsListActivity.this);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                /* renamed from: a */
                public final void mo28721a(String str) {
                    ContactsListActivity.this.m30627a(str, false, true, false);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                /* renamed from: b */
                public final void mo28720b() {
                    ContactsListActivity.this.m30602d(true);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                /* renamed from: b */
                public final void mo28719b(String str) {
                    ContactsListActivity.this.m30627a(str, false, false, false);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                /* renamed from: c */
                public final void mo28718c() {
                    ContactsListActivity contactsListActivity = ContactsListActivity.this;
                    MoreDialogManager.m30529a(contactsListActivity, contactsListActivity.f22510s.getCurrentItem(), new MoreDialogManager.OnMoreDialogItemClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.13.1
                        @Override // com.callapp.contacts.activity.contact.list.MoreDialogManager.OnMoreDialogItemClickListener
                        /* renamed from: a */
                        public final void mo30527a() {
                            ContactsListActivity.this.setState(ContentState.CONTACTS_NONE_MULTI_SELECT);
                        }

                        @Override // com.callapp.contacts.activity.contact.list.MoreDialogManager.OnMoreDialogItemClickListener
                        /* renamed from: b */
                        public final void mo30526b() {
                            ContactsListActivity.this.setState(ContentState.CALL_LOG_MULTI_SELECT);
                        }

                        @Override // com.callapp.contacts.activity.contact.list.MoreDialogManager.OnMoreDialogItemClickListener
                        /* renamed from: c */
                        public final void mo30525c() {
                            CallLogFragment callLogFragment = (CallLogFragment) ContactsListActivity.this.getFragmentByPosition(0);
                            if (callLogFragment != null) {
                                callLogFragment.m31367a();
                            }
                        }
                    });
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                /* renamed from: d */
                public final void mo28717d() {
                    Activities.m27695a(ContactsListActivity.this, 5000);
                }

                @Override // com.callapp.contacts.manager.CallAppBarManager.CallAppBarEvents
                /* renamed from: e */
                public final void mo28716e() {
                    Intent intent = new Intent(ContactsListActivity.this, PlanPageActivity.class);
                    intent.putExtra("PLAN_PAGE_SOURCE", "topBar");
                    Activities.m27656b(ContactsListActivity.this, intent);
                }
            });
            FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131362772);
            this.f22473D = floatingActionButton;
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.m27386a(this, 2131099784)));
            this.f22473D.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.24
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(ContactsListActivity.this.f22473D, 1);
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "FAB action performed", ContactsListActivity.this.getState().toString());
                    ContactsListActivity.this.f22474E.m30542a(UiEvent.ON_DIALER_PRESSED, false);
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
            if (FirstTimeExperienceCallLog.m31327d()) {
                FirstTimeExperienceCallLog firstTimeExperienceCallLog = FirstTimeExperienceCallLog.get();
                FirstTimeExperienceCallLogListener firstTimeExperienceCallLogListener = new FirstTimeExperienceCallLogListener(this);
                if (firstTimeExperienceCallLog.f20746a == null) {
                    firstTimeExperienceCallLog.f20746a = new ArrayList();
                }
                firstTimeExperienceCallLog.f20746a.add(firstTimeExperienceCallLogListener);
            }
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(0, callLogFragment2);
            arrayList.add(1, contactsFragment2);
            this.f22508p = new TabsAdapter(getSupportFragmentManager(), arrayList);
            this.f22510s = (PagingTogglableViewPager) findViewById(2131364054);
            ViewGroup viewGroup = (ViewGroup) findViewById(2131363757);
            this.f22500g = viewGroup;
            viewGroup.setBackgroundColor(ThemeUtils.getColor(2131099686));
            m30615c(8);
            this.f22510s.setPagingEnabled(Prefs.f26663t.get().booleanValue());
            this.f22510s.setOffscreenPageLimit(arrayList.size());
            this.f22510s.setAdapter(this.f22508p);
            TabLayout tabLayout = (TabLayout) findViewById(2131364052);
            this.f22509q = tabLayout;
            tabLayout.setupWithViewPager(this.f22510s);
            m30626a(arrayList);
            this.f22509q.setBackgroundColor(ThemeUtils.getColor(2131099943));
            this.f22515x = new SuperSkinWizardScrollListener();
            StoreItemAssetManager.Builder m28415a = new StoreItemAssetManager.Builder().m28413b(Prefs.f26405dW, new AssetListenerMapper(new C65139())).m28415a(Prefs.f26404dV, new AssetListenerMapper(new C65128()));
            if (Prefs.f26395dM.isNotNull()) {
                m28415a.m28409d(Prefs.f26406dX, new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$03RmOv9BrPl1D9_e4KDh7l5XZVg
                    @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
                    public final void onAssetReady(Object obj, String str) {
                        ContactsListActivity.this.m30629a((String) obj, str);
                    }
                });
            } else {
                m28415a.m28411c(Prefs.f26406dX, new AssetListenerMapper(new C646010()));
            }
            StoreItemAssetManager m28417a = m28415a.m28417a();
            this.f22514w = m28417a;
            m28417a.getAssets();
            HashMap hashMap = new HashMap();
            this.f22472C = hashMap;
            hashMap.put("CONTACTS", ContentState.CONTACTS_NONE);
            this.f22472C.put("KEYBOARD", ContentState.CONTACTS_NONE);
            this.f22472C.put("KEYPAD", ContentState.CONTACTS_NONE);
            this.f22472C.put("CALL_LOG", ContentState.CALL_LOG);
            this.f22472C.put("FAVORITES", ContentState.FAVORITES);
            this.f22472C.put(ContentState.DIALER.name(), ContentState.DIALER);
            this.f22472C.put(ContentState.FAVORITES.name(), ContentState.FAVORITES);
            this.f22472C.put(ContentState.CALL_LOG.name(), ContentState.CALL_LOG);
            this.f22472C.put(ContentState.CONTACTS_NONE.name(), ContentState.CONTACTS_NONE);
            AppBarLayout appBarLayout = (AppBarLayout) findViewById(2131362020);
            this.f22499f = appBarLayout;
            appBarLayout.setBackgroundColor(ThemeUtils.getColor(2131099943));
            EventBusManager.f25138a.m29048a(CallEventListener.f23108b, this.f22492W);
            EventBusManager.f25138a.m29048a(CallLogFirstTimeExperienceEventListener.f23109b, this.f22493X);
            m30624b(getIntent());
            m30558z();
            this.f22509q.m10135a(new TabLayout.C14780h(this.f22510s) { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.5
                @Override // com.google.android.material.tabs.TabLayout.C14780h, com.google.android.material.tabs.TabLayout.AbstractC14772b
                /* renamed from: a */
                public final void mo10080a(TabLayout.C14778f c14778f) {
                    int intValue = ((Integer) c14778f.f53956a).intValue();
                    ContactsListActivity contactsListActivity = ContactsListActivity.this;
                    contactsListActivity.setState(contactsListActivity.getStateByPageIndex(intValue));
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.m28449a(Constants.CONTACT_LIST, "Tab selected: " + ContactsListActivity.this.getState(), Constants.CLICK);
                }

                @Override // com.google.android.material.tabs.TabLayout.C14780h, com.google.android.material.tabs.TabLayout.AbstractC14772b
                /* renamed from: b */
                public final void mo10079b(TabLayout.C14778f c14778f) {
                    Fragment fragmentByPosition = ContactsListActivity.this.getFragmentByPosition(c14778f.f53960e);
                    if (fragmentByPosition instanceof DataFragmentsEvents) {
                        ((DataFragmentsEvents) fragmentByPosition).markAsViewed();
                    }
                }

                @Override // com.google.android.material.tabs.TabLayout.C14780h, com.google.android.material.tabs.TabLayout.AbstractC14772b
                /* renamed from: c */
                public final void mo10078c(TabLayout.C14778f c14778f) {
                    Fragment fragmentByPosition = ContactsListActivity.this.getFragmentByPosition(c14778f.f53960e);
                    if (fragmentByPosition instanceof DataFragmentsEvents) {
                        ((DataFragmentsEvents) fragmentByPosition).scrollToTop();
                    }
                }
            });
            this.f22510s.addOnPageChangeListener(new ViewPager.AbstractC2936e() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.6
                @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
                public void onPageScrollStateChanged(int i) {
                }

                @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
                public void onPageScrolled(int i, float f, int i2) {
                }

                @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
                public void onPageSelected(int i) {
                    Fragment item = ContactsListActivity.this.f22508p.getItem(i);
                    if (item instanceof DataFragmentsEvents) {
                        ViewUtils.m27309a(ContactsListActivity.this.f22499f, true);
                        DataFragmentsEvents dataFragmentsEvents = (DataFragmentsEvents) item;
                        dataFragmentsEvents.scrollToTop();
                        dataFragmentsEvents.markAsViewed();
                    }
                    if (i != 1 && ContactsListActivity.this.getContactsFragment() != null) {
                        ContactsFragment contactsFragment3 = ContactsListActivity.this.getContactsFragment();
                        if (contactsFragment3.f22459a != null) {
                            contactsFragment3.f22459a.setCancelled(true);
                        }
                    }
                    ContactListCollapsingBottomBarPresenter bottomBarPresenter = ContactsListActivity.this.getBottomBarPresenter();
                    if (bottomBarPresenter != null) {
                        bottomBarPresenter.mo30803a();
                    }
                }
            });
            if (Prefs.f26536fv.get().booleanValue() && Prefs.f26258ai.get() == null && Prefs.f26257ah.get() != null && DateUtils.m27118b(Prefs.f26257ah.get(), new Date(System.currentTimeMillis())) >= 1) {
                Prefs.f26536fv.set(Boolean.FALSE);
                AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Run in background", "show after 1 day");
                PowerUtils.m27429a(this, null);
            }
            PermissionManager.get();
            if (!PermissionManager.m28253a("android.permission.READ_SMS") && ((Prefs.f26283bG.get().intValue() == 0 && DateUtils.m27124a(Prefs.f26282bF.get(), new Date(), TimeUnit.DAYS) >= 4) || (Prefs.f26283bG.get().intValue() == 1 && DateUtils.m27124a(Prefs.f26282bF.get(), new Date(), TimeUnit.DAYS) >= 8))) {
                getPermissionManager().m28254a(this, _$$Lambda$ContactsListActivity$70XIPOyAMGMPPjarvJWhJ0CMh2s.INSTANCE, _$$Lambda$ContactsListActivity$a3Wu9gUmISynWi1KmNOFzqbsUAU.INSTANCE, PermissionManager.PermissionGroup.SMS);
                Prefs.f26283bG.m28170a(2);
                Prefs.f26282bF.set(new Date());
            }
            if (BillingManager.isBillingAvailable() && !Prefs.f26339cJ.get().booleanValue() && Prefs.f26235aL.get().booleanValue() && !Prefs.f26238aO.get().booleanValue() && DateUtils.m27124a(Prefs.f26236aM.get(), new Date(), TimeUnit.DAYS) == 8) {
                String string = Activities.getString(2131886477);
                String string2 = Activities.getString(2131886475);
                Prefs.f26238aO.set(Boolean.TRUE);
                PopupManager.get().m28209a(this, new DialogMessageWithTopImage(2131230890, 0, 2131230841, StringUtils.m26049a(string, new char[0]), 2131099784, string2, Activities.getString(2131886471), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.30
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        Intent intent = new Intent(ContactsListActivity.this, PlanPageActivity.class);
                        intent.putExtra("PLAN_PAGE_SOURCE", "callAppPlus");
                        Activities.m27656b(ContactsListActivity.this, intent);
                    }
                }, "", true, 2131100108, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.31
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        ContactsListActivity.this.finish();
                    }
                }));
            }
            if (getIntent().hasExtra("extra_default_phone_app_from_watch")) {
                m30671A();
            }
            CallAppRemoteConfigManager.get().setDefaultsIfNeeded(new Task.DoneListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.4
                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                public void onDone() {
                    ContactsListActivity.this.f22488S = true;
                    ContactsListActivity.m30593g(ContactsListActivity.this);
                    ContactsListActivity.m30591h(ContactsListActivity.this);
                    if (ContactsListActivity.this.f22490U) {
                        ContactsListActivity.this.f22490U = false;
                        ContactsListActivity contactsListActivity = ContactsListActivity.this;
                        contactsListActivity.m30646a(contactsListActivity.getIntent());
                    }
                    if (ContactsListActivity.this.f22489T) {
                        ContactsListActivity.this.f22489T = false;
                        ContactsListActivity.this.m30570t();
                    }
                }
            });
            if (!StringUtils.m26059a((CharSequence) Prefs.f26241aR.get()) && !StringUtils.m26044b((Object) Prefs.f26241aR.get(), (Object) JsonReaderKt.NULL) && !StringUtils.m26059a((CharSequence) Prefs.f26245aV.get()) && !StringUtils.m26044b((Object) Prefs.f26245aV.get(), (Object) JsonReaderKt.NULL)) {
                return;
            }
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.m28449a(Constants.REGISTRATION, "Empty callappid or token", Prefs.f26241aR.get() + "," + Prefs.f26245aV.get());
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f25138a.m29045b(CallEventListener.f23108b, this.f22492W);
        EventBusManager.f25138a.m29045b(CallLogFirstTimeExperienceEventListener.f23109b, this.f22493X);
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CONTACT_LIST_SCREEN);
        m30592g(false);
        CallAppBarManager callAppBarManager = this.f22513v;
        if (callAppBarManager != null) {
            CLog.m27606a("CallAppBarManager");
            if (callAppBarManager.f25599d != null) {
                callAppBarManager.f25599d.unRegisterFilteredEvents(callAppBarManager);
                callAppBarManager.f25599d = null;
            }
            callAppBarManager.f25597b = null;
        }
        this.f22481L.m29046a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f25148d, (EventType<DestroyListener, Object>) null, false);
        this.f22507o.m30928a();
        this.f22491V.onDestroy();
        if (this.f22516y != null) {
            getLifecycle().removeObserver(this.f22516y);
        }
        StoreItemAssetManager storeItemAssetManager = this.f22514w;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.m28418b();
        }
        TutorialViewController tutorialViewController = this.f22516y;
        if (tutorialViewController != null) {
            tutorialViewController.onDestroy();
        }
        BillingManager billingManager = this.f22494Y;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        SuperSkinWizardScrollListener superSkinWizardScrollListener = this.f22515x;
        if (superSkinWizardScrollListener != null) {
            if (superSkinWizardScrollListener.f23138a != null) {
                superSkinWizardScrollListener.f23138a.m27031b();
            }
            this.f22515x = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 82 || keyEvent.isLongPress()) {
            return super.onKeyUp(i, keyEvent);
        }
        Activities.m27643d(this);
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadFragment.KeypadEvents
    public void onKeypadStateChanged(KeypadFragment.KeypadState keypadState) {
        int i = C650737.f22580d[keypadState.ordinal()];
        if (i == 1) {
            this.f22474E.m30542a(UiEvent.ON_KEYPAD_OPENED, false);
        } else if (i != 2 || !isSearchState() || this.f22474E.getPrevEvent() == UiEvent.ON_BACK_PRESSED_SEARCH_OPEN) {
        } else {
            this.f22474E.m30542a(UiEvent.ON_KEYPAD_CLOSING, true);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (this.f22488S) {
            m30646a(intent);
        } else {
            this.f22490U = true;
        }
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onNumberChanged(String str, int i, int i2, int i3, boolean z) {
        if (z) {
            if (StringUtils.m26059a((CharSequence) str)) {
                this.f22513v.m28736a();
            }
            m30627a(str, i3 > 0 || i2 > 0, false, true);
        }
        if (StringUtils.m26045b((CharSequence) str)) {
            m30630a("Keypad numbers buttons clicked");
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f22481L.m29046a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f25149a, (EventType<PauseListener, Object>) null, false);
        if (this.f22470A) {
            this.f22470A = false;
            final Intent intent = new Intent(CallAppApplication.get(), getClass());
            intent.setAction("com.callapp.contacts/reexecuteIntent");
            intent.setFlags(65536);
            new Task() { // from class: com.callapp.contacts.activity.contact.list.ContactsListActivity.22
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    ContactsListActivity.this.finish();
                    Activities.m27685a(ContactsListActivity.this, intent);
                }
            }.schedule(DrawableConstants.CtaButton.WIDTH_DIPS);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        Intent intent;
        super.onPostResume();
        if (this.f22504l) {
            this.f22504l = false;
            int i = this.f22505m;
            if ((i != 5000 && i != 6000) || (intent = this.f22506n) == null) {
                return;
            }
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (!CollectionUtils.m26068b(stringArrayListExtra)) {
                return;
            }
            AnalyticsManager.get().m28450a(Constants.CONTACT_LIST, "Voice search successfully finished");
            this.f22471B = true;
            m30618b(stringArrayListExtra.get(0));
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.f22488S) {
            m30608c(true);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f22488S) {
            m30570t();
        } else {
            this.f22489T = true;
        }
    }

    @Override // androidx.activity.ComponentActivity
    public Object onRetainCustomNonConfigurationInstance() {
        return Boolean.TRUE;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        Prefs.f26355cZ.set(m30613c(getState()));
        super.onStop();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsListActivity$uwCcGDh5KriB2TY7hBV3CaTxfn4
            @Override // java.lang.Runnable
            public final void run() {
                ContactsListActivity.this.m30669B();
            }
        });
        super.onThemeChanged();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public void onUserLeaveHint() {
        if (m30613c(getState()) == ContentState.CALL_LOG) {
            Prefs.f26409da.set(new Date());
            EventBusManager.f25138a.m29043c(CallLogLastSeenTimestampEventListener.f23110c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
            EventBusManager.f25138a.m29043c(NotifyDataChangedListener.f23124b, DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1));
        }
        super.onUserLeaveHint();
    }

    @Override // com.callapp.contacts.activity.contact.list.keypad.KeypadView.KeypadSearchEvents
    public void onVoiceSearchRequested() {
        Activities.m27695a(this, 6000);
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void registerFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        this.f22479J = keypadVisibilityEvents;
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public void registerFilteredEvents(SearchContactsFilter searchContactsFilter) {
        this.f22501h.add(searchContactsFilter);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return !SetupWizardActivity.m29518a() && !SetupWizardProfileActivity.m29470d();
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public boolean shouldSkipEmptyView() {
        if (this.f22471B) {
            this.f22471B = false;
            return true;
        }
        return false;
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadVisibilityListener
    public void unRegisterFilteredEvents(KeypadVisibilityEvents keypadVisibilityEvents) {
        if (this.f22479J == keypadVisibilityEvents) {
            this.f22479J = null;
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsEvents
    public void unRegisterFilteredEvents(SearchContactsFilter searchContactsFilter) {
        this.f22501h.remove(searchContactsFilter);
    }
}
