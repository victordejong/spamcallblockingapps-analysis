package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.list.AsusPhoneFavoriteFragment;
import com.android.contacts.p;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.FavoriteDataUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/OdmGroupDetailActivity.class */
public class OdmGroupDetailActivity extends p {
    public static final int ADD_TO_FAVORITE = 20;
    public static final int EDIT_FAVORITE = 30;
    private View mAccountFilter;
    private AsusPhoneFavoriteFragment mAllFragment;
    private AsusPhoneFavoriteFragment.d mAsusPhoneFavoriteListener = new AsusPhoneFavoriteFragment.d() { // from class: com.android.contacts.activities.OdmGroupDetailActivity.1
        @Override // com.android.contacts.list.AsusPhoneFavoriteFragment.d
        public void onContactSelected(Uri uri) {
            PhoneNumberInteraction.b(OdmGroupDetailActivity.this, uri);
        }

        @Override // com.android.contacts.list.AsusPhoneFavoriteFragment.d
        public void onContactSelected(Uri uri, String str) {
            if (!str.equals("showContactDetail")) {
                PhoneNumberInteraction.a(OdmGroupDetailActivity.this, uri, CallUtil.getCallOrigin(OdmGroupDetailActivity.this.getIntent()), str);
            } else if (!PhoneCapabilityTester.isUsingTwoPanes(OdmGroupDetailActivity.this)) {
                ImplicitIntentsUtil.startActivityInApp(OdmGroupDetailActivity.this, new Intent("android.intent.action.VIEW", uri));
            }
        }

        @Override // com.android.contacts.list.AsusPhoneFavoriteFragment.d
        public void onContactSelected(Uri uri, String str, long j) {
            if (!str.equals("showContactDetail")) {
                PhoneNumberInteraction.a(OdmGroupDetailActivity.this, uri, CallUtil.getCallOrigin(OdmGroupDetailActivity.this.getIntent()), str, j);
            } else if (!PhoneCapabilityTester.isUsingTwoPanes(OdmGroupDetailActivity.this)) {
                ImplicitIntentsUtil.startActivityInApp(OdmGroupDetailActivity.this, new Intent("android.intent.action.VIEW", uri));
            }
        }
    };
    private TextView mMainTitle;

    public void EditFavorite(MenuItem menuItem) {
        Intent intent = new Intent(this, FavoriteEditorActivity.class);
        intent.setAction("android.intent.action.INSERT");
        startActivityForResult(intent, 30);
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

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof AsusPhoneFavoriteFragment) {
            this.mAllFragment = (AsusPhoneFavoriteFragment) fragment;
            this.mAllFragment.c = this.mAsusPhoneFavoriteListener;
        }
    }

    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowTitleEnabled(true);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setTitle(getString(2131755454));
        }
        setContentView(2131427610);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492893, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onMenuItemSelected(i, menuItem);
                break;
        }
        return z;
    }
}
