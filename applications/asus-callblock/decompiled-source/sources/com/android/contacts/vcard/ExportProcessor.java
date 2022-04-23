package com.android.contacts.vcard;

import android.app.NotificationManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.PeopleActivity;
import com.android.vcard.VCardComposer;
import com.android.vcard.VCardConfig;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/ExportProcessor.class */
public class ExportProcessor extends ProcessorBase {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "VCardExport";
    private volatile boolean mCanceled;
    private volatile boolean mDone;
    private final ExportRequest mExportRequest;
    private final int mJobId;
    private final NotificationManager mNotificationManager;
    private final ContentResolver mResolver;
    private final VCardService mService;

    public ExportProcessor(VCardService vCardService, ExportRequest exportRequest, int i) {
        this.mService = vCardService;
        this.mResolver = vCardService.getContentResolver();
        this.mNotificationManager = (NotificationManager) this.mService.getSystemService("notification");
        this.mExportRequest = exportRequest;
        this.mJobId = i;
    }

    private void doCancelNotification() {
        this.mNotificationManager.notify("VCardServiceProgress", this.mJobId, NotificationImportExportListener.constructCancelNotification(this.mService, this.mService.getString(2131755631, new Object[]{this.mExportRequest.destUri.getLastPathSegment()})));
    }

    private void doFinishNotification(String str, String str2) {
        this.mNotificationManager.notify("VCardServiceProgress", this.mJobId, NotificationImportExportListener.constructFinishNotification(this.mService, str, str2, new Intent(this.mService, PeopleActivity.class), 2));
    }

    private void doProgressNotification(Uri uri, int i, int i2) {
        String lastPathSegment = uri.getLastPathSegment();
        this.mNotificationManager.notify("VCardServiceProgress", this.mJobId, NotificationImportExportListener.constructProgressNotification(this.mService, 2, this.mService.getString(2131755629, new Object[]{lastPathSegment}), this.mService.getString(2131755630), this.mJobId, lastPathSegment, i, i2));
    }

    private void runInternal() {
        boolean z;
        BufferedWriter bufferedWriter;
        Throwable th;
        VCardComposer vCardComposer;
        ExportRequest exportRequest = this.mExportRequest;
        try {
            if (isCancelled()) {
                Log.i(LOG_TAG, "Export request is cancelled before handling the request");
                this.mService.handleFinishExportNotification(this.mJobId, false);
                return;
            }
            Uri uri = exportRequest.destUri;
            try {
                OutputStream openOutputStream = this.mResolver.openOutputStream(uri);
                String str = exportRequest.exportType;
                VCardComposer vCardComposer2 = new VCardComposer((Context) this.mService, TextUtils.isEmpty(str) ? VCardConfig.getVCardTypeFromString(this.mService.getString(2131755433)) : VCardConfig.getVCardTypeFromString(str), true);
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(openOutputStream));
                    try {
                        if (!vCardComposer2.init(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id"}, exportRequest.accountFrom != null ? "(_id IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL   ) AS combineTable WHERE combineTable.account_type ='" + exportRequest.accountFrom.type + "' AND combineTable.account_name ='" + exportRequest.accountFrom.name + "'))" : null, null, null, ContactsContract.RawContactsEntity.CONTENT_URI)) {
                            String errorReason = vCardComposer2.getErrorReason();
                            Log.e(LOG_TAG, "initialization of vCard composer failed: " + errorReason);
                            if (!VCardComposer.NO_ERROR.equals(errorReason)) {
                                doFinishNotification(this.mService.getString(2131755641, new Object[]{translateComposerError(errorReason)}), null);
                                vCardComposer2.terminate();
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e) {
                                    Log.w(LOG_TAG, "IOException is thrown during close(). Ignored. " + e);
                                }
                                this.mService.handleFinishExportNotification(this.mJobId, false);
                                return;
                            }
                        }
                        int count = vCardComposer2.getCount();
                        Log.d(LOG_TAG, "total:" + count);
                        if (count == 0) {
                            doFinishNotification(this.mService.getString(2131755646), null);
                            vCardComposer2.terminate();
                            try {
                                bufferedWriter.close();
                            } catch (IOException e2) {
                                Log.w(LOG_TAG, "IOException is thrown during close(). Ignored. " + e2);
                            }
                            this.mService.handleFinishExportNotification(this.mJobId, false);
                            return;
                        }
                        int i = 1;
                        while (!vCardComposer2.isAfterLast()) {
                            if (isCancelled()) {
                                Log.i(LOG_TAG, "Export request is cancelled during composing vCard");
                                vCardComposer2.terminate();
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e3) {
                                    Log.w(LOG_TAG, "IOException is thrown during close(). Ignored. " + e3);
                                }
                                this.mService.handleFinishExportNotification(this.mJobId, false);
                                return;
                            }
                            try {
                                bufferedWriter.write(vCardComposer2.createOneEntry());
                                if (i % 100 == 1) {
                                    doProgressNotification(uri, count, i);
                                }
                                i++;
                            } catch (IOException e4) {
                                String errorReason2 = vCardComposer2.getErrorReason();
                                Log.e(LOG_TAG, "Failed to read a contact: " + errorReason2);
                                doFinishNotification(this.mService.getString(2131755643, new Object[]{translateComposerError(errorReason2)}), null);
                                vCardComposer2.terminate();
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e5) {
                                    Log.w(LOG_TAG, "IOException is thrown during close(). Ignored. " + e5);
                                }
                                this.mService.handleFinishExportNotification(this.mJobId, false);
                                return;
                            }
                        }
                        Log.i(LOG_TAG, "Successfully finished exporting vCard " + exportRequest.destUri);
                        this.mService.updateMediaScanner(exportRequest.destUri.getPath());
                        try {
                            doFinishNotification(this.mService.getString(2131755632, new Object[]{uri.getLastPathSegment()}), null);
                            vCardComposer2.terminate();
                            try {
                                bufferedWriter.close();
                            } catch (IOException e6) {
                                Log.w(LOG_TAG, "IOException is thrown during close(). Ignored. " + e6);
                            }
                            this.mService.handleFinishExportNotification(this.mJobId, true);
                        } catch (Throwable th2) {
                            th = th2;
                            z = true;
                            vCardComposer = vCardComposer2;
                            if (vCardComposer != null) {
                                vCardComposer.terminate();
                            }
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e7) {
                                    Log.w(LOG_TAG, "IOException is thrown during close(). Ignored. " + e7);
                                }
                            }
                            this.mService.handleFinishExportNotification(this.mJobId, z);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        z = false;
                        vCardComposer = vCardComposer2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    z = false;
                    bufferedWriter = null;
                    vCardComposer = vCardComposer2;
                }
            } catch (FileNotFoundException e8) {
                Log.w(LOG_TAG, "FileNotFoundException thrown", e8);
                doFinishNotification(this.mService.getString(2131755642, new Object[]{uri, e8.getMessage()}), null);
                this.mService.handleFinishExportNotification(this.mJobId, false);
            }
        } catch (Throwable th5) {
            th = th5;
            z = false;
            bufferedWriter = null;
            vCardComposer = null;
        }
    }

    private String translateComposerError(String str) {
        String str2;
        Resources resources = this.mService.getResources();
        if (VCardComposer.FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO.equals(str)) {
            str2 = resources.getString(2131755426);
        } else if (VCardComposer.FAILURE_REASON_NO_ENTRY.equals(str)) {
            str2 = resources.getString(2131755427);
        } else {
            str2 = str;
            if (VCardComposer.FAILURE_REASON_NOT_INITIALIZED.equals(str)) {
                str2 = resources.getString(2131755428);
            }
        }
        return str2;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2 = true;
        synchronized (this) {
            if (this.mDone || this.mCanceled) {
                z2 = false;
            } else {
                this.mCanceled = true;
            }
        }
        return z2;
    }

    public ExportRequest getRequest() {
        return this.mExportRequest;
    }

    @Override // com.android.contacts.vcard.ProcessorBase
    public final int getType() {
        return 2;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.mCanceled;
        }
        return z;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            z = this.mDone;
        }
        return z;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            try {
                runInternal();
                if (isCancelled()) {
                    doCancelNotification();
                }
                synchronized (this) {
                    this.mDone = true;
                }
            } catch (OutOfMemoryError e) {
                Log.e(LOG_TAG, "OutOfMemoryError thrown during import", e);
                throw e;
            } catch (RuntimeException e2) {
                Log.e(LOG_TAG, "RuntimeException thrown during export", e2);
                throw e2;
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.mDone = true;
                throw th;
            }
        }
    }
}
