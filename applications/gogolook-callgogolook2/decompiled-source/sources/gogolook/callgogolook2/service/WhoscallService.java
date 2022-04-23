package gogolook.callgogolook2.service;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.phone.SettingResultActivity;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13936c2;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14043k;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14188u2;
import p459j.p460a.p582w0.C14195v2;
import p459j.p460a.p582w0.C14199w0;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14215x1;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/service/WhoscallService.class */
public class WhoscallService extends Service {

    /* renamed from: a */
    public Subscription f12778a = null;

    /* renamed from: b */
    public boolean f12779b = false;

    /* renamed from: gogolook.callgogolook2.service.WhoscallService$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/service/WhoscallService$a.class */
    public class C5166a implements Action1 {
        public C5166a() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14199w0) {
                boolean H = C13878a3.m3254H();
                if (H != WhoscallService.this.f12779b) {
                    WhoscallService.this.f12779b = H;
                    WhoscallService.this.m26160a(H);
                    if (!H) {
                        C14188u2.m2279a(WhoscallService.this, "FOREGROUND_FLEXIBLE_NOTIFICATION");
                    }
                }
            } else if (obj instanceof C14215x1) {
                WhoscallService.this.stopSelf();
            }
        }
    }

    /* renamed from: a */
    public final void m26163a() {
        this.f12778a = C14037j3.m2731a().mo2703a((Action1) new C5166a());
    }

    /* renamed from: a */
    public final void m26160a(boolean z) {
        Intent intent;
        if (C14017g4.m2801w()) {
            if (z) {
                intent = new Intent(this, SettingResultActivity.class).putExtra("key.request.code", 1000).putExtra("key.gf.source", 3).setFlags(268468224);
                C14300r.m1653a("SettingResultActivity", intent);
            } else {
                intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS").putExtra("android.provider.extra.APP_PACKAGE", getBaseContext().getPackageName()).putExtra("android.provider.extra.CHANNEL_ID", C14195v2.f31721b);
            }
            PendingIntent activity = PendingIntent.getActivity(getBaseContext(), 7000, intent, 134217728);
            C6298e.m23355a(this, 7000, C14173t4.m2305a(C14173t4.m2304b(this).setContentTitle(C14206w4.m2225a((int) R$string.foreground_service_on)).setContentText(C14206w4.m2225a((int) R$string.foreground_service_on_content)).setContentIntent(activity).setStyle(new NotificationCompat.BigTextStyle().bigText(C14206w4.m2225a((int) R$string.foreground_service_on_content))).addAction(R$drawable.icon_settings, C14206w4.m2225a((int) R$string.foreground_service_on_button), activity).setAutoCancel(false)));
        }
    }

    /* renamed from: b */
    public final void m26159b() {
        Subscription subscription = this.f12778a;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12778a.unsubscribe();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f12779b = C13878a3.m3254H();
        m26160a(this.f12779b);
        if (C13565v.m3921g().m23335b()) {
            C14687h.m861a(this, "WhoscallService creating", 0);
        }
        C14043k.m2725a("WhoscallService");
        m26163a();
        C14037j3.m2731a().mo2704a(new C13936c2());
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        m26159b();
        C14043k.m2724b("WhoscallService");
        C6298e.m23354a((Service) this, true);
    }
}
