package com.callapp.contacts.activity.chooseContact;

import android.os.Bundle;
import com.callapp.contacts.activity.base.BaseMultiSelectListFragment;
import com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.widget.SimpleSearchBarFragment;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/BaseChooseFromContactsActivity.class */
public abstract class BaseChooseFromContactsActivity extends TopBarWithSearchActivity {

    /* renamed from: b  reason: collision with root package name */
    private BaseMultiSelectListFragment f11480b;

    protected BaseMultiSelectListFragment getContactsFragment() {
        if (this.f11480b == null) {
            this.f11480b = (BaseMultiSelectListFragment) getSupportFragmentManager().c(2131362459);
        }
        return this.f11480b;
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558440;
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity
    protected SimpleSearchBarFragment.SearchBarEvents getSearchBarEvents() {
        return new TopBarWithSearchActivity.searchBarEventsImpl() { // from class: com.callapp.contacts.activity.chooseContact.BaseChooseFromContactsActivity.1
            @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
            public final void a(CharSequence charSequence, int i) {
                BaseChooseFromContactsActivity.this.getContactsFragment().filterReq(charSequence, i == 0);
            }
        };
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity, com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.CHOOSE_FROM_CONTACTS);
        getContactsFragment().setOnItemClickedListener(b());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CHOOSE_FROM_CONTACTS);
        super.onDestroy();
    }
}
