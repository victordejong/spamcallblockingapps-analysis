package gogolook.callgogolook2.messaging.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.telephony.SmsMessage;
import gogolook.callgogolook2.messaging.datamodel.action.ProcessDeliveryReportAction;
import gogolook.callgogolook2.messaging.datamodel.action.ProcessDownloadedMmsAction;
import gogolook.callgogolook2.messaging.datamodel.action.ProcessSentMessageAction;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p488f.C11841n;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/receiver/SendStatusReceiver.class */
public class SendStatusReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        int resultCode = getResultCode();
        if ("gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MESSAGE_SENT".equals(action)) {
            C11841n.m8057a(intent.getData(), resultCode, intent.getIntExtra("errorCode", 0), intent.getIntExtra("partId", -1), intent.getIntExtra("subId", -1));
        } else if ("gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MMS_SENT".equals(action)) {
            ProcessSentMessageAction.m27676a(resultCode, intent.getData(), intent.getExtras());
        } else if ("gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MMS_DOWNLOADED".equals(action)) {
            ProcessDownloadedMmsAction.m27693a(resultCode, intent.getExtras());
        } else if ("gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MESSAGE_DELIVERED".equals(action)) {
            SmsMessage a = C11834j.m8122a(intent);
            Uri data = intent.getData();
            if (a == null) {
                C12153d0.m6987b("MessagingApp", "SendStatusReceiver: empty report message");
                return;
            }
            try {
                ProcessDeliveryReportAction.m27695a(data, a.getStatus());
            } catch (NullPointerException e) {
                C12153d0.m6987b("MessagingApp", "SendStatusReceiver: NPE inside SmsMessage");
            }
        }
    }
}
