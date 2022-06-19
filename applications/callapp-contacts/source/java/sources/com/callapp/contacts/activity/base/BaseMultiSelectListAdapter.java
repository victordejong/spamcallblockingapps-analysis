package com.callapp.contacts.activity.base;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseContactHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseMultiSelectListAdapter.class */
public abstract class BaseMultiSelectListAdapter<ItemData extends BaseAdapterItemData, ViewHolder extends BaseContactHolder> extends BaseCallAppListAdapter<ItemData, ViewHolder> {

    /* renamed from: d */
    private MultiSelectEvents f20333d;

    /* renamed from: c */
    private final ArrayList<ItemData> f20332c = new ArrayList<>();

    /* renamed from: e */
    private boolean f20334e = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents.class */
    public interface MultiSelectEvents {
        void onMultiSelectModeToggled(boolean z, int i);

        void onSelectedAmountChanged(int i);
    }

    public BaseMultiSelectListAdapter(List<ItemData> list) {
        super(list);
    }

    /* renamed from: c */
    private boolean m31483c(ItemData itemdata) {
        boolean z;
        synchronized (this.f20332c) {
            z = this.f20332c.indexOf(itemdata) != -1;
        }
        return z;
    }

    /* renamed from: a */
    public final void m31485a(boolean z, List<ItemData> list) {
        if (this.f20334e != z) {
            this.f20334e = z;
            MultiSelectEvents multiSelectEvents = this.f20333d;
            if (multiSelectEvents != null) {
                multiSelectEvents.onMultiSelectModeToggled(z, getCheckedRowsCount());
            }
            m31482d();
            if (this.f20334e && list != null) {
                for (ItemData itemdata : list) {
                    m31484b(itemdata);
                }
            }
            notifyDataSetChanged();
        }
    }

    /* renamed from: b */
    public final void m31484b(ItemData itemdata) {
        MultiSelectEvents multiSelectEvents;
        if (itemdata == null) {
            return;
        }
        boolean m31483c = m31483c(itemdata);
        synchronized (this.f20332c) {
            if (m31483c) {
                this.f20332c.remove(itemdata);
            } else {
                this.f20332c.add(itemdata);
            }
        }
        itemdata.setChecked(!m31483c);
        if (!this.f20334e || (multiSelectEvents = this.f20333d) == null) {
            return;
        }
        multiSelectEvents.onSelectedAmountChanged(getCheckedRowsCount());
    }

    /* renamed from: d */
    public final void m31482d() {
        MultiSelectEvents multiSelectEvents;
        synchronized (this.f20332c) {
            Iterator<ItemData> it2 = this.f20332c.iterator();
            while (it2.hasNext()) {
                it2.next().setChecked(false);
            }
            this.f20332c.clear();
        }
        if (!this.f20334e || (multiSelectEvents = this.f20333d) == null) {
            return;
        }
        multiSelectEvents.onSelectedAmountChanged(getCheckedRowsCount());
    }

    public List<ItemData> getCheckedRows() {
        return new ArrayList(this.f20332c);
    }

    public int getCheckedRowsCount() {
        int size;
        synchronized (this.f20332c) {
            size = this.f20332c.size();
        }
        return size;
    }

    public boolean isInMultiSelectMode() {
        return this.f20334e;
    }

    public void setMultiSelectListener(MultiSelectEvents multiSelectEvents) {
        this.f20333d = multiSelectEvents;
    }
}
