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
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.RequestStoragePermissionsActivity;
import com.android.contacts.b;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.a;
import com.android.contacts.util.AsusStorageUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.VCardService;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ExportVCardActivity.class */
public class ExportVCardActivity extends Activity implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, ServiceConnection {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "VCardExport";
    private boolean isAll;
    private String mAccountFromString;
    private String mAccountType;
    private boolean mConnected;
    private String mDataSet;
    private String mErrorReason;
    private boolean mIsStartService;
    private VCardService mService;
    private String mTargetFileName;
    private volatile boolean mProcessOngoing = true;
    private final Messenger mIncomingMessenger = new Messenger(new IncomingHandler());
    private String mAccountName = b.a();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ExportVCardActivity$ExportConfirmationListener.class */
    private class ExportConfirmationListener implements DialogInterface.OnClickListener {
        private final AccountWithDataSet mAccountFrom;
        private final Uri mDestinationUri;

        public ExportConfirmationListener(Uri uri) {
            this.mDestinationUri = uri;
            this.mAccountFrom = null;
        }

        public ExportConfirmationListener(Uri uri, AccountWithDataSet accountWithDataSet) {
            this.mDestinationUri = uri;
            this.mAccountFrom = accountWithDataSet;
        }

        public ExportConfirmationListener(ExportVCardActivity exportVCardActivity, String str) {
            this(Uri.parse("file://" + str));
        }

        public ExportConfirmationListener(ExportVCardActivity exportVCardActivity, String str, AccountWithDataSet accountWithDataSet) {
            this(Uri.parse("file://" + str), accountWithDataSet);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                ExportVCardActivity.this.mService.handleExportRequest(new ExportRequest(this.mDestinationUri, PhoneCapabilityTester.isKDDISku() ? VCardService.VCARD_TYPE_V21_JAPANESE_MOBILE_STR : null, this.mAccountFrom), new NotificationImportExportListener(ExportVCardActivity.this));
                ExportVCardActivity.this.mIsStartService = true;
            }
            ExportVCardActivity.this.unbindAndFinish();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ExportVCardActivity$IncomingHandler.class */
    private class IncomingHandler extends Handler {
        private IncomingHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.arg1 != 0) {
                Log.i(ExportVCardActivity.LOG_TAG, "Message returned from vCard server contains error code.");
                if (message.obj != null) {
                    ExportVCardActivity.this.mErrorReason = (String) message.obj;
                }
                ExportVCardActivity.this.showDialog(message.arg1);
                return;
            }
            switch (message.what) {
                case 5:
                    if (message.obj == null) {
                        Log.w(ExportVCardActivity.LOG_TAG, "Message returned from vCard server doesn't contain valid path");
                        ExportVCardActivity.this.mErrorReason = ExportVCardActivity.this.getString(2131755650);
                        ExportVCardActivity.this.showDialog(2131296712);
                        return;
                    }
                    ExportVCardActivity.this.mTargetFileName = (String) message.obj;
                    if (TextUtils.isEmpty(ExportVCardActivity.this.mTargetFileName)) {
                        Log.w(ExportVCardActivity.LOG_TAG, "Destination file name coming from vCard service is empty.");
                        ExportVCardActivity.this.mErrorReason = ExportVCardActivity.this.getString(2131755650);
                        ExportVCardActivity.this.showDialog(2131296712);
                        return;
                    } else if (ExportVCardActivity.this.isAll) {
                        ExportVCardActivity.this.showDialog(2131296709);
                        return;
                    } else {
                        ExportVCardActivity.this.showDialog(2131296710);
                        return;
                    }
                default:
                    Log.w(ExportVCardActivity.LOG_TAG, "Unknown message type: " + message.what);
                    super.handleMessage(message);
                    return;
            }
        }
    }

    public ExportVCardActivity() {
        this.mAccountType = PhoneCapabilityTester.isVerizon() ? "com.verizon.Phone" : "asus.local.phone";
        this.mDataSet = null;
        this.isAll = true;
        this.mAccountFromString = null;
        this.mIsStartService = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unbindAndFinish() {
        synchronized (this) {
            if (this.mConnected) {
                unbindService(this);
                this.mConnected = false;
            }
            finish();
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.mProcessOngoing = false;
        unbindAndFinish();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        unbindAndFinish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!RequestStoragePermissionsActivity.startPermissionActivity(this)) {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                Log.w(LOG_TAG, "External storage is in state " + Environment.getExternalStorageState() + ". Cancelling export");
                showDialog(2131296718);
                return;
            }
            if (!PhoneCapabilityTester.isKDDISku()) {
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                if ((!externalStorageDirectory.exists() || !externalStorageDirectory.isDirectory() || !externalStorageDirectory.canRead()) && !externalStorageDirectory.mkdirs()) {
                    showDialog(2131296718);
                    return;
                }
            } else if (!AsusStorageUtils.isMicroSDStorageExist(this)) {
                showDialog(2131296718);
                return;
            }
            Intent intent = getIntent();
            if (intent != null) {
                this.mAccountType = intent.getStringExtra(SelectAccountActivity.ACCOUNT_TYPE);
                this.mAccountName = intent.getStringExtra(SelectAccountActivity.ACCOUNT_NAME);
                this.mDataSet = intent.getStringExtra(SelectAccountActivity.DATA_SET);
            }
            if (this.mAccountType == null || this.mAccountName == null || this.mAccountName.equals("asus_all_accounts")) {
                this.isAll = true;
            } else {
                a a2 = com.android.contacts.model.a.a(this).a(this.mAccountType, this.mDataSet);
                if (a2.g) {
                    this.mAccountFromString = (String) a2.a(this);
                } else {
                    this.mAccountFromString = ((String) a2.a(this)) + "(" + this.mAccountName + ")";
                }
                this.isAll = false;
            }
            Intent intent2 = new Intent(this, VCardService.class);
            if (startService(intent2) == null) {
                Log.e(LOG_TAG, "Failed to start vCard service");
                this.mErrorReason = getString(2131755650);
                showDialog(2131296712);
            } else if (!bindService(intent2, this, 1)) {
                Log.e(LOG_TAG, "Failed to connect to vCard service.");
                this.mErrorReason = getString(2131755650);
                showDialog(2131296712);
            }
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        Dialog create;
        switch (i) {
            case 2131296709:
                create = new AlertDialog.Builder(this).setTitle(2131755435).setMessage(getString(2131755072, new Object[]{this.mTargetFileName})).setPositiveButton(17039370, new ExportConfirmationListener(this, this.mTargetFileName)).setNegativeButton(17039360, this).setOnCancelListener(this).create();
                break;
            case 2131296710:
                create = new AlertDialog.Builder(this).setTitle(2131755435).setMessage(getString(2131755071, new Object[]{this.mAccountFromString, this.mTargetFileName})).setPositiveButton(17039370, new ExportConfirmationListener(this, this.mTargetFileName, new AccountWithDataSet(this.mAccountName, this.mAccountType, this.mDataSet))).setNegativeButton(17039360, this).setOnCancelListener(this).create();
                break;
            case 2131296712:
                this.mProcessOngoing = false;
                create = new AlertDialog.Builder(this).setTitle(2131755628).setMessage(getString(2131755627, new Object[]{this.mErrorReason != null ? this.mErrorReason : getString(2131755650)})).setPositiveButton(17039370, this).setOnCancelListener(this).create();
                break;
            case 2131296718:
                int i2 = PhoneCapabilityTester.isKDDISku() ? 2131755724 : 2131755910;
                this.mProcessOngoing = false;
                create = new AlertDialog.Builder(this).setIconAttribute(16843605).setMessage(i2).setPositiveButton(17039370, this).create();
                break;
            case 2131755649:
                this.mProcessOngoing = false;
                create = new AlertDialog.Builder(this).setTitle(2131755628).setMessage(getString(2131755627, new Object[]{getString(2131755649)})).setPositiveButton(17039370, this).create();
                break;
            default:
                create = super.onCreateDialog(i, bundle);
                break;
        }
        return create;
    }

    @Override // android.app.Activity
    protected void onPrepareDialog(int i, Dialog dialog, Bundle bundle) {
        if (i == 2131296712) {
            ((AlertDialog) dialog).setMessage(this.mErrorReason);
        } else if (i == 2131296709) {
            ((AlertDialog) dialog).setMessage(getString(2131755072, new Object[]{this.mTargetFileName}));
        } else if (i == 2131296710) {
            ((AlertDialog) dialog).setMessage(getString(2131755071, new Object[]{this.mAccountFromString, this.mTargetFileName}));
        } else {
            super.onPrepareDialog(i, dialog, bundle);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.mConnected = true;
            this.mService = ((VCardService.MyBinder) iBinder).getService();
            this.mService.handleRequestAvailableExportDestination(this.mIncomingMessenger);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            this.mService = null;
            this.mConnected = false;
            if (this.mProcessOngoing) {
                Log.w(LOG_TAG, "Disconnected from service during the process ongoing.");
                this.mErrorReason = getString(2131755650);
                showDialog(2131296712);
            }
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        setVisible(true);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (!this.mIsStartService && this.mService != null) {
            this.mService.stopServiceIfAppropriate();
        }
        if (!isFinishing()) {
            unbindAndFinish();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unbindService(ServiceConnection serviceConnection) {
        this.mProcessOngoing = false;
        super.unbindService(serviceConnection);
    }
}
