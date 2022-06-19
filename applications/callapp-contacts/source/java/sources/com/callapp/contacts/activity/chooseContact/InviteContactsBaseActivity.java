package com.callapp.contacts.activity.chooseContact;

import android.view.Menu;
import android.view.MenuItem;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/InviteContactsBaseActivity.class */
public abstract class InviteContactsBaseActivity extends BaseChooseFromContactsActivity {
    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623940, menu);
        menu.findItem(2131361962).setTitle(Activities.getString(2131887300));
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131361962) {
            return super.onOptionsItemSelected(menuItem);
        }
        return true;
    }
}
