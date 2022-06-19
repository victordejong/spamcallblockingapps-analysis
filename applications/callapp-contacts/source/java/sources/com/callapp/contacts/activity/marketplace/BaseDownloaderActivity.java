package com.callapp.contacts.activity.marketplace;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
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
import com.google.android.material.C14376a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseDownloaderActivity.class */
public abstract class BaseDownloaderActivity<JsonStoreItem extends JSONStoreItemAppAppearance> extends BaseTopBarActivity {

    /* renamed from: a */
    public JsonStoreItem f23266a;

    /* renamed from: b */
    public BillingManager f23267b;

    /* renamed from: c */
    protected String f23268c;

    /* renamed from: d */
    protected String f23269d;

    /* renamed from: e */
    private DownloaderCardViewHandler f23270e;

    /* renamed from: f */
    private View f23271f;

    /* renamed from: g */
    private View f23272g;

    /* renamed from: h */
    private SimpleProgressDialog f23273h;

    /* renamed from: j */
    private boolean f23274j = false;

    /* renamed from: k */
    private long f23275k;

    private void getItemStore() {
        this.f23275k = System.currentTimeMillis();
        String stringExtra = getIntent().getStringExtra("EXTRA_ITEM_ID");
        this.f23268c = stringExtra;
        if (StringUtils.m26045b((CharSequence) stringExtra)) {
            this.f23267b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.1
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26177a() {
                    if (BaseDownloaderActivity.this.f23267b != null) {
                        BaseDownloaderActivity.this.f23267b.m28298a();
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
                    BaseDownloaderActivity.this.mo29998a(list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: b */
                public /* synthetic */ void mo26174b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
        }
    }

    /* renamed from: a */
    protected abstract JsonStoreItem mo29999a(CatalogManager.CatalogAttributes catalogAttributes);

    /* renamed from: a */
    public void mo30002a(int i) {
        SimpleProgressDialog simpleProgressDialog = this.f23273h;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.dismiss();
        }
        mo29996b();
        View view = this.f23272g;
        if (view != null) {
            if (i < 300) {
                view.setAlpha(1.0f);
                return;
            }
            ObjectAnimator m27173b = CallappAnimationUtils.m27173b(view, 500, 0);
            if (m27173b == null) {
                return;
            }
            m27173b.addListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.3
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    BaseDownloaderActivity.this.f23272g.setAlpha(1.0f);
                }
            });
            m27173b.start();
        }
    }

    /* renamed from: a */
    public void mo29998a(List<C3344i> list) {
        CatalogManager.CatalogReqBuilder m29979a = CatalogManager.get().m29979a(this.f23267b, list);
        m29979a.f23593a = this.f23268c;
        m29979a.f23594b = true;
        m29979a.m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.2
            @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
            public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                BaseDownloaderActivity baseDownloaderActivity = BaseDownloaderActivity.this;
                baseDownloaderActivity.f23266a = (JsonStoreItem) baseDownloaderActivity.mo29999a(catalogAttributes);
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.BaseDownloaderActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BaseDownloaderActivity.this.mo30002a((int) (System.currentTimeMillis() - BaseDownloaderActivity.this.f23275k));
                    }
                });
            }
        });
    }

    /* renamed from: b */
    protected void mo29996b() {
        this.f23270e = new DownloaderCardViewHandler(this, (ProgressCardView) findViewById(2131362628), this.f23266a, getDownloaderListenerEvents(), this.f23269d);
    }

    protected Drawable getActionBarColor() {
        return new ColorDrawable(ThemeUtils.m27386a(this, 2131099784));
    }

    public View getCardContainer() {
        return this.f23271f;
    }

    public DownloaderCardViewHandler getCardView() {
        DownloaderCardViewHandler downloaderCardViewHandler = this.f23270e;
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

    public ProgressCardView getProgressCardView() {
        DownloaderCardViewHandler cardView = getCardView();
        if (cardView != null) {
            return cardView.getProgressCardView();
        }
        return null;
    }

    /* renamed from: o_ */
    public final void m30153o_() {
        if (getIntent() == null || !getIntent().hasExtra("ACTIVITY_SOURCE")) {
            EventBusManager.f25138a.m29043c(ThemeChangedListener.f23141i, null);
            finish();
            return;
        }
        Intent intent = new Intent(CallAppApplication.get(), ContactsListActivity.class);
        intent.setFlags(268484608);
        Activities.m27685a(CallAppApplication.get(), intent);
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.f23274j) {
            this.f23274j = false;
            m30153o_();
        }
        supportFinishAfterTransition();
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!HttpUtils.m26985a()) {
            finish();
            FeedbackManager.get().m28669a(Activities.getString(2131887407), (Integer) null);
        } else if (!BillingManager.isBillingAvailable()) {
            finish();
            FeedbackManager.get().m28669a(Activities.getString(2131886319), (Integer) null);
        } else {
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f23273h = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887415));
            PopupManager.get().m28209a(this, this.f23273h);
            setTitle("");
            if (getSupportActionBar() != null) {
                getSupportActionBar().mo46241a(getActionBarColor());
            }
            View findViewById = findViewById(C14376a.C14382f.container);
            this.f23271f = findViewById;
            findViewById.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
            View findViewById2 = findViewById(2131363705);
            this.f23272g = findViewById2;
            findViewById2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            getItemStore();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        DownloaderCardViewHandler downloaderCardViewHandler = this.f23270e;
        if (downloaderCardViewHandler != null) {
            if (downloaderCardViewHandler.f23365a != null) {
                downloaderCardViewHandler.f23365a.cancel();
            }
            if (downloaderCardViewHandler.f23366b != null) {
                CallAppApplication.get().m31861c(downloaderCardViewHandler.f23366b);
            }
            this.f23270e = null;
        }
        BillingManager billingManager = this.f23267b;
        if (billingManager != null) {
            billingManager.m28290b();
            this.f23267b = null;
        }
        SimpleProgressDialog simpleProgressDialog = this.f23273h;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.dismiss();
            this.f23273h = null;
        }
        super.onDestroy();
    }

    public void setUserBuyProduct(boolean z) {
        this.f23274j = z;
    }
}
