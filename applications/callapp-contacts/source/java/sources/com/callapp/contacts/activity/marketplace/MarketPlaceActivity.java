package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseTopBarActivity;
import com.callapp.contacts.activity.contact.list.RetentionAnalytics;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.FreeStoreItemDialog;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemBanner;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemBundle;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemKeypad;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.activity.marketplace.list.HorizontalSpaceItemDecoration;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceBundleAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceCallScreenThemeAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceCoverAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceKeypadAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceSuperSkinAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceThemeAdapter;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.PromotionManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.DoneCountNotifier;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.floatingwidget.FrameLayoutChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppInActivityChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.MarketplaceWidgetManager;
import com.callapp.contacts.widget.horizontalHeader.HorizontalPagerHeader;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/MarketPlaceActivity.class */
public class MarketPlaceActivity extends BaseTopBarActivity implements ThemeChangedListener, FreeStoreItemDialog.FreeStoreItemDialogEvents {

    /* renamed from: a */
    private SimpleProgressDialog f23411a;

    /* renamed from: b */
    private MarketPlaceAdapter f23412b;

    /* renamed from: c */
    private MarketPlaceAdapter f23413c;

    /* renamed from: d */
    private MarketPlaceAdapter f23414d;

    /* renamed from: e */
    private MarketPlaceAdapter f23415e;

    /* renamed from: f */
    private MarketPlaceAdapter f23416f;

    /* renamed from: g */
    private MarketPlaceAdapter f23417g;

    /* renamed from: h */
    private HorizontalPagerHeader f23418h;

    /* renamed from: j */
    private BillingManager f23419j;

    /* renamed from: k */
    private CallAppInActivityChatHeadManager f23420k;

    /* renamed from: l */
    private boolean f23421l;

    /* renamed from: m */
    private String f23422m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.marketplace.MarketPlaceActivity$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/MarketPlaceActivity$1.class */
    public class C67071 implements BillingManager.BillingUpdatesListener {

        /* renamed from: a */
        final /* synthetic */ View f23423a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.marketplace.MarketPlaceActivity$1$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1.class */
        public class C67081 implements CatalogManager.OnCatalogAttributesLoaded {

            /* renamed from: a */
            final /* synthetic */ List f23425a;

            C67081(List list) {
                C67071.this = r4;
                this.f23425a = list;
            }

            @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
            public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                if (CollectionUtils.m26076a(catalogAttributes2.getCovers()) || CollectionUtils.m26076a(catalogAttributes2.getThemes())) {
                    MarketPlaceActivity.this.finish();
                    FeedbackManager feedbackManager = FeedbackManager.get();
                    feedbackManager.m28669a(Activities.getString(2131887755) + StringUtils.SPACE + Activities.getString(2131887754), (Integer) null);
                    return;
                }
                MarketPlaceActivity.m30084a(MarketPlaceActivity.this, catalogAttributes2.getBanners(), new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.1
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MarketPlaceActivity.this.f23418h.f29275a.m31113b();
                            }
                        });
                    }
                });
                List<JSONStoreItemCover> avilableCovers = catalogAttributes2.getAvilableCovers();
                if (CollectionUtils.m26068b(avilableCovers)) {
                    MarketPlaceActivity.m30083a(Promotion.ProductType.COVER, avilableCovers);
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), CoverStoreItemsListActivity.class));
                        }
                    };
                    MarketPlaceActivity.this.f23413c = new MarketPlaceCoverAdapter(avilableCovers, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.3
                        @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                        /* renamed from: a */
                        public final <T extends JSONStoreItem> void mo29940a(T t, View... viewArr) {
                            Intent intent;
                            if (!t.isCustomizable()) {
                                intent = CoverDownloaderActivity.m30129a(MarketPlaceActivity.this, t.getSku());
                            } else {
                                PersonalCoverThemeDownloaderActivity.Companion companion = PersonalCoverThemeDownloaderActivity.f23478f;
                                intent = PersonalCoverThemeDownloaderActivity.Companion.m30051a(MarketPlaceActivity.this, t.getSku());
                            }
                            StoreUtils.m29953a(MarketPlaceActivity.this, intent, viewArr);
                        }
                    }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                    MarketPlaceActivity.m30087a(MarketPlaceActivity.this, 2131362500, 2131887132, onClickListener, MarketPlaceActivity.this.f23413c);
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    List<JSONStoreItemKeypad> avilableKeypads = catalogAttributes2.getAvilableKeypads();
                    if (CollectionUtils.m26068b(avilableKeypads)) {
                        MarketPlaceActivity.m30083a(Promotion.ProductType.KEYPAD, avilableKeypads);
                        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.4
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), KeypadStoreItemsListActivity.class));
                            }
                        };
                        MarketPlaceActivity.this.f23417g = new MarketPlaceKeypadAdapter(avilableKeypads, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.5
                            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                            /* renamed from: a */
                            public final <T extends JSONStoreItem> void mo29940a(T t, View... viewArr) {
                                StoreUtils.m29953a(MarketPlaceActivity.this, KeypadDownloaderActivity.m30099a(MarketPlaceActivity.this, t.getSku()), viewArr);
                            }
                        }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                        MarketPlaceActivity.m30087a(MarketPlaceActivity.this, 2131363155, 2131887134, onClickListener2, MarketPlaceActivity.this.f23417g);
                    }
                }
                List<JSONStoreItemSuperSkin> allSuperSkins = catalogAttributes2.getAllSuperSkins();
                if (CollectionUtils.m26068b(allSuperSkins)) {
                    MarketPlaceActivity.m30083a(Promotion.ProductType.SUPER_SKIN, allSuperSkins);
                    MarketPlaceActivity.this.f23415e = new MarketPlaceSuperSkinAdapter(catalogAttributes2.getAllSuperSkins(), new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.6
                        @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                        /* renamed from: a */
                        public final <Data extends JSONStoreItem> void mo29940a(Data data, View... viewArr) {
                            Intent m30037a = SuperSkinDownloaderActivity.m30037a(MarketPlaceActivity.this, data.getSku());
                            View[] viewArr2 = new View[3];
                            System.arraycopy(viewArr, 0, viewArr2, 0, 2);
                            viewArr2[2] = ((View) viewArr[0].getParent()).findViewById(2131364037);
                            StoreUtils.m29953a(MarketPlaceActivity.this, m30037a, viewArr2);
                        }
                    }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                    MarketPlaceActivity.m30087a(MarketPlaceActivity.this, 2131364035, 2131887137, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            SuperSkinStoreItemsListActivity.m30024a(MarketPlaceActivity.this);
                        }
                    }, MarketPlaceActivity.this.f23415e);
                }
                List<JSONStoreItemTheme> avilableThemes = catalogAttributes2.getAvilableThemes();
                if (CollectionUtils.m26068b(avilableThemes)) {
                    MarketPlaceActivity.m30083a(Promotion.ProductType.THEME, avilableThemes);
                    View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), ThemeStoreItemsListActivity.class));
                        }
                    };
                    MarketPlaceActivity.this.f23412b = new MarketPlaceThemeAdapter(avilableThemes, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.9
                        @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                        /* renamed from: a */
                        public final <T extends JSONStoreItem> void mo29940a(T t, View... viewArr) {
                            StoreUtils.m29953a(MarketPlaceActivity.this, ThemeDownloaderActivity.m30023a(MarketPlaceActivity.this, t.getSku()), viewArr);
                        }
                    }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                    MarketPlaceActivity.m30087a(MarketPlaceActivity.this, 2131364111, 2131887138, onClickListener3, MarketPlaceActivity.this.f23412b);
                }
                if (Build.VERSION.SDK_INT < 23 || !Activities.isNotificationListenerServiceSupportedOnDevice()) {
                    MarketPlaceActivity.this.findViewById(2131363063).setVisibility(8);
                } else {
                    List<JSONStoreCallScreenThemeItem> availableCallScreenThemes = catalogAttributes2.getAvailableCallScreenThemes();
                    if (CollectionUtils.m26068b(availableCallScreenThemes)) {
                        MarketPlaceActivity.m30083a(Promotion.ProductType.CALL_SCREEN, availableCallScreenThemes);
                        View.OnClickListener onClickListener4 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.10
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), CallScreenThemeStoreItemsListActivity.class));
                            }
                        };
                        MarketPlaceActivity.this.f23416f = new MarketPlaceCallScreenThemeAdapter(MarketPlaceActivity.this.getLifecycle(), availableCallScreenThemes, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.11
                            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                            /* renamed from: a */
                            public final <T extends JSONStoreItem> void mo29940a(T t, View... viewArr) {
                                Intent intent;
                                if (!t.isCustomizable()) {
                                    intent = CallScreenThemeDownloaderActivity.m30147a(MarketPlaceActivity.this, t.getSku());
                                } else {
                                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                                    analyticsManager.mo28444a(Constants.PERSONAL_STORE_ITEM, "Thumb clicked", PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", store thumb", 0.0d, Payload.SOURCE, MarketPlaceActivity.this.f23422m);
                                    PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
                                    intent = PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(MarketPlaceActivity.this, t.getSku());
                                }
                                StoreUtils.m29953a(MarketPlaceActivity.this, intent, viewArr);
                            }
                        }, catalogAttributes2, 2131558771, false);
                        MarketPlaceActivity.m30087a(MarketPlaceActivity.this, 2131363063, 2131887133, onClickListener4, MarketPlaceActivity.this.f23416f);
                    }
                }
                if (CallAppApplication.get().getDaysSinceInstall() <= 0 || Build.VERSION.SDK_INT < 23 || !Activities.isNotificationListenerServiceSupportedOnDevice()) {
                    MarketPlaceActivity.this.findViewById(2131363062).setVisibility(8);
                } else {
                    List<JSONStoreItemBundle> avilableBundles = catalogAttributes2.getAvilableBundles();
                    ArrayList arrayList = new ArrayList();
                    if (Prefs.f26339cJ.get().booleanValue()) {
                        for (JSONStoreItemBundle jSONStoreItemBundle : avilableBundles) {
                            if (jSONStoreItemBundle.getPageLayout() >= 0) {
                                arrayList.add(jSONStoreItemBundle);
                            } else if (StoreUtils.m29945a(this.f23425a, new ArrayList(Arrays.asList("onetime_10_05_2020", "onetime_12_05_2020", "onetime_10", "onetime_12", "onetime_gold_dynamic_all_included", "onetime_silver_dynamic_all_included", "onetime_bronze_dynamic_all_included", "monthly_gold_5.00_all_included", "monthly_silver_4.00_all_included", "monthly_bronze_3.00_all_included", "yearly_gold_18.00_all_included", "yearly_silver_14.00_all_included", "yearly_bronze_10.00_all_included")))) {
                                arrayList.add(jSONStoreItemBundle);
                            }
                        }
                    }
                    avilableBundles.removeAll(arrayList);
                    if (CollectionUtils.m26068b(avilableBundles)) {
                        MarketPlaceActivity.m30083a(Promotion.ProductType.BUNDLE, avilableBundles);
                        MarketPlaceActivity.this.f23414d = new MarketPlaceBundleAdapter(avilableBundles, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.12
                            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                            /* renamed from: a */
                            public final <T extends JSONStoreItem> void mo29940a(T t, View... viewArr) {
                                Intent intent;
                                if (t instanceof JSONStoreItemBundle) {
                                    JSONStoreItemBundle jSONStoreItemBundle2 = (JSONStoreItemBundle) t;
                                    if (jSONStoreItemBundle2.getPageLayout() >= 0) {
                                        intent = new Intent(MarketPlaceActivity.this, PlanPageActivity.class);
                                        intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
                                        intent.putExtra("PLAN_PAGE_SOURCE", "bundle");
                                    } else {
                                        VideoRingtoneBundleActivity.Companion companion = VideoRingtoneBundleActivity.f23542o;
                                        intent = VideoRingtoneBundleActivity.Companion.m29990a(MarketPlaceActivity.this, t.getSku());
                                    }
                                    AnalyticsManager.get().mo28444a(Constants.STORE, jSONStoreItemBundle2.getAction(), jSONStoreItemBundle2.getLabel(), 0.0d, Payload.SOURCE, MarketPlaceActivity.this.f23422m);
                                    Activities.m27656b(MarketPlaceActivity.this, intent);
                                }
                            }
                        }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                        MarketPlaceActivity.m30087a(MarketPlaceActivity.this, 2131363062, 2131887131, null, MarketPlaceActivity.this.f23414d);
                    } else {
                        MarketPlaceActivity.this.findViewById(2131363062).setVisibility(8);
                    }
                }
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.13
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean z;
                        AnalyticsManager.get().mo28441b(Constants.MARKET_PLACE_ACTIVITY);
                        SimpleProgressDialog.m27939a(MarketPlaceActivity.this.f23411a);
                        MarketPlaceActivity.this.f23411a = null;
                        C67071.this.f23423a.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
                        C67071.this.f23423a.setVisibility(0);
                        if (MarketPlaceActivity.this.getIntent().hasExtra("USER_ALREADY_HAS_PROMOTION")) {
                            MarketPlaceActivity.m30063l(MarketPlaceActivity.this);
                            z = true;
                        } else {
                            z = false;
                        }
                        boolean z2 = z;
                        if (!z) {
                            z2 = MarketPlaceActivity.m30062m(MarketPlaceActivity.this);
                        }
                        boolean z3 = z2;
                        if (!z2) {
                            z3 = MarketPlaceActivity.m30061n(MarketPlaceActivity.this);
                        }
                        if (MarketPlaceActivity.this.getIntent().hasExtra("SHOW_LOYALTY_POPUP_EXTRA")) {
                            MarketPlaceActivity.m30060o(MarketPlaceActivity.this);
                            z3 = true;
                        }
                        if (!z3) {
                            MarketPlaceActivity marketPlaceActivity = MarketPlaceActivity.this;
                            if (Prefs.f26344cO.get().intValue() > 0 && Prefs.f26346cQ.get().booleanValue()) {
                                FreeStoreItemDialog freeStoreItemDialog = new FreeStoreItemDialog(marketPlaceActivity);
                                freeStoreItemDialog.setCancelable(false);
                                PopupManager.get().m28209a(marketPlaceActivity, freeStoreItemDialog);
                            }
                        }
                        new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.13.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MarketPlaceActivity.m30059p(MarketPlaceActivity.this);
                            }
                        }, 1000L);
                    }
                });
            }
        }

        C67071(View view) {
            MarketPlaceActivity.this = r4;
            this.f23423a = view;
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26177a() {
            if (MarketPlaceActivity.this.f23419j != null) {
                MarketPlaceActivity.this.f23419j.m28298a();
            }
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
            BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26175a(List<C3344i> list) {
            CatalogManager.CatalogReqBuilder m29979a = CatalogManager.get().m29979a(MarketPlaceActivity.this.f23419j, list);
            m29979a.f23594b = true;
            m29979a.m29956a(new C67081(list));
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: b */
        public /* synthetic */ void mo26174b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m30092a(Activity activity) {
        new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.2
            @Override // java.lang.Runnable
            public void run() {
                MarketPlaceActivity.m30059p(MarketPlaceActivity.this);
            }
        }, 1000L);
    }

    /* renamed from: a */
    public static void m30091a(Context context, Bundle bundle) {
        Intent intent = new Intent(context, MarketPlaceActivity.class);
        intent.putExtra("SHOW_LOYALTY_POPUP_EXTRA", true);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    /* renamed from: a */
    private void m30090a(Intent intent) {
        Uri uri;
        if (!com.callapp.framework.util.StringUtils.m26030e(intent.getType(), "video/") || (uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM")) == null) {
            return;
        }
        PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
        PersonalCallScreenThemeDownloaderActivity.Companion.m30053a(this, PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE), null, uri, this.f23422m);
    }

    /* renamed from: a */
    static /* synthetic */ void m30087a(MarketPlaceActivity marketPlaceActivity, final int i, final int i2, final View.OnClickListener onClickListener, final MarketPlaceAdapter marketPlaceAdapter) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.13
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup viewGroup = (ViewGroup) MarketPlaceActivity.this.findViewById(i);
                TextView textView = (TextView) viewGroup.findViewById(2131364130);
                textView.setText(Activities.getString(i2));
                textView.setTextColor(ThemeUtils.getColor(2131100140));
                TextView textView2 = (TextView) viewGroup.findViewById(2131363302);
                textView2.setText(Activities.getString(2131887214));
                textView2.setTextColor(ThemeUtils.getColor(2131099784));
                textView2.setOnClickListener(onClickListener);
                RecyclerView recyclerView = (RecyclerView) viewGroup.findViewById(2131363648);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(MarketPlaceActivity.this, 0, false);
                recyclerView.m40480a(new HorizontalSpaceItemDecoration((int) Activities.m27699a(2.0f)), -1);
                recyclerView.setLayoutManager(linearLayoutManager);
                recyclerView.setAdapter(marketPlaceAdapter);
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m30085a(MarketPlaceActivity marketPlaceActivity, String str) {
        if (str != null) {
            marketPlaceActivity.startActivity(str.equals(Activities.getString(2131887452)) ? new Intent(CallAppApplication.get(), CoverStoreItemsListActivity.class) : str.equals(Activities.getString(2131887453)) ? new Intent(CallAppApplication.get(), KeypadStoreItemsListActivity.class) : str.equals(Activities.getString(2131887451)) ? new Intent(CallAppApplication.get(), CallScreenThemeStoreItemsListActivity.class) : str.equals(Activities.getString(2131887455)) ? new Intent(CallAppApplication.get(), ThemeStoreItemsListActivity.class) : new Intent(CallAppApplication.get(), SuperSkinStoreItemsListActivity.class));
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m30084a(MarketPlaceActivity marketPlaceActivity, List list, Task.DoneListener doneListener) {
        final ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(list)) {
            DoneCountNotifier doneCountNotifier = new DoneCountNotifier(list.size(), doneListener);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                final JSONStoreItemBanner jSONStoreItemBanner = (JSONStoreItemBanner) it2.next();
                if (!jSONStoreItemBanner.getHideIfPremium() || !Prefs.f26339cJ.get().booleanValue()) {
                    HorizontalPagerHeader.SinglePageData singlePageData = new HorizontalPagerHeader.SinglePageData(jSONStoreItemBanner.getTitle(), jSONStoreItemBanner.getSubTitle(), jSONStoreItemBanner.getAction().getActionText(), jSONStoreItemBanner.getBackground(), new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.11
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                        /* renamed from: a */
                        public final void mo26371a(View view) {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(jSONStoreItemBanner.getAction().getCta()));
                            intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
                            intent.setPackage(CallAppApplication.get().getPackageName());
                            Activities.m27656b(CallAppApplication.get(), intent);
                        }
                    }, doneCountNotifier, ImageView.ScaleType.CENTER_CROP);
                    singlePageData.setTitleColor(Color.parseColor(jSONStoreItemBanner.getTextColor()));
                    singlePageData.setSubtitleColor(Color.parseColor(jSONStoreItemBanner.getTextColor()));
                    singlePageData.setBtnTextColor(Color.parseColor(jSONStoreItemBanner.getTextActionColor()));
                    singlePageData.setBtnBorderColor(Color.parseColor(jSONStoreItemBanner.getActionColor()));
                    arrayList.add(singlePageData);
                }
            }
        } else {
            doneListener.onDone();
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.12
            @Override // java.lang.Runnable
            public void run() {
                if (!CollectionUtils.m26068b(arrayList)) {
                    MarketPlaceActivity.this.f23418h.setVisibility(8);
                    return;
                }
                MarketPlaceActivity.this.f23418h.setData(arrayList);
                MarketPlaceActivity.this.f23418h.setVisibility(0);
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m30083a(Promotion.ProductType productType, List list) {
        if (PromotionManager.m28512d(productType)) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                JSONStoreItem jSONStoreItem = (JSONStoreItem) it2.next();
                jSONStoreItem.setPrice(BitmapDescriptorFactory.HUE_RED);
                jSONStoreItem.setPriceWithCurrency(Activities.getString(2131886923));
                jSONStoreItem.setPurchased(true);
            }
        }
    }

    /* renamed from: b */
    public static void m30082b() {
        boolean m28698c = CallAppRemoteConfigManager.get().m28698c("showMarketplaceWidget");
        if (m28698c != Prefs.f26468eg.get().booleanValue()) {
            Prefs.f26468eg.set(Boolean.valueOf(m28698c));
            Prefs.f26469eh.set(Boolean.valueOf(m28698c));
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m30081b(Activity activity) {
        Intent intent = new Intent(activity, PlanPageActivity.class);
        intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
        intent.putExtra("PLAN_PAGE_SOURCE", "loyal");
        startActivity(intent);
    }

    /* renamed from: c */
    private static boolean m30078c() {
        return ((long) Prefs.f26572ge.get().intValue()) >= CallAppRemoteConfigManager.get().m28699b("promotionShowDialogInterval");
    }

    /* renamed from: l */
    static /* synthetic */ void m30063l(MarketPlaceActivity marketPlaceActivity) {
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230824, Activities.getString(2131886233), Activities.getString(2131886232), null, null, Activities.getString(2131888244), ThemeUtils.getColor(2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }) { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                super.onDialogDismissed(dialogInterface);
            }
        };
        dialogMessageWithTopImage.setCancelable(false);
        PopupManager.get().m28209a(marketPlaceActivity, dialogMessageWithTopImage);
    }

    /* renamed from: m */
    static /* synthetic */ boolean m30062m(MarketPlaceActivity marketPlaceActivity) {
        Pair<String, String> promotionBannerNotBuyTitle;
        if (Prefs.f26573gf.get().booleanValue() || !PromotionManager.isUserHasActivePromotion() || !m30078c() || PromotionManager.isUserPurchaesPromotion() || (promotionBannerNotBuyTitle = PromotionManager.getPromotionBannerNotBuyTitle()) == null) {
            return false;
        }
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230845, (CharSequence) promotionBannerNotBuyTitle.first, (CharSequence) promotionBannerNotBuyTitle.second, Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.5
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                MarketPlaceActivity.m30085a(MarketPlaceActivity.this, PromotionManager.getPromotionType());
            }
        }, Activities.getString(2131887083), ThemeUtils.getColor(2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.6
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                Prefs.f26573gf.set(Boolean.TRUE);
            }
        }) { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.7
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                Prefs.f26572ge.set(0);
                super.onDialogDismissed(dialogInterface);
            }
        };
        dialogMessageWithTopImage.setCancelable(false);
        PopupManager.get().m28209a(marketPlaceActivity, dialogMessageWithTopImage);
        return true;
    }

    /* renamed from: n */
    static /* synthetic */ boolean m30061n(MarketPlaceActivity marketPlaceActivity) {
        Pair<String, String> promotionBannerBuyTitle;
        if (!m30078c() || !PromotionManager.isUserPurchaesPromotion() || (promotionBannerBuyTitle = PromotionManager.getPromotionBannerBuyTitle()) == null) {
            return false;
        }
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230844, (CharSequence) promotionBannerBuyTitle.first, (CharSequence) promotionBannerBuyTitle.second, Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.8
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }, Activities.getString(2131887083), ThemeUtils.getColor(2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.9
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                Prefs.f26573gf.set(Boolean.TRUE);
            }
        }) { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.10
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                Prefs.f26572ge.set(0);
                super.onDialogDismissed(dialogInterface);
            }
        };
        dialogMessageWithTopImage.setCancelable(false);
        PopupManager.get().m28209a(marketPlaceActivity, dialogMessageWithTopImage);
        return true;
    }

    /* renamed from: o */
    static /* synthetic */ void m30060o(MarketPlaceActivity marketPlaceActivity) {
        String userFirstName;
        String str;
        if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) UserProfileManager.get().getUserFirstName())) {
            str = userFirstName.substring(0, 1).toUpperCase() + userFirstName.substring(1).toLowerCase();
        } else {
            str = "";
        }
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230891, 0, 2131230892, Activities.m27697a(2131887136, str), 2131100140, Activities.getString(2131887135), Activities.getString(2131886932).toUpperCase(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$MarketPlaceActivity$Ogdg_XjAez81sabrlE3sk8_wHWM
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                MarketPlaceActivity.this.m30081b(activity);
            }
        }, Activities.getString(2131887314).toUpperCase(), true, ThemeUtils.getColor(2131099919), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$MarketPlaceActivity$Iv9eag1ltRGtOcLU1v9CaMGCBQk
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                MarketPlaceActivity.this.m30092a(activity);
            }
        });
        Prefs.f26263an.set(new Date());
        PopupManager.get().m28209a(marketPlaceActivity, dialogMessageWithTopImage);
    }

    /* renamed from: p */
    static /* synthetic */ void m30059p(MarketPlaceActivity marketPlaceActivity) {
        if (!marketPlaceActivity.f23421l || marketPlaceActivity.f23420k != null) {
            return;
        }
        MarketplaceWidgetManager marketplaceWidgetManager = new MarketplaceWidgetManager(marketPlaceActivity, new FrameLayoutChatHeadContainer((FrameLayout) marketPlaceActivity.findViewById(2131362869)));
        marketPlaceActivity.f23420k = marketplaceWidgetManager;
        marketplaceWidgetManager.mo26416a(MinimizedArrangement.class, (Bundle) null);
        marketPlaceActivity.f23420k.setOnItemSelectedListener(new ChatHeadManager.OnItemSelectedListener<String>() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.14
            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager.OnItemSelectedListener
            /* renamed from: a */
            public final /* synthetic */ boolean mo26437a(ChatHead chatHead) {
                AnalyticsManager.get().mo28444a(Constants.STORE, "MarketPlace Widget Clicked", (String) null, 0.0d, Payload.SOURCE, MarketPlaceActivity.this.f23422m);
                Intent intent = new Intent(chatHead.getContext(), PlanPageActivity.class);
                intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
                intent.putExtra("PLAN_PAGE_SOURCE", "storeWidget");
                MarketPlaceActivity.this.startActivity(intent);
                return true;
            }
        });
        marketPlaceActivity.f23420k.setListener(new ChatHeadListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.15
            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
            /* renamed from: a */
            public final void mo26438a(int i) {
                if (MarketPlaceActivity.this.f23420k != null) {
                    MarketPlaceActivity.this.f23420k.mo26407e();
                }
            }

            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
            /* renamed from: b */
            public final void mo26436b() {
            }

            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
            /* renamed from: s_ */
            public final void mo26429s_() {
            }
        });
        marketPlaceActivity.f23420k.mo26417a((CallAppInActivityChatHeadManager) "market", false, true);
        AnalyticsManager.get().mo28444a(Constants.STORE, "MarketPlace Widget Added", (String) null, 0.0d, Payload.SOURCE, marketPlaceActivity.f23422m);
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    /* renamed from: a */
    public final void mo30089a(DownloaderCardViewHandler.StoreItemType storeItemType) {
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    /* renamed from: g */
    public final void mo30069g() {
        new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.17
            @Override // java.lang.Runnable
            public void run() {
                MarketPlaceActivity.m30059p(MarketPlaceActivity.this);
            }
        }, 1000L);
        Prefs.f26346cQ.set(Boolean.FALSE);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558453;
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            this.f23422m = intent.getStringExtra(Payload.SOURCE);
        }
        setTitle(Activities.getString(2131887751));
        RetentionAnalytics.get();
        RetentionAnalytics.m30523a();
        boolean z = true;
        Prefs.f26572ge.m28169b(1);
        if (Prefs.f26339cJ.get().booleanValue() || !CallAppRemoteConfigManager.get().m28698c("showMarketplaceWidget")) {
            z = false;
        }
        this.f23421l = z;
        int m27386a = ThemeUtils.m27386a(CallAppApplication.get(), 2131099891);
        View findViewById = findViewById(2131363743);
        findViewById.setBackgroundColor(m27386a);
        this.f23419j = new BillingManager(new C67071(findViewById));
        this.f23418h = (HorizontalPagerHeader) findViewById(2131362981);
        if (!HttpUtils.m26985a()) {
            finish();
            FeedbackManager.get().m28669a(Activities.getString(2131887407), (Integer) null);
        } else if (!BillingManager.isBillingAvailable()) {
            finish();
            FeedbackManager.get().m28669a(Activities.getString(2131886319), (Integer) null);
        } else {
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f23411a = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887415));
            PopupManager.get().m28209a(this, this.f23411a);
            if (!"android.intent.action.SEND".equals(getIntent().getAction())) {
                return;
            }
            m30090a(getIntent());
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().mo28444a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.MARKET_PLACE_ACTIVITY, 0.0d, Payload.SOURCE, this.f23422m);
        MarketPlaceAdapter marketPlaceAdapter = this.f23412b;
        if (marketPlaceAdapter != null) {
            marketPlaceAdapter.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter2 = this.f23413c;
        if (marketPlaceAdapter2 != null) {
            marketPlaceAdapter2.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter3 = this.f23415e;
        if (marketPlaceAdapter3 != null) {
            marketPlaceAdapter3.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter4 = this.f23416f;
        if (marketPlaceAdapter4 != null) {
            marketPlaceAdapter4.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter5 = this.f23417g;
        if (marketPlaceAdapter5 != null) {
            marketPlaceAdapter5.setItemClickedListener(null);
        }
        BillingManager billingManager = this.f23419j;
        if (billingManager != null) {
            billingManager.m28290b();
            this.f23419j = null;
        }
        SimpleProgressDialog.m27939a(this.f23411a);
        this.f23411a = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if ("android.intent.action.SEND".equals(intent.getAction())) {
            m30090a(intent);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        HorizontalPagerHeader horizontalPagerHeader = this.f23418h;
        if (horizontalPagerHeader != null) {
            horizontalPagerHeader.f29275a.m31111c();
        }
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        CallAppInActivityChatHeadManager callAppInActivityChatHeadManager = this.f23420k;
        if (callAppInActivityChatHeadManager != null) {
            callAppInActivityChatHeadManager.mo26434k();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.16
            @Override // java.lang.Runnable
            public void run() {
                MarketPlaceActivity.this.finish();
            }
        });
    }
}
