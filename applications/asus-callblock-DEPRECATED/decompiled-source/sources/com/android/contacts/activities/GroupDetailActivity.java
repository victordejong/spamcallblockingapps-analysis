package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.contacts.a.b;
import com.android.contacts.group.GroupDetailFragment;
import com.android.contacts.group.f;
import com.android.contacts.interactions.a;
import com.android.contacts.p;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.FavoriteDataUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/GroupDetailActivity.class */
public class GroupDetailActivity extends p implements a.AbstractC0041a {
    public static final int ADD_TO_FAVORITE = 20;
    private static final String TAG = "GroupDetailActivity";
    private View mAccountFilter;
    private String mAccountTypeString;
    private ActionBarCustomViewOnClickListener mActionBarListenr;
    TextView mActionbarContainer;
    private String mDataSet;
    private TextView mFilterAccountNameText;
    private TextView mFilterAccountTypeText;
    private GroupDetailFragment mFragment;
    private final GroupDetailFragment.d mFragmentListener = new GroupDetailFragment.d() { // from class: com.android.contacts.activities.GroupDetailActivity.1
        @Override // com.android.contacts.group.GroupDetailFragment.d
        public void onAccountTypeUpdated(String str, String str2) {
            GroupDetailActivity.this.mAccountTypeString = str;
            GroupDetailActivity.this.mDataSet = str2;
            GroupDetailActivity.this.invalidateOptionsMenu();
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public void onAddFavoritesRequested(long[] jArr) {
            GroupDetailActivity.this.startActivityForResult(new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER"), 20);
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public void onAddRequested(Uri uri) {
            Intent intent = new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER");
            intent.putExtra("group_uri", uri.toString());
            intent.putExtra("CallerFragment", GroupDetailActivity.TAG);
            ImplicitIntentsUtil.startActivityInApp(GroupDetailActivity.this, intent);
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public void onContactSelected(Uri uri) {
            ImplicitIntentsUtil.startActivityInApp(GroupDetailActivity.this, new Intent("android.intent.action.VIEW", uri));
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public void onDeleteGroupRequested(Uri uri, long j, boolean z) {
        }

        public void onEditRequested(Uri uri) {
            Intent intent = new Intent(GroupDetailActivity.this, AsusGroupEditorActivity.class);
            intent.setData(uri);
            intent.setAction("android.intent.action.EDIT");
            ImplicitIntentsUtil.startActivityInApp(GroupDetailActivity.this, intent);
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public void onEditRequested(Uri uri, String str) {
            Intent intent = f.c(str) ? new Intent(GroupDetailActivity.this, FavoriteEditorActivity.class) : new Intent(GroupDetailActivity.this, AsusGroupEditorActivity.class);
            intent.setData(uri);
            intent.setAction("android.intent.action.EDIT");
            if (f.b(str)) {
                intent.putExtra("activity_title", GroupDetailActivity.this.getResources().getString(2131756064));
            }
            ImplicitIntentsUtil.startActivityInApp(GroupDetailActivity.this, intent);
        }

        public void onGroupSizeUpdated(String str) {
            GroupDetailActivity.this.getActionBar().setSubtitle(str);
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public void onGroupTitleUpdated(String str) {
            GroupDetailActivity.this.mMainTitle.setText(str);
        }
    };
    private TextView mMainTitle;
    private boolean mShowGroupSourceInActionBar;
    TextView mStatusContainer;
    private LinearLayout mTitleContainer;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/GroupDetailActivity$ActionBarCustomViewOnClickListener.class */
    private class ActionBarCustomViewOnClickListener implements View.OnClickListener {
        Context context;

        public ActionBarCustomViewOnClickListener(Context context) {
            this.context = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case 2131296937:
                    GroupDetailActivity.this.onBackPressed();
                    return;
                default:
                    return;
            }
        }
    }

    public View getAccontFilterView() {
        return this.mAccountFilter;
    }

    public TextView getFilterAccountNameView() {
        return this.mFilterAccountNameText;
    }

    public TextView getFilterAccountTypeView() {
        return this.mFilterAccountTypeText;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            switch (i) {
                case 20:
                    FavoriteDataUtil.addFavoriteData(getApplicationContext(), intent);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mActionbarContainer = (TextView) findViewById(2131296285);
        AsusActionBarUtils.updateActionBar(this, this.mActionbarContainer, this.mStatusContainer);
    }

    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(2131820562);
        super.onCreate(bundle);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayOptions(16);
            actionBar.setCustomView(2131427570);
            this.mActionBarListenr = new ActionBarCustomViewOnClickListener(this);
            ((ImageView) actionBar.getCustomView().findViewById(2131296937)).setOnClickListener(this.mActionBarListenr);
            this.mMainTitle = (TextView) actionBar.getCustomView().findViewById(2131297010);
            this.mAccountFilter = actionBar.getCustomView().findViewById(2131297401);
            this.mAccountFilter.setClickable(true);
            View findViewById = actionBar.getCustomView().findViewById(2131297341);
            if (PhoneCapabilityTester.IsAsusDevice()) {
                findViewById.setVisibility(0);
                findViewById.setBackground(null);
                this.mFilterAccountNameText = (TextView) findViewById.findViewById(2131296349);
                this.mFilterAccountTypeText = (TextView) findViewById.findViewById(2131296348);
                this.mFilterAccountNameText.setTextColor(getResources().getColor(2131034157));
                this.mFilterAccountTypeText.setTextColor(getResources().getColor(2131034157));
            } else {
                findViewById.setVisibility(8);
            }
            if (PhoneCapabilityTester.IsAsusDevice()) {
                this.mMainTitle.setTextColor(getResources().getColor(2131034331));
            } else {
                this.mMainTitle.setTextColor(getResources().getColor(2131034157));
            }
        }
        setContentView(2131427569);
        if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
            Intent intent = new Intent(this, MainDialtactsActivity.class);
            intent.putExtra("GroupDetail", true);
            intent.putExtra("GroupDetailChoose", getIntent().getData().toString());
            ImplicitIntentsUtil.startActivityInApp(this, intent);
            finish();
            Log.d(TAG, "finish in pad");
            return;
        }
        this.mShowGroupSourceInActionBar = getResources().getBoolean(2130968590);
        this.mFragment = (GroupDetailFragment) getFragmentManager().findFragmentById(2131296892);
        this.mFragment.f1325a = this.mFragmentListener;
        this.mFragment.d = this.mShowGroupSourceInActionBar;
        this.mFragment.a(getIntent().getData());
        this.mFragment.f = true;
        this.mActionbarContainer = (TextView) findViewById(2131296285);
        this.mStatusContainer = (TextView) findViewById(2131297347);
        AsusActionBarUtils.updateActionBar(this, this.mActionbarContainer, this.mStatusContainer);
        if (PhoneCapabilityTester.IsSystemApp()) {
            b.a();
            b.a(18, (Activity) this, "Group detail", true);
            return;
        }
        b.a();
        b.a(10, (Activity) this, "Group detail", true);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (!this.mShowGroupSourceInActionBar) {
            return true;
        }
        getMenuInflater().inflate(2131492897, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                Intent intent = new Intent(this, PeopleActivity.class);
                intent.addFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
                ImplicitIntentsUtil.startActivityInApp(this, intent);
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        closeOptionsMenu();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean z;
        if (!this.mShowGroupSourceInActionBar) {
            z = false;
        } else {
            MenuItem findItem = menu.findItem(2131297055);
            z = false;
            if (findItem != null) {
                final com.android.contacts.model.account.a a2 = com.android.contacts.model.a.a(this).a(this.mAccountTypeString, this.mDataSet);
                if (TextUtils.isEmpty(this.mAccountTypeString) || TextUtils.isEmpty(a2.j())) {
                    findItem.setVisible(false);
                    z = false;
                } else {
                    View a3 = f.a(this);
                    f.a(this, a3, this.mAccountTypeString, this.mDataSet);
                    a3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.GroupDetailActivity.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            Intent intent = new Intent("android.intent.action.VIEW", ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, GroupDetailActivity.this.mFragment.c));
                            intent.setClassName(a2.d, a2.j());
                            ImplicitIntentsUtil.startActivityInApp(GroupDetailActivity.this, intent);
                        }
                    });
                    findItem.setActionView(a3);
                    findItem.setVisible(true);
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.android.contacts.interactions.a.AbstractC0041a
    public void setProgressDialog(ProgressDialog progressDialog) {
        if (this.mFragment != null) {
            this.mFragment.e = progressDialog;
        }
    }
}
