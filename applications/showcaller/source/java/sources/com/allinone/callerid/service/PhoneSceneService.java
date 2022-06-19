package com.allinone.callerid.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.Settings;
import android.view.View;
import androidx.core.app.C0565h;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$mipmap;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.dialog.DialogC2599l;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.block.BlockSettingActivity;
import com.allinone.callerid.mvc.controller.recommend.RecommendActivity;
import com.allinone.callerid.p144d.p148c.C2491a;
import com.allinone.callerid.p144d.p150e.p151e.AbstractC2556b;
import com.allinone.callerid.p144d.p150e.p151e.AbstractC2557c;
import com.allinone.callerid.p144d.p150e.p151e.C2552a;
import com.allinone.callerid.p144d.p150e.p151e.C2558d;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.p161h.C2742c;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a;
import com.allinone.callerid.p162i.p163a.p174i.C2837b;
import com.allinone.callerid.p162i.p163a.p174i.C2846d;
import com.allinone.callerid.p162i.p163a.p174i.C2854h;
import com.allinone.callerid.p162i.p163a.p174i.p176j.AbstractC2859a;
import com.allinone.callerid.p162i.p163a.p174i.p176j.C2860b;
import com.allinone.callerid.p162i.p163a.p180k.AbstractC2882b;
import com.allinone.callerid.p162i.p163a.p180k.AbstractC2885d;
import com.allinone.callerid.p162i.p163a.p180k.AbstractC2886e;
import com.allinone.callerid.p162i.p163a.p180k.AbstractC2890g;
import com.allinone.callerid.p162i.p163a.p180k.C2883c;
import com.allinone.callerid.p162i.p163a.p180k.C2887f;
import com.allinone.callerid.p162i.p163a.p180k.C2891h;
import com.allinone.callerid.p162i.p163a.p181l.AbstractC2893a;
import com.allinone.callerid.p162i.p163a.p181l.C2894b;
import com.allinone.callerid.p162i.p163a.p191u.AbstractC2978a;
import com.allinone.callerid.p162i.p163a.p191u.C2979b;
import com.allinone.callerid.p162i.p163a.p192v.C2982a;
import com.allinone.callerid.util.C3709a;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3720d;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3764h;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3800m;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3883z0;
import com.allinone.callerid.util.p203i1.C3773a;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.recorder.C3820b;
import com.allinone.callerid.util.recorder.C3826f;
import java.lang.ref.WeakReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService.class */
public class PhoneSceneService extends Service {

    /* renamed from: d */
    private int f11556d;

    /* renamed from: e */
    private String f11557e;

    /* renamed from: g */
    private C3800m f11559g;

    /* renamed from: i */
    private DialogC2599l f11561i;

    /* renamed from: f */
    private HandlerC3608p f11558f = new HandlerC3608p(this, null);

    /* renamed from: h */
    private int f11560h = 0;

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$a.class */
    public class C3586a implements AbstractC2893a {

        /* renamed from: a */
        final /* synthetic */ Context f11562a;

        /* renamed from: b */
        final /* synthetic */ String f11563b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.service.PhoneSceneService$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$a$a.class */
        public class C3587a implements AbstractC2885d {

            /* renamed from: com.allinone.callerid.service.PhoneSceneService$a$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$a$a$a.class */
            class C3588a implements AbstractC2882b {
                C3588a() {
                    C3587a.this = r4;
                }

                @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2882b
                /* renamed from: a */
                public void mo24809a(boolean z, String str) {
                    PhoneSceneService phoneSceneService = PhoneSceneService.this;
                    phoneSceneService.m24843a(phoneSceneService.getApplicationContext(), C3586a.this.f11563b, str);
                }
            }

            C3587a() {
                C3586a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2885d
            /* renamed from: a */
            public void mo24810a(String str) {
                if ((!"".equals(str)) && (str != null)) {
                    C3809p0.m24073f(C3586a.this.f11562a);
                    return;
                }
                C3767h1.m24237m(PhoneSceneService.this.getApplicationContext());
                C3720d.m24422h(C3586a.this.f11563b, System.currentTimeMillis());
                C3810q.m24071b().m24070c("block_list");
                C2883c.m26469a(PhoneSceneService.this.getApplicationContext(), C3586a.this.f11563b, new C3588a());
                PhoneSceneService.this.stopSelf();
            }
        }

        /* renamed from: com.allinone.callerid.service.PhoneSceneService$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$a$b.class */
        class C3589b implements AbstractC2882b {
            C3589b() {
                C3586a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2882b
            /* renamed from: a */
            public void mo24809a(boolean z, String str) {
                PhoneSceneService phoneSceneService = PhoneSceneService.this;
                phoneSceneService.m24843a(phoneSceneService.getApplicationContext(), C3586a.this.f11563b, str);
            }
        }

        /* renamed from: com.allinone.callerid.service.PhoneSceneService$a$c */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$a$c.class */
        class RunnableC3590c implements Runnable {
            RunnableC3590c() {
                C3586a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i;
                boolean z = false;
                C3711a1.m24526j1(false);
                C3586a c3586a = C3586a.this;
                boolean m24314c = C3764h.m24314c(c3586a.f11562a, c3586a.f11563b);
                if (PhoneSceneService.this.f11559g == null) {
                    C3586a c3586a2 = C3586a.this;
                    PhoneSceneService.this.f11559g = new C3800m(c3586a2.f11562a);
                }
                boolean booleanValue = PhoneSceneService.this.f11559g.m24099j(C3586a.this.f11563b).booleanValue();
                C3586a c3586a3 = C3586a.this;
                String m24217w = C3767h1.m24217w(c3586a3.f11562a, c3586a3.f11563b);
                if (m24217w == null || "".equals(m24217w)) {
                    i = 0;
                } else {
                    z = true;
                    C3586a c3586a4 = C3586a.this;
                    i = C3767h1.m24262Z(c3586a4.f11562a, c3586a4.f11563b);
                }
                boolean m24488t = C3711a1.m24488t();
                boolean m24484u = C3711a1.m24484u();
                Message obtainMessage = PhoneSceneService.this.f11558f.obtainMessage();
                obtainMessage.what = 120;
                Bundle bundle = new Bundle();
                bundle.putString("num", C3586a.this.f11563b);
                bundle.putBoolean("isInBlackList", booleanValue);
                bundle.putBoolean("is_in_custom_list", m24314c);
                bundle.putBoolean("contact_exist", z);
                bundle.putString("contact_name", m24217w);
                bundle.putBoolean("is_enable_block", m24488t);
                bundle.putBoolean("is_enable_unknow", m24484u);
                bundle.putInt("contacts_id", i);
                obtainMessage.setData(bundle);
                PhoneSceneService.this.f11558f.sendMessage(obtainMessage);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callstatus", "handler.sendMessage");
                }
            }
        }

        C3586a(Context context, String str) {
            PhoneSceneService.this = r4;
            this.f11562a = context;
            this.f11563b = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p181l.AbstractC2893a
        /* renamed from: a */
        public void mo24817a(boolean z) {
            if (!z) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callstatus", "NotDisturb");
                }
                C3772i0.m24190a().f12015b.execute(new RunnableC3590c());
                return;
            }
            if (C3773a.m24187c() != 1) {
                C3767h1.m24237m(this.f11562a);
                C3720d.m24422h(this.f11563b, System.currentTimeMillis());
                C2883c.m26469a(this.f11562a, this.f11563b, new C3589b());
            } else if (C3711a1.m24484u()) {
                C2887f.m26466a(this.f11562a, this.f11563b, new C3587a());
            } else {
                C3809p0.m24073f(this.f11562a);
            }
            PhoneSceneService.this.stopSelf();
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$b.class */
    public class C3591b implements AbstractC2859a {

        /* renamed from: a */
        final /* synthetic */ Context f11569a;

        /* renamed from: com.allinone.callerid.service.PhoneSceneService$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$b$a.class */
        class C3592a implements AbstractC2836a {
            C3592a() {
                C3591b.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a
            /* renamed from: a */
            public void mo23879a(String str) {
                if (str == null || "".equals(str)) {
                    return;
                }
                try {
                    if (new JSONObject(str).getInt("status") != 1) {
                        return;
                    }
                    C2854h.m26505a(C3591b.this.f11569a);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        C3591b(Context context) {
            PhoneSceneService.this = r4;
            this.f11569a = context;
        }

        @Override // com.allinone.callerid.p162i.p163a.p174i.p176j.AbstractC2859a
        /* renamed from: a */
        public void mo24816a(JSONArray jSONArray) {
            C2837b.m26522a(this.f11569a, jSONArray, new C3592a());
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$c.class */
    public class C3593c implements AbstractC2890g {

        /* renamed from: a */
        final /* synthetic */ Context f11572a;

        C3593c(Context context) {
            PhoneSceneService.this = r4;
            this.f11572a = context;
        }

        @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2890g
        /* renamed from: a */
        public void mo24815a(String str, String str2, boolean z, boolean z2, boolean z3) {
            try {
                if (C3767h1.m24228q0()) {
                    return;
                }
                NotificationManager notificationManager = (NotificationManager) this.f11572a.getSystemService("notification");
                Intent intent = new Intent(this.f11572a, MainActivity.class);
                if (z) {
                    intent.putExtra("blockedcall", true);
                }
                intent.putExtra("missedcall", true);
                PendingIntent activity = PendingIntent.getActivity(this.f11572a, 1, intent, 201326592);
                C0565h.C0574e c0574e = new C0565h.C0574e(this.f11572a, "Showcaller");
                c0574e.m33420j(str).m33419k(str2).m33421i(activity).m33405y(this.f11572a.getResources().getString(R$string.missed_call)).m33430B(System.currentTimeMillis()).m33410t(-2).m33411s(false).m33424f(true);
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    NotificationChannel notificationChannel = new NotificationChannel("com.allinone.callerid_notfication_N", "Showcaller", 3);
                    if (notificationManager != null) {
                        notificationChannel.setShowBadge(false);
                        notificationChannel.enableVibration(false);
                        notificationChannel.setVibrationPattern(new long[]{0});
                        notificationManager.createNotificationChannel(notificationChannel);
                        c0574e.m33423g("com.allinone.callerid_notfication_N");
                    }
                }
                if (i >= 21) {
                    try {
                        this.f11572a.getDrawable(R$drawable.msg_icon);
                        c0574e.m33408v(R$drawable.msg_icon);
                        c0574e.m33422h(this.f11572a.getResources().getColor(2131099706));
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                } else {
                    c0574e.m33408v(R$drawable.ic_launcher24);
                    c0574e.m33415o(BitmapFactory.decodeResource(this.f11572a.getResources(), R$mipmap.ic_launcher));
                }
                if (!z && z2 && notificationManager != null) {
                    notificationManager.notify(1, c0574e.m33428b());
                }
                if (!z || !z3 || notificationManager == null) {
                    return;
                }
                notificationManager.notify(1, c0574e.m33428b());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$d.class */
    public class C3594d implements AbstractC2885d {

        /* renamed from: a */
        final /* synthetic */ Context f11574a;

        /* renamed from: b */
        final /* synthetic */ int f11575b;

        /* renamed from: c */
        final /* synthetic */ String f11576c;

        /* renamed from: d */
        final /* synthetic */ boolean f11577d;

        C3594d(Context context, int i, String str, boolean z) {
            PhoneSceneService.this = r4;
            this.f11574a = context;
            this.f11575b = i;
            this.f11576c = str;
            this.f11577d = z;
        }

        @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2885d
        /* renamed from: a */
        public void mo24810a(String str) {
            if (str == null || "".equals(str)) {
                C3883z0.m23885d(this.f11574a, this.f11575b, 0, this.f11576c, this.f11577d, 1, PhoneSceneService.this.f11560h);
            } else if (!C3711a1.m24483u0()) {
            } else {
                C3883z0.m23885d(this.f11574a, this.f11575b, 1, this.f11576c, this.f11577d, 1, PhoneSceneService.this.f11560h);
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$e.class */
    public class C3595e implements AbstractC2886e {

        /* renamed from: a */
        final /* synthetic */ String f11579a;

        /* renamed from: b */
        final /* synthetic */ int f11580b;

        C3595e(String str, int i) {
            PhoneSceneService.this = r4;
            this.f11579a = str;
            this.f11580b = i;
        }

        @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2886e
        /* renamed from: a */
        public void mo24814a(int i, String str) {
            if (str == null || "".equals(str)) {
                C3810q.m24071b().m24069d("outgoing_unkonwn");
                C2742c.m26719A0().m26687Q0(EZCallApplication.m26146c(), this.f11579a, this.f11580b, 1, "", 0);
                C3738f0.m24387P(EZCallApplication.m26146c());
                C3826f.m23995B(this.f11579a, 1, 0);
                return;
            }
            C3810q.m24071b().m24070c("outgoing_contact");
            if (C3711a1.m24483u0()) {
                C3810q.m24071b().m24070c("showfloat_outgoing");
                C3810q.m24071b().m24070c("showfloat_outgoing_contact");
                C3810q.m24071b().m24069d("showfloat_outgoing_contact");
                C2742c.m26719A0().m26687Q0(EZCallApplication.m26146c(), this.f11579a, this.f11580b, 0, str, i);
            }
            C3738f0.m24380g(EZCallApplication.m26146c());
            C3826f.m23995B(this.f11579a, 0, 0);
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$f.class */
    public class C3596f implements AbstractC2556b {

        /* renamed from: a */
        final /* synthetic */ Context f11582a;

        /* renamed from: b */
        final /* synthetic */ String f11583b;

        /* renamed from: c */
        final /* synthetic */ int f11584c;

        /* renamed from: d */
        final /* synthetic */ String f11585d;

        /* renamed from: e */
        final /* synthetic */ int f11586e;

        /* renamed from: com.allinone.callerid.service.PhoneSceneService$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$f$a.class */
        class C3597a implements AbstractC2557c {
            C3597a() {
                C3596f.this = r4;
            }

            @Override // com.allinone.callerid.p144d.p150e.p151e.AbstractC2557c
            /* renamed from: a */
            public void mo24812a(boolean z, HomeInfo homeInfo) {
                try {
                    if (homeInfo == null) {
                        C2742c m26719A0 = C2742c.m26719A0();
                        EZCallApplication m26146c = EZCallApplication.m26146c();
                        C3596f c3596f = C3596f.this;
                        m26719A0.m26687Q0(m26146c, c3596f.f11583b, 1, c3596f.f11584c, c3596f.f11585d, c3596f.f11586e);
                    } else if (C3776a.m24157h()) {
                        if (homeInfo.isIsdiy() && homeInfo.isUseVideoAudioRing()) {
                            C3809p0.m24073f(C3596f.this.f11582a);
                            C2578f.m27065p(true);
                        }
                        C2491a m27216y = C2491a.m27216y();
                        C3596f c3596f2 = C3596f.this;
                        m27216y.m27239N(c3596f2.f11582a, c3596f2.f11583b, homeInfo, c3596f2.f11584c, c3596f2.f11585d, c3596f2.f11586e);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                PhoneSceneService.this.stopSelf();
            }
        }

        C3596f(Context context, String str, int i, String str2, int i2) {
            PhoneSceneService.this = r4;
            this.f11582a = context;
            this.f11583b = str;
            this.f11584c = i;
            this.f11585d = str2;
            this.f11586e = i2;
        }

        @Override // com.allinone.callerid.p144d.p150e.p151e.AbstractC2556b
        /* renamed from: a */
        public void mo24813a(PersonaliseContact personaliseContact) {
            if (personaliseContact == null) {
                C2558d.m27120b(new C3597a());
                return;
            }
            HomeInfo homeInfo = new HomeInfo();
            homeInfo.setPath(personaliseContact.getPath());
            homeInfo.setName(personaliseContact.getName());
            homeInfo.setPhone(personaliseContact.getNumber());
            homeInfo.setIsdiy(personaliseContact.isIsdiy());
            homeInfo.setUseVideoAudioRing(personaliseContact.isUseVideoAudioRing());
            if (C3776a.m24157h()) {
                if (homeInfo.isIsdiy() && homeInfo.isUseVideoAudioRing()) {
                    C3809p0.m24073f(this.f11582a);
                    C2578f.m27065p(true);
                }
                C2491a.m27216y().m27239N(this.f11582a, this.f11583b, homeInfo, this.f11584c, this.f11585d, this.f11586e);
            }
            PhoneSceneService.this.stopSelf();
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$g.class */
    public class View$OnClickListenerC3598g implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Context f11589d;

        View$OnClickListenerC3598g(Context context) {
            PhoneSceneService.this = r4;
            this.f11589d = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131296485) {
                C3810q.m24071b().m24070c("private_number_dialog_close");
                PhoneSceneService.this.f11561i.dismiss();
            } else if (id != 2131296741) {
                if (id != 2131296752) {
                    return;
                }
                C3810q.m24071b().m24070c("private_number_dialog_ingore");
                PhoneSceneService.this.f11561i.dismiss();
            } else {
                C3810q.m24071b().m24070c("private_number_dialog_enable");
                Intent intent = new Intent();
                intent.setClass(this.f11589d, BlockSettingActivity.class);
                intent.addFlags(268435456);
                this.f11589d.startActivity(intent);
                PhoneSceneService.this.f11561i.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$h.class */
    public class C3599h implements AbstractC2978a {
        C3599h() {
            PhoneSceneService.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p191u.AbstractC2978a
        /* renamed from: a */
        public void mo24811a(EZSearchContacts eZSearchContacts) {
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$i.class */
    public class RunnableC3600i implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f11592d;

        /* renamed from: e */
        final /* synthetic */ String f11593e;

        RunnableC3600i(Context context, String str) {
            PhoneSceneService.this = r4;
            this.f11592d = context;
            this.f11593e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean m24263Y = C3767h1.m24263Y(this.f11592d, this.f11593e);
            boolean m23977r = (!C3820b.m24031e() || !C2982a.m26310a()) ? false : C3826f.m23977r(this.f11593e, !m24263Y ? 1 : 0);
            if (!m24263Y) {
                C3711a1.m24650D0(System.currentTimeMillis());
                C3738f0.m24390M(this.f11592d);
            }
            if (C3711a1.m24595R()) {
                C3810q.m24071b().m24070c("is_spam_answered_all");
                C3738f0.m24369r(this.f11592d);
            }
            Message obtainMessage = PhoneSceneService.this.f11558f.obtainMessage();
            obtainMessage.what = 122;
            Bundle bundle = new Bundle();
            bundle.putBoolean("can_record", m23977r);
            bundle.putString("incoming_number", this.f11593e);
            obtainMessage.setData(bundle);
            PhoneSceneService.this.f11558f.sendMessage(obtainMessage);
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$j.class */
    public class C3601j implements AbstractC2882b {

        /* renamed from: a */
        final /* synthetic */ Context f11595a;

        /* renamed from: b */
        final /* synthetic */ String f11596b;

        C3601j(Context context, String str) {
            PhoneSceneService.this = r4;
            this.f11595a = context;
            this.f11596b = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2882b
        /* renamed from: a */
        public void mo24809a(boolean z, String str) {
            PhoneSceneService.this.m24820x(this.f11595a, 1, z, this.f11596b);
            if (!z) {
                PhoneSceneService.this.m24843a(this.f11595a, this.f11596b, str);
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$k.class */
    public class RunnableC3602k implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f11598d;

        /* renamed from: e */
        final /* synthetic */ String f11599e;

        RunnableC3602k(Context context, String str) {
            PhoneSceneService.this = r4;
            this.f11598d = context;
            this.f11599e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean m24263Y = C3767h1.m24263Y(this.f11598d, this.f11599e);
            Message obtainMessage = PhoneSceneService.this.f11558f.obtainMessage();
            obtainMessage.what = 121;
            Bundle bundle = new Bundle();
            bundle.putString("num", this.f11599e);
            bundle.putBoolean("get_contact_exist", m24263Y);
            obtainMessage.setData(bundle);
            PhoneSceneService.this.f11558f.sendMessage(obtainMessage);
            if (C3711a1.m24660A2().booleanValue()) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "NEW_END_CALL_SUCCESS");
                }
                C3810q.m24071b().m24068e("new_end_call_success");
                C3711a1.m24580U2(Boolean.FALSE);
            } else if (!C3711a1.m24477v2().booleanValue()) {
            } else {
                C3810q.m24071b().m24068e("new_end_call_failed");
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "8.0挂断方法失败");
                }
                C3711a1.m24604O2(Boolean.FALSE);
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$l.class */
    public class C3603l implements AbstractC2885d {

        /* renamed from: a */
        final /* synthetic */ Context f11601a;

        /* renamed from: b */
        final /* synthetic */ String f11602b;

        C3603l(Context context, String str) {
            PhoneSceneService.this = r4;
            this.f11601a = context;
            this.f11602b = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2885d
        /* renamed from: a */
        public void mo24810a(String str) {
            if (str == null || "".equals(str)) {
                PhoneSceneService.this.m24825s(this.f11601a, this.f11602b, "1");
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$m.class */
    public class C3604m implements AbstractC2885d {

        /* renamed from: a */
        final /* synthetic */ Context f11604a;

        /* renamed from: b */
        final /* synthetic */ int f11605b;

        /* renamed from: c */
        final /* synthetic */ String f11606c;

        C3604m(Context context, int i, String str) {
            PhoneSceneService.this = r4;
            this.f11604a = context;
            this.f11605b = i;
            this.f11606c = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2885d
        /* renamed from: a */
        public void mo24810a(String str) {
            if (str == null || "".equals(str)) {
                C3883z0.m23885d(this.f11604a, this.f11605b, 0, this.f11606c, false, 0, PhoneSceneService.this.f11560h);
            } else if (!C3711a1.m24483u0()) {
            } else {
                C3883z0.m23885d(this.f11604a, this.f11605b, 1, this.f11606c, false, 0, PhoneSceneService.this.f11560h);
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$n.class */
    public class C3605n implements AbstractC2790b {

        /* renamed from: a */
        final /* synthetic */ Context f11608a;

        /* renamed from: b */
        final /* synthetic */ String f11609b;

        /* renamed from: com.allinone.callerid.service.PhoneSceneService$n$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$n$a.class */
        class C3606a implements AbstractC2885d {
            C3606a() {
                C3605n.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2885d
            /* renamed from: a */
            public void mo24810a(String str) {
                if (str == null || "".equals(str)) {
                    Intent intent = new Intent(C3605n.this.f11608a, RecommendActivity.class);
                    intent.setFlags(268435456);
                    C3605n.this.f11608a.startActivity(intent);
                } else if (!C3711a1.m24465y2().booleanValue()) {
                } else {
                    C3605n c3605n = C3605n.this;
                    PhoneSceneService.this.m24818z(c3605n.f11608a, 0, c3605n.f11609b);
                }
            }
        }

        C3605n(Context context, String str) {
            PhoneSceneService.this = r4;
            this.f11608a = context;
            this.f11609b = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z) {
                C2887f.m26466a(this.f11608a, this.f11609b, new C3606a());
            }
        }
    }

    /* renamed from: com.allinone.callerid.service.PhoneSceneService$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$o.class */
    public class C3607o implements AbstractC2885d {

        /* renamed from: a */
        final /* synthetic */ Context f11612a;

        /* renamed from: b */
        final /* synthetic */ int f11613b;

        /* renamed from: c */
        final /* synthetic */ String f11614c;

        C3607o(Context context, int i, String str) {
            PhoneSceneService.this = r4;
            this.f11612a = context;
            this.f11613b = i;
            this.f11614c = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2885d
        /* renamed from: a */
        public void mo24810a(String str) {
            if (str == null || "".equals(str)) {
                C3883z0.m23885d(this.f11612a, this.f11613b, 0, this.f11614c, false, 1, PhoneSceneService.this.f11560h);
            } else if (!C3711a1.m24483u0()) {
            } else {
                C3883z0.m23885d(this.f11612a, this.f11613b, 1, this.f11614c, false, 1, PhoneSceneService.this.f11560h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.service.PhoneSceneService$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$p.class */
    public static class HandlerC3608p extends Handler {

        /* renamed from: a */
        private final WeakReference<PhoneSceneService> f11616a;

        /* renamed from: com.allinone.callerid.service.PhoneSceneService$p$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/service/PhoneSceneService$p$a.class */
        class C3609a implements AbstractC2882b {

            /* renamed from: a */
            final /* synthetic */ PhoneSceneService f11617a;

            /* renamed from: b */
            final /* synthetic */ String f11618b;

            C3609a(PhoneSceneService phoneSceneService, String str) {
                HandlerC3608p.this = r4;
                this.f11617a = phoneSceneService;
                this.f11618b = str;
            }

            @Override // com.allinone.callerid.p162i.p163a.p180k.AbstractC2882b
            /* renamed from: a */
            public void mo24809a(boolean z, String str) {
                PhoneSceneService phoneSceneService = this.f11617a;
                phoneSceneService.m24843a(phoneSceneService.getApplicationContext(), this.f11618b, str);
            }
        }

        private HandlerC3608p(PhoneSceneService phoneSceneService) {
            this.f11616a = new WeakReference<>(phoneSceneService);
        }

        /* synthetic */ HandlerC3608p(PhoneSceneService phoneSceneService, C3586a c3586a) {
            this(phoneSceneService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            PhoneSceneService phoneSceneService = this.f11616a.get();
            if (phoneSceneService != null) {
                switch (message.what) {
                    case 120:
                        Bundle data = message.getData();
                        String string = data.getString("num");
                        boolean z = data.getBoolean("isInBlackList");
                        boolean z2 = data.getBoolean("is_in_custom_list");
                        boolean z3 = data.getBoolean("contact_exist");
                        String string2 = data.getString("contact_name");
                        boolean z4 = data.getBoolean("is_enable_block");
                        boolean z5 = data.getBoolean("is_enable_unknow");
                        int i = data.getInt("contacts_id");
                        if ((z4 && (z || z2)) || (z5 && !z3)) {
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("tony", "isCalling:" + C3767h1.f12009d);
                            }
                            if (!C3767h1.f12009d) {
                                C3767h1.m24237m(phoneSceneService.getApplicationContext());
                                C3720d.m24422h(string, System.currentTimeMillis());
                                C3810q.m24071b().m24070c("block_list");
                                C2883c.m26469a(phoneSceneService.getApplicationContext(), string, new C3609a(phoneSceneService, string));
                            }
                            phoneSceneService.stopSelf();
                            break;
                        } else {
                            phoneSceneService.m24822v(phoneSceneService.getApplicationContext(), string, string2, i);
                            phoneSceneService.stopSelf();
                            break;
                        }
                    case 121:
                        Bundle data2 = message.getData();
                        String string3 = data2.getString("num");
                        if (!data2.getBoolean("get_contact_exist")) {
                            phoneSceneService.m24825s(phoneSceneService.getApplicationContext(), string3, "0");
                            C3738f0.m24388O(phoneSceneService.getApplicationContext());
                            break;
                        }
                        break;
                    case 122:
                        Bundle data3 = message.getData();
                        boolean z6 = data3.getBoolean("can_record");
                        String string4 = data3.getString("incoming_number");
                        if (z6) {
                            RecordCall recordCall = new RecordCall();
                            recordCall.setNumber(string4);
                            recordCall.setPhonestatus(110);
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("wbb", "开始自动录音" + recordCall.getPhonestatus());
                            }
                            C3613b.m24800f().m24795k(recordCall);
                        }
                        phoneSceneService.stopSelf();
                        break;
                }
            }
            super.handleMessage(message);
        }
    }

    /* renamed from: A */
    private void m24846A(Context context) {
        try {
            DialogC2599l dialogC2599l = new DialogC2599l(context, R$style.CustomDialog4, new View$OnClickListenerC3598g(context));
            this.f11561i = dialogC2599l;
            if (Build.VERSION.SDK_INT >= 26) {
                dialogC2599l.getWindow().setType(2038);
            } else {
                dialogC2599l.getWindow().setType(2003);
            }
            C3810q.m24071b().m24070c("private_number_dialog");
            this.f11561i.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: B */
    private void m24845B(Context context, String str, int i, String str2, int i2) {
        C3810q.m24071b().m24069d("incoming");
        if (str == null || "".equals(str)) {
            C3810q.m24071b().m24069d("incoming_number_null_empty");
            if (C2578f.m27079b()) {
                m24823u(context, str, 3, "", i2);
            } else {
                C2742c.m26719A0().m26687Q0(EZCallApplication.m26146c(), str, i, 3, "", i2);
            }
        } else if (str2 == null || "".equals(str2)) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "showfloat");
            }
            if (C2578f.m27079b()) {
                m24823u(context, str, 1, "", i2);
            } else {
                C2742c.m26719A0().m26687Q0(EZCallApplication.m26146c(), str, i, 1, "", i2);
            }
            C3810q.m24071b().m24070c("showfloat");
            C3810q.m24071b().m24069d("incoming_not_contact");
            C3738f0.m24389N(EZCallApplication.m26146c());
        } else {
            C3810q.m24071b().m24070c("incoming_contact");
            if (C3711a1.m24483u0()) {
                if (C2578f.m27079b()) {
                    m24823u(context, str, 0, str2, i2);
                } else {
                    C2742c.m26719A0().m26687Q0(EZCallApplication.m26146c(), str, i, 0, str2, i2);
                }
                C3810q.m24071b().m24070c("showfloat");
                C3810q.m24071b().m24069d("showfloat_incoming_contact");
            } else {
                C3810q.m24071b().m24070c("show_close_is_contact");
            }
            C3738f0.m24381f(EZCallApplication.m26146c());
        }
    }

    /* renamed from: C */
    private void m24844C(int i, String str) {
        this.f11556d = 0;
        switch (i) {
            case 1:
                m24831m(getApplicationContext(), str);
                C3720d.m24427c(getApplicationContext());
                C3767h1.m24247h(getApplicationContext());
                return;
            case 2:
                m24827q(getApplicationContext(), str);
                C3720d.m24427c(getApplicationContext());
                stopSelf();
                return;
            case 3:
                C3767h1.f12009d = true;
                m24829o(getApplicationContext(), str);
                return;
            case 4:
                m24828p(getApplicationContext(), str);
                if (!C3711a1.m24496r()) {
                    return;
                }
                C2846d.m26515b(getApplicationContext());
                return;
            case 5:
                C3767h1.f12009d = false;
                m24830n(getApplicationContext(), str);
                if (C3711a1.m24496r()) {
                    C2846d.m26515b(getApplicationContext());
                }
                stopSelf();
                return;
            case 6:
                m24826r(getApplicationContext(), str);
                if (C3711a1.m24496r()) {
                    C2846d.m26515b(getApplicationContext());
                }
                stopSelf();
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public void m24843a(Context context, String str, String str2) {
        if (str == null || str.equals("")) {
            return;
        }
        C2891h.m26460a(context, str, str2, new C3593c(context));
    }

    /* renamed from: l */
    private void m24832l() {
        C2742c.m26719A0().m26715C0();
    }

    /* renamed from: m */
    private void m24831m(Context context, String str) {
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callstatus", "inComingRingingToDo");
            }
            C3709a.m24671b();
            C2742c.m26719A0().f9421N = false;
            if (str != null && !"".equals(str) && !str.isEmpty()) {
                C2894b.m26454d(str, new C3586a(context, str));
                C3711a1.m24554c1(System.currentTimeMillis());
                Boolean bool = Boolean.FALSE;
                C3711a1.m24624J2(bool);
                C3711a1.m24632H2(bool);
                C3711a1.m24538g1(false);
                C3711a1.m24580U2(bool);
                C3711a1.m24604O2(bool);
                C2979b.m26315b(context, str, new C3599h());
            }
            C3810q.m24071b().m24070c("unknown_number_call");
            if (C3711a1.m24480v()) {
                C3810q.m24071b().m24070c("unknown_number_call_blocked");
                C3767h1.m24237m(context);
                stopSelf();
            } else {
                m24822v(context, str, "", 0);
                stopSelf();
            }
            C3711a1.m24554c1(System.currentTimeMillis());
            Boolean bool2 = Boolean.FALSE;
            C3711a1.m24624J2(bool2);
            C3711a1.m24632H2(bool2);
            C3711a1.m24538g1(false);
            C3711a1.m24580U2(bool2);
            C3711a1.m24604O2(bool2);
            C2979b.m26315b(context, str, new C3599h());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: n */
    private void m24830n(Context context, String str) {
        C3613b.m24800f().m24793m(false);
        C2742c.m26719A0().m26705H0();
        C2491a.m27216y().m27243J();
        C3767h1.m24279J0(context);
        if (C3773a.m24187c() == 1) {
            C3809p0.m24074e(context);
        }
        if (str != null && !"".equals(str)) {
            try {
                if (C3711a1.m24501p2().booleanValue()) {
                    m24821w(context, 1, str);
                }
                C2887f.m26466a(context, this.f11557e, new C3603l(context, str));
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (C3711a1.m24611N()) {
            if (Build.VERSION.SDK_INT < 23) {
                m24846A(context);
            } else if (Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                m24846A(context);
            }
        }
        if (C3711a1.m24477v2().booleanValue()) {
            C3810q.m24071b().m24068e("new_end_call_failed");
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "8.0挂断方法失败");
            }
            C3711a1.m24608N2(Boolean.FALSE);
        }
    }

    /* renamed from: o */
    private void m24829o(Context context, String str) {
        if (C2742c.m26719A0().f9454l0 != null) {
            m24832l();
            C2742c.m26719A0().m26707G0(this.f11557e, 1);
        }
        if (C2491a.m27216y().f8837x != null) {
            C2491a.m27216y().m27251B();
            C2491a.m27216y().m27245H(this.f11557e, 1);
        }
        if (C2578f.m27077d()) {
            C2578f.m27065p(false);
            C3809p0.m24074e(context);
        }
        C1764a.m28939b(context).m28937d(new Intent("com.allinone.callerid.ACCEPT_END_ACTION"));
        if (C3773a.m24187c() == 1) {
            C3809p0.m24074e(context);
        }
        if (str == null || "".equals(str)) {
            return;
        }
        C3772i0.m24190a().f12015b.execute(new RunnableC3600i(context, str));
    }

    /* renamed from: p */
    private void m24828p(Context context, String str) {
        C1764a.m28939b(context).m28937d(new Intent("com.allinone.callerid.ACCEPT_END_ACTION"));
        if (C2742c.m26719A0().f9454l0 != null) {
            m24832l();
        }
        if (C2491a.m27216y().f8837x != null) {
            C2491a.m27216y().m27251B();
        } else if (!C2742c.m26719A0().f9405a) {
            C2742c.m26719A0().f9421N = true;
        } else {
            C2742c.m26719A0().f9421N = false;
        }
        C2742c.m26719A0().f9405a = false;
        if (C2578f.m27077d()) {
            C2578f.m27065p(false);
            C3809p0.m24074e(context);
        }
        C3767h1.m24279J0(context);
        C3613b.m24800f().m24793m(false);
        C2742c.m26719A0().m26705H0();
        C2491a.m27216y().m27243J();
        if (C3773a.m24187c() == 1) {
            C3809p0.m24074e(context);
        }
        if (str == null || "".equals(str)) {
            if (C3711a1.m24611N()) {
                if (Build.VERSION.SDK_INT < 23) {
                    m24846A(context);
                } else if (Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                    m24846A(context);
                }
            }
            stopSelf();
            return;
        }
        try {
            if (C3711a1.m24655C()) {
                m24824t(context, str);
            } else if (!C3711a1.m24497q2().booleanValue()) {
                C2883c.m26469a(context, this.f11557e, new C3601j(context, str));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        C3772i0.m24190a().f12015b.execute(new RunnableC3602k(context, str));
        stopSelf();
    }

    /* renamed from: q */
    private void m24827q(Context context, String str) {
        try {
            C3709a.m24671b();
            if (C3711a1.m24465y2().booleanValue() && str != null && !"".equals(str)) {
                m24819y(context, str, 0);
            }
            C2979b.m26316a(context, str, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:29:0x0099). Please submit an issue!!! */
    /* renamed from: r */
    private void m24826r(Context context, String str) {
        C3613b.m24800f().m24793m(false);
        C2742c.m26719A0().m26705H0();
        if (C2742c.m26719A0().f9454l0 != null) {
            m24832l();
        } else if (C3711a1.m24483u0()) {
            if (!C2742c.m26719A0().f9405a) {
                C2742c.m26719A0().f9421N = true;
            } else {
                C2742c.m26719A0().f9421N = false;
            }
        }
        C2742c.m26719A0().f9405a = false;
        C3767h1.m24279J0(context);
        if (str == null || str.equals("")) {
            return;
        }
        if (C3711a1.m24599Q() && C3711a1.m24651D()) {
            C3711a1.m24502p1(true);
        }
        try {
            if (C3767h1.m24253e(context)) {
                C2786a.m26600a(new C3605n(context, str));
            } else if (C3711a1.m24465y2().booleanValue()) {
                m24818z(context, 0, str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: s */
    public void m24825s(Context context, String str, String str2) {
        try {
            if (!C3767h1.m24261a(context) || C3767h1.m24216w0(str)) {
                return;
            }
            C2860b.m26499a(context, str, str2, new C3591b(context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: t */
    private void m24824t(Context context, String str) {
        if (C3711a1.m24511n0()) {
            C3883z0.m23886c(context, str);
        } else {
            C3810q.m24071b().m24070c("showmissed_close");
        }
    }

    /* renamed from: u */
    private void m24823u(Context context, String str, int i, String str2, int i2) {
        C2552a.m27128a(str, new C3596f(context, str, i, str2, i2));
    }

    /* renamed from: v */
    public void m24822v(Context context, String str, String str2, int i) {
        if (C3711a1.m24487t0()) {
            m24845B(context, str, 1, str2, i);
        }
    }

    /* renamed from: w */
    private void m24821w(Context context, int i, String str) {
        C2887f.m26466a(context, str, new C3604m(context, i, str));
    }

    /* renamed from: x */
    public void m24820x(Context context, int i, boolean z, String str) {
        if (C3711a1.m24511n0()) {
            C2887f.m26466a(context, str, new C3594d(context, i, str, z));
        } else {
            C3810q.m24071b().m24070c("showmissed_close");
        }
    }

    /* renamed from: y */
    private void m24819y(Context context, String str, int i) {
        C3810q.m24071b().m24070c("showcaller");
        C3810q.m24071b().m24070c("outgoing");
        C3810q.m24071b().m24069d("outgoing");
        C2887f.m26465b(context, str, new C3595e(str, i));
    }

    /* renamed from: z */
    public void m24818z(Context context, int i, String str) {
        C2887f.m26466a(context, str, new C3607o(context, i, str));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (C3718c0.f11914a) {
            C3718c0.m24436a("callstatus", "onCreate");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("callstatus", "onStartCommand");
        }
        if (intent != null) {
            this.f11556d = intent.getIntExtra("telephonering_sence", 0);
            String stringExtra = intent.getStringExtra("telephonering_num");
            this.f11557e = stringExtra;
            int i3 = this.f11556d;
            if (i3 != 0) {
                m24844C(i3, stringExtra);
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
