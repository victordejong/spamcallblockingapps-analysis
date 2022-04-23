package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.a.b;
import com.android.contacts.copycontacts.AsusCopyContactsFromActivity;
import com.android.contacts.interactions.h;
import com.android.contacts.link.LinkedContactsActivity;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.a;
import com.asus.blocklist.g;
import com.asus.contacts.b.c;
import com.asus.privatecontacts.pin.PrivatePinDialogActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ManageContactsActivity.class */
public class ManageContactsActivity extends Activity {
    private static final String TAG = ManageContactsActivity.class.getSimpleName();
    TextView BlockListLink;
    TextView CopyLink;
    TextView DeduplicateLink;
    TextView ImportExportLink;
    TextView LinkedContacts;
    View PrivateContacts;
    private Activity mActivity;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ManageContactsActivity$SetAutoLinkTask.class */
    class SetAutoLinkTask extends AsyncTask<String, Void, Void> {
        SetAutoLinkTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(String... strArr) {
            try {
                Cursor query = ManageContactsActivity.this.getContentResolver().query(Uri.withAppendedPath(Uri.parse("content://com.android.contacts"), "asus_auto_linked/" + strArr[0]), null, null, null, null);
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            setContentView(2131427602);
            this.mActivity = this;
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayHomeAsUpEnabled(true);
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayShowCustomEnabled(true);
                actionBar.setTitle(getResources().getString(2131755830));
            }
            if (PhoneCapabilityTester.IsSystemApp()) {
                b.a();
                b.a(18, (Activity) this, "Manage contact", true);
            } else {
                b.a();
                b.a(10, (Activity) this, "Manage contact", true);
            }
            this.ImportExportLink = (TextView) findViewById(2131296949);
            this.CopyLink = (TextView) findViewById(2131296609);
            this.DeduplicateLink = (TextView) findViewById(2131296641);
            this.BlockListLink = (TextView) findViewById(2131296388);
            this.BlockListLink.setText(getResources().getString(2131755738));
            this.LinkedContacts = (TextView) findViewById(2131296994);
            this.ImportExportLink.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ManageContactsActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    b.a();
                    b.a(ManageContactsActivity.this, "Dialer", "Settings", "Manage_contacts:Import_export");
                    h.a(ManageContactsActivity.this.getFragmentManager());
                }
            });
            this.CopyLink.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ManageContactsActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    b.a();
                    b.a(ManageContactsActivity.this, "Dialer", "Settings", "Manage_contacts:Copy_contacts");
                    ImplicitIntentsUtil.startActivityInApp(ManageContactsActivity.this, new Intent(view.getContext(), AsusCopyContactsFromActivity.class));
                    ManageContactsActivity.this.finish();
                }
            });
            if (PhoneCapabilityTester.IsAsusDevice()) {
                this.DeduplicateLink.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ManageContactsActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        b.a();
                        b.a(ManageContactsActivity.this, "Dialer", "Settings", "Manage_contacts:De-duplicate_contacts");
                        Intent intent = new Intent(view.getContext(), AsusSelectAccountActivity.class);
                        intent.setFlags(1);
                        ImplicitIntentsUtil.startActivityInApp(ManageContactsActivity.this, intent);
                        ManageContactsActivity.this.finish();
                    }
                });
            } else {
                this.DeduplicateLink.setVisibility(8);
            }
            if (a.a(this)) {
                this.BlockListLink.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ManageContactsActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        b.a();
                        b.a(ManageContactsActivity.this, "Dialer", "Settings", "Manage_contacts:Blocked_list");
                        ImplicitIntentsUtil.startActivityInAppIfPossible(ManageContactsActivity.this, g.i(ManageContactsActivity.this.getApplicationContext()));
                        ManageContactsActivity.this.finish();
                    }
                });
            } else {
                this.BlockListLink.setVisibility(8);
            }
            this.LinkedContacts.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ManageContactsActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ImplicitIntentsUtil.startActivityInApp(ManageContactsActivity.this, new Intent(view.getContext(), LinkedContactsActivity.class));
                    ManageContactsActivity.this.finish();
                }
            });
            boolean isPhone = PhoneCapabilityTester.isPhone(this);
            this.PrivateContacts = findViewById(2131297018);
            if (!isPhone || !PhoneCapabilityTester.IsAsusDevice() || !com.asus.privatecontacts.b.b.c(this)) {
                this.PrivateContacts.setVisibility(8);
                Log.d(TAG, "This device doesn't have phone module, disable [Private Contacts].");
                return;
            }
            this.PrivateContacts.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ManageContactsActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    c.a(ManageContactsActivity.this.mActivity, "key_private_contacts");
                    Intent intent = new Intent(view.getContext(), PrivatePinDialogActivity.class);
                    if (!RequestCameraPermissionsActivity.startPermissionActivity(ManageContactsActivity.this.mActivity, intent, 2, null)) {
                        ImplicitIntentsUtil.startActivityInApp(ManageContactsActivity.this, intent);
                        ManageContactsActivity.this.finish();
                    }
                }
            });
            ImageView imageView = (ImageView) findViewById(2131297225);
            if (c.b(this.mActivity, "key_private_contacts")) {
                imageView.setVisibility(0);
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
