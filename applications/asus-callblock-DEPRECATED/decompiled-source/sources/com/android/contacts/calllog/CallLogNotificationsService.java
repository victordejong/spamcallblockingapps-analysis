package com.android.contacts.calllog;

import android.app.IntentService;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.CallLog;
import android.util.Log;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallLogNotificationsService.class */
public class CallLogNotificationsService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private m f629a;

    public CallLogNotificationsService() {
        super("CallLogNotificationsService");
    }

    public static void a(Context context, Uri uri) {
        if (TelecomUtil.hasReadWriteVoicemailPermissions(context)) {
            Intent intent = new Intent(context, CallLogNotificationsService.class);
            intent.setAction("com.android.contacts.calllog.UPDATE_NOTIFICATIONS");
            if (uri != null) {
                intent.putExtra("NEW_VOICEMAIL_URI", uri);
            }
            context.startService(intent);
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f629a = new m(getApplicationContext(), getContentResolver(), null);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (NecessaryPermissionDenyActivity.startPermissionActivity(this) || !PhoneCapabilityTester.IsAsusDevice() || intent == null) {
            return;
        }
        if ("com.android.contacts.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD".equals(intent.getAction())) {
            m mVar = this.f629a;
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("new", "0");
            mVar.startUpdate(56, null, CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, contentValues, "new = 1 AND type = ?", new String[]{Integer.toString(4)});
        } else if ("com.android.contacts.calllog.UPDATE_NOTIFICATIONS".equals(intent.getAction())) {
            q.a(this).a(this, (Uri) intent.getParcelableExtra("NEW_VOICEMAIL_URI"));
        } else {
            Log.d("CallLogNotificationsService", "onHandleIntent: could not handle: " + intent);
        }
    }
}
