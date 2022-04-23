package com.callerid.block.sms;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.util.C1169c0;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/SmsSceneService.class */
public class SmsSceneService extends Service {

    /* renamed from: b */
    private String f4864b;

    /* renamed from: c */
    private String f4865c;

    /* renamed from: d */
    private String f4866d;

    /* renamed from: e */
    private String f4867e;

    /* renamed from: f */
    private long f4868f;

    /* renamed from: g */
    private HandlerC1139b f4869g = new HandlerC1139b(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.sms.SmsSceneService$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/sms/SmsSceneService$a.class */
    public class RunnableC1138a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ String f4870b;

        RunnableC1138a(String str) {
            this.f4870b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            HandlerC1139b bVar;
            SmsSceneService.this.f4866d = new C1141b(SmsSceneService.this.getApplicationContext()).m9960c(this.f4870b);
            SmsSceneService smsSceneService = SmsSceneService.this;
            smsSceneService.f4867e = C1216t0.m9567j(smsSceneService.getApplicationContext(), this.f4870b);
            if (SmsSceneService.this.f4867e == null) {
                bVar = SmsSceneService.this.f4869g;
                i = 100;
            } else {
                bVar = SmsSceneService.this.f4869g;
                i = 101;
            }
            bVar.sendEmptyMessage(i);
        }
    }

    /* renamed from: com.callerid.block.sms.SmsSceneService$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/sms/SmsSceneService$b.class */
    private class HandlerC1139b extends Handler {

        /* renamed from: a */
        WeakReference<SmsSceneService> f4872a;

        HandlerC1139b(SmsSceneService smsSceneService) {
            this.f4872a = new WeakReference<>(smsSceneService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            SmsSceneService smsSceneService = this.f4872a.get();
            if (smsSceneService != null) {
                int i = message.what;
                if (i == 100) {
                    SmsSceneService.this.m9971j(smsSceneService.f4864b, smsSceneService.f4867e, smsSceneService.getApplicationContext());
                    smsSceneService.m9972i(smsSceneService.f4864b, smsSceneService.f4867e, smsSceneService.getApplicationContext());
                } else if (i == 101) {
                    SmsSceneService.this.m9971j(smsSceneService.f4864b, smsSceneService.f4867e, smsSceneService.getApplicationContext());
                    smsSceneService.stopSelf();
                }
            }
        }
    }

    /* renamed from: h */
    private void m9973h(String str) {
        C1169c0.m9902a().f4994a.execute(new RunnableC1138a(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m9972i(String str, String str2, Context context) {
        SMSBean sMSBean = new SMSBean();
        sMSBean.setAddress(str);
        sMSBean.setMsg_snippet(this.f4865c);
        sMSBean.setDate(Long.valueOf(this.f4868f));
        sMSBean.setThread_id(this.f4866d);
        sMSBean.setName(str2);
        if (C1216t0.m9585a(context)) {
            C1146e.m9955a(sMSBean, context);
        }
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m9971j(String str, String str2, Context context) {
        if (C1227w.f5084a) {
            C1227w.m9527a("receivesms", "msgAddress:" + str + " name:" + str2 + " msgBody:" + this.f4865c);
        }
        try {
            if (C1151h.m9941e(context)) {
                C1151h.m9942d(context, str, str2, "", this.f4865c, this.f4868f, "", this.f4866d);
                C1151h.m9943c(context, str, str2, "", this.f4865c, this.f4868f, "", this.f4866d);
                C1186k.m9816c().m9812g("sms_receive_count");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        C1227w.m9527a("receivesms", "onStartCommand");
        if (intent != null) {
            this.f4864b = intent.getStringExtra("msgAddress");
            this.f4865c = intent.getStringExtra("msgBody");
            this.f4868f = intent.getLongExtra("msgDate", 0L);
            m9973h(this.f4864b);
        }
        return super.onStartCommand(intent, i, i2);
    }
}
