package com.callerid.block.start;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.provider.CallLog;
import android.widget.Toast;
import com.callerid.block.R$string;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.p060x0.C1230a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$h.class */
class SettingActivity$h extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    WeakReference<SettingActivity> f4950a;

    SettingActivity$h(SettingActivity settingActivity) {
        this.f4950a = new WeakReference<>(settingActivity);
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        SettingActivity settingActivity = this.f4950a.get();
        if (settingActivity != null) {
            try {
                if (!C1230a.m9514b(settingActivity, "android.permission.WRITE_CALL_LOG")) {
                    return null;
                }
                EZCallApplication.m10163c().getContentResolver().delete(CallLog.Calls.CONTENT_URI, null, null);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void onPostExecute(Void r5) {
        super.onPostExecute(r5);
        SettingActivity settingActivity = this.f4950a.get();
        if (settingActivity != null) {
            Toast.makeText((Context) settingActivity, (CharSequence) settingActivity.getResources().getString(R$string.delete_success), 0).show();
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.RELOAD_DATA_VEST");
            settingActivity.sendOrderedBroadcast(intent, null);
        }
    }
}
