package com.callapp.contacts.activity.linkedaccounts;

import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.TopBarFragmentActivity;
import com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity.class */
public class LinkedAccountsActivity extends TopBarFragmentActivity {

    /* renamed from: a */
    private final AndroidUtils.FieldsChangedHandler<DataSource> f23187a = new AndroidUtils.FieldsChangedHandler<>(DataSource.ACTIVE_SOCIAL_DATA_SOURCES_LIST);

    @Override // android.app.Activity
    public void finish() {
        Intent intent = new Intent();
        if (this.f23187a.m27628a(intent)) {
            setResult(-1, intent);
        }
        super.finish();
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity
    public BaseCallAppFragment<List<SocialConnectorData>> getNewFragment() {
        LinkedAccountsFragment linkedAccountsFragment = new LinkedAccountsFragment();
        linkedAccountsFragment.setEventsListener(new LinkedAccountsFragment.LinkedAccountsFragmentEvents() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsActivity.1
            @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.LinkedAccountsFragmentEvents
            /* renamed from: a */
            public final void mo30167a(DataSource dataSource) {
                LinkedAccountsActivity.this.f23187a.setFieldChanged(dataSource);
            }

            @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.LinkedAccountsFragmentEvents
            /* renamed from: b */
            public final void mo30166b(DataSource dataSource) {
                LinkedAccountsActivity.this.f23187a.setFieldChanged(dataSource);
            }
        });
        return linkedAccountsFragment;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        SocialNetworksSearchUtil.m29233a(i, i2, intent);
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(Activities.getString(2131887111));
    }
}
