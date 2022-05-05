package com.asus.updatesdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.asus.updatesdk.cdn.CdnUtils;
import com.asus.updatesdk.utility.PreferenceUtils;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/ZenFamilyUpdateReceiver.class */
public class ZenFamilyUpdateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.v("ZenFamilyUpdateReceiver", "onReceive");
        String stringExtra = intent.getStringExtra(CdnUtils.KEY_MASTER_PACKAGE);
        if (!stringExtra.equals(context.getPackageName())) {
            String stringExtra2 = intent.getStringExtra(CdnUtils.KEY_LANGUAGE_LOCALE);
            long longExtra = intent.getLongExtra(CdnUtils.KEY_IUD_VERSION, 0L);
            long longExtra2 = intent.getLongExtra(CdnUtils.KEY_STRINGS_VERSION, 0L);
            long longExtra3 = intent.getLongExtra(CdnUtils.KEY_PLAY_CHECK_TIME, 0L);
            String stringExtra3 = intent.getStringExtra(CdnUtils.KEY_PLAY_JSON_FILE);
            String stringExtra4 = intent.getStringExtra(CdnUtils.KEY_IUD_JSON_FILE);
            String stringExtra5 = intent.getStringExtra(CdnUtils.KEY_STRINGS_JSON_FILE);
            PreferenceUtils.putLong(context, PreferenceUtils.KEY_IUD_VERSION, longExtra);
            PreferenceUtils.putLong(context, PreferenceUtils.KEY_STRINGS_VERSION, longExtra2);
            PreferenceUtils.putLong(context, PreferenceUtils.KEY_PLAY_CHECK_TIME, longExtra3);
            PreferenceUtils.putString(context, PreferenceUtils.KEY_MASTER_PACKAGE, stringExtra);
            PreferenceUtils.putString(context, PreferenceUtils.KEY_LANGUAGE_LOCALE, stringExtra2);
            PreferenceUtils.putString(context, PreferenceUtils.KEY_PLAY_JSON_FILE, stringExtra3);
            PreferenceUtils.putString(context, PreferenceUtils.KEY_IUD_JSON_FILE, stringExtra4);
            PreferenceUtils.putString(context, PreferenceUtils.KEY_STRINGS_JSON_FILE, stringExtra5);
        }
    }
}
