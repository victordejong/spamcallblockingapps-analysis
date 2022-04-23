package com.callapp.contacts.activity.proxy;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.BaseTransparentActivity;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/proxy/SubActivity.class */
public abstract class SubActivity extends BaseTransparentActivity {
    protected abstract ContactsListActivity.ContentState getTabState();

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName("com.callapp.contacts", "com.callapp.contacts.activity.contact.list.ContactsListActivity"));
        intent.setAction("com.callapp.contacts.FROM_SUB_ACTIVITY");
        intent.putExtra("tab", getTabState().name());
        intent.setFlags(65536);
        intent.setFlags(32768);
        Activities.a(this, intent);
        finish();
    }
}
