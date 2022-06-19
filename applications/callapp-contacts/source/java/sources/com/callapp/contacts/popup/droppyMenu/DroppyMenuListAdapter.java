package com.callapp.contacts.popup.droppyMenu;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.model.widget.WidgetMetaData;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter.class */
public class DroppyMenuListAdapter extends RecyclerView.AbstractC2626a<RecyclerView.AbstractC2657v> {

    /* renamed from: a */
    private List<WidgetMetaData> f27349a;

    /* renamed from: b */
    private DroppyItemClick f27350b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick.class */
    public interface DroppyItemClick {
        /* renamed from: a */
        void mo27905a(int i, View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder.class */
    public class DroppyMenuViewHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: s */
        private final ImageView f27355s;

        /* renamed from: t */
        private final TextView f27356t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private DroppyMenuViewHolder(View view) {
            super(view);
            DroppyMenuListAdapter.this = r5;
            this.f27355s = (ImageView) view.findViewById(2131363179);
            this.f27356t = (TextView) view.findViewById(2131363156);
        }
    }

    public DroppyMenuListAdapter(List<WidgetMetaData> list, DroppyItemClick droppyItemClick) {
        this.f27349a = list;
        this.f27350b = droppyItemClick;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f27349a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
        DroppyMenuViewHolder droppyMenuViewHolder = (DroppyMenuViewHolder) abstractC2657v;
        WidgetMetaData widgetMetaData = this.f27349a.get(i);
        if (widgetMetaData.primaryIconResId == 0) {
            droppyMenuViewHolder.f27355s.setVisibility(8);
        } else {
            ImageUtils.m27529a(droppyMenuViewHolder.f27355s, widgetMetaData.menuResId, new PorterDuffColorFilter(ThemeUtils.getColor(2131099783), PorterDuff.Mode.SRC_IN));
        }
        droppyMenuViewHolder.f27356t.setText(widgetMetaData.label);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        final View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131558810, viewGroup, false);
        final DroppyMenuViewHolder droppyMenuViewHolder = new DroppyMenuViewHolder(inflate);
        inflate.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.droppyMenu.DroppyMenuListAdapter.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                if (DroppyMenuListAdapter.this.f27350b != null) {
                    DroppyMenuListAdapter.this.f27350b.mo27905a(droppyMenuViewHolder.getAdapterPosition(), inflate);
                }
            }
        });
        return droppyMenuViewHolder;
    }
}
