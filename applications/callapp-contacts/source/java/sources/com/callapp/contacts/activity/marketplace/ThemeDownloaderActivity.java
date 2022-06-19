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
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
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

    /* renamed from: e */
    private BillingManager f23533e;

    /* renamed from: f */
    private PreviewThemeFragment f23534f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3.class */
    public class C67653 implements DownloaderCardViewHandler.DownloaderCardEvents {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity$3$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1.class */
        public class C67661 implements BillingManager.BillingUpdatesListener {
            C67661() {
                C67653.this = r4;
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26177a() {
                if (ThemeDownloaderActivity.this.f23533e != null) {
                    ThemeDownloaderActivity.this.f23533e.m28298a();
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
                CatalogManager.CatalogReqBuilder m29979a = CatalogManager.get().m29979a(ThemeDownloaderActivity.this.f23533e, list);
                m29979a.f23593a = "default_1";
                m29979a.m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.3.1.1
                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                        if (catalogAttributes2 != null) {
                            ThemeUtils.setDefaultTheme(catalogAttributes2.getTheme());
                            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.3.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    FeedbackManager.get().m28669a(Activities.m27697a(2131887637, Activities.getString(2131887901)), (Integer) null);
                                    ThemeUtils.m27387a(ThemeDownloaderActivity.this);
                                }
                            });
                        }
                    }
                });
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: b */
            public /* synthetic */ void mo26174b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        }

        C67653() {
            ThemeDownloaderActivity.this = r4;
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: a */
        public /* synthetic */ void mo30015a(JSONStoreItem jSONStoreItem, ProgressCardView progressCardView) {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItem, progressCardView);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: a */
        public /* synthetic */ boolean mo30016a(JSONStoreItem jSONStoreItem) {
            boolean mo30013c;
            mo30013c = mo30013c();
            return mo30013c;
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: b */
        public /* synthetic */ void mo30014b(JSONStoreItem jSONStoreItem) {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$b(this, jSONStoreItem);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: c */
        public /* synthetic */ boolean mo30013c() {
            return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: c */
        public final String[] mo30012c(JSONStoreItem jSONStoreItem) {
            return new String[0];
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: d */
        public final void mo30011d(JSONStoreItem jSONStoreItem) {
            EventBusManager.f25138a.m29046a((EventType<L, EventType<OnUseMarketItemListener, Object>>) OnUseMarketItemListener.f23130a, (EventType<OnUseMarketItemListener, Object>) null, false);
            ThemeUtils.m27382a(jSONStoreItem, ThemeDownloaderActivity.this.f23534f.isLightTheme());
            ThemeUtils.m27387a(ThemeDownloaderActivity.this);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: e */
        public final void mo30010e() {
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: f */
        public final void mo30009f() {
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: g */
        public final void mo30008g() {
            ThemeDownloaderActivity.this.f23533e = new BillingManager(new C67661());
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
        /* renamed from: h */
        public final boolean mo30007h() {
            return !ThemeUtils.isCurrentDefaultTheme();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: i */
        public final void mo30006i() {
            ThemeDownloaderActivity.this.m30153o_();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isLightTheme() {
            return ThemeDownloaderActivity.this.f23534f != null ? ThemeDownloaderActivity.this.f23534f.isLightTheme() : ((ThemeState) Prefs.f26417di.get()).isLightTheme();
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        public boolean isSkuInUse() {
            return StringUtils.m26042b(Prefs.f26416dh.get(), ((JSONStoreItemTheme) ThemeDownloaderActivity.this.f23266a).getSku()) && Objects.m31915a(Boolean.valueOf(((ThemeState) Prefs.f26417di.get()).isLightTheme()), ThemeDownloaderActivity.this.f23534f != null ? Boolean.valueOf(ThemeDownloaderActivity.this.f23534f.isLightTheme()) : null);
        }

        @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
        /* renamed from: j */
        public /* synthetic */ void mo30005j() {
            DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
        }
    }

    /* renamed from: a */
    public static Intent m30023a(Activity activity, String str) {
        Intent intent = new Intent(activity, ThemeDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    /* renamed from: a */
    public static void m30022a(Activity activity, String str, Class cls) {
        Intent m30023a = m30023a(activity, str);
        m30023a.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            m30023a.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        activity.startActivity(m30023a);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    protected final /* synthetic */ JSONStoreItemTheme mo29999a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getTheme();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public final void mo30002a(int i) {
        super.mo30002a(i);
        if (this.f23266a != 0) {
            this.f23534f.setDefaultTheme((JSONStoreItemTheme) this.f23266a);
            if (getSupportFragmentManager().m43740a("THEMES_FRAGMENT") != null) {
                return;
            }
            getSupportFragmentManager().m43765a().m43541a(2131362866, this.f23534f, "THEMES_FRAGMENT").mo43536b();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new C67653();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().mo28441b(Constants.THEME_DOWNLOAD_ACTIVITY);
        PreviewThemeFragment previewThemeFragment = new PreviewThemeFragment();
        this.f23534f = previewThemeFragment;
        previewThemeFragment.setAdditionalAnimatorsListener(new BaseChooseThemeFragment.AddValueAnimatorObjects() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.1
            @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.AddValueAnimatorObjects
            /* renamed from: a */
            public final List<ValueAnimator> mo30018a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(CallappAnimationUtils.m27177a(ThemeDownloaderActivity.this.getWindow(), 0, sparseIntArray.get(2131099785), sparseIntArray2.get(2131099785)));
                arrayList.add(CallappAnimationUtils.m27177a(ThemeDownloaderActivity.this.getSupportActionBar(), 1, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                View cardContainer = ThemeDownloaderActivity.this.getCardContainer();
                if (cardContainer != null) {
                    arrayList.add(CallappAnimationUtils.m27177a((Object) cardContainer, 2, sparseIntArray.get(2131099891), sparseIntArray2.get(2131099891)));
                }
                ProgressCardView progressCardView = ThemeDownloaderActivity.this.getProgressCardView();
                if (progressCardView != null) {
                    arrayList.add(CallappAnimationUtils.m27177a((Object) progressCardView, 10, sparseIntArray.get(2131099686), sparseIntArray2.get(2131099686)));
                    TextView title = progressCardView.getTitle();
                    if (title != null) {
                        arrayList.add(CallappAnimationUtils.m27177a((Object) title, 6, sparseIntArray.get(2131100140), sparseIntArray2.get(2131100140)));
                    }
                    TextView description = progressCardView.getDescription();
                    if (title != null) {
                        arrayList.add(CallappAnimationUtils.m27177a((Object) description, 6, sparseIntArray.get(2131100140), sparseIntArray2.get(2131100140)));
                    }
                    TextView rightButtonText = progressCardView.getRightButtonText();
                    if (title != null) {
                        arrayList.add(CallappAnimationUtils.m27177a((Object) rightButtonText, 6, -1, -1));
                    }
                    Drawable rightButtonContainerBackground = progressCardView.getRightButtonContainerBackground();
                    if (rightButtonContainerBackground instanceof GradientDrawable) {
                        GradientDrawable gradientDrawable = (GradientDrawable) rightButtonContainerBackground;
                        arrayList.add(CallappAnimationUtils.m27177a(gradientDrawable, 8, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                        arrayList.add(CallappAnimationUtils.m27177a(gradientDrawable, 9, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                    }
                    Drawable leftButtonContainerBackground = progressCardView.getLeftButtonContainerBackground();
                    if (leftButtonContainerBackground instanceof GradientDrawable) {
                        GradientDrawable gradientDrawable2 = (GradientDrawable) leftButtonContainerBackground;
                        arrayList.add(CallappAnimationUtils.m27177a(gradientDrawable2, 8, 0, 0));
                        arrayList.add(CallappAnimationUtils.m27177a(gradientDrawable2, 9, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                    }
                    View leftTextView = progressCardView.getLeftTextView();
                    if (leftTextView != null) {
                        arrayList.add(CallappAnimationUtils.m27177a((Object) leftTextView, 6, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                    }
                }
                return arrayList;
            }
        });
        this.f23534f.setThemeChangeEventsListener(new BaseChooseThemeFragment.ThemeChangeEvents() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.2
            @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.ThemeChangeEvents
            /* renamed from: a */
            public final void mo30017a() {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.ThemeDownloaderActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ThemeDownloaderActivity.this.getCardView().m30120a();
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BillingManager billingManager = this.f23533e;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.THEME_DOWNLOAD_ACTIVITY);
        super.onDestroy();
    }
}
