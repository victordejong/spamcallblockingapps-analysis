package com.callapp.contacts.activity.base;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseContactHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseMultiSelectListAdapter.class */
public abstract class BaseMultiSelectListAdapter<ItemData extends BaseAdapterItemData, ViewHolder extends BaseContactHolder> extends BaseCallAppListAdapter<ItemData, ViewHolder> {

    /* renamed from: d  reason: collision with root package name */
    private MultiSelectEvents f11140d;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<ItemData> f11139c = new ArrayList<>();
    private boolean e = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents.class */
    public interface MultiSelectEvents {
        void onMultiSelectModeToggled(boolean z, int i);

        void onSelectedAmountChanged(int i);
    }

    public BaseMultiSelectListAdapter(List<ItemData> list) {
        super(list);
    }

    private boolean c(ItemData itemdata) {
        boolean z;
        synchronized (this.f11139c) {
            z = this.f11139c.indexOf(itemdata) != -1;
        }
        return z;
    }

    public final void a(boolean z, List<ItemData> list) {
        if (this.e != z) {
            this.e = z;
            MultiSelectEvents multiSelectEvents = this.f11140d;
            if (multiSelectEvents != null) {
                multiSelectEvents.onMultiSelectModeToggled(z, getCheckedRowsCount());
            }
            d();
            if (this.e && list != null) {
                for (ItemData itemdata : list) {
                    b(itemdata);
                }
            }
            notifyDataSetChanged();
        }
    }

    public final void b(ItemData itemdata) {
        MultiSelectEvents multiSelectEvents;
        if (itemdata != null) {
            boolean c2 = c(itemdata);
            synchronized (this.f11139c) {
                if (c2) {
                    this.f11139c.remove(itemdata);
                } else {
                    this.f11139c.add(itemdata);
                }
            }
            itemdata.setChecked(!c2);
            if (this.e && (multiSelectEvents = this.f11140d) != null) {
                multiSelectEvents.onSelectedAmountChanged(getCheckedRowsCount());
            }
        }
    }

    public final void d() {
        MultiSelectEvents multiSelectEvents;
        synchronized (this.f11139c) {
            Iterator<ItemData> it2 = this.f11139c.iterator();
            while (it2.hasNext()) {
                it2.next().setChecked(false);
            }
            this.f11139c.clear();
        }
        if (this.e && (multiSelectEvents = this.f11140d) != null) {
            multiSelectEvents.onSelectedAmountChanged(getCheckedRowsCount());
        }
    }

    public List<ItemData> getCheckedRows() {
        return new ArrayList(this.f11139c);
    }

    public int getCheckedRowsCount() {
        int size;
        synchronized (this.f11139c) {
            size = this.f11139c.size();
        }
        return size;
    }

    public boolean isInMultiSelectMode() {
        return this.e;
    }

    public void setMultiSelectListener(MultiSelectEvents multiSelectEvents) {
        this.f11140d = multiSelectEvents;
    }
}
