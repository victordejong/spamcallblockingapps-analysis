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
        this.f11075a = new ArrayList(list);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final boolean b() {
        return CollectionUtils.b((Collection) this.f11075a);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public Data getItemAt(int i) {
        return (Data) ((BaseViewTypeData) ((List) this.f11075a).get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return ((List) this.f11075a).size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public /* bridge */ /* synthetic */ void setData(Object obj) {
        setData((List) ((List) obj));
    }

    public void setData(List<Data> list) {
        ((List) this.f11075a).clear();
        if (CollectionUtils.b(list)) {
            ((List) this.f11075a).addAll(list);
        }
        notifyDataSetChanged();
    }
}
