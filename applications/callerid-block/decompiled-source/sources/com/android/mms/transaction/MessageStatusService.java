package com.android.mms.transaction;

import android.app.IntentService;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.telephony.SmsMessage;
import com.callerid.block.bean.EZBlackList;
import e.d.a.a.a;
import p011c.p012a.p013a.C0614a;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/MessageStatusService.class */
public class MessageStatusService extends IntentService {

    /* renamed from: b */
    private static final String[] f3331b = {EZBlackList.f4115ID};

    /* renamed from: c */
    private static final Uri f3332c = Uri.parse("content://sms/status");

    public MessageStatusService() {
        super(MessageStatusService.class.getName());
        setIntentRedelivery(true);
    }

    /* renamed from: a */
    private void m11418a(String str) {
        a.b("Mms", "[MessageStatusReceiver] " + str);
    }

    /* renamed from: b */
    private void m11417b(String str) {
        a.a("Mms", "[MessageStatusReceiver] " + str);
    }

    /* renamed from: c */
    private SmsMessage m11416c(Context context, Uri uri, byte[] bArr, String str) {
        Cursor e;
        SmsMessage createFromPdu = SmsMessage.createFromPdu(bArr);
        if (createFromPdu == null || (e = C0614a.m11570e(context, context.getContentResolver(), uri, f3331b, null, null, null)) == null) {
            return null;
        }
        try {
            if (e.moveToFirst()) {
                Uri withAppendedId = ContentUris.withAppendedId(f3332c, e.getInt(0));
                int status = createFromPdu.getStatus();
                boolean isStatusReportMessage = createFromPdu.isStatusReportMessage();
                ContentValues contentValues = new ContentValues(2);
                if (a.f("Mms", 3)) {
                    m11417b("updateMessageStatus: msgUrl=" + uri + ", status=" + status + ", isStatusReport=" + isStatusReportMessage);
                }
                contentValues.put("status", Integer.valueOf(status));
                contentValues.put("date_sent", Long.valueOf(System.currentTimeMillis()));
                C0614a.m11569f(context, context.getContentResolver(), withAppendedId, contentValues, null, null);
            } else {
                m11418a("Can't find message for status update: " + uri);
            }
            return createFromPdu;
        } finally {
            e.close();
        }
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        String dataString = intent.getDataString();
        String str = dataString;
        if (dataString == null) {
            String stringExtra = intent.getStringExtra("message_uri");
            str = stringExtra;
            if (stringExtra == null) {
                return;
            }
        }
        m11416c(this, Uri.parse(str), intent.getByteArrayExtra("pdu"), intent.getStringExtra("format"));
    }
}
