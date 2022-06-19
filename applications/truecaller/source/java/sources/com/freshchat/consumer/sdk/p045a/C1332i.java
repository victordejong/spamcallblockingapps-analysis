package com.freshchat.consumer.sdk.p045a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p061k.C1755q;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/i.class */
public class C1332i extends BaseAdapter {

    /* renamed from: ow */
    private final List<CalendarDay.TimeSlot> f3621ow;

    /* renamed from: ox */
    private final AbstractC1333a f3622ox;

    /* renamed from: com.freshchat.consumer.sdk.a.i$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/i$a.class */
    public interface AbstractC1333a {
        /* renamed from: a */
        void mo39586a(CalendarDay.TimeSlot timeSlot);
    }

    /* renamed from: com.freshchat.consumer.sdk.a.i$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/i$b.class */
    public class C1334b {

        /* renamed from: oy */
        private final TextView f3623oy;

        private C1334b(View view) {
            C1332i.this = r4;
            this.f3623oy = (TextView) view;
        }

        /* renamed from: a */
        public void m41459a(C1755q c1755q) {
            this.f3623oy.setText(c1755q.m39685im());
            this.f3623oy.setOnClickListener(new View$OnClickListenerC1336k(this, c1755q));
        }
    }

    public C1332i(List<CalendarDay.TimeSlot> list, AbstractC1333a abstractC1333a) {
        this.f3621ow = list;
        this.f3622ox = abstractC1333a;
    }

    /* renamed from: a */
    public CalendarDay.TimeSlot getItem(int i) {
        if (C1716k.isEmpty(this.f3621ow)) {
            return null;
        }
        return this.f3621ow.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return C1716k.m39900b(this.f3621ow);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        C1334b c1334b;
        if (view == null) {
            view2 = LayoutInflater.from(viewGroup.getContext()).inflate(C1298R.layout.freshchat_calendar_timeslot_view, viewGroup, false);
            c1334b = new C1334b(view2);
            view2.setTag(c1334b);
        } else {
            view2 = view;
            c1334b = (C1334b) view.getTag();
        }
        CalendarDay.TimeSlot item = getItem(i);
        if (c1334b != null && item != null) {
            C1755q c1755q = new C1755q(viewGroup.getContext());
            c1755q.m39687c(item);
            c1334b.m41459a(c1755q);
        }
        return view2;
    }
}
