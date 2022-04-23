package com.callerid.block.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.util.Log;
import com.callerid.block.mvc.model.sms.C1124g;
import com.callerid.block.util.C1216t0;
import d.p.a.a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/SmsReceiver.class */
public class SmsReceiver extends BroadcastReceiver {
    public SmsReceiver() {
        Log.e("receivesms", "new SmsReceiver");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m9982c(String str, String str2, long j, Context context) {
        Log.e("receivesms", "message from: " + str + ", message body: " + str2 + ", message date: " + j);
        Intent intent = new Intent(context, SmsSceneService.class);
        intent.putExtra("msgBody", str2);
        intent.putExtra("msgAddress", str);
        intent.putExtra("msgDate", j);
        context.startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m9981d(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.callerid.block.SMS_RECEIVER");
        a.b(context).d(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Object[] objArr;
        Log.e("receivesms", "接收");
        try {
            if ("android.provider.Telephony.SMS_RECEIVED".equals(intent.getAction())) {
                Log.e("receivesms", "sms received!");
                Bundle extras = intent.getExtras();
                if (!(extras == null || (objArr = (Object[]) extras.get("pdus")) == null)) {
                    int length = objArr.length;
                    SmsMessage[] smsMessageArr = new SmsMessage[length];
                    for (int i = 0; i < objArr.length; i++) {
                        smsMessageArr[i] = SmsMessage.createFromPdu((byte[]) objArr[i]);
                    }
                    if (length > 0) {
                        String messageBody = smsMessageArr[0].getMessageBody();
                        String originatingAddress = smsMessageArr[0].getOriginatingAddress();
                        long timestampMillis = smsMessageArr[0].getTimestampMillis();
                        if (Build.VERSION.SDK_INT < 19) {
                            m9982c(originatingAddress, messageBody, timestampMillis, context);
                        } else if (Telephony.Sms.getDefaultSmsPackage(context).equals(C1216t0.m9552y(context))) {
                            C1124g.m10112b(context, originatingAddress, messageBody, "1", "0", new a(this, originatingAddress, messageBody, timestampMillis, context));
                            return;
                        } else {
                            m9982c(originatingAddress, messageBody, timestampMillis, context);
                        }
                        m9981d(context);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("receivesms", "Exception : " + e);
        }
    }
}
