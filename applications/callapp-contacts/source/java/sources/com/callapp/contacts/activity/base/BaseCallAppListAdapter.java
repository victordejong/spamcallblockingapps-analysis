package com.callapp.contacts.activity.base;

import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppListAdapter.class */
public abstract class BaseCallAppListAdapter<Data extends BaseViewTypeData, ViewHolder extends BaseCallAppViewHolder> extends BaseCallAppAdapter<List<Data>, Data, ViewHolder> {
    public BaseCallAppListAdapter(List<Data> list) {
        this(list, null);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [DataHolder, java.util.ArrayList] */
    public BaseCallAppListAdapter(List<Data> list, StoreItemAssetManager storeItemAssetManager) {
        super(storeItemAssetManager);
        this.f20245a = new ArrayList(list);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: b */
    public final boolean mo31506b() {
        return CollectionUtils.m26068b((Collection) this.f20245a);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public Data getItemAt(int i) {
        return (Data) ((List) this.f20245a).get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return ((List) this.f20245a).size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public /* bridge */ /* synthetic */ void setData(Object obj) {
        setData((List) ((List) obj));
    }

    public void setData(List<Data> list) {
        ((List) this.f20245a).clear();
        if (CollectionUtils.m26068b(list)) {
            ((List) this.f20245a).addAll(list);
        }
        notifyDataSetChanged();
    }
}
