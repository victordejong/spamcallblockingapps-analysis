package com.callapp.contacts.activity.marketplace;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.StoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemKeypad;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceListKeypadAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.KeypadViewHolder;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity.class */
public class KeypadStoreItemsListActivity extends StoreItemsListActivity<JSONStoreItemKeypad, KeypadViewHolder> {
    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected final List<JSONStoreItemKeypad> a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getAvilableKeypads();
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected final void a(RecyclerView recyclerView, StoreItemsListActivity.StoreListItemClickEvent storeListItemClickEvent, List<JSONStoreItemKeypad> list) {
        recyclerView.setLayoutManager(new GridLayoutManager(this, 2));
        recyclerView.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
        recyclerView.setAdapter(new MarketPlaceListKeypadAdapter(list, new MarketPlaceAdapter.MarketItemClickEvent() { // from class: com.callapp.contacts.activity.marketplace.KeypadStoreItemsListActivity.1
            @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.MarketItemClickEvent
            public final <T extends JSONStoreItem> void a(T t, View... viewArr) {
                StoreUtils.a(KeypadStoreItemsListActivity.this, KeypadDownloaderActivity.a(KeypadStoreItemsListActivity.this, t.getSku()), viewArr);
            }
        }, this.f13201d, 2131558773, getLifecycle()));
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558837;
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected int getStoreItemType() {
        return 4;
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected String getStoreTitle() {
        return Activities.getString(2131887134);
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((ImageView) findViewById(2131362075), 2131232092, this);
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }
}
