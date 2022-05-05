package com.android.contacts.miniwidget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/AlertActivity.class */
public class AlertActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1919a = false;

    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.contacts.miniwidget.AlertActivity$3] */
    static /* synthetic */ void b(AlertActivity alertActivity) {
        Intent intent = new Intent();
        intent.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
        intent.putExtra("allupdate", true);
        alertActivity.sendBroadcast(intent);
        new Thread() { // from class: com.android.contacts.miniwidget.AlertActivity.3
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                SystemClock.sleep(1000L);
                Intent intent2 = new Intent();
                intent2.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                intent2.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
                intent2.putExtra("allupdate", true);
                AlertActivity.this.sendBroadcast(intent2);
            }
        }.start();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        String string = extras.getString("msg");
        String str = string;
        if (string == null) {
            str = BuildConfig.FLAVOR;
        }
        if (extras.containsKey("update")) {
            this.f1919a = extras.getBoolean("update");
        }
        new AlertDialog.Builder(this).setMessage(str).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.contacts.miniwidget.AlertActivity.2
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                if (AlertActivity.this.f1919a) {
                    AlertActivity.b(AlertActivity.this);
                }
                AlertActivity.this.finish();
            }
        }).setPositiveButton(getResources().getString(2131755924), new DialogInterface.OnClickListener() { // from class: com.android.contacts.miniwidget.AlertActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (AlertActivity.this.f1919a) {
                    AlertActivity.b(AlertActivity.this);
                }
                AlertActivity.this.finish();
            }
        }).show();
    }
}
