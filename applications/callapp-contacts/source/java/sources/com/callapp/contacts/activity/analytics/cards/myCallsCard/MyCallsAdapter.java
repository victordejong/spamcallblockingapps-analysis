package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsGridItem;
import com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.explorestack.iab.mraid.C9568h;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter.class */
public class MyCallsAdapter extends RecyclerView.AbstractC2626a<MyCallsHolder> {

    /* renamed from: a */
    private onUnlockClickedListener f19796a;

    /* renamed from: b */
    private List<MyCallsGridItem> f19797b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder.class */
    public class MyCallsHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: A */
        TextView f19799A;

        /* renamed from: B */
        TextView f19800B;

        /* renamed from: C */
        ImageView f19801C;

        /* renamed from: D */
        LinearLayout f19802D;

        /* renamed from: E */
        LinearLayout f19803E;

        /* renamed from: F */
        LinearLayout f19804F;

        /* renamed from: G */
        TextView f19805G;

        /* renamed from: H */
        TextView f19806H;

        /* renamed from: I */
        LinearLayout f19807I;

        /* renamed from: r */
        TextView f19809r;

        /* renamed from: s */
        ImageView f19810s;

        /* renamed from: t */
        TextView f19811t;

        /* renamed from: u */
        TextView f19812u;

        /* renamed from: v */
        TextView f19813v;

        /* renamed from: w */
        TextView f19814w;

        /* renamed from: x */
        TextView f19815x;

        /* renamed from: y */
        TextView f19816y;

        /* renamed from: z */
        TextView f19817z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyCallsHolder(View view) {
            super(view);
            MyCallsAdapter.this = r5;
            this.f19809r = (TextView) view.findViewById(2131362227);
            this.f19810s = (ImageView) view.findViewById(2131362886);
            this.f19813v = (TextView) view.findViewById(2131362653);
            this.f19814w = (TextView) view.findViewById(2131362652);
            this.f19811t = (TextView) view.findViewById(2131362651);
            this.f19812u = (TextView) view.findViewById(2131362650);
            this.f19815x = (TextView) view.findViewById(2131362656);
            this.f19816y = (TextView) view.findViewById(2131362655);
            this.f19817z = (TextView) view.findViewById(2131362658);
            this.f19799A = (TextView) view.findViewById(2131362657);
            this.f19800B = (TextView) view.findViewById(2131362888);
            this.f19801C = (ImageView) view.findViewById(2131362889);
            this.f19802D = (LinearLayout) view.findViewById(2131362226);
            this.f19804F = (LinearLayout) view.findViewById(2131362887);
            this.f19803E = (LinearLayout) view.findViewById(2131362101);
            this.f19805G = (TextView) view.findViewById(2131364063);
            this.f19806H = (TextView) view.findViewById(2131363373);
            this.f19807I = (LinearLayout) view.findViewById(2131362654);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener.class */
    public interface onUnlockClickedListener {
        /* renamed from: a */
        void mo31653a();
    }

    public MyCallsAdapter(List<MyCallsGridItem> list, onUnlockClickedListener onunlockclickedlistener) {
        this.f19797b = list;
        this.f19796a = onunlockclickedlistener;
    }

    /* renamed from: a */
    private static void m31655a(MyCallsHolder myCallsHolder, boolean z, long j, boolean z2, long j2, boolean z3, long j3, boolean z4, long j4) {
        myCallsHolder.f19812u.setText("d");
        myCallsHolder.f19811t.setText(String.valueOf(j));
        int i = z ? 0 : 8;
        myCallsHolder.f19811t.setVisibility(i);
        myCallsHolder.f19812u.setVisibility(i);
        myCallsHolder.f19814w.setText(C9568h.f32519a);
        myCallsHolder.f19813v.setText(String.valueOf(j2));
        int i2 = z2 ? 0 : 8;
        myCallsHolder.f19813v.setVisibility(i2);
        myCallsHolder.f19814w.setVisibility(i2);
        myCallsHolder.f19816y.setText("m");
        myCallsHolder.f19815x.setText(String.valueOf(j3));
        int i3 = z3 ? 0 : 8;
        myCallsHolder.f19815x.setVisibility(i3);
        myCallsHolder.f19816y.setVisibility(i3);
        myCallsHolder.f19799A.setText("s");
        myCallsHolder.f19817z.setText(String.valueOf(j4));
        int i4 = z4 ? 0 : 8;
        myCallsHolder.f19817z.setVisibility(i4);
        myCallsHolder.f19799A.setVisibility(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f19797b.size();
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(MyCallsHolder myCallsHolder, int i) {
        char c;
        MyCallsHolder myCallsHolder2 = myCallsHolder;
        MyCallsGridItem myCallsGridItem = this.f19797b.get(i);
        if (!CollectionUtils.m26076a(this.f19797b)) {
            myCallsHolder2.f19809r.setText(myCallsGridItem.f19832c);
            myCallsHolder2.f19802D.setBackgroundResource(2131232104);
            int color = ThemeUtils.getColor(myCallsGridItem.f19831b);
            ViewUtils.m27316a(myCallsHolder2.f19802D, Integer.valueOf(color), Integer.valueOf(color));
            if (myCallsGridItem.f19835f != MyCallsGridItem.STATE.REGULAR && myCallsGridItem.f19835f != MyCallsGridItem.STATE.EMPTY) {
                if (myCallsGridItem.f19835f != MyCallsGridItem.STATE.BLOCK) {
                    return;
                }
                myCallsHolder2.f19803E.setVisibility(0);
                myCallsHolder2.f19804F.setVisibility(8);
                myCallsHolder2.f19805G.setText(Activities.getString(2131887845));
                myCallsHolder2.f19802D.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MyCallsAdapter.this.f19796a != null) {
                            MyCallsAdapter.this.f19796a.mo31653a();
                        }
                    }
                });
                return;
            }
            myCallsHolder2.f19803E.setVisibility(8);
            myCallsHolder2.f19804F.setVisibility(0);
            myCallsHolder2.f19810s.setImageResource(myCallsGridItem.f19830a);
            char c2 = myCallsGridItem.f19833d / 3600;
            if (c2 > 99) {
                c = c2 / 24;
                c2 %= 24;
            } else {
                c = 0;
            }
            long j = (myCallsGridItem.f19833d / 60) % 60;
            long j2 = myCallsGridItem.f19833d % 60;
            if (c2 == 0 && j == 0 && j2 == 0) {
                myCallsHolder2.f19807I.setVisibility(8);
                myCallsHolder2.f19806H.setVisibility(0);
                myCallsHolder2.f19806H.setText(Activities.getString(2131887305));
                myCallsHolder2.f19806H.setTextColor(ThemeUtils.getColor(2131100228));
            } else {
                myCallsHolder2.f19807I.setVisibility(0);
                myCallsHolder2.f19806H.setVisibility(8);
                if (c >= 1) {
                    m31655a(myCallsHolder2, true, c, true, c2, false, j, false, j2);
                } else if (c2 >= 1) {
                    m31655a(myCallsHolder2, false, c, true, c2, true, j, false, j2);
                } else if (j >= 1) {
                    m31655a(myCallsHolder2, false, c, false, c2, true, j, true, j2);
                } else {
                    m31655a(myCallsHolder2, false, c, false, c2, false, j, true, j2);
                }
            }
            if (Prefs.f26548gG.get() == AnalyticsDatePickerManager.DatePicker.LIFE || myCallsGridItem.f19834e == 0) {
                myCallsHolder2.f19800B.setVisibility(8);
                myCallsHolder2.f19801C.setVisibility(8);
                return;
            }
            myCallsHolder2.f19800B.setVisibility(0);
            myCallsHolder2.f19801C.setVisibility(0);
            if (myCallsGridItem.f19834e <= 99999) {
                myCallsHolder2.f19800B.setText(String.format("%d%%", Long.valueOf(myCallsGridItem.f19834e)));
            } else {
                myCallsHolder2.f19800B.setText(String.format("%2.0e%%", Double.valueOf(myCallsGridItem.f19834e)));
            }
            myCallsHolder2.f19801C.setImageResource(myCallsGridItem.f19834e >= 0 ? 2131231458 : 2131231457);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ MyCallsHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyCallsHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558931, viewGroup, false));
    }

    public void setItemsData(List<MyCallsGridItem> list) {
        this.f19797b.clear();
        this.f19797b.addAll(list);
        notifyDataSetChanged();
    }
}
