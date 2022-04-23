package com.callapp.contacts.activity.marketplace;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.interfaces.OnUseMarketItemListener;
import com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.settings.PreviewThemeFragment;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ThemeDownloaderActivity.class */
public class ThemeDownloaderActivity extends BaseDownloaderActivity<JSONStoreItemTheme> {
    private BillingManager e;
    private PreviewThemeFragment f;

    /* renamed from: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3.class */
    class AnonymousClass3 implements DownloaderCardViewHandler.DownloaderCardEvents {

        /* renamed from: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity$3$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1.class */
        class AnonymousClass1 implements BillingManager.BillingUpdatesListener {
            AnonymousClass1() {
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a() {
                if (ThemeDownloaderActivity.this.e != null) {
                    ThemeDownloaderActivity.this.e.a();
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void a(g gVar, List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a(List<i> list) {
                CatalogManager.CatalogReqBuilder a2 = CatalogManager.get().a(ThemeDownloaderActivity.this.e, list);
                a2.f13261a = "default_1";
                a2.a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.3.1.1
                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                        if (catalogAttributes2 != null) {
                            ThemeUtils.setDefaultTheme(catalogAttributes2.getTheme());
                            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.3.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    FeedbackManager.get().a(Activities.a(2131887637, Activities.getString(2131887901)), (Integer) null);
                                    ThemeUtils.a(ThemeDownloaderActivity.this);
                                }
                            });
                        }
                    }
                });
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        }

        AnonymousClass3() {
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ void a(JSONStoreItem jSONStoreItem, ProgressCardView progressCardView) {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItem, progressCardView);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ boolean a(JSONStoreItem jSONStoreItem) {
            boolean c2;
            c2 = c();
            return c2;
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ void b(JSONStoreItem jSONStoreItem) {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$b(this, jSONStoreItem);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ boolean c() {
            return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final String[] c(JSONStoreItem jSONStoreItem) {
            return new String[0];
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final void d(JSONStoreItem jSONStoreItem) {
            EventBusManager.f14368a.a((EventType<L, EventType<OnUseMarketItemListener, Object>>) OnUseMarketItemListener.f12956a, (EventType<OnUseMarketItemListener, Object>) null, false);
            ThemeUtils.a(jSONStoreItem, ThemeDownloaderActivity.this.f.isLightTheme());
            ThemeUtils.a(ThemeDownloaderActivity.this);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final void e() {
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final void f() {
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final void g() {
            ThemeDownloaderActivity.this.e = new BillingManager(new AnonymousClass1());
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public int getItemType() {
            return DownloaderCardViewHandler.StoreItemType.THEME.ordinal();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ String getLeftButtonPrefixText() {
            return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getLeftButtonPrefixText(this);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public Promotion.ProductType getPromotionType() {
            return Promotion.ProductType.THEME;
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ BooleanPref getPurchasePref() {
            return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getPurchasePref(this);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final boolean h() {
            return !ThemeUtils.isCurrentDefaultTheme();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public final void i() {
            ThemeDownloaderActivity.this.o_();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isLightTheme() {
            return ThemeDownloaderActivity.this.f != null ? ThemeDownloaderActivity.this.f.isLightTheme() : ((ThemeState) Prefs.di.get()).isLightTheme();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isSkuInUse() {
            return StringUtils.b(Prefs.dh.get(), ((JSONStoreItemTheme) ThemeDownloaderActivity.this.f13040a).getSku()) && Objects.a(Boolean.valueOf(((ThemeState) Prefs.di.get()).isLightTheme()), ThemeDownloaderActivity.this.f != null ? Boolean.valueOf(ThemeDownloaderActivity.this.f.isLightTheme()) : null);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public /* synthetic */ void j() {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
        }
    }

    public static Intent a(Activity activity, String str) {
        Intent intent = new Intent(activity, ThemeDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    public static void a(Activity activity, String str, Class cls) {
        Intent a2 = a(activity, str);
        a2.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            a2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        activity.startActivity(a2);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final /* synthetic */ JSONStoreItemTheme a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getTheme();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final void a(int i) {
        super.a(i);
        if (this.f13040a != 0) {
            this.f.setDefaultTheme((JSONStoreItemTheme) this.f13040a);
            if (getSupportFragmentManager().a("THEMES_FRAGMENT") == null) {
                getSupportFragmentManager().a().a(2131362866, this.f, "THEMES_FRAGMENT").b();
            }
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new AnonymousClass3();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.THEME_DOWNLOAD_ACTIVITY);
        PreviewThemeFragment previewThemeFragment = new PreviewThemeFragment();
        this.f = previewThemeFragment;
        previewThemeFragment.setAdditionalAnimatorsListener(new BaseChooseThemeFragment.AddValueAnimatorObjects() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.1
            @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.AddValueAnimatorObjects
            public final List<ValueAnimator> a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(CallappAnimationUtils.a(ThemeDownloaderActivity.this.getWindow(), 0, sparseIntArray.get(2131099785), sparseIntArray2.get(2131099785)));
                arrayList.add(CallappAnimationUtils.a(ThemeDownloaderActivity.this.getSupportActionBar(), 1, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                View cardContainer = ThemeDownloaderActivity.this.getCardContainer();
                if (cardContainer != null) {
                    arrayList.add(CallappAnimationUtils.a((Object) cardContainer, 2, sparseIntArray.get(2131099891), sparseIntArray2.get(2131099891)));
                }
                ProgressCardView progressCardView = ThemeDownloaderActivity.this.getProgressCardView();
                if (progressCardView != null) {
                    arrayList.add(CallappAnimationUtils.a((Object) progressCardView, 10, sparseIntArray.get(2131099686), sparseIntArray2.get(2131099686)));
                    TextView title = progressCardView.getTitle();
                    if (title != null) {
                        arrayList.add(CallappAnimationUtils.a((Object) title, 6, sparseIntArray.get(2131100140), sparseIntArray2.get(2131100140)));
                    }
                    TextView description = progressCardView.getDescription();
                    if (title != null) {
                        arrayList.add(CallappAnimationUtils.a((Object) description, 6, sparseIntArray.get(2131100140), sparseIntArray2.get(2131100140)));
                    }
                    TextView rightButtonText = progressCardView.getRightButtonText();
                    if (title != null) {
                        arrayList.add(CallappAnimationUtils.a((Object) rightButtonText, 6, -1, -1));
                    }
                    Drawable rightButtonContainerBackground = progressCardView.getRightButtonContainerBackground();
                    if (rightButtonContainerBackground instanceof GradientDrawable) {
                        GradientDrawable gradientDrawable = (GradientDrawable) rightButtonContainerBackground;
                        arrayList.add(CallappAnimationUtils.a(gradientDrawable, 8, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                        arrayList.add(CallappAnimationUtils.a(gradientDrawable, 9, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                    }
                    Drawable leftButtonContainerBackground = progressCardView.getLeftButtonContainerBackground();
                    if (leftButtonContainerBackground instanceof GradientDrawable) {
                        GradientDrawable gradientDrawable2 = (GradientDrawable) leftButtonContainerBackground;
                        arrayList.add(CallappAnimationUtils.a(gradientDrawable2, 8, 0, 0));
                        arrayList.add(CallappAnimationUtils.a(gradientDrawable2, 9, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                    }
                    View leftTextView = progressCardView.getLeftTextView();
                    if (leftTextView != null) {
                        arrayList.add(CallappAnimationUtils.a((Object) leftTextView, 6, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                    }
                }
                return arrayList;
            }
        });
        this.f.setThemeChangeEventsListener(new BaseChooseThemeFragment.ThemeChangeEvents() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.2
            @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.ThemeChangeEvents
            public final void a() {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ThemeDownloaderActivity.this.getCardView().a();
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BillingManager billingManager = this.e;
        if (billingManager != null) {
            billingManager.b();
        }
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.THEME_DOWNLOAD_ACTIVITY);
        super.onDestroy();
    }
}
