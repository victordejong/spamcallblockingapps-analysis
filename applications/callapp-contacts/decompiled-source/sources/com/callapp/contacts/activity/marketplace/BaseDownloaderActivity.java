package com.callapp.contacts.activity.marketplace;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseTopBarActivity;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseDownloaderActivity.class */
public abstract class BaseDownloaderActivity<JsonStoreItem extends JSONStoreItemAppAppearance> extends BaseTopBarActivity {

    /* renamed from: a  reason: collision with root package name */
    public JsonStoreItem f13040a;

    /* renamed from: b  reason: collision with root package name */
    public BillingManager f13041b;

    /* renamed from: c  reason: collision with root package name */
    protected String f13042c;

    /* renamed from: d  reason: collision with root package name */
    protected String f13043d;
    private DownloaderCardViewHandler e;
    private View f;
    private View g;
    private SimpleProgressDialog h;
    private boolean j = false;
    private long k;

    private void getItemStore() {
        this.k = System.currentTimeMillis();
        String stringExtra = getIntent().getStringExtra("EXTRA_ITEM_ID");
        this.f13042c = stringExtra;
        if (StringUtils.b((CharSequence) stringExtra)) {
            this.f13041b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.1
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a() {
                    if (BaseDownloaderActivity.this.f13041b != null) {
                        BaseDownloaderActivity.this.f13041b.a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void a(g gVar, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a(List<i> list) {
                    BaseDownloaderActivity.this.a(list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
        }
    }

    protected abstract JsonStoreItem a(CatalogManager.CatalogAttributes catalogAttributes);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        SimpleProgressDialog simpleProgressDialog = this.h;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.dismiss();
        }
        b();
        View view = this.g;
        if (view == null) {
            return;
        }
        if (i < 300) {
            view.setAlpha(1.0f);
            return;
        }
        ObjectAnimator b2 = CallappAnimationUtils.b(view, 500, 0);
        if (b2 != null) {
            b2.addListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.3
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    BaseDownloaderActivity.this.g.setAlpha(1.0f);
                }
            });
            b2.start();
        }
    }

    public void a(List<i> list) {
        CatalogManager.CatalogReqBuilder a2 = CatalogManager.get().a(this.f13041b, list);
        a2.f13261a = this.f13042c;
        a2.f13262b = true;
        a2.a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.2
            @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
            public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                BaseDownloaderActivity baseDownloaderActivity = BaseDownloaderActivity.this;
                baseDownloaderActivity.f13040a = (JsonStoreItem) baseDownloaderActivity.a(catalogAttributes);
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BaseDownloaderActivity.this.a((int) (System.currentTimeMillis() - BaseDownloaderActivity.this.k));
                    }
                });
            }
        });
    }

    protected void b() {
        this.e = new DownloaderCardViewHandler(this, (ProgressCardView) findViewById(2131362628), this.f13040a, getDownloaderListenerEvents(), this.f13043d);
    }

    protected Drawable getActionBarColor() {
        return new ColorDrawable(ThemeUtils.a(this, 2131099784));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View getCardContainer() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DownloaderCardViewHandler getCardView() {
        DownloaderCardViewHandler downloaderCardViewHandler = this.e;
        if (downloaderCardViewHandler != null) {
            return downloaderCardViewHandler;
        }
        return null;
    }

    abstract DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents();

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558473;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ProgressCardView getProgressCardView() {
        DownloaderCardViewHandler cardView = getCardView();
        if (cardView != null) {
            return cardView.getProgressCardView();
        }
        return null;
    }

    public final void o_() {
        if (getIntent() == null || !getIntent().hasExtra("ACTIVITY_SOURCE")) {
            EventBusManager.f14368a.c(ThemeChangedListener.i, null);
            finish();
            return;
        }
        Intent intent = new Intent(CallAppApplication.get(), ContactsListActivity.class);
        intent.setFlags(268484608);
        Activities.a(CallAppApplication.get(), intent);
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.j) {
            this.j = false;
            o_();
        }
        supportFinishAfterTransition();
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!HttpUtils.a()) {
            finish();
            FeedbackManager.get().a(Activities.getString(2131887407), (Integer) null);
        } else if (!BillingManager.isBillingAvailable()) {
            finish();
            FeedbackManager.get().a(Activities.getString(2131886319), (Integer) null);
        } else {
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.h = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887415));
            PopupManager.get().a(this, this.h);
            setTitle("");
            if (getSupportActionBar() != null) {
                getSupportActionBar().a(getActionBarColor());
            }
            View findViewById = findViewById(a.f.container);
            this.f = findViewById;
            findViewById.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
            View findViewById2 = findViewById(2131363705);
            this.g = findViewById2;
            findViewById2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            getItemStore();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        DownloaderCardViewHandler downloaderCardViewHandler = this.e;
        if (downloaderCardViewHandler != null) {
            if (downloaderCardViewHandler.f13102a != null) {
                downloaderCardViewHandler.f13102a.cancel();
            }
            if (downloaderCardViewHandler.f13103b != null) {
                CallAppApplication.get().c(downloaderCardViewHandler.f13103b);
            }
            this.e = null;
        }
        BillingManager billingManager = this.f13041b;
        if (billingManager != null) {
            billingManager.b();
            this.f13041b = null;
        }
        SimpleProgressDialog simpleProgressDialog = this.h;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.dismiss();
            this.h = null;
        }
        super.onDestroy();
    }

    public void setUserBuyProduct(boolean z) {
        this.j = z;
    }
}
