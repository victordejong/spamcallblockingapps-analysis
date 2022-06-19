package com.truecaller.callerid.callstate;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p673d0.p675b.AbstractC12491j;
import w3.c.a.a.a.h;
/* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/callstate/CallStateService.class */
public class CallStateService extends Service {

    /* renamed from: e */
    public static boolean f10598e = false;

    /* renamed from: a */
    public final C3596b f10599a = new C3596b(null);
    @Inject

    /* renamed from: b */
    public AbstractC19219a0 f10600b;
    @Inject

    /* renamed from: c */
    public AbstractC12491j f10601c;

    /* renamed from: d */
    public boolean f10602d;

    /* renamed from: com.truecaller.callerid.callstate.CallStateService$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callerid/callstate/CallStateService$b.class */
    public class C3596b extends PhoneStateListener {
        public C3596b(C3595a c3595a) {
            CallStateService.this = r4;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            String str2;
            super.onCallStateChanged(i, str);
            if (h.i(str)) {
                return;
            }
            CallStateService callStateService = CallStateService.this;
            if (!callStateService.f10602d && callStateService.f10600b.mo13825h("android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG")) {
                CallStateService callStateService2 = CallStateService.this;
                callStateService2.f10602d = true;
                ((TelephonyManager) callStateService2.getSystemService(AnalyticsConstants.PHONE)).listen(callStateService2.f10599a, 0);
                CallStateService callStateService3 = CallStateService.this;
                ((TelephonyManager) callStateService3.getSystemService(AnalyticsConstants.PHONE)).listen(callStateService3.f10599a, 32);
            }
            System.currentTimeMillis();
            Intent intent = new Intent("android.intent.action.PHONE_STATE");
            if (i == 0) {
                str2 = TelephonyManager.EXTRA_STATE_IDLE;
            } else if (i == 1) {
                str2 = TelephonyManager.EXTRA_STATE_RINGING;
            } else if (i != 2) {
                AssertionUtil.reportWeirdnessButNeverCrash("Unknown phone state: " + i);
                return;
            } else {
                str2 = TelephonyManager.EXTRA_STATE_OFFHOOK;
            }
            intent.putExtra("state", str2);
            intent.putExtra("incoming_number", str);
            CallStateService callStateService4 = CallStateService.this;
            callStateService4.f10601c.mo22938a(callStateService4, intent);
        }
    }

    /* renamed from: b */
    public static void m35776b(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            context.startService(new Intent(context, CallStateService.class));
        }
    }

    /* renamed from: a */
    public final void m35777a(int i) {
        ((TelephonyManager) getSystemService(AnalyticsConstants.PHONE)).listen(this.f10599a, i);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        TrueApp.m36032b0().m36031c0().mo11162a(this);
        this.f10602d = this.f10600b.mo13825h("android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG");
        m35777a(32);
        f10598e = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        m35777a(0);
        f10598e = false;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }
}
