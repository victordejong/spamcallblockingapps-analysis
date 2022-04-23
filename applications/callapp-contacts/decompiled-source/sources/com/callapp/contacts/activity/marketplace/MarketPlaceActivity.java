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
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
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
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.MarketplaceWidgetManager;
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

    /* renamed from: a  reason: collision with root package name */
    private SimpleProgressDialog f13136a;

    /* renamed from: b  reason: collision with root package name */
    private MarketPlaceAdapter f13137b;

    /* renamed from: c  reason: collision with root package name */
    private MarketPlaceAdapter f13138c;

    /* renamed from: d  reason: collision with root package name */
    private MarketPlaceAdapter f13139d;
    private MarketPlaceAdapter e;
    private MarketPlaceAdapter f;
    private MarketPlaceAdapter g;
    private HorizontalPagerHeader h;
    private BillingManager j;
    private CallAppInActivityChatHeadManager k;
    private boolean l;
    private String m;

    /* renamed from: com.callapp.contacts.activity.marketplace.MarketPlaceActivity$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/MarketPlaceActivity$1.class */
    class AnonymousClass1 implements BillingManager.BillingUpdatesListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f13140a;

        /* renamed from: com.callapp.contacts.activity.marketplace.MarketPlaceActivity$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1.class */
        class C02611 implements CatalogManager.OnCatalogAttributesLoaded {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f13142a;

            C02611(List list) {
                this.f13142a = list;
            }

            @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
            public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                if (CollectionUtils.a(catalogAttributes2.getCovers()) || CollectionUtils.a(catalogAttributes2.getThemes())) {
                    MarketPlaceActivity.this.finish();
                    FeedbackManager feedbackManager = FeedbackManager.get();
                    feedbackManager.a(Activities.getString(2131887755) + StringUtils.SPACE + Activities.getString(2131887754), (Integer) null);
                    return;
                }
                MarketPlaceActivity.a(MarketPlaceActivity.this, catalogAttributes2.getBanners(), new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.1
                    @Override // com.callapp.contacts.manager.task.Task.DoneListener
                    public void onDone() {
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MarketPlaceActivity.this.h.f16811a.b();
                            }
                        });
                    }
                });
                List<JSONStoreItemCover> avilableCovers = catalogAttributes2.getAvilableCovers();
                if (CollectionUtils.b(avilableCovers)) {
                    MarketPlaceActivity.a(Promotion.ProductType.COVER, avilableCovers);
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), CoverStoreItemsListActivity.class));
                        }
                    };
                    MarketPlaceActivity.this.f13138c = new MarketPlaceCoverAdapter(avilableCovers, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.3
                        @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                        public final <T extends JSONStoreItem> void a(T t, View... viewArr) {
                            Intent intent;
                            if (!t.isCustomizable()) {
                                intent = CoverDownloaderActivity.a(MarketPlaceActivity.this, t.getSku());
                            } else {
                                PersonalCoverThemeDownloaderActivity.Companion companion = PersonalCoverThemeDownloaderActivity.f;
                                intent = PersonalCoverThemeDownloaderActivity.Companion.a(MarketPlaceActivity.this, t.getSku());
                            }
                            StoreUtils.a(MarketPlaceActivity.this, intent, viewArr);
                        }
                    }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                    MarketPlaceActivity.a(MarketPlaceActivity.this, 2131362500, 2131887132, onClickListener, MarketPlaceActivity.this.f13138c);
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    List<JSONStoreItemKeypad> avilableKeypads = catalogAttributes2.getAvilableKeypads();
                    if (CollectionUtils.b(avilableKeypads)) {
                        MarketPlaceActivity.a(Promotion.ProductType.KEYPAD, avilableKeypads);
                        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.4
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), KeypadStoreItemsListActivity.class));
                            }
                        };
                        MarketPlaceActivity.this.g = new MarketPlaceKeypadAdapter(avilableKeypads, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.5
                            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                            public final <T extends JSONStoreItem> void a(T t, View... viewArr) {
                                StoreUtils.a(MarketPlaceActivity.this, KeypadDownloaderActivity.a(MarketPlaceActivity.this, t.getSku()), viewArr);
                            }
                        }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                        MarketPlaceActivity.a(MarketPlaceActivity.this, 2131363155, 2131887134, onClickListener2, MarketPlaceActivity.this.g);
                    }
                }
                List<JSONStoreItemSuperSkin> allSuperSkins = catalogAttributes2.getAllSuperSkins();
                if (CollectionUtils.b(allSuperSkins)) {
                    MarketPlaceActivity.a(Promotion.ProductType.SUPER_SKIN, allSuperSkins);
                    MarketPlaceActivity.this.e = new MarketPlaceSuperSkinAdapter(catalogAttributes2.getAllSuperSkins(), new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.6
                        @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                        public final <Data extends JSONStoreItem> void a(Data data, View... viewArr) {
                            Intent a2 = SuperSkinDownloaderActivity.a(MarketPlaceActivity.this, data.getSku());
                            View[] viewArr2 = new View[3];
                            System.arraycopy(viewArr, 0, viewArr2, 0, 2);
                            viewArr2[2] = ((View) viewArr[0].getParent()).findViewById(2131364037);
                            StoreUtils.a(MarketPlaceActivity.this, a2, viewArr2);
                        }
                    }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                    MarketPlaceActivity.a(MarketPlaceActivity.this, 2131364035, 2131887137, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            SuperSkinStoreItemsListActivity.a(MarketPlaceActivity.this);
                        }
                    }, MarketPlaceActivity.this.e);
                }
                List<JSONStoreItemTheme> avilableThemes = catalogAttributes2.getAvilableThemes();
                if (CollectionUtils.b(avilableThemes)) {
                    MarketPlaceActivity.a(Promotion.ProductType.THEME, avilableThemes);
                    View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), ThemeStoreItemsListActivity.class));
                        }
                    };
                    MarketPlaceActivity.this.f13137b = new MarketPlaceThemeAdapter(avilableThemes, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.9
                        @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                        public final <T extends JSONStoreItem> void a(T t, View... viewArr) {
                            StoreUtils.a(MarketPlaceActivity.this, ThemeDownloaderActivity.a(MarketPlaceActivity.this, t.getSku()), viewArr);
                        }
                    }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                    MarketPlaceActivity.a(MarketPlaceActivity.this, 2131364111, 2131887138, onClickListener3, MarketPlaceActivity.this.f13137b);
                }
                if (Build.VERSION.SDK_INT < 23 || !Activities.isNotificationListenerServiceSupportedOnDevice()) {
                    MarketPlaceActivity.this.findViewById(2131363063).setVisibility(8);
                } else {
                    List<JSONStoreCallScreenThemeItem> availableCallScreenThemes = catalogAttributes2.getAvailableCallScreenThemes();
                    if (CollectionUtils.b(availableCallScreenThemes)) {
                        MarketPlaceActivity.a(Promotion.ProductType.CALL_SCREEN, availableCallScreenThemes);
                        View.OnClickListener onClickListener4 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.10
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                MarketPlaceActivity.this.startActivity(new Intent(CallAppApplication.get(), CallScreenThemeStoreItemsListActivity.class));
                            }
                        };
                        MarketPlaceActivity.this.f = new MarketPlaceCallScreenThemeAdapter(MarketPlaceActivity.this.getLifecycle(), availableCallScreenThemes, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.11
                            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                            public final <T extends JSONStoreItem> void a(T t, View... viewArr) {
                                Intent intent;
                                if (!t.isCustomizable()) {
                                    intent = CallScreenThemeDownloaderActivity.a(MarketPlaceActivity.this, t.getSku());
                                } else {
                                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                                    analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "Thumb clicked", PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", store thumb", 0.0d, Payload.SOURCE, MarketPlaceActivity.this.m);
                                    PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.n;
                                    intent = PersonalCallScreenThemeDownloaderActivity.Companion.a(MarketPlaceActivity.this, t.getSku());
                                }
                                StoreUtils.a(MarketPlaceActivity.this, intent, viewArr);
                            }
                        }, catalogAttributes2, 2131558771, false);
                        MarketPlaceActivity.a(MarketPlaceActivity.this, 2131363063, 2131887133, onClickListener4, MarketPlaceActivity.this.f);
                    }
                }
                if (CallAppApplication.get().getDaysSinceInstall() <= 0 || Build.VERSION.SDK_INT < 23 || !Activities.isNotificationListenerServiceSupportedOnDevice()) {
                    MarketPlaceActivity.this.findViewById(2131363062).setVisibility(8);
                } else {
                    List<JSONStoreItemBundle> avilableBundles = catalogAttributes2.getAvilableBundles();
                    ArrayList arrayList = new ArrayList();
                    if (Prefs.cJ.get().booleanValue()) {
                        for (JSONStoreItemBundle jSONStoreItemBundle : avilableBundles) {
                            if (jSONStoreItemBundle.getPageLayout() >= 0) {
                                arrayList.add(jSONStoreItemBundle);
                            } else if (StoreUtils.a(this.f13142a, new ArrayList(Arrays.asList("onetime_10_05_2020", "onetime_12_05_2020", "onetime_10", "onetime_12", "onetime_gold_dynamic_all_included", "onetime_silver_dynamic_all_included", "onetime_bronze_dynamic_all_included", "monthly_gold_5.00_all_included", "monthly_silver_4.00_all_included", "monthly_bronze_3.00_all_included", "yearly_gold_18.00_all_included", "yearly_silver_14.00_all_included", "yearly_bronze_10.00_all_included")))) {
                                arrayList.add(jSONStoreItemBundle);
                            }
                        }
                    }
                    avilableBundles.removeAll(arrayList);
                    if (CollectionUtils.b(avilableBundles)) {
                        MarketPlaceActivity.a(Promotion.ProductType.BUNDLE, avilableBundles);
                        MarketPlaceActivity.this.f13139d = new MarketPlaceBundleAdapter(avilableBundles, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.12
                            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
                            public final <T extends JSONStoreItem> void a(T t, View... viewArr) {
                                Intent intent;
                                if (t instanceof JSONStoreItemBundle) {
                                    JSONStoreItemBundle jSONStoreItemBundle2 = (JSONStoreItemBundle) t;
                                    if (jSONStoreItemBundle2.getPageLayout() >= 0) {
                                        intent = new Intent(MarketPlaceActivity.this, PlanPageActivity.class);
                                        intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
                                        intent.putExtra("PLAN_PAGE_SOURCE", "bundle");
                                    } else {
                                        VideoRingtoneBundleActivity.Companion companion = VideoRingtoneBundleActivity.o;
                                        intent = VideoRingtoneBundleActivity.Companion.a(MarketPlaceActivity.this, t.getSku());
                                    }
                                    AnalyticsManager.get().a(Constants.STORE, jSONStoreItemBundle2.getAction(), jSONStoreItemBundle2.getLabel(), 0.0d, Payload.SOURCE, MarketPlaceActivity.this.m);
                                    Activities.b(MarketPlaceActivity.this, intent);
                                }
                            }
                        }, catalogAttributes2, MarketPlaceActivity.this.getLifecycle());
                        MarketPlaceActivity.a(MarketPlaceActivity.this, 2131363062, 2131887131, null, MarketPlaceActivity.this.f13139d);
                    } else {
                        MarketPlaceActivity.this.findViewById(2131363062).setVisibility(8);
                    }
                }
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.13
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean z;
                        AnalyticsManager.get().b(Constants.MARKET_PLACE_ACTIVITY);
                        SimpleProgressDialog.a(MarketPlaceActivity.this.f13136a);
                        MarketPlaceActivity.this.f13136a = null;
                        AnonymousClass1.this.f13140a.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
                        AnonymousClass1.this.f13140a.setVisibility(0);
                        boolean z2 = true;
                        if (MarketPlaceActivity.this.getIntent().hasExtra("USER_ALREADY_HAS_PROMOTION")) {
                            MarketPlaceActivity.l(MarketPlaceActivity.this);
                            z = true;
                        } else {
                            z = false;
                        }
                        boolean z3 = z;
                        if (!z) {
                            z3 = MarketPlaceActivity.m(MarketPlaceActivity.this);
                        }
                        z2 = z3;
                        if (!z3) {
                            z2 = MarketPlaceActivity.n(MarketPlaceActivity.this);
                        }
                        if (MarketPlaceActivity.this.getIntent().hasExtra("SHOW_LOYALTY_POPUP_EXTRA")) {
                            MarketPlaceActivity.o(MarketPlaceActivity.this);
                        }
                        if (!z2) {
                            MarketPlaceActivity marketPlaceActivity = MarketPlaceActivity.this;
                            if (Prefs.cO.get().intValue() > 0 && Prefs.cQ.get().booleanValue()) {
                                FreeStoreItemDialog freeStoreItemDialog = new FreeStoreItemDialog(marketPlaceActivity);
                                freeStoreItemDialog.setCancelable(false);
                                PopupManager.get().a(marketPlaceActivity, freeStoreItemDialog);
                            }
                        }
                        new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.1.1.13.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MarketPlaceActivity.p(MarketPlaceActivity.this);
                            }
                        }, 1000L);
                    }
                });
            }
        }

        AnonymousClass1(View view) {
            this.f13140a = view;
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public final void a() {
            if (MarketPlaceActivity.this.j != null) {
                MarketPlaceActivity.this.j.a();
            }
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public /* synthetic */ void a(g gVar, List list) {
            BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public final void a(List<i> list) {
            CatalogManager.CatalogReqBuilder a2 = CatalogManager.get().a(MarketPlaceActivity.this.j, list);
            a2.f13262b = true;
            a2.a(new C02611(list));
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public /* synthetic */ void b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.2
            @Override // java.lang.Runnable
            public void run() {
                MarketPlaceActivity.p(MarketPlaceActivity.this);
            }
        }, 1000L);
    }

    public static void a(Context context, Bundle bundle) {
        Intent intent = new Intent(context, MarketPlaceActivity.class);
        intent.putExtra("SHOW_LOYALTY_POPUP_EXTRA", true);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    private void a(Intent intent) {
        Uri uri;
        if (com.callapp.framework.util.StringUtils.e(intent.getType(), "video/") && (uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM")) != null) {
            PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.n;
            PersonalCallScreenThemeDownloaderActivity.Companion.a(this, PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE), null, uri, this.m);
        }
    }

    static /* synthetic */ void a(MarketPlaceActivity marketPlaceActivity, final int i, final int i2, final View.OnClickListener onClickListener, final MarketPlaceAdapter marketPlaceAdapter) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.13
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
                recyclerView.a(new HorizontalSpaceItemDecoration((int) Activities.a(2.0f)), -1);
                recyclerView.setLayoutManager(linearLayoutManager);
                recyclerView.setAdapter(marketPlaceAdapter);
            }
        });
    }

    static /* synthetic */ void a(MarketPlaceActivity marketPlaceActivity, String str) {
        if (str != null) {
            marketPlaceActivity.startActivity(str.equals(Activities.getString(2131887452)) ? new Intent(CallAppApplication.get(), CoverStoreItemsListActivity.class) : str.equals(Activities.getString(2131887453)) ? new Intent(CallAppApplication.get(), KeypadStoreItemsListActivity.class) : str.equals(Activities.getString(2131887451)) ? new Intent(CallAppApplication.get(), CallScreenThemeStoreItemsListActivity.class) : str.equals(Activities.getString(2131887455)) ? new Intent(CallAppApplication.get(), ThemeStoreItemsListActivity.class) : new Intent(CallAppApplication.get(), SuperSkinStoreItemsListActivity.class));
        }
    }

    static /* synthetic */ void a(MarketPlaceActivity marketPlaceActivity, List list, Task.DoneListener doneListener) {
        final ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(list)) {
            DoneCountNotifier doneCountNotifier = new DoneCountNotifier(list.size(), doneListener);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                final JSONStoreItemBanner jSONStoreItemBanner = (JSONStoreItemBanner) it2.next();
                if (!jSONStoreItemBanner.getHideIfPremium() || !Prefs.cJ.get().booleanValue()) {
                    HorizontalPagerHeader.SinglePageData singlePageData = new HorizontalPagerHeader.SinglePageData(jSONStoreItemBanner.getTitle(), jSONStoreItemBanner.getSubTitle(), jSONStoreItemBanner.getAction().getActionText(), jSONStoreItemBanner.getBackground(), new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.11
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                        public final void a(View view) {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(jSONStoreItemBanner.getAction().getCta()));
                            intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
                            intent.setPackage(CallAppApplication.get().getPackageName());
                            Activities.b(CallAppApplication.get(), intent);
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
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.12
            @Override // java.lang.Runnable
            public void run() {
                if (CollectionUtils.b(arrayList)) {
                    MarketPlaceActivity.this.h.setData(arrayList);
                    MarketPlaceActivity.this.h.setVisibility(0);
                    return;
                }
                MarketPlaceActivity.this.h.setVisibility(8);
            }
        });
    }

    static /* synthetic */ void a(Promotion.ProductType productType, List list) {
        if (PromotionManager.d(productType)) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                JSONStoreItem jSONStoreItem = (JSONStoreItem) it2.next();
                jSONStoreItem.setPrice(BitmapDescriptorFactory.HUE_RED);
                jSONStoreItem.setPriceWithCurrency(Activities.getString(2131886923));
                jSONStoreItem.setPurchased(true);
            }
        }
    }

    public static void b() {
        boolean c2 = CallAppRemoteConfigManager.get().c("showMarketplaceWidget");
        if (c2 != Prefs.eg.get().booleanValue()) {
            Prefs.eg.set(Boolean.valueOf(c2));
            Prefs.eh.set(Boolean.valueOf(c2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Activity activity) {
        Intent intent = new Intent(activity, PlanPageActivity.class);
        intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
        intent.putExtra("PLAN_PAGE_SOURCE", "loyal");
        startActivity(intent);
    }

    private static boolean c() {
        return ((long) Prefs.ge.get().intValue()) >= CallAppRemoteConfigManager.get().b("promotionShowDialogInterval");
    }

    static /* synthetic */ void l(MarketPlaceActivity marketPlaceActivity) {
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
        PopupManager.get().a(marketPlaceActivity, dialogMessageWithTopImage);
    }

    static /* synthetic */ boolean m(MarketPlaceActivity marketPlaceActivity) {
        Pair<String, String> promotionBannerNotBuyTitle;
        if (Prefs.gf.get().booleanValue() || !PromotionManager.isUserHasActivePromotion() || !c() || PromotionManager.isUserPurchaesPromotion() || (promotionBannerNotBuyTitle = PromotionManager.getPromotionBannerNotBuyTitle()) == null) {
            return false;
        }
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230845, (CharSequence) promotionBannerNotBuyTitle.first, (CharSequence) promotionBannerNotBuyTitle.second, Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.5
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                MarketPlaceActivity.a(MarketPlaceActivity.this, PromotionManager.getPromotionType());
            }
        }, Activities.getString(2131887083), ThemeUtils.getColor(2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.6
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                Prefs.gf.set(Boolean.TRUE);
            }
        }) { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.7
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                Prefs.ge.set(0);
                super.onDialogDismissed(dialogInterface);
            }
        };
        dialogMessageWithTopImage.setCancelable(false);
        PopupManager.get().a(marketPlaceActivity, dialogMessageWithTopImage);
        return true;
    }

    static /* synthetic */ boolean n(MarketPlaceActivity marketPlaceActivity) {
        Pair<String, String> promotionBannerBuyTitle;
        if (!c() || !PromotionManager.isUserPurchaesPromotion() || (promotionBannerBuyTitle = PromotionManager.getPromotionBannerBuyTitle()) == null) {
            return false;
        }
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230844, (CharSequence) promotionBannerBuyTitle.first, (CharSequence) promotionBannerBuyTitle.second, Activities.getString(2131887338), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.8
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }, Activities.getString(2131887083), ThemeUtils.getColor(2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.9
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                Prefs.gf.set(Boolean.TRUE);
            }
        }) { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.10
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogDismissed(DialogInterface dialogInterface) {
                Prefs.ge.set(0);
                super.onDialogDismissed(dialogInterface);
            }
        };
        dialogMessageWithTopImage.setCancelable(false);
        PopupManager.get().a(marketPlaceActivity, dialogMessageWithTopImage);
        return true;
    }

    static /* synthetic */ void o(final MarketPlaceActivity marketPlaceActivity) {
        String userFirstName;
        String str;
        if (com.callapp.framework.util.StringUtils.b((CharSequence) UserProfileManager.get().getUserFirstName())) {
            str = userFirstName.substring(0, 1).toUpperCase() + userFirstName.substring(1).toLowerCase();
        } else {
            str = "";
        }
        DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(2131230891, 0, 2131230892, Activities.a(2131887136, str), 2131100140, Activities.getString(2131887135), Activities.getString(2131886932).toUpperCase(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$MarketPlaceActivity$Ogdg_XjAez81sabrlE3sk8_wHWM
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                MarketPlaceActivity.this.b(activity);
            }
        }, Activities.getString(2131887314).toUpperCase(), true, ThemeUtils.getColor(2131099919), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$MarketPlaceActivity$Iv9eag1ltRGtOcLU1v9CaMGCBQk
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                MarketPlaceActivity.this.a(activity);
            }
        });
        Prefs.an.set(new Date());
        PopupManager.get().a(marketPlaceActivity, dialogMessageWithTopImage);
    }

    static /* synthetic */ void p(MarketPlaceActivity marketPlaceActivity) {
        if (marketPlaceActivity.l && marketPlaceActivity.k == null) {
            MarketplaceWidgetManager marketplaceWidgetManager = new MarketplaceWidgetManager(marketPlaceActivity, new FrameLayoutChatHeadContainer((FrameLayout) marketPlaceActivity.findViewById(2131362869)));
            marketPlaceActivity.k = marketplaceWidgetManager;
            marketplaceWidgetManager.a(MinimizedArrangement.class, (Bundle) null);
            marketPlaceActivity.k.setOnItemSelectedListener(new ChatHeadManager.OnItemSelectedListener<String>() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.14
                @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager.OnItemSelectedListener
                public final /* synthetic */ boolean a(ChatHead chatHead) {
                    AnalyticsManager.get().a(Constants.STORE, "MarketPlace Widget Clicked", (String) null, 0.0d, Payload.SOURCE, MarketPlaceActivity.this.m);
                    Intent intent = new Intent(chatHead.getContext(), PlanPageActivity.class);
                    intent.putExtra("RETURN_TO_PREVIOUS_CLASS", MarketPlaceActivity.class);
                    intent.putExtra("PLAN_PAGE_SOURCE", "storeWidget");
                    MarketPlaceActivity.this.startActivity(intent);
                    return true;
                }
            });
            marketPlaceActivity.k.setListener(new ChatHeadListener() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.15
                @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
                public final void a(int i) {
                    if (MarketPlaceActivity.this.k != null) {
                        MarketPlaceActivity.this.k.e();
                    }
                }

                @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
                public final void b() {
                }

                @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
                public final void s_() {
                }
            });
            marketPlaceActivity.k.a((CallAppInActivityChatHeadManager) "market", false, true);
            AnalyticsManager.get().a(Constants.STORE, "MarketPlace Widget Added", (String) null, 0.0d, Payload.SOURCE, marketPlaceActivity.m);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    public final void a(DownloaderCardViewHandler.StoreItemType storeItemType) {
    }

    @Override // com.callapp.contacts.activity.marketplace.FreeStoreItemDialog.FreeStoreItemDialogEvents
    public final void g() {
        new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.17
            @Override // java.lang.Runnable
            public void run() {
                MarketPlaceActivity.p(MarketPlaceActivity.this);
            }
        }, 1000L);
        Prefs.cQ.set(Boolean.FALSE);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558453;
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            this.m = intent.getStringExtra(Payload.SOURCE);
        }
        setTitle(Activities.getString(2131887751));
        RetentionAnalytics.get();
        RetentionAnalytics.a();
        boolean z = true;
        Prefs.ge.b(1);
        if (Prefs.cJ.get().booleanValue() || !CallAppRemoteConfigManager.get().c("showMarketplaceWidget")) {
            z = false;
        }
        this.l = z;
        int a2 = ThemeUtils.a(CallAppApplication.get(), 2131099891);
        View findViewById = findViewById(2131363743);
        findViewById.setBackgroundColor(a2);
        this.j = new BillingManager(new AnonymousClass1(findViewById));
        this.h = (HorizontalPagerHeader) findViewById(2131362981);
        if (!HttpUtils.a()) {
            finish();
            FeedbackManager.get().a(Activities.getString(2131887407), (Integer) null);
        } else if (!BillingManager.isBillingAvailable()) {
            finish();
            FeedbackManager.get().a(Activities.getString(2131886319), (Integer) null);
        } else {
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f13136a = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887415));
            PopupManager.get().a(this, this.f13136a);
            if ("android.intent.action.SEND".equals(getIntent().getAction())) {
                a(getIntent());
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.MARKET_PLACE_ACTIVITY, 0.0d, Payload.SOURCE, this.m);
        MarketPlaceAdapter marketPlaceAdapter = this.f13137b;
        if (marketPlaceAdapter != null) {
            marketPlaceAdapter.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter2 = this.f13138c;
        if (marketPlaceAdapter2 != null) {
            marketPlaceAdapter2.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter3 = this.e;
        if (marketPlaceAdapter3 != null) {
            marketPlaceAdapter3.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter4 = this.f;
        if (marketPlaceAdapter4 != null) {
            marketPlaceAdapter4.setItemClickedListener(null);
        }
        MarketPlaceAdapter marketPlaceAdapter5 = this.g;
        if (marketPlaceAdapter5 != null) {
            marketPlaceAdapter5.setItemClickedListener(null);
        }
        BillingManager billingManager = this.j;
        if (billingManager != null) {
            billingManager.b();
            this.j = null;
        }
        SimpleProgressDialog.a(this.f13136a);
        this.f13136a = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if ("android.intent.action.SEND".equals(intent.getAction())) {
            a(intent);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        HorizontalPagerHeader horizontalPagerHeader = this.h;
        if (horizontalPagerHeader != null) {
            horizontalPagerHeader.f16811a.c();
        }
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        CallAppInActivityChatHeadManager callAppInActivityChatHeadManager = this.k;
        if (callAppInActivityChatHeadManager != null) {
            callAppInActivityChatHeadManager.k();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.MarketPlaceActivity.16
            @Override // java.lang.Runnable
            public void run() {
                MarketPlaceActivity.this.finish();
            }
        });
    }
}
