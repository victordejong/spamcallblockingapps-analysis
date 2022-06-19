package com.callapp.contacts.activity.marketplace;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.AbstractC1253j;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
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

    /* renamed from: a */
    protected StoreItemsListActivity<T, U>.StoreItemAdapter f23494a;

    /* renamed from: b */
    protected BillingManager f23495b;

    /* renamed from: c */
    protected List<C3344i> f23496c;

    /* renamed from: d */
    protected CatalogManager.CatalogAttributes f23497d;

    /* renamed from: e */
    private int f23498e;

    /* renamed from: f */
    private SimpleProgressDialog f23499f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter.class */
    public final class StoreItemAdapter extends RecyclerView.AbstractC2626a<U> {

        /* renamed from: b */
        private StoreListItemClickEvent f23509b;

        /* renamed from: c */
        private List<T> f23510c;

        /* renamed from: d */
        private int f23511d = ThemeUtils.m27386a(CallAppApplication.get(), 2131100140);

        /* renamed from: e */
        private final CatalogManager.CatalogAttributes f23512e;

        StoreItemAdapter(List<T> list, StoreListItemClickEvent storeListItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes) {
            StoreItemsListActivity.this = r5;
            this.f23510c = list;
            this.f23509b = storeListItemClickEvent;
            this.f23512e = catalogAttributes;
        }

        /* renamed from: a */
        private U m30040a(ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131559034, viewGroup, false);
            ((CardView) inflate).setCardBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099686));
            try {
                U u = (U) StoreItemsListActivity.this.getClassLoader().loadClass(((Class) ((ParameterizedType) StoreItemsListActivity.this.getClass().getGenericSuperclass()).getActualTypeArguments()[1]).getName()).getDeclaredConstructor(View.class, CatalogManager.CatalogAttributes.class, AbstractC1253j.class).newInstance(inflate, this.f23512e, StoreItemsListActivity.this.getLifecycle());
                u.f23829u = true;
                return u;
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                return null;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final int getItemCount() {
            return this.f23510c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
            final StoreItemLoadingViewHolder storeItemLoadingViewHolder = (StoreItemLoadingViewHolder) abstractC2657v;
            final T t = this.f23510c.get(storeItemLoadingViewHolder.getAdapterPosition());
            if (t != null) {
                storeItemLoadingViewHolder.getTitle().setTextColor(this.f23511d);
                storeItemLoadingViewHolder.f23827s.setTextColor(this.f23511d);
                storeItemLoadingViewHolder.m29851a(t, new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.StoreItemAdapter.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    /* renamed from: a */
                    public final void mo26371a(View view) {
                        StoreItemAdapter.this.f23509b.mo30038a(view, storeItemLoadingViewHolder.getImageView(), storeItemLoadingViewHolder.getPromotionContainer());
                    }
                });
                if (!StoreUtils.m29951a(t)) {
                    storeItemLoadingViewHolder.getPromotionIcon().setVisibility(4);
                    storeItemLoadingViewHolder.getPromotionText().setVisibility(4);
                    return;
                }
                storeItemLoadingViewHolder.getPromotionIcon().setVisibility(0);
                storeItemLoadingViewHolder.getPromotionText().setVisibility(0);
                storeItemLoadingViewHolder.getPromotionText().setText(String.valueOf(t.getPromotionPercent()));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
            return m30040a(viewGroup);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent.class */
    public interface StoreListItemClickEvent {
        /* renamed from: a */
        <Data extends JSONStoreItem> void mo30038a(View view, View... viewArr);
    }

    /* renamed from: a */
    static /* synthetic */ void m30043a(StoreItemsListActivity storeItemsListActivity, final List list) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.3
            @Override // java.lang.Runnable
            public void run() {
                if (StoreItemsListActivity.this.f23499f != null) {
                    StoreItemsListActivity.this.f23499f.dismiss();
                }
                final RecyclerView recyclerView = (RecyclerView) StoreItemsListActivity.this.findViewById(2131363648);
                StoreItemsListActivity storeItemsListActivity2 = StoreItemsListActivity.this;
                storeItemsListActivity2.f23498e = storeItemsListActivity2.getStoreItemType();
                StoreItemsListActivity.this.mo30046a(recyclerView, new StoreListItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.3.1
                    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity.StoreListItemClickEvent
                    /* renamed from: a */
                    public final <Data extends JSONStoreItem> void mo30038a(View view, View... viewArr) {
                        Intent intent;
                        AndroidUtils.m27630a(view, 1);
                        int m40442e = RecyclerView.m40442e(view);
                        int i = StoreItemsListActivity.this.f23498e;
                        if (i == 0) {
                            intent = SuperSkinDownloaderActivity.m30037a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(m40442e)).getSku());
                        } else if (i != 1) {
                            if (i != 3) {
                                intent = i != 4 ? ThemeDownloaderActivity.m30023a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(m40442e)).getSku()) : KeypadDownloaderActivity.m30099a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(m40442e)).getSku());
                            } else if (((JSONStoreItemAppAppearance) list.get(m40442e)).isCustomizable()) {
                                PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
                                intent = PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(m40442e)).getSku());
                            } else {
                                intent = CallScreenThemeDownloaderActivity.m30147a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(m40442e)).getSku());
                            }
                        } else if (((JSONStoreItemAppAppearance) list.get(m40442e)).isCustomizable()) {
                            PersonalCoverThemeDownloaderActivity.Companion companion2 = PersonalCoverThemeDownloaderActivity.f23478f;
                            intent = PersonalCoverThemeDownloaderActivity.Companion.m30051a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(m40442e)).getSku());
                        } else {
                            intent = CoverDownloaderActivity.m30129a(StoreItemsListActivity.this, ((JSONStoreItemAppAppearance) list.get(m40442e)).getSku());
                        }
                        StoreUtils.m29953a(StoreItemsListActivity.this, intent, viewArr);
                        StoreItemsListActivity.this.finish();
                    }
                }, list);
            }
        });
    }

    public void getItemsStore() {
        CatalogManager.get().m29979a(this.f23495b, this.f23496c).m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.2
            @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
            public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                final CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                StoreItemsListActivity.this.f23497d = catalogAttributes2;
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        StoreItemsListActivity.m30043a(StoreItemsListActivity.this, StoreItemsListActivity.this.mo30004a(catalogAttributes2));
                    }
                });
            }
        });
    }

    /* renamed from: a */
    protected abstract List<T> mo30004a(CatalogManager.CatalogAttributes catalogAttributes);

    /* renamed from: a */
    protected void mo30046a(RecyclerView recyclerView, StoreListItemClickEvent storeListItemClickEvent, List<T> list) {
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        recyclerView.m40480a(new VerticalSpaceItemDecoration((int) Activities.m27699a(8.0f)), -1);
        recyclerView.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        StoreItemsListActivity<T, U>.StoreItemAdapter storeItemAdapter = new StoreItemAdapter(list, storeListItemClickEvent, this.f23497d);
        this.f23494a = storeItemAdapter;
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
        if (!HttpUtils.m26985a()) {
            finish();
            FeedbackManager.get().m28669a(Activities.getString(2131887407), (Integer) null);
        } else if (!BillingManager.isBillingAvailable()) {
            finish();
            FeedbackManager.get().m28669a(Activities.getString(2131886319), (Integer) null);
        } else {
            setTitle(getStoreTitle());
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f23499f = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887415));
            PopupManager.get().m28209a(this, this.f23499f);
            this.f23495b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.StoreItemsListActivity.1
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26177a() {
                    if (StoreItemsListActivity.this.f23495b != null) {
                        StoreItemsListActivity.this.f23495b.m28298a();
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
                    StoreItemsListActivity.this.getItemsStore();
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: b */
                public /* synthetic */ void mo26174b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BillingManager billingManager = this.f23495b;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        super.onDestroy();
    }
}
