package com.razorpay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/razorpay/SmsReceiver.class */
public class SmsReceiver extends BroadcastReceiver {
    private C2736i smsAgent;

    public SmsReceiver() {
        this.smsAgent = null;
    }

    public SmsReceiver(C2736i c2736i) {
        this.smsAgent = c2736i;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            try {
                Object[] objArr = (Object[]) extras.get("pdus");
                if (objArr.length <= 0) {
                    return;
                }
                SmsMessage createFromPdu = SmsMessage.createFromPdu((byte[]) objArr[0]);
                String displayOriginatingAddress = createFromPdu.getDisplayOriginatingAddress();
                String displayMessageBody = createFromPdu.getDisplayMessageBody();
                C2736i c2736i = this.smsAgent;
                if (c2736i != null) {
                    Iterator<SmsAgentInterface> it = c2736i.f9458a.iterator();
                    while (it.hasNext()) {
                        it.next().postSms(displayOriginatingAddress, displayMessageBody);
                    }
                    return;
                }
                Intent intent2 = new Intent("com.razorpay.events.SMS_PROCESSED");
                intent2.putExtra("extra_sender", displayOriginatingAddress);
                intent2.putExtra("extra_message", displayMessageBody);
                context.sendBroadcast(intent2);
            } catch (Exception e) {
                AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
                String str = "SmsReceiver Exception smsReceiver" + e;
            }
        }
    }
}
