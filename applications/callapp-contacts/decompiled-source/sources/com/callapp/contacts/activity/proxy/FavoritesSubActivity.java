package com.callapp.contacts.activity.proxy;

import com.callapp.contacts.activity.contact.list.ContactsListActivity;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/proxy/FavoritesSubActivity.class */
public class FavoritesSubActivity extends SubActivity {
    @Override // com.callapp.contacts.activity.proxy.SubActivity
    public ContactsListActivity.ContentState getTabState() {
        return ContactsListActivity.ContentState.UNSET;
    }
}
