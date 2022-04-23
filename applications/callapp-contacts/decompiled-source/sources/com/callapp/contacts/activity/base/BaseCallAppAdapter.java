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
public abstract class BaseCallAppAdapter<DataHolder, Data extends BaseViewTypeData, ViewHolder extends BaseCallAppViewHolder> extends RecyclerView.a<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    public DataHolder f11075a;

    /* renamed from: b  reason: collision with root package name */
    protected StoreItemAssetManager f11076b;

    /* renamed from: d  reason: collision with root package name */
    private BaseContactHolder.OnDataLoadListener f11078d = new BaseContactHolder.OnDataLoadListener() { // from class: com.callapp.contacts.activity.base.BaseCallAppAdapter.1
        @Override // com.callapp.contacts.activity.base.BaseContactHolder.OnDataLoadListener
        public final void a(BaseAdapterItemData baseAdapterItemData) {
            BaseCallAppAdapter.this.a(baseAdapterItemData, true);
            baseAdapterItemData.setLoaded(true);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private CallAppEnrichedItemsManager f11077c = new CallAppEnrichedItemsManager();

    public BaseCallAppAdapter(StoreItemAssetManager storeItemAssetManager) {
        this.f11076b = storeItemAssetManager;
    }

    public final void a(int i, List<Object> list) {
        if (CollectionUtils.b(list) && (list.get(0) instanceof Boolean)) {
            boolean booleanValue = ((Boolean) list.get(0)).booleanValue();
            Data itemAt = getItemAt(i);
            if (itemAt != null && booleanValue && this.f11077c.isTypeAbleToEnrich(itemAt.getViewType())) {
                a((BaseAdapterItemData) itemAt);
            }
        }
    }

    protected void a(BaseAdapterItemData baseAdapterItemData) {
        a(baseAdapterItemData, false);
    }

    public final void a(BaseAdapterItemData baseAdapterItemData, boolean z) {
        this.f11077c.a(baseAdapterItemData, z);
    }

    protected abstract void a(ViewHolder viewholder, Data data);

    public boolean b() {
        return this.f11075a != null;
    }

    public final void c() {
        this.f11077c.f14812a.clear();
    }

    public abstract Data getItemAt(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        Data itemAt = getItemAt(i);
        return itemAt != null ? itemAt.getViewType() : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(RecyclerView.v vVar, int i) {
        BaseCallAppViewHolder baseCallAppViewHolder = (BaseCallAppViewHolder) vVar;
        BaseViewTypeData itemAt = getItemAt(i);
        if (itemAt instanceof BaseAdapterItemData) {
            BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) itemAt;
            baseAdapterItemData.setLoaded(this.f11077c.f14812a.contains(baseAdapterItemData));
        }
        baseCallAppViewHolder.r = this.f11078d;
        a((BaseCallAppAdapter<DataHolder, Data, ViewHolder>) baseCallAppViewHolder, (BaseCallAppViewHolder) itemAt);
    }

    public abstract void setData(DataHolder dataholder);
}
