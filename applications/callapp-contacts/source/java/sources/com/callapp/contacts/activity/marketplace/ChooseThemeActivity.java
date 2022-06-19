package com.callapp.contacts.activity.marketplace;

import android.animation.ValueAnimator;
import android.os.Bundle;
import android.util.SparseIntArray;
import androidx.fragment.app.Fragment;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
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

    /* renamed from: a */
    private String f23329a;

    /* renamed from: b */
    private boolean f23330b;

    /* renamed from: c */
    private BillingManager f23331c;

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558442;
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity
    public Fragment getNewFragment() {
        ChooseThemeFragment chooseThemeFragment = new ChooseThemeFragment();
        chooseThemeFragment.setAdditionalAnimatorsListener(new BaseChooseThemeFragment.AddValueAnimatorObjects() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeActivity.1
            @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.AddValueAnimatorObjects
            /* renamed from: a */
            public final List<ValueAnimator> mo30018a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(CallappAnimationUtils.m27177a(ChooseThemeActivity.this.getWindow(), 0, sparseIntArray.get(2131099785), sparseIntArray2.get(2131099785)));
                arrayList.add(CallappAnimationUtils.m27177a(ChooseThemeActivity.this.getSupportActionBar(), 1, sparseIntArray.get(2131099784), sparseIntArray2.get(2131099784)));
                return arrayList;
            }
        });
        return chooseThemeFragment;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        final ChooseThemeFragment chooseThemeFragment = (ChooseThemeFragment) getFragment();
        final String lastChosenThemeSku = chooseThemeFragment.getLastChosenThemeSku();
        if ((StringUtils.m26042b(this.f23329a, lastChosenThemeSku) && this.f23330b == chooseThemeFragment.isLightTheme()) || chooseThemeFragment.m30156b(lastChosenThemeSku)) {
            super.onBackPressed();
            return;
        }
        AnalyticsManager.get().m28449a(Constants.SETTINGS, String.format("Change theme from %s to %s", this.f23329a, lastChosenThemeSku), Constants.CLICK);
        this.f23331c = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeActivity.2
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26177a() {
                if (ChooseThemeActivity.this.f23331c != null) {
                    ChooseThemeActivity.this.f23331c.m28298a();
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
                CatalogManager.CatalogReqBuilder m29979a = CatalogManager.get().m29979a(ChooseThemeActivity.this.f23331c, list);
                m29979a.f23593a = lastChosenThemeSku;
                m29979a.m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeActivity.2.1
                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        ThemeUtils.m27382a((JSONStoreItem) catalogAttributes.getTheme(), chooseThemeFragment.isLightTheme());
                        ThemeUtils.m27387a(ChooseThemeActivity.this);
                    }
                });
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: b */
            public /* synthetic */ void mo26174b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(Activities.getString(2131886556));
        if (this.f23329a == null) {
            this.f23329a = ThemeUtils.getThemeName();
            this.f23330b = ((ThemeState) Prefs.f26417di.get()).isLightTheme();
        }
        AnalyticsManager.get().mo28441b(Constants.CHOOSE_THEME_SCREEN);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BillingManager billingManager = this.f23331c;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CHOOSE_THEME_SCREEN);
        super.onDestroy();
    }
}
