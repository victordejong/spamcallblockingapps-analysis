package com.callerid.block.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.provider.Telephony;
import android.widget.Toast;
import com.callerid.block.R$string;
import com.callerid.block.mvc.model.sms.C1124g;
import com.callerid.block.util.C1216t0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$SMSReceiver.class */
public class MessageBoxListActivity$SMSReceiver extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ MessageBoxListActivity f4836a;

    public MessageBoxListActivity$SMSReceiver(MessageBoxListActivity messageBoxListActivity) {
        this.f4836a = messageBoxListActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String string;
        int i;
        Resources resources;
        if (intent != null && intent.getAction() != null) {
            if (intent.getAction().equals(C1151h.f4892a)) {
                try {
                    int resultCode = getResultCode();
                    if (resultCode == -1) {
                        if (Build.VERSION.SDK_INT >= 19) {
                            if (Telephony.Sms.getDefaultSmsPackage(this.f4836a.getApplicationContext()).equals(C1216t0.m9552y(this.f4836a.getApplicationContext()))) {
                                C1124g.m10112b(this.f4836a.getApplicationContext(), MessageBoxListActivity.q0(this.f4836a), MessageBoxListActivity.s0(this.f4836a), "2", "1", new a(this));
                                string = this.f4836a.getResources().getString(R$string.sms_sended);
                            }
                        }
                        MessageBoxListActivity.p0(this.f4836a);
                        string = this.f4836a.getResources().getString(R$string.sms_sended);
                    } else if (resultCode == 1) {
                        MessageBoxListActivity.p0(this.f4836a);
                        string = this.f4836a.getResources().getString(R$string.sms_not_send);
                    } else {
                        return;
                    }
                    Toast.makeText(context, string, 0).show();
                } catch (Exception e) {
                }
            } else if (intent.getAction().equals(C1151h.f4893b)) {
                int resultCode2 = getResultCode();
                if (resultCode2 == -1) {
                    resources = this.f4836a.getResources();
                    i = R$string.sms_received;
                } else if (resultCode2 == 1) {
                    resources = this.f4836a.getResources();
                    i = R$string.sms_not_receive;
                } else {
                    return;
                }
                Toast.makeText(context, resources.getString(i), 0).show();
            }
        }
    }
}
