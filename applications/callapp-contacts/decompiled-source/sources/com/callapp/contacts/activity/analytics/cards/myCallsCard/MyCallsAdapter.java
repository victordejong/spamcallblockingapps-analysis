package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsGridItem;
import com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.explorestack.iab.mraid.h;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter.class */
public class MyCallsAdapter extends RecyclerView.a<MyCallsHolder> {

    /* renamed from: a  reason: collision with root package name */
    private onUnlockClickedListener f10842a;

    /* renamed from: b  reason: collision with root package name */
    private List<MyCallsGridItem> f10843b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder.class */
    public class MyCallsHolder extends RecyclerView.v {
        TextView A;
        TextView B;
        ImageView C;
        LinearLayout D;
        LinearLayout E;
        LinearLayout F;
        TextView G;
        TextView H;
        LinearLayout I;
        TextView r;
        ImageView s;
        TextView t;
        TextView u;
        TextView v;
        TextView w;
        TextView x;
        TextView y;
        TextView z;

        public MyCallsHolder(View view) {
            super(view);
            this.r = (TextView) view.findViewById(2131362227);
            this.s = (ImageView) view.findViewById(2131362886);
            this.v = (TextView) view.findViewById(2131362653);
            this.w = (TextView) view.findViewById(2131362652);
            this.t = (TextView) view.findViewById(2131362651);
            this.u = (TextView) view.findViewById(2131362650);
            this.x = (TextView) view.findViewById(2131362656);
            this.y = (TextView) view.findViewById(2131362655);
            this.z = (TextView) view.findViewById(2131362658);
            this.A = (TextView) view.findViewById(2131362657);
            this.B = (TextView) view.findViewById(2131362888);
            this.C = (ImageView) view.findViewById(2131362889);
            this.D = (LinearLayout) view.findViewById(2131362226);
            this.F = (LinearLayout) view.findViewById(2131362887);
            this.E = (LinearLayout) view.findViewById(2131362101);
            this.G = (TextView) view.findViewById(2131364063);
            this.H = (TextView) view.findViewById(2131363373);
            this.I = (LinearLayout) view.findViewById(2131362654);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener.class */
    public interface onUnlockClickedListener {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MyCallsAdapter(List<MyCallsGridItem> list, onUnlockClickedListener onunlockclickedlistener) {
        this.f10843b = list;
        this.f10842a = onunlockclickedlistener;
    }

    private static void a(MyCallsHolder myCallsHolder, boolean z, long j, boolean z2, long j2, boolean z3, long j3, boolean z4, long j4) {
        myCallsHolder.u.setText("d");
        myCallsHolder.t.setText(String.valueOf(j));
        int i = 0;
        int i2 = z ? 0 : 8;
        myCallsHolder.t.setVisibility(i2);
        myCallsHolder.u.setVisibility(i2);
        myCallsHolder.w.setText(h.f19142a);
        myCallsHolder.v.setText(String.valueOf(j2));
        int i3 = z2 ? 0 : 8;
        myCallsHolder.v.setVisibility(i3);
        myCallsHolder.w.setVisibility(i3);
        myCallsHolder.y.setText("m");
        myCallsHolder.x.setText(String.valueOf(j3));
        int i4 = z3 ? 0 : 8;
        myCallsHolder.x.setVisibility(i4);
        myCallsHolder.y.setVisibility(i4);
        myCallsHolder.A.setText("s");
        myCallsHolder.z.setText(String.valueOf(j4));
        if (!z4) {
            i = 8;
        }
        myCallsHolder.z.setVisibility(i);
        myCallsHolder.A.setVisibility(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f10843b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(MyCallsHolder myCallsHolder, int i) {
        long j;
        MyCallsHolder myCallsHolder2 = myCallsHolder;
        MyCallsGridItem myCallsGridItem = this.f10843b.get(i);
        if (!CollectionUtils.a(this.f10843b)) {
            myCallsHolder2.r.setText(myCallsGridItem.f10856c);
            myCallsHolder2.D.setBackgroundResource(2131232104);
            int color = ThemeUtils.getColor(myCallsGridItem.f10855b);
            ViewUtils.a(myCallsHolder2.D, Integer.valueOf(color), Integer.valueOf(color));
            if (myCallsGridItem.f == MyCallsGridItem.STATE.REGULAR || myCallsGridItem.f == MyCallsGridItem.STATE.EMPTY) {
                myCallsHolder2.E.setVisibility(8);
                myCallsHolder2.F.setVisibility(0);
                myCallsHolder2.s.setImageResource(myCallsGridItem.f10854a);
                long j2 = myCallsGridItem.f10857d / 3600;
                if (j2 > 99) {
                    j = j2 / 24;
                    j2 %= 24;
                } else {
                    j = 0;
                }
                long j3 = (myCallsGridItem.f10857d / 60) % 60;
                long j4 = myCallsGridItem.f10857d % 60;
                if (j2 == 0 && j3 == 0 && j4 == 0) {
                    myCallsHolder2.I.setVisibility(8);
                    myCallsHolder2.H.setVisibility(0);
                    myCallsHolder2.H.setText(Activities.getString(2131887305));
                    myCallsHolder2.H.setTextColor(ThemeUtils.getColor(2131100228));
                } else {
                    myCallsHolder2.I.setVisibility(0);
                    myCallsHolder2.H.setVisibility(8);
                    if (j >= 1) {
                        a(myCallsHolder2, true, j, true, j2, false, j3, false, j4);
                    } else if (j2 >= 1) {
                        a(myCallsHolder2, false, j, true, j2, true, j3, false, j4);
                    } else if (j3 >= 1) {
                        a(myCallsHolder2, false, j, false, j2, true, j3, true, j4);
                    } else {
                        a(myCallsHolder2, false, j, false, j2, false, j3, true, j4);
                    }
                }
                if (Prefs.gG.get() == AnalyticsDatePickerManager.DatePicker.LIFE || myCallsGridItem.e == 0) {
                    myCallsHolder2.B.setVisibility(8);
                    myCallsHolder2.C.setVisibility(8);
                    return;
                }
                myCallsHolder2.B.setVisibility(0);
                myCallsHolder2.C.setVisibility(0);
                if (myCallsGridItem.e <= 99999) {
                    myCallsHolder2.B.setText(String.format("%d%%", Long.valueOf(myCallsGridItem.e)));
                } else {
                    myCallsHolder2.B.setText(String.format("%2.0e%%", Double.valueOf(myCallsGridItem.e)));
                }
                myCallsHolder2.C.setImageResource(myCallsGridItem.e >= 0 ? 2131231458 : 2131231457);
            } else if (myCallsGridItem.f == MyCallsGridItem.STATE.BLOCK) {
                myCallsHolder2.E.setVisibility(0);
                myCallsHolder2.F.setVisibility(8);
                myCallsHolder2.G.setText(Activities.getString(2131887845));
                myCallsHolder2.D.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (MyCallsAdapter.this.f10842a != null) {
                            MyCallsAdapter.this.f10842a.a();
                        }
                    }
                });
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ MyCallsHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new MyCallsHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558931, viewGroup, false));
    }

    public void setItemsData(List<MyCallsGridItem> list) {
        this.f10843b.clear();
        this.f10843b.addAll(list);
        notifyDataSetChanged();
    }
}
