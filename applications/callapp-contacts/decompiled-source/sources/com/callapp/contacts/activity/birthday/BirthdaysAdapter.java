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

    /* renamed from: c  reason: collision with root package name */
    private ScrollEvents f11189c;

    public BirthdaysAdapter(List<BirthdayReminderData> list, ScrollEvents scrollEvents) {
        super(list);
        this.f11189c = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* bridge */ /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        ((BirthdayViewHolder) baseCallAppViewHolder).a((BirthdayReminderData) baseViewTypeData, this.f11189c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
        builder.f11158b = CallAppViewTypes.CENTER_BIRTHDAY;
        return new BirthdayViewHolder(builder.a());
    }
}
