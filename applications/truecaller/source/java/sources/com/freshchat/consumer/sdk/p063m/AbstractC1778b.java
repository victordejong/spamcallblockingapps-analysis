package com.freshchat.consumer.sdk.p063m;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p045a.C1332i;
import com.freshchat.consumer.sdk.p045a.C1337l;
import com.freshchat.consumer.sdk.p069ui.C1934e;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.m.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/b.class */
public abstract class AbstractC1778b extends AbstractC1776a {

    /* renamed from: dR */
    private RecyclerView f4630dR;

    /* renamed from: oU */
    private C1337l f4631oU;
    private int orientation;

    /* renamed from: ox */
    private C1332i.AbstractC1333a f4632ox = new C1779c(this);

    /* renamed from: hF */
    private void m39588hF() {
        C1337l c1337l = this.f4631oU;
        if (c1337l != null) {
            c1337l.m41458K(m39587hG());
            this.f4631oU.notifyDataSetChanged();
        }
    }

    /* renamed from: hG */
    private int m39587hG() {
        return getResources().getInteger(this.orientation == 1 ? C1298R.integer.freshchat_calendar_timeslot_items_portrait : C1298R.integer.freshchat_calendar_timeslot_items_landscape);
    }

    /* renamed from: G */
    public void m39589G(List<C1337l.AbstractC1339b> list) {
        if (getContext() == null) {
            return;
        }
        C1337l c1337l = new C1337l(list, this.f4632ox);
        this.f4631oU = c1337l;
        C1934e c1934e = new C1934e(c1337l);
        this.f4631oU.m41458K(m39587hG());
        this.f4630dR.addItemDecoration(c1934e);
        this.f4630dR.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f4630dR.setAdapter(this.f4631oU);
    }

    public abstract int getCalendarType();

    public void onConfigurationChanged(Configuration configuration) {
        AbstractC1778b.super.onConfigurationChanged(configuration);
        this.orientation = configuration.orientation;
        m39588hF();
    }

    public void onCreate(Bundle bundle) {
        AbstractC1778b.super.onCreate(bundle);
        this.orientation = m39591hD();
    }

    public void onViewCreated(View view, Bundle bundle) {
        AbstractC1778b.super.onViewCreated(view, bundle);
        this.f4630dR = (RecyclerView) view.findViewById(C1298R.C1300id.freshchat_all_timeslots_recycler_view);
    }
}
