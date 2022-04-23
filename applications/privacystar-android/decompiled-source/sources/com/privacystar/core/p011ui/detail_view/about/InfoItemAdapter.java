package com.privacystar.core.p011ui.detail_view.about;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import java.util.List;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.about.InfoItemAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/InfoItemAdapter.class */
public class InfoItemAdapter extends RecyclerView.Adapter<ViewHolder> {
    List<AboutInfoItem> infoItems;

    /* renamed from: com.privacystar.core.ui.detail_view.about.InfoItemAdapter$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/InfoItemAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(C1566R.C1569id.about_fragment_section_2_item_value)
        TextView info;
        private AboutInfoItem infoItem;
        @BindView(C1566R.C1569id.about_fragment_section_2_item)
        TextView title;

        public ViewHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }
    }

    /* renamed from: com.privacystar.core.ui.detail_view.about.InfoItemAdapter$ViewHolder_ViewBinding */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/InfoItemAdapter$ViewHolder_ViewBinding.class */
    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;

        @UiThread
        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.title = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.about_fragment_section_2_item, "field 'title'", TextView.class);
            viewHolder.info = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.about_fragment_section_2_item_value, "field 'info'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            viewHolder.title = null;
            viewHolder.info = null;
        }
    }

    public InfoItemAdapter(List<AboutInfoItem> list) {
        this.infoItems = list;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.infoItems != null) {
            return this.infoItems.size();
        }
        return 0;
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (this.infoItems == null) {
            Timber.m25w("AboutInfoItems is null.", new Object[0]);
            return;
        }
        AboutInfoItem aboutInfoItem = this.infoItems.get(i);
        if (aboutInfoItem != null) {
            viewHolder.title.setText(aboutInfoItem.getItemTitle());
            viewHolder.info.setText(aboutInfoItem.getItemDescription());
            viewHolder.info.setTextIsSelectable(true);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1566R.C1571layout.about_item_info_list_item, viewGroup, false));
    }
}
