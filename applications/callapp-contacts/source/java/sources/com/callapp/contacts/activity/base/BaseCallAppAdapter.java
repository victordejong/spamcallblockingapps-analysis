package com.callapp.contacts.activity.base;

import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.manager.CallAppEnrichedItemsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.framework.util.CollectionUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppAdapter.class */
public abstract class BaseCallAppAdapter<DataHolder, Data extends BaseViewTypeData, ViewHolder extends BaseCallAppViewHolder> extends RecyclerView.AbstractC2626a<ViewHolder> {

    /* renamed from: a */
    public DataHolder f20245a;

    /* renamed from: b */
    protected StoreItemAssetManager f20246b;

    /* renamed from: d */
    private BaseContactHolder.OnDataLoadListener f20248d = new BaseContactHolder.OnDataLoadListener() { // from class: com.callapp.contacts.activity.base.BaseCallAppAdapter.1
        @Override // com.callapp.contacts.activity.base.BaseContactHolder.OnDataLoadListener
        /* renamed from: a */
        public final void mo30683a(BaseAdapterItemData baseAdapterItemData) {
            BaseCallAppAdapter.this.m31514a(baseAdapterItemData, true);
            baseAdapterItemData.setLoaded(true);
        }
    };

    /* renamed from: c */
    private CallAppEnrichedItemsManager f20247c = new CallAppEnrichedItemsManager();

    public BaseCallAppAdapter(StoreItemAssetManager storeItemAssetManager) {
        this.f20246b = storeItemAssetManager;
    }

    /* renamed from: a */
    public final void m31515a(int i, List<Object> list) {
        if (!CollectionUtils.m26068b(list) || !(list.get(0) instanceof Boolean)) {
            return;
        }
        boolean booleanValue = ((Boolean) list.get(0)).booleanValue();
        Data itemAt = getItemAt(i);
        if (itemAt == null || !booleanValue || !this.f20247c.isTypeAbleToEnrich(itemAt.getViewType())) {
            return;
        }
        mo30687a((BaseAdapterItemData) itemAt);
    }

    /* renamed from: a */
    protected void mo30687a(BaseAdapterItemData baseAdapterItemData) {
        m31514a(baseAdapterItemData, false);
    }

    /* renamed from: a */
    public final void m31514a(BaseAdapterItemData baseAdapterItemData, boolean z) {
        this.f20247c.m28706a(baseAdapterItemData, z);
    }

    /* renamed from: a */
    protected abstract void mo29362a(ViewHolder viewholder, Data data);

    /* renamed from: b */
    public boolean mo31506b() {
        return this.f20245a != null;
    }

    /* renamed from: c */
    public final void m31513c() {
        this.f20247c.f25611a.clear();
    }

    public abstract Data getItemAt(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        Data itemAt = getItemAt(i);
        return itemAt != null ? itemAt.getViewType() : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
        BaseCallAppViewHolder baseCallAppViewHolder = (BaseCallAppViewHolder) abstractC2657v;
        BaseViewTypeData itemAt = getItemAt(i);
        if (itemAt instanceof BaseAdapterItemData) {
            BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) itemAt;
            baseAdapterItemData.setLoaded(this.f20247c.f25611a.contains(baseAdapterItemData));
        }
        baseCallAppViewHolder.f20271r = this.f20248d;
        mo29362a((BaseCallAppAdapter<DataHolder, Data, ViewHolder>) baseCallAppViewHolder, (BaseCallAppViewHolder) itemAt);
    }

    public abstract void setData(DataHolder dataholder);
}
