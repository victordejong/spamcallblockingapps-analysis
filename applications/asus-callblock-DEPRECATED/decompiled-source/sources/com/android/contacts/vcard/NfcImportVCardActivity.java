package com.android.contacts.vcard;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.vcard.VCardService;
import com.android.vcard.VCardEntry;
import com.android.vcard.VCardEntryCounter;
import com.android.vcard.VCardParser_V21;
import com.android.vcard.VCardParser_V30;
import com.android.vcard.VCardSourceDetector;
import com.android.vcard.exception.VCardException;
import com.android.vcard.exception.VCardNestedException;
import com.android.vcard.exception.VCardVersionException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/NfcImportVCardActivity.class */
public class NfcImportVCardActivity extends Activity implements ServiceConnection, VCardImportExportListener {
    private static final int SELECT_ACCOUNT = 1;
    private static final String TAG = "NfcImportVCardActivity";
    private AccountWithDataSet mAccount;
    private NdefRecord mRecord;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/NfcImportVCardActivity$ImportTask.class */
    class ImportTask extends AsyncTask<VCardService, Void, ImportRequest> {
        ImportTask() {
        }

        public ImportRequest doInBackground(VCardService... vCardServiceArr) {
            ImportRequest importRequest;
            ImportRequest createImportRequest = NfcImportVCardActivity.this.createImportRequest();
            if (createImportRequest == null) {
                importRequest = null;
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(createImportRequest);
                vCardServiceArr[0].handleImportRequest(arrayList, NfcImportVCardActivity.this);
                importRequest = createImportRequest;
            }
            return importRequest;
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            NfcImportVCardActivity.this.unbindService(NfcImportVCardActivity.this);
        }

        public void onPostExecute(ImportRequest importRequest) {
            NfcImportVCardActivity.this.unbindService(NfcImportVCardActivity.this);
        }
    }

    private void startImport() {
        Intent intent = new Intent(this, VCardService.class);
        startService(intent);
        bindService(intent, this, 1);
    }

    ImportRequest createImportRequest() {
        VCardSourceDetector vCardSourceDetector;
        VCardEntryCounter vCardEntryCounter;
        ImportRequest importRequest;
        Throwable th;
        VCardParser_V30 vCardParser_V30;
        VCardSourceDetector vCardSourceDetector2;
        int i = 1;
        i = 1;
        i = 1;
        i = 1;
        i = 1;
        try {
            try {
                try {
                    try {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.mRecord.getPayload());
                        byteArrayInputStream.mark(0);
                        VCardParser_V21 vCardParser_V21 = new VCardParser_V21();
                        try {
                            VCardEntryCounter vCardEntryCounter2 = new VCardEntryCounter();
                            try {
                                VCardSourceDetector vCardSourceDetector3 = new VCardSourceDetector();
                                try {
                                    vCardParser_V21.addInterpreter(vCardEntryCounter2);
                                    vCardParser_V21.addInterpreter(vCardSourceDetector3);
                                    vCardParser_V21.parse(byteArrayInputStream);
                                    vCardSourceDetector = vCardSourceDetector3;
                                    vCardEntryCounter = vCardEntryCounter2;
                                    try {
                                        byteArrayInputStream.close();
                                        vCardEntryCounter = vCardEntryCounter2;
                                        vCardSourceDetector = vCardSourceDetector3;
                                    } catch (IOException e) {
                                        vCardEntryCounter = vCardEntryCounter2;
                                        vCardSourceDetector = vCardSourceDetector3;
                                    }
                                } catch (VCardVersionException e2) {
                                    vCardEntryCounter = vCardEntryCounter2;
                                    vCardSourceDetector = vCardSourceDetector3;
                                    try {
                                        byteArrayInputStream.reset();
                                        i = 2;
                                        vCardParser_V30 = new VCardParser_V30();
                                        try {
                                            i = 2;
                                            vCardEntryCounter = new VCardEntryCounter();
                                            try {
                                                vCardSourceDetector2 = new VCardSourceDetector();
                                            } catch (VCardVersionException e3) {
                                            } catch (Throwable th2) {
                                                th = th2;
                                                vCardEntryCounter = vCardEntryCounter;
                                            }
                                        } catch (VCardVersionException e4) {
                                            vCardEntryCounter = vCardEntryCounter;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                    try {
                                        vCardParser_V30.addInterpreter(vCardEntryCounter);
                                        vCardParser_V30.addInterpreter(vCardSourceDetector2);
                                        vCardParser_V30.parse(byteArrayInputStream);
                                        vCardSourceDetector = vCardSourceDetector2;
                                        vCardEntryCounter = vCardEntryCounter;
                                        i = 2;
                                        try {
                                            byteArrayInputStream.close();
                                            vCardSourceDetector = vCardSourceDetector2;
                                        } catch (IOException e5) {
                                            vCardSourceDetector = vCardSourceDetector2;
                                        }
                                        importRequest = new ImportRequest(this.mAccount, this.mRecord.getPayload(), null, getString(2131755882), vCardSourceDetector.getEstimatedType(), vCardSourceDetector.getEstimatedCharset(), i, vCardEntryCounter.getCount());
                                    } catch (VCardVersionException e6) {
                                        vCardSourceDetector = vCardSourceDetector2;
                                        try {
                                            byteArrayInputStream.close();
                                            importRequest = null;
                                        } catch (VCardNestedException e7) {
                                            Log.w(TAG, "Nested Exception is found (it may be false-positive).");
                                            importRequest = new ImportRequest(this.mAccount, this.mRecord.getPayload(), null, getString(2131755882), vCardSourceDetector.getEstimatedType(), vCardSourceDetector.getEstimatedCharset(), i, vCardEntryCounter.getCount());
                                        } catch (IOException e8) {
                                            importRequest = null;
                                        }
                                        return importRequest;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        vCardEntryCounter = vCardEntryCounter;
                                        vCardSourceDetector = vCardSourceDetector2;
                                        try {
                                            try {
                                                byteArrayInputStream.close();
                                            } catch (IOException e9) {
                                            }
                                            throw th;
                                        } catch (VCardNestedException e10) {
                                            Log.w(TAG, "Nested Exception is found (it may be false-positive).");
                                            importRequest = new ImportRequest(this.mAccount, this.mRecord.getPayload(), null, getString(2131755882), vCardSourceDetector.getEstimatedType(), vCardSourceDetector.getEstimatedCharset(), i, vCardEntryCounter.getCount());
                                            return importRequest;
                                        }
                                    }
                                    return importRequest;
                                } catch (Throwable th5) {
                                    th = th5;
                                    vCardEntryCounter = vCardEntryCounter2;
                                    vCardSourceDetector = vCardSourceDetector3;
                                    i = 1;
                                    byteArrayInputStream.close();
                                    throw th;
                                }
                            } catch (VCardVersionException e11) {
                                vCardSourceDetector = null;
                                vCardEntryCounter = vCardEntryCounter2;
                            } catch (Throwable th6) {
                                th = th6;
                                vCardSourceDetector = null;
                                vCardEntryCounter = vCardEntryCounter2;
                                i = 1;
                            }
                        } catch (VCardVersionException e12) {
                            vCardSourceDetector = null;
                            vCardEntryCounter = null;
                        } catch (Throwable th7) {
                            th = th7;
                            vCardSourceDetector = null;
                            vCardEntryCounter = null;
                            i = 1;
                        }
                    } catch (IOException e13) {
                        Log.e(TAG, "Failed reading vcard data", e13);
                        importRequest = null;
                    }
                } catch (VCardNestedException e14) {
                }
            } catch (VCardException e15) {
                Log.e(TAG, "Error parsing vcard", e15);
                importRequest = null;
            }
        } catch (VCardNestedException e16) {
            vCardSourceDetector = null;
            vCardEntryCounter = null;
        }
        importRequest = new ImportRequest(this.mAccount, this.mRecord.getPayload(), null, getString(2131755882), vCardSourceDetector.getEstimatedType(), vCardSourceDetector.getEstimatedCharset(), i, vCardEntryCounter.getCount());
        return importRequest;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return;
        }
        if (i2 == -1) {
            this.mAccount = new AccountWithDataSet(intent.getStringExtra(SelectAccountActivity.ACCOUNT_NAME), intent.getStringExtra(SelectAccountActivity.ACCOUNT_TYPE), intent.getStringExtra(SelectAccountActivity.DATA_SET));
            startImport();
            return;
        }
        finish();
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onCancelRequest(CancelRequest cancelRequest, int i) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onComplete() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!"android.nfc.action.NDEF_DISCOVERED".equals(intent.getAction())) {
            Log.w(TAG, "Unknowon intent " + intent);
            finish();
            return;
        }
        String type = intent.getType();
        if (type == null || (!"text/x-vcard".equals(type) && !"text/vcard".equals(type))) {
            Log.w(TAG, "Not a vcard");
            finish();
            return;
        }
        this.mRecord = ((NdefMessage) intent.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES")[0]).getRecords()[0];
        List<AccountWithDataSet> a2 = a.a(this).a(true);
        if (a2.size() == 0) {
            this.mAccount = null;
        } else if (a2.size() == 1) {
            this.mAccount = a2.get(0);
        } else {
            startActivityForResult(new Intent(this, SelectAccountActivity.class), 1);
            return;
        }
        startImport();
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onExportFailed(ExportRequest exportRequest) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onExportProcessed(ExportRequest exportRequest, int i) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportCanceled(ImportRequest importRequest, int i) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFailed(ImportRequest importRequest) {
        if (isFinishing()) {
            Log.i(TAG, "Late import failure -- ignoring");
        }
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFinished(ImportRequest importRequest, int i, Uri uri) {
        if (isFinishing()) {
            Log.i(TAG, "Late import -- ignoring");
        } else if (uri != null) {
            ImplicitIntentsUtil.startActivityInApp(this, new Intent("android.intent.action.VIEW", ContactsContract.RawContacts.getContactLookupUri(getContentResolver(), uri)));
            finish();
        }
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportParsed(ImportRequest importRequest, int i, VCardEntry vCardEntry, int i2, int i3) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportProcessed(ImportRequest importRequest, int i, int i2) {
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        new ImportTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, ((VCardService.MyBinder) iBinder).getService());
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
