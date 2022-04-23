package com.callerid.block.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.callerid.block.f.c;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p038f.AbstractC0952b;
import com.callerid.block.p040h.p041a.p045e.p047j.C1009b;
import com.callerid.block.p040h.p041a.p050f.C1043l;
import com.callerid.block.p040h.p041a.p050f.C1051r;
import com.callerid.block.p040h.p041a.p050f.C1054t;
import com.callerid.block.util.C1163a;
import com.callerid.block.util.C1168c;
import com.callerid.block.util.C1169c0;
import com.callerid.block.util.C1182i;
import com.callerid.block.util.C1183i0;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1195m0;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.C1236z;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/service/PhoneSceneService.class */
public class PhoneSceneService extends Service {

    /* renamed from: b */
    private int f4820b;

    /* renamed from: c */
    private String f4821c;

    /* renamed from: e */
    private C1182i f4823e;

    /* renamed from: d */
    private HandlerC1134j f4822d = new HandlerC1134j(this);

    /* renamed from: f */
    private long f4824f = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.service.PhoneSceneService$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/service/PhoneSceneService$a.class */
    public class RunnableC1131a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ String f4825b;

        /* renamed from: c */
        final /* synthetic */ Context f4826c;

        RunnableC1131a(String str, Context context) {
            this.f4825b = str;
            this.f4826c = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean booleanValue = PhoneSceneService.this.f4823e.m9837f(this.f4825b).booleanValue();
            String j = C1216t0.m9567j(this.f4826c, this.f4825b);
            Message obtainMessage = PhoneSceneService.this.f4822d.obtainMessage();
            obtainMessage.what = 120;
            Bundle bundle = new Bundle();
            bundle.putString("num", this.f4825b);
            bundle.putString("contact_name", j);
            bundle.putBoolean("isInBlackList", booleanValue);
            obtainMessage.setData(bundle);
            PhoneSceneService.this.f4822d.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.service.PhoneSceneService$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/service/PhoneSceneService$b.class */
    public class RunnableC1132b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f4828b;

        /* renamed from: c */
        final /* synthetic */ String f4829c;

        RunnableC1132b(Context context, String str) {
            this.f4828b = context;
            this.f4829c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean H = C1216t0.m9604H(this.f4828b, this.f4829c);
            Message obtainMessage = PhoneSceneService.this.f4822d.obtainMessage();
            obtainMessage.what = 122;
            Bundle bundle = new Bundle();
            bundle.putBoolean("get_contact_exist2", H);
            obtainMessage.setData(bundle);
            PhoneSceneService.this.f4822d.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.service.PhoneSceneService$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/service/PhoneSceneService$c.class */
    public class RunnableC1133c implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f4831b;

        /* renamed from: c */
        final /* synthetic */ String f4832c;

        RunnableC1133c(Context context, String str) {
            this.f4831b = context;
            this.f4832c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean H = C1216t0.m9604H(this.f4831b, this.f4832c);
            boolean z = C1199n0.m9650y(this.f4831b) && PhoneSceneService.this.f4823e.m9837f(this.f4832c).booleanValue();
            if (C1199n0.m9647z(this.f4831b) && !H) {
                z = true;
            } else if (C1199n0.m9713d(this.f4831b) && C1168c.m9903b(this.f4831b, this.f4832c)) {
                z = true;
            }
            Message obtainMessage = PhoneSceneService.this.f4822d.obtainMessage();
            obtainMessage.what = 121;
            Bundle bundle = new Bundle();
            bundle.putString("num", this.f4832c);
            bundle.putBoolean("get_contact_exist", H);
            bundle.putBoolean("is_blocked", z);
            obtainMessage.setData(bundle);
            PhoneSceneService.this.f4822d.sendMessage(obtainMessage);
        }
    }

    /* renamed from: com.callerid.block.service.PhoneSceneService$j */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/service/PhoneSceneService$j.class */
    private static class HandlerC1134j extends Handler {

        /* renamed from: a */
        WeakReference<PhoneSceneService> f4834a;

        HandlerC1134j(PhoneSceneService phoneSceneService) {
            this.f4834a = new WeakReference<>(phoneSceneService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            PhoneSceneService phoneSceneService = this.f4834a.get();
            if (phoneSceneService != null) {
                switch (message.what) {
                    case 120:
                        Bundle data = message.getData();
                        String string = data.getString("num");
                        boolean z = data.getBoolean("isInBlackList");
                        String string2 = data.getString("contact_name");
                        if (!C1199n0.m9650y(phoneSceneService.getApplicationContext()) || !z) {
                            if (!C1199n0.m9647z(phoneSceneService.getApplicationContext()) || (string2 != null && !"".equals(string2))) {
                                if (!C1199n0.m9713d(phoneSceneService.getApplicationContext()) || !C1168c.m9903b(phoneSceneService.getApplicationContext(), string)) {
                                    phoneSceneService.m9997q(phoneSceneService.getApplicationContext(), string, string2);
                                    break;
                                } else if (C1216t0.f5075b) {
                                    return;
                                }
                            } else if (C1216t0.f5075b) {
                                return;
                            }
                            C1168c.m9904a(phoneSceneService.getApplicationContext());
                            break;
                        } else if (!C1216t0.f5075b) {
                            C1199n0.m9771D1(phoneSceneService.getApplicationContext(), Boolean.TRUE);
                            C1168c.m9904a(phoneSceneService.getApplicationContext());
                            C1186k.m9816c().m9812g("block_list");
                            break;
                        } else {
                            return;
                        }
                        break;
                    case 121:
                        Bundle data2 = message.getData();
                        String string3 = data2.getString("num");
                        boolean z2 = data2.getBoolean("get_contact_exist");
                        phoneSceneService.m9995s(phoneSceneService.getApplicationContext(), 1, phoneSceneService.f4824f, string3, z2, data2.getBoolean("is_blocked"));
                        if (!z2) {
                            phoneSceneService.m9998p(phoneSceneService.getApplicationContext(), string3, "0", C1199n0.m9770E(phoneSceneService.getApplicationContext()) != 0 ? String.valueOf((System.currentTimeMillis() - C1199n0.m9770E(phoneSceneService.getApplicationContext())) / 1000) : "0");
                            C1236z.m9474q(phoneSceneService.getApplicationContext());
                            return;
                        }
                        return;
                    case 122:
                        if (!message.getData().getBoolean("get_contact_exist2")) {
                            C1199n0.m9688l0(EZCallApplication.m10163c(), System.currentTimeMillis());
                            C1236z.m9476o(phoneSceneService.getApplicationContext());
                            break;
                        }
                        break;
                    default:
                        return;
                }
                phoneSceneService.stopSelf();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m10013a(Context context, String str, String str2) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    C1054t.m10287a(context, str, str2, new h(this, context));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: i */
    private void m10005i(Context context) {
        c.Z(context);
    }

    /* renamed from: j */
    private void m10004j(Context context, String str) {
        try {
            C1163a.m9923b();
            C1199n0.m9745O0(context, System.currentTimeMillis());
            C1199n0.m9771D1(context, Boolean.FALSE);
            C1199n0.m9739R0(getApplicationContext(), false);
            if (str != null && !"".equals(str) && !str.isEmpty()) {
                if (this.f4823e == null) {
                    this.f4823e = new C1182i(context);
                }
                C1169c0.m9902a().f4994a.execute(new RunnableC1131a(str, context));
                return;
            }
            C1186k.m9816c().m9812g("unknown_number_call");
            if (C1199n0.m9782A(context)) {
                C1186k.m9816c().m9812g("unknown_number_call_blocked");
                C1216t0.m9571h(context);
            } else {
                m9997q(context, str, "");
            }
            stopSelf();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: k */
    private void m10003k(Context context, String str) {
        C1216t0.m9570h0(context);
        if (C1199n0.m9710e() == 1) {
            C1183i0.m9831d(context);
        }
        if (str != null && !"".equals(str)) {
            try {
                m9996r(context, 1, this.f4824f, 0, str);
                C1051r.m10291a(context, this.f4821c, new e(this, context, str));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: l */
    private void m10002l(Context context, String str) {
        if (AbstractC0952b.f4315a != null) {
            m10005i(EZCallApplication.m10163c());
        }
        if (C1199n0.m9710e() == 1) {
            C1183i0.m9831d(context);
        }
        if (str != null && !"".equals(str)) {
            C1169c0.m9902a().f4994a.execute(new RunnableC1132b(context, str));
        }
    }

    /* renamed from: m */
    private void m10001m(Context context, String str) {
        if (AbstractC0952b.f4315a != null) {
            m10005i(EZCallApplication.m10163c());
        }
        if (C1199n0.m9710e() == 1) {
            C1183i0.m9831d(context);
        }
        C1216t0.m9570h0(context);
        C1227w.m9527a("testmiss", "未接,来电号码=" + str);
        if (str == null || str.equals("")) {
            stopSelf();
            return;
        }
        this.f4824f = System.currentTimeMillis() - C1199n0.m9770E(context);
        C1227w.m9527a("testmiss", "internalDate:" + this.f4824f);
        if (this.f4823e == null) {
            this.f4823e = new C1182i(context);
        }
        C1169c0.m9902a().f4994a.execute(new RunnableC1133c(context, str));
        if (C1199n0.m9734U(context)) {
            C1043l.m10302a(getApplicationContext(), str, new d(this, str));
        }
        stopSelf();
    }

    /* renamed from: n */
    private void m10000n(Context context, String str) {
        try {
            C1163a.m9923b();
            if (C1199n0.m9724Z(context) && str != null && !"".equals(str)) {
                m9994t(context, str, 0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: o */
    private void m9999o(Context context, String str) {
        if (AbstractC0952b.f4315a != null) {
            m10005i(EZCallApplication.m10163c());
        }
        C1216t0.m9570h0(context);
        if (str == null || str.equals("")) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m9998p(Context context, String str, String str2, String str3) {
        try {
            if (C1216t0.m9585a(context) && !C1216t0.m9587Y(str)) {
                C1009b.m10365a(context, str, str3, str2, new g(this, context));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public void m9997q(Context context, String str, String str2) {
        if (C1199n0.m9724Z(context)) {
            m9993u(context, str, 1, str2);
        }
    }

    /* renamed from: r */
    private void m9996r(Context context, int i, long j, int i2, String str) {
        if (C1199n0.m9744P(context)) {
            C1051r.m10291a(context, str, new f(this, i2, context, i, str, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public void m9995s(Context context, int i, long j, String str, boolean z, boolean z2) {
        int i2;
        C1227w.m9527a("testmiss", "GetShowMissDialog=" + C1199n0.m9734U(context));
        if (!C1199n0.m9734U(context)) {
            C1186k.m9816c().m9812g("showmissed_close");
        } else if (z2) {
            C1227w.m9527a("testmiss", "已拦截");
        } else {
            if (z) {
                C1227w.m9527a("testmiss", "联系人的未接来电");
                i2 = 1;
            } else {
                C1227w.m9527a("testmiss", "陌生人的未接来电");
                i2 = 0;
            }
            C1195m0.m9789b(context, i, i2, str, j, 4);
        }
    }

    /* renamed from: t */
    private void m9994t(Context context, String str, int i) {
        C1186k.m9816c().m9812g("outgoing");
        C1051r.m10291a(context, str, new i(this, context, str, i));
    }

    /* renamed from: u */
    private void m9993u(Context context, String str, int i, String str2) {
        C1186k kVar;
        String str3;
        C1186k.m9816c().m9812g("incoming");
        if (str == null || "".equals(str)) {
            C1186k.m9816c().m9812g("incoming_number_null_empty");
            c.h0(EZCallApplication.m10163c(), str, i, 3, "");
        } else if (str2 == null || "".equals(str2)) {
            c.h0(EZCallApplication.m10163c(), str, i, 1, "");
            C1186k.m9816c().m9815d(C1186k.m9818a(), "stranger");
            C1227w.m9527a("testyahu", "陌生人来电：" + C1186k.m9818a());
            C1186k.m9816c().m9812g("incoming_not_contact");
            C1186k.m9816c().m9812g("showfloat");
        } else {
            C1186k.m9816c().m9812g("incoming_contact");
            C1186k.m9816c().m9815d(C1186k.m9818a(), "contact");
            C1227w.m9527a("testyahu", "联系人来电：" + C1186k.m9818a());
            if (C1199n0.m9721a0(context)) {
                c.h0(EZCallApplication.m10163c(), str, i, 0, str2);
                C1186k.m9816c().m9812g("showfloat");
                kVar = C1186k.m9816c();
                str3 = "showfloat_incoming_contact";
            } else {
                kVar = C1186k.m9816c();
                str3 = "show_close_is_contact";
            }
            kVar.m9812g(str3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0055, code lost:
        if (com.callerid.block.util.C1199n0.m9653x(getApplicationContext()) != false) goto L_0x0058;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0058, code lost:
        com.callerid.block.p040h.p041a.p045e.p049l.C1014a.m10357b(getApplicationContext());
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x007f, code lost:
        if (com.callerid.block.util.C1199n0.m9653x(getApplicationContext()) != false) goto L_0x0058;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m9992v(int r5, java.lang.String r6) {
        /*
            r4 = this;
            com.callerid.block.util.C1171d0.m9886f()
            r0 = r4
            r1 = 0
            r0.f4820b = r1
            r0 = r5
            switch(r0) {
                case 1: goto L_0x00cb;
                case 2: goto L_0x00bb;
                case 3: goto L_0x00ab;
                case 4: goto L_0x0085;
                case 5: goto L_0x0062;
                case 6: goto L_0x0033;
                default: goto L_0x0030;
            }
        L_0x0030:
            goto L_0x00d4
        L_0x0033:
            com.callerid.block.util.k r0 = com.callerid.block.util.C1186k.m9816c()
            java.lang.String r1 = com.callerid.block.util.C1214s0.f5065b
            r0.m9812g(r1)
            r0 = r4
            r1 = r4
            android.content.Context r1 = r1.getApplicationContext()
            r2 = r6
            r0.m9999o(r1, r2)
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()
            r1 = 6
            com.callerid.block.util.C1185j0.m9820b(r0, r1)
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()
            boolean r0 = com.callerid.block.util.C1199n0.m9653x(r0)
            if (r0 == 0) goto L_0x00c4
        L_0x0058:
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()
            com.callerid.block.p040h.p041a.p045e.p049l.C1014a.m10357b(r0)
            goto L_0x00c4
        L_0x0062:
            r0 = 0
            com.callerid.block.util.C1216t0.f5075b = r0
            com.callerid.block.util.k r0 = com.callerid.block.util.C1186k.m9816c()
            java.lang.String r1 = com.callerid.block.util.C1214s0.f5064a
            r0.m9812g(r1)
            r0 = r4
            r1 = r4
            android.content.Context r1 = r1.getApplicationContext()
            r2 = r6
            r0.m10003k(r1, r2)
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()
            boolean r0 = com.callerid.block.util.C1199n0.m9653x(r0)
            if (r0 == 0) goto L_0x00c4
            goto L_0x0058
        L_0x0085:
            com.callerid.block.util.k r0 = com.callerid.block.util.C1186k.m9816c()
            java.lang.String r1 = com.callerid.block.util.C1214s0.f5066c
            r0.m9812g(r1)
            r0 = r4
            r1 = r4
            android.content.Context r1 = r1.getApplicationContext()
            r2 = r6
            r0.m10001m(r1, r2)
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()
            boolean r0 = com.callerid.block.util.C1199n0.m9653x(r0)
            if (r0 == 0) goto L_0x00d4
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()
            com.callerid.block.p040h.p041a.p045e.p049l.C1014a.m10357b(r0)
            goto L_0x00d4
        L_0x00ab:
            r0 = 1
            com.callerid.block.util.C1216t0.f5075b = r0
            r0 = r4
            r1 = r4
            android.content.Context r1 = r1.getApplicationContext()
            r2 = r6
            r0.m10002l(r1, r2)
            goto L_0x00d4
        L_0x00bb:
            r0 = r4
            r1 = r4
            android.content.Context r1 = r1.getApplicationContext()
            r2 = r6
            r0.m10000n(r1, r2)
        L_0x00c4:
            r0 = r4
            r0.stopSelf()
            goto L_0x00d4
        L_0x00cb:
            r0 = r4
            r1 = r4
            android.content.Context r1 = r1.getApplicationContext()
            r2 = r6
            r0.m10004j(r1, r2)
        L_0x00d4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.service.PhoneSceneService.m9992v(int, java.lang.String):void");
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
        if (intent != null) {
            this.f4820b = intent.getIntExtra("telephonering_sence", 0);
            String stringExtra = intent.getStringExtra("telephonering_num");
            this.f4821c = stringExtra;
            int i3 = this.f4820b;
            if (i3 != 0) {
                m9992v(i3, stringExtra);
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
