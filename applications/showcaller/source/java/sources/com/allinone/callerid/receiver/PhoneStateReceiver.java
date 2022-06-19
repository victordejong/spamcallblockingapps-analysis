package com.allinone.callerid.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import com.allinone.callerid.service.PhoneSceneService;
import com.allinone.callerid.util.C3718c0;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/PhoneStateReceiver.class */
public class PhoneStateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private Context f11469a;

    /* renamed from: c */
    private boolean f11471c;

    /* renamed from: e */
    private String f11473e;

    /* renamed from: f */
    private String f11474f;

    /* renamed from: b */
    private int f11470b = 0;

    /* renamed from: d */
    private int f11472d = 0;

    /* renamed from: g */
    private String f11475g = null;

    /* renamed from: a */
    public void m24961a(int i, String str) {
        if (this.f11470b == i) {
            return;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("callstatus", "状态:" + i);
        }
        if (i != 0) {
            if (i == 1) {
                this.f11475g = str;
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callstatus", "来电响铃:" + str);
                }
                this.f11471c = true;
                Intent intent = new Intent(this.f11469a, PhoneSceneService.class);
                intent.putExtra("telephonering_sence", 1);
                intent.putExtra("telephonering_num", str);
                intent.setFlags(268435456);
                this.f11469a.startService(intent);
            } else if (i == 2) {
                if (this.f11470b != 1) {
                    this.f11471c = false;
                    this.f11475g = this.f11474f;
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callstatus", "去电:" + this.f11474f);
                    }
                    Intent intent2 = new Intent(this.f11469a, PhoneSceneService.class);
                    intent2.putExtra("telephonering_sence", 2);
                    intent2.putExtra("telephonering_num", this.f11474f);
                    this.f11469a.startService(intent2);
                } else {
                    this.f11471c = true;
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callstatus", "来电接听:" + this.f11475g);
                    }
                    Intent intent3 = new Intent(this.f11469a, PhoneSceneService.class);
                    intent3.putExtra("telephonering_sence", 3);
                    intent3.putExtra("telephonering_num", this.f11475g);
                    this.f11469a.startService(intent3);
                }
            }
        } else if (this.f11470b == 1) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "来电未接挂断:" + this.f11475g);
            }
            Intent intent4 = new Intent(this.f11469a, PhoneSceneService.class);
            intent4.putExtra("telephonering_sence", 4);
            intent4.putExtra("telephonering_num", this.f11475g);
            this.f11469a.startService(intent4);
            this.f11475g = null;
        } else if (this.f11471c) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "来电已接挂断:" + this.f11475g);
            }
            Intent intent5 = new Intent(this.f11469a, PhoneSceneService.class);
            intent5.putExtra("telephonering_sence", 5);
            intent5.putExtra("telephonering_num", this.f11475g);
            this.f11469a.startService(intent5);
            this.f11475g = null;
        } else {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "去电挂断:" + this.f11475g);
            }
            Intent intent6 = new Intent(this.f11469a, PhoneSceneService.class);
            intent6.putExtra("telephonering_sence", 6);
            intent6.putExtra("telephonering_num", this.f11475g);
            this.f11469a.startService(intent6);
            this.f11475g = null;
        }
        this.f11470b = i;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f11469a = context;
        try {
            if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction()) || !intent.hasExtra("incoming_number")) {
                return;
            }
            this.f11473e = intent.getExtras().getString("state");
            this.f11474f = intent.getExtras().getString("incoming_number");
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "stateChange:" + this.f11473e);
                C3718c0.m24436a("callstatus", "coming_num:" + this.f11474f);
            }
            if (this.f11474f == null) {
                return;
            }
            if (this.f11473e.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
                this.f11472d = 0;
            } else if (this.f11473e.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                this.f11472d = 2;
            } else if (this.f11473e.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                this.f11472d = 1;
            }
            m24961a(this.f11472d, this.f11474f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
