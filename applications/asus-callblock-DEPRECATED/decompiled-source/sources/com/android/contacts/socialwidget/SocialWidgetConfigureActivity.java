package com.android.contacts.socialwidget;

import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/socialwidget/SocialWidgetConfigureActivity.class */
public class SocialWidgetConfigureActivity extends Activity {
    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                throw new IllegalStateException("Intent extras are null");
            }
            int i3 = extras.getInt("appWidgetId", 0);
            a.a();
            Uri data = intent.getData();
            if (Log.isLoggable("SocialWidgetSettings", 3)) {
                Log.d("SocialWidgetSettings", "setContactUri(" + i3 + ", " + data + ")");
            }
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this).edit();
            if (data == null) {
                edit.remove(a.a(i3));
            } else {
                edit.putString(a.a(i3), data.toString());
            }
            edit.apply();
            SocialWidgetProvider.a((Context) this, AppWidgetManager.getInstance(this), i3, true);
            Intent intent2 = new Intent();
            intent2.putExtra("appWidgetId", i3);
            setResult(-1, intent2);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(0);
        if (bundle == null || !bundle.getBoolean("already_launched_picker_activity")) {
            Intent intent = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
            intent.setFlags(603979776);
            startActivityForResult(intent, 0);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("already_launched_picker_activity", true);
    }
}
