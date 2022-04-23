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

    /* renamed from: a  reason: collision with root package name */
    private final AndroidUtils.FieldsChangedHandler<DataSource> f12991a = new AndroidUtils.FieldsChangedHandler<>(DataSource.ACTIVE_SOCIAL_DATA_SOURCES_LIST);

    @Override // android.app.Activity
    public void finish() {
        Intent intent = new Intent();
        if (this.f12991a.a(intent)) {
            setResult(-1, intent);
        }
        super.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity
    public BaseCallAppFragment<List<SocialConnectorData>> getNewFragment() {
        LinkedAccountsFragment linkedAccountsFragment = new LinkedAccountsFragment();
        linkedAccountsFragment.setEventsListener(new LinkedAccountsFragment.LinkedAccountsFragmentEvents() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsActivity.1
            @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.LinkedAccountsFragmentEvents
            public final void a(DataSource dataSource) {
                LinkedAccountsActivity.this.f12991a.setFieldChanged(dataSource);
            }

            @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.LinkedAccountsFragmentEvents
            public final void b(DataSource dataSource) {
                LinkedAccountsActivity.this.f12991a.setFieldChanged(dataSource);
            }
        });
        return linkedAccountsFragment;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        SocialNetworksSearchUtil.a(i, i2, intent);
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(Activities.getString(2131887111));
    }
}
