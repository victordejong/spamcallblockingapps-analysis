package com.callapp.contacts.activity.proxy;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/proxy/ContactListTabProxyActivity.class */
public class ContactListTabProxyActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        intent.setComponent(new ComponentName("com.callapp.contacts", "com.callapp.contacts.activity.contact.list.ContactsListActivity"));
        intent.setFlags(65536);
        Activities.m27685a(this, intent);
        finish();
    }
}
