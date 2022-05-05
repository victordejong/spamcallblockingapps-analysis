package com.scand.realmbrowser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.scand.realmbrowser.view.RowView;
import io.realm.RealmObject;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DatabaseClassAdapter.class */
public class DatabaseClassAdapter extends RecyclerView.Adapter<ItemViewHolder> {

    /* renamed from: a */
    private List<Field> f12435a;

    /* renamed from: b */
    private List<? extends RealmObject> f12436b;

    /* renamed from: c */
    private HorizontalScrollMediator f12437c;

    /* renamed from: d */
    private ColumnWidthMediator f12438d;

    /* renamed from: e */
    private OnCellClickListener f12439e;

    /* renamed from: f */
    private final RowView.OnCellClickListener f12440f = new RowView.OnCellClickListener() { // from class: com.scand.realmbrowser.DatabaseClassAdapter.2
        @Override // com.scand.realmbrowser.view.RowView.OnCellClickListener
        /* renamed from: a */
        public void mo7678a(RowView rowView, int i) {
            if (DatabaseClassAdapter.this.f12439e != null) {
                int intValue = ((Integer) rowView.getTag()).intValue();
                DatabaseClassAdapter.this.f12439e.mo7778d((RealmObject) DatabaseClassAdapter.this.f12436b.get(intValue), (Field) DatabaseClassAdapter.this.f12435a.get(i), intValue);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DatabaseClassAdapter$ItemViewHolder.class */
    public static class ItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        TextView f12444a;

        /* renamed from: b */
        RowView f12445b;

        public ItemViewHolder(View view, int i) {
            super(view);
            this.f12444a = (TextView) view.findViewById(C1506R.C1509id.db_class_list_row_number);
            RowView rowView = (RowView) view.findViewById(C1506R.C1509id.db_class_list_row);
            this.f12445b = rowView;
            rowView.setColumnsNumber(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DatabaseClassAdapter$OnCellClickListener.class */
    interface OnCellClickListener {
        /* renamed from: d */
        void mo7778d(RealmObject realmObject, Field field, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DatabaseClassAdapter(Context context, Class<? extends RealmObject> cls, List<? extends RealmObject> list) {
        this.f12436b = list;
        m7820o(context, cls);
    }

    /* renamed from: o */
    private void m7820o(Context context, Class<? extends RealmObject> cls) {
        this.f12435a = new ArrayList();
        FieldFilterPreferences b = FieldFilterPreferences.m7741b(context);
        for (Field field : RealmUtils.m7711h(cls)) {
            if (b.m7740c(cls, field)) {
                this.f12435a.add(field);
            }
        }
    }

    /* renamed from: g */
    public void onBindViewHolder(final ItemViewHolder itemViewHolder, int i) {
        RealmObject realmObject = (RealmObject) this.f12436b.get(i);
        if (this.f12435a.size() != itemViewHolder.f12445b.getColumnsNumber()) {
            itemViewHolder.f12445b.setColumnsNumber(this.f12435a.size());
        }
        Context context = itemViewHolder.f12445b.getContext();
        int i2 = i % 2 == 0 ? 17170443 : C1506R.C1507color.realm_browser_lt_gray;
        for (int i3 = 0; i3 < this.f12435a.size(); i3++) {
            itemViewHolder.f12445b.setColumnText(RealmUtils.m7712g(realmObject, this.f12435a.get(i3)), i3);
            itemViewHolder.f12445b.setColumnWidth(this.f12438d.m7833d(i3), i3);
        }
        itemViewHolder.f12445b.post(new Runnable() { // from class: com.scand.realmbrowser.DatabaseClassAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                itemViewHolder.f12445b.scrollTo(DatabaseClassAdapter.this.f12437c.m7737c(), DatabaseClassAdapter.this.f12437c.m7736d());
            }
        });
        itemViewHolder.f12445b.setBackgroundColor(context.getResources().getColor(i2));
        itemViewHolder.f12445b.setTag(Integer.valueOf(i));
        itemViewHolder.f12445b.setOnCellClickListener(this.f12440f);
        itemViewHolder.f12444a.setText(Integer.toString(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f12436b.size();
    }

    /* renamed from: h */
    public ItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        ItemViewHolder itemViewHolder = new ItemViewHolder(LayoutInflater.from(context).inflate(C1506R.layout.realm_browser_database_class_item, viewGroup, false), this.f12435a.size());
        itemViewHolder.f12445b.setCellsGravity(16);
        itemViewHolder.f12445b.setMinColumnHeight((int) context.getResources().getDimension(C1506R.dimen.realm_browser_database_list_item_min_height));
        this.f12437c.m7738b(itemViewHolder.f12445b);
        this.f12438d.m7834c(itemViewHolder.f12445b);
        itemViewHolder.f12445b.setOnScrollChangedListener(this.f12437c);
        return itemViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m7826i(OnCellClickListener onCellClickListener) {
        this.f12439e = onCellClickListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m7825j(ColumnWidthMediator columnWidthMediator) {
        this.f12438d = columnWidthMediator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m7824k(HorizontalScrollMediator horizontalScrollMediator) {
        this.f12437c = horizontalScrollMediator;
    }

    /* renamed from: l */
    public void m7823l(List<? extends RealmObject> list) {
        this.f12436b = list;
        notifyDataSetChanged();
    }

    /* renamed from: m */
    public void m7822m(Context context, Class<? extends RealmObject> cls) {
        m7820o(context, cls);
        notifyDataSetChanged();
    }

    /* renamed from: n */
    public void m7821n(Context context, Class<? extends RealmObject> cls, List<? extends RealmObject> list) {
        this.f12436b = list;
        m7822m(context, cls);
    }
}
