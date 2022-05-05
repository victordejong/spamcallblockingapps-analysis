package com.android.contacts.vcard;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.android.contacts.vcard.VCardService;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/CancelActivity.class */
public class CancelActivity extends Activity implements ServiceConnection {
    static final String DISPLAY_NAME = "display_name";
    static final String JOB_ID = "job_id";
    static final String TYPE = "type";
    private final String LOG_TAG = "VCardCancel";
    private final CancelListener mCancelListener = new CancelListener();
    private String mDisplayName;
    private int mJobId;
    private int mType;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/CancelActivity$CancelListener.class */
    private class CancelListener implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {
        private CancelListener() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            CancelActivity.this.finish();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            CancelActivity.this.finish();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/CancelActivity$RequestCancelListener.class */
    private class RequestCancelListener implements DialogInterface.OnClickListener {
        private RequestCancelListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            CancelActivity.this.bindService(new Intent(CancelActivity.this, VCardService.class), CancelActivity.this, 1);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Uri data = getIntent().getData();
        this.mJobId = Integer.parseInt(data.getQueryParameter(JOB_ID));
        this.mDisplayName = data.getQueryParameter(DISPLAY_NAME);
        this.mType = Integer.parseInt(data.getQueryParameter(TYPE));
        showDialog(2131296702);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        Dialog create;
        switch (i) {
            case 2131296702:
                create = new AlertDialog.Builder(this).setMessage(this.mType == 1 ? getString(2131755349, new Object[]{this.mDisplayName}) : getString(2131755348, new Object[]{this.mDisplayName})).setPositiveButton(17039370, new RequestCancelListener()).setOnCancelListener(this.mCancelListener).setNegativeButton(17039360, this.mCancelListener).create();
                break;
            case 2131296703:
                create = new AlertDialog.Builder(this).setTitle(2131755351).setIconAttribute(16843605).setMessage(getString(2131755650)).setOnCancelListener(this.mCancelListener).setPositiveButton(17039370, this.mCancelListener).create();
                break;
            default:
                Log.w("VCardCancel", "Unknown dialog id: " + i);
                create = super.onCreateDialog(i, bundle);
                break;
        }
        return create;
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            ((VCardService.MyBinder) iBinder).getService().handleCancelRequest(new CancelRequest(this.mJobId, this.mDisplayName), null);
            unbindService(this);
            finish();
        } catch (Throwable th) {
            unbindService(this);
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        setVisible(true);
    }
}
