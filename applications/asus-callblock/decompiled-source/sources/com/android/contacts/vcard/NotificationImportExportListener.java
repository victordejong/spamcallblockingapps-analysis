package com.android.contacts.vcard;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.widget.Toast;
import com.android.vcard.VCardEntry;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/NotificationImportExportListener.class */
public class NotificationImportExportListener implements Handler.Callback, VCardImportExportListener {
    static final String DEFAULT_NOTIFICATION_TAG = "VCardServiceProgress";
    static final String FAILURE_NOTIFICATION_TAG = "VCardServiceFailure";
    private final Context mContext;
    private final Handler mHandler = new Handler(this);
    private final NotificationManager mNotificationManager;

    public NotificationImportExportListener(Activity activity) {
        this.mContext = activity.getApplicationContext();
        this.mNotificationManager = (NotificationManager) activity.getSystemService("notification");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Notification constructCancelNotification(Context context, String str) {
        return new Notification.Builder(context).setAutoCancel(true).setSmallIcon(17301624).setContentTitle(str).setContentText(str).setContentIntent(PendingIntent.getActivity(context, 0, new Intent(), 0)).getNotification();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Notification constructFinishNotification(Context context, String str, String str2, Intent intent, int i) {
        Notification.Builder contentText = new Notification.Builder(context).setAutoCancel(true).setSmallIcon(i == 1 ? 17301634 : 17301641).setContentTitle(str).setContentText(str2);
        if (intent == null) {
            intent = new Intent();
        }
        return contentText.setContentIntent(PendingIntent.getActivity(context, 0, intent, 0)).getNotification();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Notification constructImportFailureNotification(Context context, String str) {
        return new Notification.Builder(context).setAutoCancel(true).setSmallIcon(17301624).setContentTitle(context.getString(2131756445)).setContentText(str).setContentIntent(PendingIntent.getActivity(context, 0, new Intent(), 0)).getNotification();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Notification constructProgressNotification(Context context, int i, String str, String str2, int i2, String str3, int i3, int i4) {
        Intent intent = new Intent(context, CancelActivity.class);
        intent.setData(new Uri.Builder().scheme("invalidscheme").authority("invalidauthority").appendQueryParameter("job_id", String.valueOf(i2)).appendQueryParameter("display_name", str3).appendQueryParameter("type", String.valueOf(i)).build());
        Notification.Builder builder = new Notification.Builder(context);
        builder.setOngoing(true).setProgress(i3, i4, i3 == -1).setTicker(str2).setContentTitle(str).setSmallIcon(i == 1 ? 17301633 : 17301640).setContentIntent(PendingIntent.getActivity(context, 0, intent, 0));
        if (i3 > 0) {
            builder.setContentText(context.getString(2131755940, String.valueOf((i4 * 100) / i3)));
        }
        return builder.getNotification();
    }

    private void showToast(final String str) {
        this.mHandler.post(new Runnable() { // from class: com.android.contacts.vcard.NotificationImportExportListener.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(NotificationImportExportListener.this.mContext, str, 1).show();
            }
        });
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        showToast((String) message.obj);
        return true;
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onCancelRequest(CancelRequest cancelRequest, int i) {
        this.mNotificationManager.notify(DEFAULT_NOTIFICATION_TAG, cancelRequest.jobId, constructCancelNotification(this.mContext, i == 1 ? this.mContext.getString(2131755704, cancelRequest.displayName) : this.mContext.getString(2131755631, cancelRequest.displayName)));
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onComplete() {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onExportFailed(ExportRequest exportRequest) {
        this.mHandler.obtainMessage(0, this.mContext.getString(2131756443)).sendToTarget();
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onExportProcessed(ExportRequest exportRequest, int i) {
        String lastPathSegment = exportRequest.destUri.getLastPathSegment();
        String string = this.mContext.getString(2131756444, lastPathSegment);
        this.mHandler.obtainMessage(0, string).sendToTarget();
        this.mNotificationManager.notify(DEFAULT_NOTIFICATION_TAG, i, constructProgressNotification(this.mContext, 2, string, string, i, lastPathSegment, -1, 0));
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportCanceled(ImportRequest importRequest, int i) {
        this.mNotificationManager.notify(DEFAULT_NOTIFICATION_TAG, i, constructCancelNotification(this.mContext, this.mContext.getString(2131755704, importRequest.displayName)));
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFailed(ImportRequest importRequest) {
        this.mHandler.obtainMessage(0, this.mContext.getString(2131756446)).sendToTarget();
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFinished(ImportRequest importRequest, int i, Uri uri) {
        this.mNotificationManager.notify(DEFAULT_NOTIFICATION_TAG, i, constructFinishNotification(this.mContext, this.mContext.getString(2131755706, importRequest.displayName), null, uri != null ? new Intent("android.intent.action.VIEW", ContactsContract.RawContacts.getContactLookupUri(this.mContext.getContentResolver(), ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, ContentUris.parseId(uri)))) : null, 1));
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportParsed(ImportRequest importRequest, int i, VCardEntry vCardEntry, int i2, int i3) {
        if (!vCardEntry.isIgnorable()) {
            this.mNotificationManager.notify(DEFAULT_NOTIFICATION_TAG, i, constructProgressNotification(this.mContext.getApplicationContext(), 1, this.mContext.getString(2131755705, vCardEntry.getDisplayName()), this.mContext.getString(2131756009, String.valueOf(i2), String.valueOf(i3), vCardEntry.getDisplayName()), i, importRequest.displayName, i3, i2));
        }
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportProcessed(ImportRequest importRequest, int i, int i2) {
        String string;
        if (importRequest.displayName != null) {
            string = this.mContext.getString(2131756447, importRequest.displayName);
        } else {
            this.mContext.getString(2131756449);
            string = this.mContext.getString(2131756448);
        }
        if (i2 == 0) {
            this.mHandler.obtainMessage(0, string).sendToTarget();
        }
    }
}
