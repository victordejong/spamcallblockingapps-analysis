package com.callapp.contacts.activity.marketplace;

import android.animation.ValueAnimator;
import android.os.Bundle;
import android.util.SparseIntArray;
import androidx.fragment.app.Fragment;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.callapp.contacts.activity.base.TopBarFragmentActivity;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ChooseThemeActivity.class */
public class ChooseThemeActivity extends TopBarFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f13072a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13073b;

    /* renamed from: c  reason: collision with root package name */
    private BillingManager f13074c;

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558442;
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity
    public Fragment getNewFragment() {
        ChooseThemeFragment chooseThemeFragment = new ChooseThemeFragment();
        chooseThemeFragment.setAdditionalAnimatorsListener(new BaseChooseThemeFragment.AddValueAnimatorObjects() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeActivity.1
            @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.AddValueAnimatorObjects
            public final List<ValueAnimator> a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(CallappAnimationUtils.a(ChooseThemeActivity.this.getWindow(), 0, sparseIntArray.get(2131099785), sparseIntArray2.get(2131099785)));
                arrayList.add(CallappAnimationUtils.a(ChooseThemeActivity.this.getSupportActionBar(), 1, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                return arrayList;
            }
        });
        return chooseThemeFragment;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        final ChooseThemeFragment chooseThemeFragment = (ChooseThemeFragment) getFragment();
        final String lastChosenThemeSku = chooseThemeFragment.getLastChosenThemeSku();
        if ((!StringUtils.b(this.f13072a, lastChosenThemeSku) || this.f13073b != chooseThemeFragment.isLightTheme()) && !chooseThemeFragment.b(lastChosenThemeSku)) {
            AnalyticsManager.get().a(Constants.SETTINGS, String.format("Change theme from %s to %s", this.f13072a, lastChosenThemeSku), Constants.CLICK);
            this.f13074c = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeActivity.2
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a() {
                    if (ChooseThemeActivity.this.f13074c != null) {
                        ChooseThemeActivity.this.f13074c.a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void a(g gVar, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a(List<i> list) {
                    CatalogManager.CatalogReqBuilder a2 = CatalogManager.get().a(ChooseThemeActivity.this.f13074c, list);
                    a2.f13261a = lastChosenThemeSku;
                    a2.a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeActivity.2.1
                        @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                        public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                            ThemeUtils.a((JSONStoreItem) catalogAttributes.getTheme(), chooseThemeFragment.isLightTheme());
                            ThemeUtils.a(ChooseThemeActivity.this);
                        }
                    });
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
            return;
        }
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(Activities.getString(2131886556));
        if (this.f13072a == null) {
            this.f13072a = ThemeUtils.getThemeName();
            this.f13073b = ((ThemeState) Prefs.di.get()).isLightTheme();
        }
        AnalyticsManager.get().b(Constants.CHOOSE_THEME_SCREEN);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BillingManager billingManager = this.f13074c;
        if (billingManager != null) {
            billingManager.b();
        }
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CHOOSE_THEME_SCREEN);
        super.onDestroy();
    }
}
