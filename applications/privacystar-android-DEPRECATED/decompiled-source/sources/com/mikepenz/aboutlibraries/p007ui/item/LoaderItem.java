package com.mikepenz.aboutlibraries.p007ui.item;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.ProgressBar;
import com.mikepenz.aboutlibraries.C1453R;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;
/* renamed from: com.mikepenz.aboutlibraries.ui.item.LoaderItem */
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/item/LoaderItem.class */
public class LoaderItem extends AbstractItem<LoaderItem, ViewHolder> {

    /* renamed from: com.mikepenz.aboutlibraries.ui.item.LoaderItem$ViewHolder */
    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        ProgressBar progressBar;

        public ViewHolder(View view) {
            super(view);
            this.progressBar = (ProgressBar) view.findViewById(C1453R.C1456id.progressBar);
        }
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem, com.mikepenz.fastadapter.IItem
    public /* bridge */ /* synthetic */ void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        bindView((ViewHolder) viewHolder, (List<Object>) list);
    }

    public void bindView(ViewHolder viewHolder, List<Object> list) {
        super.bindView((LoaderItem) viewHolder, list);
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getLayoutRes() {
        return C1453R.C1457layout.listloader_opensource;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getType() {
        return C1453R.C1456id.loader_item_id;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public ViewHolder getViewHolder(View view) {
        return new ViewHolder(view);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem, com.mikepenz.fastadapter.IItem
    public boolean isSelectable() {
        return false;
    }
}
