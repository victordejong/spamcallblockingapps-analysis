package com.callapp.contacts.activity.proxy;

import com.callapp.contacts.activity.contact.list.ContactsListActivity;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/proxy/DialerSubActivity.class */
public class DialerSubActivity extends SubActivity {
    @Override // com.callapp.contacts.activity.proxy.SubActivity
    public ContactsListActivity.ContentState getTabState() {
        return ContactsListActivity.ContentState.DIALER;
    }
}
