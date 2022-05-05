package com.android.contacts.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/EmptyActivityForGoogleSearch.class */
public class EmptyActivityForGoogleSearch extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        intent.setClass(this, PeopleActivity.class);
        ImplicitIntentsUtil.startActivityInApp(this, intent);
        finish();
    }
}
