package com.callapp.contacts.activity.birthday;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/BirthdaysAdapter.class */
public class BirthdaysAdapter extends BaseCallAppListAdapter<BirthdayReminderData, BirthdayViewHolder> {

    /* renamed from: c */
    private ScrollEvents f20419c;

    public BirthdaysAdapter(List<BirthdayReminderData> list, ScrollEvents scrollEvents) {
        super(list);
        this.f20419c = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        ((BirthdayViewHolder) baseCallAppViewHolder).m31465a((BirthdayReminderData) baseViewTypeData, this.f20419c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
        builder.f20368b = CallAppViewTypes.CENTER_BIRTHDAY;
        return new BirthdayViewHolder(builder.m31474a());
    }
}
