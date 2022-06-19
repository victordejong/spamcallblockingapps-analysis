package com.callerid.block.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import com.callerid.block.service.PhoneSceneService;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/receiver/PhoneStateReceiver.class */
public class PhoneStateReceiver extends BroadcastReceiver {

    /* renamed from: e */
    private static int f4758e;

    /* renamed from: f */
    private static boolean f4759f;

    /* renamed from: g */
    private static int f4760g;

    /* renamed from: a */
    private Context f4761a;

    /* renamed from: b */
    private String f4762b;

    /* renamed from: c */
    private String f4763c;

    /* renamed from: d */
    private String f4764d = null;

    /* renamed from: a */
    public void m10107a(int i, String str) {
        Intent intent;
        int i2;
        String str2;
        Intent intent2;
        int i3 = f4758e;
        if (i3 == i) {
            return;
        }
        if (i != 0) {
            if (i == 1) {
                this.f4764d = str;
                f4759f = true;
                Intent intent3 = new Intent(this.f4761a, PhoneSceneService.class);
                intent3.putExtra("telephonering_sence", 1);
                str2 = str;
                intent2 = intent3;
            } else if (i == 2) {
                if (i3 != 1) {
                    f4759f = false;
                    this.f4764d = this.f4763c;
                    intent2 = new Intent(this.f4761a, PhoneSceneService.class);
                    intent2.putExtra("telephonering_sence", 2);
                    str2 = this.f4763c;
                } else {
                    f4759f = true;
                    Intent intent4 = new Intent(this.f4761a, PhoneSceneService.class);
                    intent4.putExtra("telephonering_sence", 3);
                    intent4.putExtra("telephonering_num", this.f4764d);
                    this.f4761a.startService(intent4);
                }
            }
            intent2.putExtra("telephonering_num", str2);
            this.f4761a.startService(intent2);
        } else {
            if (i3 == 1) {
                intent = new Intent(this.f4761a, PhoneSceneService.class);
                i2 = 4;
            } else if (f4759f) {
                intent = new Intent(this.f4761a, PhoneSceneService.class);
                i2 = 5;
            } else {
                intent = new Intent(this.f4761a, PhoneSceneService.class);
                i2 = 6;
            }
            intent.putExtra("telephonering_sence", i2);
            intent.putExtra("telephonering_num", this.f4764d);
            this.f4761a.startService(intent);
            this.f4764d = null;
        }
        f4758e = i;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f4761a = context;
        if (intent != null) {
            try {
                if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction())) {
                    return;
                }
                if (!intent.hasExtra("incoming_number")) {
                    if (!C1227w.f5084a) {
                        return;
                    }
                    C1227w.m9527a("callstatus", "nohasExtra");
                    return;
                }
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    this.f4762b = extras.getString("state");
                    this.f4763c = extras.getString("incoming_number");
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("callstatus", "stateChange:" + this.f4762b);
                    C1227w.m9527a("callstatus", "coming_num:" + this.f4763c);
                }
                if (this.f4763c == null) {
                    return;
                }
                if (this.f4762b.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
                    f4760g = 0;
                } else if (this.f4762b.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                    f4760g = 2;
                } else if (this.f4762b.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                    f4760g = 1;
                }
                m10107a(f4760g, this.f4763c);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
