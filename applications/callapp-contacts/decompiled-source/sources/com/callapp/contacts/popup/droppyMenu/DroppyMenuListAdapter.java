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
public class DroppyMenuListAdapter extends RecyclerView.a<RecyclerView.v> {

    /* renamed from: a  reason: collision with root package name */
    private List<WidgetMetaData> f15613a;

    /* renamed from: b  reason: collision with root package name */
    private DroppyItemClick f15614b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyItemClick.class */
    interface DroppyItemClick {
        void a(int i, View view);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/droppyMenu/DroppyMenuListAdapter$DroppyMenuViewHolder.class */
    class DroppyMenuViewHolder extends RecyclerView.v {
        private final ImageView s;
        private final TextView t;

        private DroppyMenuViewHolder(View view) {
            super(view);
            this.s = (ImageView) view.findViewById(2131363179);
            this.t = (TextView) view.findViewById(2131363156);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DroppyMenuListAdapter(List<WidgetMetaData> list, DroppyItemClick droppyItemClick) {
        this.f15613a = list;
        this.f15614b = droppyItemClick;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f15613a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onBindViewHolder(RecyclerView.v vVar, int i) {
        DroppyMenuViewHolder droppyMenuViewHolder = (DroppyMenuViewHolder) vVar;
        WidgetMetaData widgetMetaData = this.f15613a.get(i);
        if (widgetMetaData.primaryIconResId == 0) {
            droppyMenuViewHolder.s.setVisibility(8);
        } else {
            ImageUtils.a(droppyMenuViewHolder.s, widgetMetaData.menuResId, new PorterDuffColorFilter(ThemeUtils.getColor(2131099783), PorterDuff.Mode.SRC_IN));
        }
        droppyMenuViewHolder.t.setText(widgetMetaData.label);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        final View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131558810, viewGroup, false);
        final DroppyMenuViewHolder droppyMenuViewHolder = new DroppyMenuViewHolder(inflate);
        inflate.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.droppyMenu.DroppyMenuListAdapter.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                if (DroppyMenuListAdapter.this.f15614b != null) {
                    DroppyMenuListAdapter.this.f15614b.a(droppyMenuViewHolder.getAdapterPosition(), inflate);
                }
            }
        });
        return droppyMenuViewHolder;
    }
}
