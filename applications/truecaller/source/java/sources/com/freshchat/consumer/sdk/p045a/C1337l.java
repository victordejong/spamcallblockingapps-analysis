package com.freshchat.consumer.sdk.p045a;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.p045a.C1332i;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p061k.C1751m;
import com.freshchat.consumer.sdk.p069ui.AbstractC1935f;
import com.freshchat.consumer.sdk.p069ui.NonScrollableGridView;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/l.class */
public class C1337l extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> implements AbstractC1935f {

    /* renamed from: oC */
    private final List<AbstractC1339b> f3627oC;

    /* renamed from: oD */
    private final int f3628oD = C1298R.layout.freshchat_calendar_day_header;

    /* renamed from: oE */
    private int f3629oE;

    /* renamed from: ox */
    private final C1332i.AbstractC1333a f3630ox;

    /* renamed from: com.freshchat.consumer.sdk.a.l$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/l$a.class */
    public static class C1338a extends AbstractC1339b {
        public static final Parcelable.Creator<C1338a> CREATOR = new C1344n();

        /* renamed from: oF */
        private final String f3631oF;

        /* JADX INFO: Access modifiers changed from: private */
        public C1338a(Parcel parcel) {
            super(parcel);
            this.f3631oF = parcel.readString();
        }

        public C1338a(String str) {
            super(0);
            this.f3631oF = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: hw */
        public String m41454hw() {
            return this.f3631oF;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.m41453b(parcel);
            parcel.writeString(this.f3631oF);
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.l$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/l$b.class */
    public static abstract class AbstractC1339b implements Parcelable {

        /* renamed from: oG */
        private final int f3632oG;

        public AbstractC1339b(int i) {
            this.f3632oG = i;
        }

        public AbstractC1339b(Parcel parcel) {
            this.f3632oG = parcel.readInt();
        }

        /* renamed from: b */
        public void m41453b(Parcel parcel) {
            parcel.writeInt(this.f3632oG);
        }

        /* renamed from: hx */
        public int m41452hx() {
            return this.f3632oG;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.l$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/l$c.class */
    public static class C1340c extends AbstractC1339b {
        public static final Parcelable.Creator<C1340c> CREATOR = new C1345o();

        /* renamed from: oH */
        private final CalendarDay.PartOfDay f3633oH;

        /* renamed from: oI */
        private final List<CalendarDay.TimeSlot> f3634oI;

        /* JADX INFO: Access modifiers changed from: private */
        public C1340c(Parcel parcel) {
            super(parcel);
            this.f3633oH = CalendarDay.PartOfDay.values()[parcel.readInt()];
            this.f3634oI = parcel.createTypedArrayList(CalendarDay.TimeSlot.CREATOR);
        }

        public C1340c(CalendarDay.PartOfDay partOfDay, List<CalendarDay.TimeSlot> list) {
            super(1);
            this.f3633oH = partOfDay;
            this.f3634oI = list;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: hy */
        public CalendarDay.PartOfDay m41451hy() {
            return this.f3633oH;
        }

        /* renamed from: hz */
        public List<CalendarDay.TimeSlot> m41450hz() {
            return this.f3634oI;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            m41453b(parcel);
            parcel.writeInt(this.f3633oH.ordinal());
            parcel.writeTypedList(this.f3634oI);
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.l$d */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/l$d.class */
    public class C1341d extends RecyclerView.AbstractC0313c0 {

        /* renamed from: oJ */
        private final TextView f3635oJ;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C1341d(View view) {
            super(view);
            C1337l.this = r4;
            this.f3635oJ = (TextView) view;
        }

        /* renamed from: a */
        public void m41448a(C1751m c1751m) {
            this.f3635oJ.setText(c1751m.m39711ib());
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.l$e */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/l$e.class */
    public class C1342e extends RecyclerView.AbstractC0313c0 {

        /* renamed from: oL */
        private final NonScrollableGridView f3638oL;

        /* renamed from: oM */
        private final TextView f3639oM;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C1342e(View view) {
            super(view);
            C1337l.this = r5;
            this.f3639oM = (TextView) view.findViewById(C1298R.C1300id.freshchat_calendar_part_of_day_header);
            this.f3638oL = (NonScrollableGridView) view.findViewById(C1298R.C1300id.freshchat_calendar_timeslots_grid_view);
        }

        /* renamed from: a */
        public void m41446a(C1751m c1751m) {
            this.f3639oM.setText(c1751m.m39710ic());
            this.f3638oL.setNumColumns(C1337l.this.f3629oE);
            this.f3638oL.setAdapter((ListAdapter) new C1332i(c1751m.m39709id(), C1337l.this.f3630ox));
        }
    }

    public C1337l(List<AbstractC1339b> list, C1332i.AbstractC1333a abstractC1333a) {
        this.f3630ox = abstractC1333a;
        this.f3627oC = list;
    }

    /* renamed from: L */
    private AbstractC1339b m41457L(int i) {
        if (C1716k.isEmpty(this.f3627oC)) {
            return null;
        }
        return this.f3627oC.get(i);
    }

    /* renamed from: K */
    public void m41458K(int i) {
        this.f3629oE = i;
    }

    @Override // com.freshchat.consumer.sdk.p069ui.AbstractC1935f
    /* renamed from: M */
    public int mo39287M(int i) {
        while (i > 0) {
            if (mo39285O(i)) {
                return i;
            }
            i--;
        }
        return 0;
    }

    @Override // com.freshchat.consumer.sdk.p069ui.AbstractC1935f
    /* renamed from: N */
    public int mo39286N(int i) {
        return this.f3628oD;
    }

    @Override // com.freshchat.consumer.sdk.p069ui.AbstractC1935f
    /* renamed from: O */
    public boolean mo39285O(int i) {
        AbstractC1339b abstractC1339b = this.f3627oC.get(i);
        boolean z = false;
        if (abstractC1339b != null) {
            z = false;
            if (abstractC1339b.m41452hx() == 0) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.freshchat.consumer.sdk.p069ui.AbstractC1935f
    /* renamed from: c */
    public void mo39284c(View view, int i) {
        AbstractC1339b m41457L = m41457L(i);
        if (m41457L != null) {
            C1751m c1751m = new C1751m(view.getContext());
            c1751m.m39712a(m41457L);
            ((TextView) view).setText(c1751m.m39711ib());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return C1716k.m39900b(this.f3627oC);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        AbstractC1339b abstractC1339b = this.f3627oC.get(i);
        if (abstractC1339b != null) {
            return abstractC1339b.m41452hx();
        }
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        try {
            AbstractC1339b m41457L = m41457L(i);
            if (m41457L == null) {
                return;
            }
            C1751m c1751m = new C1751m(abstractC0313c0.itemView.getContext());
            c1751m.m39712a(m41457L);
            if (abstractC0313c0 instanceof C1341d) {
                ((C1341d) abstractC0313c0).m41448a(c1751m);
            } else if (abstractC0313c0 instanceof C1342e) {
                ((C1342e) abstractC0313c0).m41446a(c1751m);
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i == 0 ? new C1341d(LayoutInflater.from(viewGroup.getContext()).inflate(this.f3628oD, viewGroup, false)) : new C1342e(LayoutInflater.from(viewGroup.getContext()).inflate(C1298R.layout.freshchat_calendar_part_of_day_item, viewGroup, false));
    }
}
