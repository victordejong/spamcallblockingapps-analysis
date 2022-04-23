package com.callapp.contacts.activity.marketplace;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.j;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseTopBarActivity;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.activity.marketplace.list.VerticalSpaceItemDecoration;
import com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/StoreItemsListActivity.class */
public abstract class StoreItemsListActivity<T extends JSONStoreItemAppAppearance, U extends StoreItemLoadingViewHolder> extends BaseTopBarActivity {

    /* renamed from: a  reason: collision with root package name */
    protected StoreItemsListActivity<T, U>.StoreItemAdapter f13198a;

    /* renamed from: b  reason: collision with root package name */
    protected BillingManager f13199b;

    /* renamed from: c  reason: collision with root package name */
    protected List<i> f13200c;

    /* renamed from: d  reason: collision with root package name */
    protected CatalogManager.CatalogAttributes f13201d;
    private int e;
    private SimpleProgressDialog f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter.class */
    public final class StoreItemAdapter extends RecyclerView.a<U> {

        /* renamed from: b  reason: collision with root package name */
        private StoreListItemClickEvent f13211b;

        /* renamed from: c  reason: collision with root package name */
        private List<T> f13212c;

        /* renamed from: d  reason: collision with root package name */
        private int f13213d = ThemeUtils.a(CallAppApplication.get(), 2131100140);
        private final CatalogManager.CatalogAttributes e;

        StoreItemAdapter(List<T> list, StoreListItemClickEvent storeListItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes) {
            this.f13212c = list;
            this.f13211b = storeListItemClickEvent;
            this.e = catalogAttributes;
        }

        private U a(ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131559034, viewGroup, false);
            ((CardView) inflate).setCardBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099686));
            try {
                U u = (U) ((StoreItemLoadingViewHolder) StoreItemsListActivity.this.getClassLoader().loadClass(((Class) ((ParameterizedType) StoreItemsListActivity.this.getClass().getGenericSuperclass()).getActualTypeArguments()[1]).getName()).getDeclaredConstructor(View.class, CatalogManager.CatalogAttributes.class, j.class).newInstance(inflate, this.e, StoreItemsListActivity.this.getLifecycle()));
                u.u = true;
                return u;
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                return null;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final int getItemCount() {
            return this.f13212c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ void onBindViewHolder(RecyclerView.v vVar, int i) {
            final StoreItemLoadingViewHolder storeItemLoadingViewHolder = (StoreItemLoadingViewHolder) vVar;
            final T t = this.f13212c.get(storeItemLoadingViewHolder.getAdapterPosition());
            if (t != null) {
                storeItemLoadingViewHolder.getTitle().setTextColor(this.f13213d);
                storeItemLoadingViewHolder.s.setTextColor(this.f13213d);
                storeItemLoadingViewHolder.a(t, new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.StoreItemAdapter.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    public final void a(View view) {
                        StoreItemAdapter.this.f13211b.a(view, storeItemLoadingViewHolder.getImageView(), storeItemLoadingViewHolder.getPromotionContainer());
                    }
                });
                if (StoreUtils.a(t)) {
                    storeItemLoadingViewHolder.getPromotionIcon().setVisibility(0);
                    storeItemLoadingViewHolder.getPromotionText().setVisibility(0);
                    storeItemLoadingViewHolder.getPromotionText().setText(String.valueOf(t.getPromotionPercent()));
                    return;
                }
                storeItemLoadingViewHolder.getPromotionIcon().setVisibility(4);
                storeItemLoadingViewHolder.getPromotionText().setVisibility(4);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
            return a(viewGroup);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent.class */
    public interface StoreListItemClickEvent {
        <Data extends JSONStoreItem> void a(View view, View... viewArr);
    }

    static /* synthetic */ void a(StoreItemsListActivity storeItemsListActivity, final List list) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.3
            @Override // java.lang.Runnable
            public void run() {
                if (StoreItemsListActivity.this.f != null) {
                    StoreItemsListActivity.this.f.dismiss();
                }
                final RecyclerView recyclerView = (RecyclerView) StoreItemsListActivity.this.findViewById(2131363648);
                StoreItemsListActivity storeItemsListActivity2 = StoreItemsListActivity.this;
                storeItemsListActivity2.e = storeItemsListActivity2.getStoreItemType();
                StoreItemsListActivity.this.a(recyclerView, new StoreListItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.3.1
                    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity.StoreListItemClickEvent
                    public final <Data extends JSONStoreItem> void a(View view, View... viewArr) {
                        Intent intent;
                        AndroidUtils.a(view, 1);
                        int e = RecyclerView.e(view);
                        int i = StoreItemsListActivity.this.e;
                        if (i == 0) {
                            intent = SuperSkinDownloaderActivity.a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(e)).getSku());
                        } else if (i != 1) {
                            if (i != 3) {
                                intent = i != 4 ? ThemeDownloaderActivity.a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(e)).getSku()) : KeypadDownloaderActivity.a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(e)).getSku());
                            } else if (((JSONStoreItemAppAppearance) list.get(e)).isCustomizable()) {
                                PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.n;
                                intent = PersonalCallScreenThemeDownloaderActivity.Companion.a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(e)).getSku());
                            } else {
                                intent = CallScreenThemeDownloaderActivity.a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(e)).getSku());
                            }
                        } else if (((JSONStoreItemAppAppearance) list.get(e)).isCustomizable()) {
                            PersonalCoverThemeDownloaderActivity.Companion companion2 = PersonalCoverThemeDownloaderActivity.f;
                            intent = PersonalCoverThemeDownloaderActivity.Companion.a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(e)).getSku());
                        } else {
                            intent = CoverDownloaderActivity.a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(e)).getSku());
                        }
                        StoreUtils.a(StoreItemsListActivity.this, intent, viewArr);
                        StoreItemsListActivity.this.finish();
                    }
                }, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getItemsStore() {
        CatalogManager.get().a(this.f13199b, this.f13200c).a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.2
            @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
            public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                final CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                StoreItemsListActivity.this.f13201d = catalogAttributes2;
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        StoreItemsListActivity.a(StoreItemsListActivity.this, StoreItemsListActivity.this.a(catalogAttributes2));
                    }
                });
            }
        });
    }

    protected abstract List<T> a(CatalogManager.CatalogAttributes catalogAttributes);

    protected void a(RecyclerView recyclerView, StoreListItemClickEvent storeListItemClickEvent, List<T> list) {
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        recyclerView.a(new VerticalSpaceItemDecoration((int) Activities.a(8.0f)), -1);
        recyclerView.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
        StoreItemsListActivity<T, U>.StoreItemAdapter storeItemAdapter = new StoreItemAdapter(list, storeListItemClickEvent, this.f13201d);
        this.f13198a = storeItemAdapter;
        recyclerView.setAdapter(storeItemAdapter);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558869;
    }

    protected abstract int getStoreItemType();

    protected abstract String getStoreTitle();

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
            setTitle(getStoreTitle());
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887415));
            PopupManager.get().a(this, this.f);
            this.f13199b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.1
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a() {
                    if (StoreItemsListActivity.this.f13199b != null) {
                        StoreItemsListActivity.this.f13199b.a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void a(g gVar, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a(List<i> list) {
                    StoreItemsListActivity.this.getItemsStore();
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BillingManager billingManager = this.f13199b;
        if (billingManager != null) {
            billingManager.b();
        }
        super.onDestroy();
    }
}
