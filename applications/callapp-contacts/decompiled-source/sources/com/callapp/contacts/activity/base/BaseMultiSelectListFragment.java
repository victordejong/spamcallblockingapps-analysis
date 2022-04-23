package com.callapp.contacts.activity.base;

import com.callapp.contacts.activity.base.BaseMultiSelectListAdapter;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseMultiSelectListFragment.class */
public abstract class BaseMultiSelectListFragment<T> extends BaseCallAppFragment<List<T>> implements BaseMultiSelectListAdapter.MultiSelectEvents {
    protected OnListItemInteractionsListener<BaseAdapterItemData> itemClickListener;
    private BaseMultiSelectListAdapter.MultiSelectEvents listener;
    private boolean setMultiSelectOnStart = false;

    public abstract void filterReq(CharSequence charSequence, boolean z);

    public List<BaseAdapterItemData> getCheckedRows() {
        return this.originalAdapter != null ? ((BaseMultiSelectListAdapter) this.originalAdapter).getCheckedRows() : Collections.EMPTY_LIST;
    }

    public int getSelectedCounter() {
        if (this.originalAdapter != null) {
            return ((BaseMultiSelectListAdapter) this.originalAdapter).getCheckedRowsCount();
        }
        return 0;
    }

    public boolean isInMultiSelectMode() {
        if (this.originalAdapter != null) {
            return ((BaseMultiSelectListAdapter) this.originalAdapter).isInMultiSelectMode();
        }
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
    public void onMultiSelectModeToggled(boolean z, int i) {
        BaseMultiSelectListAdapter.MultiSelectEvents multiSelectEvents = this.listener;
        if (multiSelectEvents != null) {
            multiSelectEvents.onMultiSelectModeToggled(z, i);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
    public void onSelectedAmountChanged(int i) {
        BaseMultiSelectListAdapter.MultiSelectEvents multiSelectEvents = this.listener;
        if (multiSelectEvents != null) {
            multiSelectEvents.onSelectedAmountChanged(i);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* bridge */ /* synthetic */ void setData(Object obj) {
        setData((List) ((List) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setData(List<T> list) {
        super.setData((BaseMultiSelectListFragment<T>) list);
        if (this.originalAdapter instanceof BaseMultiSelectListAdapter) {
            if (shouldShowMultiSelectOnStart()) {
                ((BaseMultiSelectListAdapter) this.originalAdapter).a(true, (List) null);
            }
            ((BaseMultiSelectListAdapter) this.originalAdapter).setMultiSelectListener(this);
        }
    }

    public void setMultiSelectListener(BaseMultiSelectListAdapter.MultiSelectEvents multiSelectEvents) {
        this.listener = multiSelectEvents;
    }

    public void setOnItemClickedListener(OnListItemInteractionsListener<BaseAdapterItemData> onListItemInteractionsListener) {
        this.itemClickListener = onListItemInteractionsListener;
    }

    protected boolean shouldShowMultiSelectOnStart() {
        return !isInMultiSelectMode() && this.setMultiSelectOnStart;
    }

    public void showMultiSelect(boolean z) {
        if (this.originalAdapter == null || this.originalAdapter.getItemCount() <= 0) {
            this.setMultiSelectOnStart = z;
        } else {
            ((BaseMultiSelectListAdapter) this.originalAdapter).a(z, (List) null);
        }
    }
}
