package com.callapp.contacts.activity.contact.list.search;

import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.calllog.CallLogViewHolder;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.date.DateUtils;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/CommonCallViewHolder.class */
public class CommonCallViewHolder extends CallLogViewHolder {
    public CommonCallViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
    }

    @Override // com.callapp.contacts.activity.calllog.CallLogViewHolder
    /* renamed from: a */
    public final CharSequence mo30448a(Date date, int i) {
        return i == 2 ? DateUtils.m27120b(date) : i == 1 ? Activities.getString(2131888250) : CallLogUtils.m27554b(date);
    }
}
