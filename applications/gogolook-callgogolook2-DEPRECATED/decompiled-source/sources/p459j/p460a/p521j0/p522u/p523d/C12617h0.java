package p459j.p460a.p521j0.p522u.p523d;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.google.firebase.perf.metrics.Trace;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.rating.RatingDialog;
import gogolook.callgogolook2.receiver.CheckTeaserNotificationReceiver;
import gogolook.callgogolook2.setting.SettingsActivity;
import gogolook.callgogolook2.setting.SuggestedSettingsActivity;
import gogolook.callgogolook2.template.CallEndDialogTemplateActivity;
import java.util.List;
import java.util.Map;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p521j0.C12506j;
import p459j.p460a.p521j0.C12513q;
import p459j.p460a.p521j0.EnumC12488a;
import p459j.p460a.p521j0.p522u.p523d.C12664s0;
import p459j.p460a.p521j0.p522u.p523d.C12701x0;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p569u0.C13679g;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13913b1;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14023h4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13921a;
import p459j.p460a.p582w0.p590x4.C14260e;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14281j;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14330b;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
import p660rx.functions.Action1;
/* renamed from: j.a.j0.u.d.h0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/h0.class */
public class C12617h0 {

    /* renamed from: a */
    public Context f28424a;

    /* renamed from: b */
    public AbstractC12623f f28425b;

    /* renamed from: c */
    public C12664s0 f28426c;

    /* renamed from: d */
    public boolean f28427d;

    /* renamed from: e */
    public boolean f28428e = true;

    /* renamed from: f */
    public boolean f28429f = true;

    /* renamed from: g */
    public boolean f28430g = false;

    /* renamed from: h */
    public boolean f28431h = false;

    /* renamed from: j.a.j0.u.d.h0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/h0$a.class */
    public class C12618a implements C12664s0.AbstractC12675i {
        public C12618a() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12664s0.AbstractC12675i
        /* renamed from: a */
        public boolean mo5578a() {
            return C12617h0.this.f28427d;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12664s0.AbstractC12675i
        /* renamed from: b */
        public void mo5577b() {
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogController] onCloseCallEndDialog() invoked");
            if (C12617h0.this.f28425b != null) {
                C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogController] Call OnStopListener.onStop()");
                C12617h0.this.f28425b.onStop();
            }
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogController] onCloseCallEndDialog() end");
        }
    }

    /* renamed from: j.a.j0.u.d.h0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/h0$b.class */
    public class DialogInterface$OnClickListenerC12619b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f28433a;

        /* renamed from: b */
        public final /* synthetic */ int f28434b;

        public DialogInterface$OnClickListenerC12619b(C12617h0 h0Var, int i, int i2) {
            this.f28433a = i;
            this.f28434b = i2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C14289m.m1912a(1, 0, 2, this.f28433a, this.f28434b);
        }
    }

    /* renamed from: j.a.j0.u.d.h0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/h0$c.class */
    public class DialogInterface$OnClickListenerC12620c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f28435a;

        /* renamed from: b */
        public final /* synthetic */ Context f28436b;

        /* renamed from: c */
        public final /* synthetic */ int f28437c;

        /* renamed from: d */
        public final /* synthetic */ int f28438d;

        public DialogInterface$OnClickListenerC12620c(C12617h0 h0Var, boolean z, Context context, int i, int i2) {
            this.f28435a = z;
            this.f28436b = context;
            this.f28437c = i;
            this.f28438d = i2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.f28435a) {
                SuggestedSettingsActivity.m26067b(this.f28436b, 1);
            } else {
                C13878a3.m3211g(this.f28436b);
            }
            C14289m.m1912a(1, 0, 1, this.f28437c, this.f28438d);
        }
    }

    /* renamed from: j.a.j0.u.d.h0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/h0$d.class */
    public class C12621d implements Action1<C12513q> {

        /* renamed from: a */
        public final /* synthetic */ C14037j3.C14041d f28439a;

        public C12621d(C12617h0 h0Var, C14037j3.C14041d dVar) {
            this.f28439a = dVar;
        }

        /* renamed from: a */
        public void call(C12513q qVar) {
            this.f28439a.m2728a(qVar);
        }
    }

    /* renamed from: j.a.j0.u.d.h0$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/h0$e.class */
    public class DialogInterface$OnClickListenerC12622e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC12622e(C12617h0 h0Var) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                C14289m.m1898a((Integer) 1, (Integer) 1, (Integer) 1);
            } else if (i == -2) {
                C14289m.m1898a((Integer) 1, (Integer) 1, (Integer) 2);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.h0$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/h0$f.class */
    public interface AbstractC12623f {
        void onStop();
    }

    public C12617h0(Context context, AbstractC12623f fVar) {
        this.f28424a = context;
        this.f28425b = fVar;
        m5724m();
    }

    /* renamed from: a */
    public String m5750a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public final void m5751a() {
        C13878a3.m3244a(new RatingDialog(MyApplication.m29013o()));
    }

    /* renamed from: a */
    public void m5749a(ViewGroup viewGroup, EnumC12625i0 i0Var, C12664s0.AbstractC12678l lVar) {
        this.f28426c.m5643a(viewGroup, i0Var, lVar);
        this.f28426c.m5589w();
        C14289m.m1916a();
        long d = C13921a.m3037a(C13921a.EnumC13926e.CD).m3031d();
        if (d != -1) {
            CallStats.Call c = CallStats.m28534h().m28539c();
            long currentTimeMillis = System.currentTimeMillis() - d;
            C13921a a = C13921a.m3037a(C13921a.EnumC13926e.CD);
            a.m3035a("Call Dialog Total Time = " + currentTimeMillis);
            c.m28504d(currentTimeMillis);
            if (this.f28428e) {
                C14261f.m1983a(C14261f.EnumC14264c.a_CD_Show_Dialog, CallStats.m28534h().m28539c(), C14108o4.m2474l(CallStats.m28534h().m28539c().m28486q()), currentTimeMillis);
                C14289m.m1881a(c.m28529B(), c.m28487p(), true, Integer.valueOf((int) currentTimeMillis), 0);
                if (C13565v.m3921g().m23335b()) {
                    Toast.makeText(this.f28424a, "CD shows in " + currentTimeMillis + " ms", 1).show();
                }
            }
        }
    }

    /* renamed from: a */
    public void m5746a(EnumC12625i0 i0Var) {
        this.f28426c.m5642a(i0Var);
    }

    /* renamed from: a */
    public void m5745a(C12664s0.AbstractC12678l lVar) {
        m5749a(null, null, lVar);
    }

    /* renamed from: a */
    public final void m5744a(@NonNull C13921a aVar, String str) {
        aVar.m3035a("Method = " + str + " - show dialog start");
        if (this.f28428e) {
            m5719r();
        }
        aVar.m3035a("Method = " + str + " - show dialog end");
    }

    /* renamed from: a */
    public final void m5743a(String str, String str2) {
        if (!CallStats.m28534h().m28539c().m28478y()) {
            str = str2;
        }
        NotificationManager notificationManager = (NotificationManager) this.f28424a.getSystemService("notification");
        Bundle bundle = new Bundle();
        bundle.putBoolean("roamingSetting", true);
        PendingIntent a = C14217x3.m2188a(this.f28424a, NumberDetailActivity.m26858a(this.f28424a, str, null, bundle, "FROM_Call_Dialog"), 1981);
        Intent intent = new Intent(this.f28424a, SettingsActivity.class);
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", "focus_roaming");
        intent.putExtras(bundle2);
        PendingIntent a2 = C14217x3.m2188a(this.f28424a, intent, 1981);
        String a3 = m5750a(R$string.roaming_during_notification_content);
        NotificationCompat.Builder addAction = C14173t4.m2307a(this.f28424a).setContentText(a3).setTicker(m5750a(R$string.roaming_during_notification)).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(a3)).setContentIntent(a).setDefaults(2).setAutoCancel(true).setPriority(1).addAction(R$drawable.notification_setting, m5750a(R$string.roaming_during_notification_action), a2);
        if (CallStats.m28534h().m28539c().m28529B()) {
            addAction.setContentTitle(String.format(m5750a(R$string.roaming_after_notification_title_call_out), str));
        } else {
            addAction.setContentTitle(String.format(m5750a(R$string.roaming_after_notification_title_call), str));
        }
        notificationManager.notify(1981, addAction.build());
    }

    /* renamed from: a */
    public void m5742a(boolean z) {
        this.f28430g = z;
    }

    /* renamed from: a */
    public final boolean m5748a(CallStats.Call call) {
        return !CallUtils.m26588a(this.f28424a, !call.m28529B(), call.m28486q());
    }

    /* renamed from: b */
    public final EnumC12488a m5739b(C13921a aVar, String str) {
        aVar.m3035a("Method = " + str + " - start");
        CallStats.Call c = CallStats.m28534h().m28539c();
        CallStats.BlockResult m = c.m28490m();
        boolean B = c.m28529B();
        this.f28431h = false;
        C14037j3.m2731a().mo2704a(new C13913b1(0));
        aVar.m3035a("Method = " + str + " - before stop sms dialog");
        SmsDialogActivity.m27054P();
        aVar.m3035a("Method = " + str + " - after stop sms dialog");
        if (m5720q()) {
            m5716u();
            return EnumC12488a.NO_DIALOG;
        }
        aVar.m3035a("Method = " + str + " - after check skip call end dialog");
        boolean z = false;
        if (c.m28483t() == 1) {
            z = false;
            if (m == CallStats.BlockResult.SUCCESS) {
                z = true;
            }
        }
        if (z) {
            m5716u();
            return EnumC12488a.NO_DIALOG;
        }
        aVar.m3035a("Method = " + str + " - after check block");
        if (m5732e()) {
            m5716u();
            return EnumC12488a.NO_DIALOG;
        }
        aVar.m3035a("Method = " + str + " - multiple missing");
        if (m5726k()) {
            m5716u();
            return EnumC12488a.INTERCEPT;
        } else if (m5725l()) {
            m5716u();
            return EnumC12488a.INTERCEPT;
        } else {
            if (B) {
                C12612g0.m5753x();
            }
            if (m5727j()) {
                m5716u();
                return EnumC12488a.INTERCEPT;
            } else if (m5741b()) {
                m5716u();
                return EnumC12488a.NO_DIALOG;
            } else if (m5730g()) {
                return EnumC12488a.NO_DIALOG;
            } else {
                aVar.m3035a("Method = " + str + " - after number transmission checking");
                if (!C13878a3.m3250a()) {
                    CheckTeaserNotificationReceiver.m26396b(this.f28424a);
                }
                if (m5731f()) {
                    m5716u();
                    return EnumC12488a.INTERCEPT;
                }
                aVar.m3035a("Method = " + str + " - after network restricted checking");
                if (m5737c()) {
                    m5716u();
                    return EnumC12488a.NO_DIALOG;
                }
                aVar.m3035a("Method = " + str + " - after roaming checking");
                if (m5729h()) {
                    m5716u();
                    return EnumC12488a.INTERCEPT;
                }
                aVar.m3035a("Method = " + str + " - after rate me dialog checking");
                aVar.m3035a("Method = " + str + " - end");
                return EnumC12488a.SHOW_DIALOG;
            }
        }
    }

    /* renamed from: b */
    public void m5738b(boolean z) {
        this.f28428e = z;
    }

    /* renamed from: b */
    public final boolean m5741b() {
        if (C13878a3.m3198t()) {
            return false;
        }
        CallStats.Call c = CallStats.m28534h().m28539c();
        if (c.m28478y()) {
            CheckTeaserNotificationReceiver.m26395c(this.f28424a);
            return true;
        }
        C14289m.m1881a(c.m28529B(), c.m28487p(), true, (Integer) null, 2);
        return true;
    }

    /* renamed from: c */
    public final EnumC12488a m5736c(C13921a aVar, String str) {
        aVar.m3035a("Method = " + str + " - start");
        C14037j3.m2731a().mo2704a(new C13913b1(0));
        aVar.m3035a("Method = " + str + " - before stop sms dialog");
        SmsDialogActivity.m27054P();
        aVar.m3035a("Method = " + str + " - after stop sms dialog");
        if (m5728i()) {
            return EnumC12488a.NO_DIALOG;
        }
        aVar.m3035a("Method = " + str + " - after check skip call dialog");
        if (m5741b()) {
            m5716u();
            return EnumC12488a.NO_DIALOG;
        } else if (m5730g()) {
            return EnumC12488a.NO_DIALOG;
        } else {
            aVar.m3035a("Method = " + str + " - after number transmission checking");
            if (m5737c()) {
                m5716u();
                return EnumC12488a.NO_DIALOG;
            }
            aVar.m3035a("Method = " + str + " - after roaming checking");
            aVar.m3035a("Method = " + str + " - end");
            return EnumC12488a.SHOW_DIALOG;
        }
    }

    /* renamed from: c */
    public void m5735c(boolean z) {
        this.f28429f = z;
    }

    /* renamed from: c */
    public final boolean m5737c() {
        CallStats.Call c = CallStats.m28534h().m28539c();
        if (C14217x3.m2131j(this.f28424a)) {
            return false;
        }
        if (c.m28478y()) {
            m5743a(c.m28495h(), c.m28486q());
            return true;
        }
        C14289m.m1881a(c.m28529B(), c.m28487p(), true, (Integer) null, 4);
        return true;
    }

    /* renamed from: d */
    public final void m5734d() {
        if (this.f28429f) {
            m5733d(this.f28431h);
        }
        C14289m.m1916a();
    }

    /* renamed from: d */
    public final void m5733d(boolean z) {
        C12664s0 s0Var = this.f28426c;
        if (!C14217x3.m2107z()) {
            z = false;
        }
        s0Var.m5630b(z, 3, CallStats.m28534h().m28539c().m28495h(), null, CallStats.m28534h().m28539c().m28502e());
    }

    /* renamed from: e */
    public final boolean m5732e() {
        CallStats.Call c = CallStats.m28534h().m28539c();
        boolean b = CallUtils.m26560b(this.f28424a, !c.m28529B(), c.m28495h());
        boolean z = b;
        if (c.m28477z()) {
            long a = C13915b3.m3065a("last_missing_call_view_date", -1L);
            long j = c.m28493j();
            int i = 0;
            boolean z2 = b;
            if (a != -1) {
                List<Map<EnumC14329a, String>> a2 = C14023h4.m2764a(this.f28424a, a, j);
                C14330b.m1551b().m1552a(a2);
                int size = a2.size() + 1;
                this.f28431h = size > 1;
                int size2 = a2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    b |= CallUtils.m26560b(this.f28424a, true, a2.get(i2).get(EnumC14329a.E164NUMBER));
                }
                i = size;
                z2 = b;
            }
            C14023h4.m2760a(true, j);
            z = z2;
            if (z2) {
                C14023h4.m2765a(this.f28424a, i);
                z = z2;
            }
        }
        return !z;
    }

    /* renamed from: f */
    public final boolean m5731f() {
        int i;
        Trace b = C10062a.m13512b("CallDialogController.checkAndShowNetworkRestrictedDialog");
        boolean z = !C13878a3.m3261A();
        boolean y = C13878a3.m3193y();
        boolean z2 = C12378a.m6260d() == 2000000;
        int a = C13915b3.m3066a("cd_network_restricted_count", 0) + 1;
        List<Integer> a2 = C13640c.m3745d().m3751a("network_restricted_hint_counts", new Integer[0]);
        if (!z2 || ((!z && !y) || !a2.contains(Integer.valueOf(a)))) {
            b.stop();
            return false;
        }
        C13915b3.m3048d("cd_network_restricted_count", a);
        Context o = MyApplication.m29013o();
        boolean z3 = a == a2.get(a2.size() - 1).intValue();
        int i2 = C14217x3.m2137h(o) ? C14217x3.m2123m(o) ? 1 : 0 : 2;
        if (y) {
            i = z ? 2 : 1;
            C12701x0 x0Var = new C12701x0(o, z ? C12701x0.EnumC12703b.PowerDataSaverCallEnd : C12701x0.EnumC12703b.DataSaverCallEnd);
            x0Var.m5511a(z3);
            x0Var.m5509b(new DialogInterface$OnClickListenerC12620c(this, z, o, i2, i));
            x0Var.m5512a(new DialogInterface$OnClickListenerC12619b(this, i2, i));
            x0Var.m5508c();
        } else {
            C13878a3.m3242a(o, 0);
            i = 0;
        }
        C14289m.m1912a(1, 0, 0, i2, i);
        this.f28426c.m5605o();
        this.f28426c.m5607n();
        b.stop();
        return true;
    }

    /* renamed from: g */
    public final boolean m5730g() {
        Intent d = C13878a3.m3220d();
        if (d == null) {
            return false;
        }
        CallStats.Call c = CallStats.m28534h().m28539c();
        if (c.m28478y()) {
            C13878a3.m3240a(this.f28424a, d);
            C14261f.m1980a(C14261f.EnumC14265d.a_Disclosure_Notification);
            m5716u();
            return true;
        }
        C14289m.m1881a(c.m28529B(), c.m28487p(), true, (Integer) null, 3);
        if (this.f28430g) {
            return true;
        }
        m5716u();
        return true;
    }

    /* renamed from: h */
    public final boolean m5729h() {
        if (!CallUtils.m26587a(CallStats.m28534h().m28539c())) {
            return false;
        }
        this.f28426c.m5605o();
        this.f28426c.m5607n();
        m5751a();
        return true;
    }

    /* renamed from: i */
    public final boolean m5728i() {
        CallStats.Call c = CallStats.m28534h().m28539c();
        if (!m5748a(c)) {
            return false;
        }
        C14289m.m1881a(c.m28529B(), c.m28487p(), false, (Integer) null, 1);
        if (this.f28430g) {
            return true;
        }
        m5716u();
        return true;
    }

    /* renamed from: j */
    public final boolean m5727j() {
        C13673f b = C13679g.m3691a().m3685b(this.f28424a, C13673f.EnumC13678e.CALL_END_DIALOG);
        if (b == null || !b.f30663q) {
            return false;
        }
        this.f28426c.m5605o();
        this.f28426c.m5607n();
        Context context = this.f28424a;
        C14217x3.m2156c(context, CallEndDialogTemplateActivity.m26020a(context, b));
        return true;
    }

    /* renamed from: k */
    public final boolean m5726k() {
        C14037j3.C14041d dVar = new C14037j3.C14041d();
        C14037j3.m2731a().mo2704a(new C12506j(new C12621d(this, dVar)));
        if (dVar.m2729a() == null) {
            return false;
        }
        if (C14217x3.m2144f() >= 2) {
            C14289m.m1898a((Integer) 1, (Integer) 2, (Integer) null);
            return false;
        }
        this.f28426c.m5605o();
        this.f28426c.m5607n();
        int i = R$string.phone_default_app_revert_callend_desc;
        if (((C12513q) dVar.m2729a()).f28205a == C12513q.EnumC12514a.AUDIO_STATE_NULL) {
            i = R$string.incall_state_notsupport_function_general_ced;
        } else if (((C12513q) dVar.m2729a()).f28205a == C12513q.EnumC12514a.SPEAKER) {
            i = R$string.incall_state_notsupport_function_speaker_ced;
        }
        CallUtils.m26589a(MyApplication.m29013o(), true, i, (DialogInterface.OnClickListener) new DialogInterface$OnClickListenerC12622e(this));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5725l() {
        /*
            r3 = this;
            boolean r0 = gogolook.callgogolook2.phone.call.dialog.CallUtils.m26530n()
            r4 = r0
            boolean r0 = gogolook.callgogolook2.phone.call.dialog.CallUtils.m26531m()
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0012
            r0 = r5
            if (r0 == 0) goto L_0x0057
        L_0x0012:
            gogolook.callgogolook2.gson.CallStats r0 = gogolook.callgogolook2.gson.CallStats.m28534h()
            gogolook.callgogolook2.gson.CallStats$Call r0 = r0.m28539c()
            r7 = r0
            r0 = r7
            gogolook.callgogolook2.gson.CallStats$BlockResult r0 = r0.m28490m()
            gogolook.callgogolook2.gson.CallStats$BlockResult r1 = gogolook.callgogolook2.gson.CallStats.BlockResult.FAILURE
            if (r0 != r1) goto L_0x003f
            java.lang.String r0 = "pref_in_call_tutorial_blocked_failed_never_show"
            r1 = 0
            boolean r0 = p459j.p460a.p582w0.C13915b3.m3062a(r0, r1)
            if (r0 != 0) goto L_0x003f
            boolean r0 = gogolook.callgogolook2.phone.call.dialog.CallUtils.m26532l()
            if (r0 == 0) goto L_0x003f
            r0 = r3
            android.content.Context r0 = r0.f28424a
            gogolook.callgogolook2.phone.call.dialog.CallUtils.m26550c(r0)
            goto L_0x0059
        L_0x003f:
            r0 = r7
            boolean r0 = r0.m28480w()
            if (r0 != 0) goto L_0x0057
            boolean r0 = gogolook.callgogolook2.phone.call.dialog.CallUtils.m26534j()
            if (r0 == 0) goto L_0x0057
            r0 = r3
            android.content.Context r0 = r0.f28424a
            gogolook.callgogolook2.phone.call.dialog.CallUtils.m26545d(r0)
            goto L_0x0059
        L_0x0057:
            r0 = 0
            r6 = r0
        L_0x0059:
            r0 = r6
            if (r0 == 0) goto L_0x006b
            r0 = r3
            j.a.j0.u.d.s0 r0 = r0.f28426c
            r0.m5605o()
            r0 = r3
            j.a.j0.u.d.s0 r0 = r0.f28426c
            r0.m5607n()
        L_0x006b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12617h0.m5725l():boolean");
    }

    /* renamed from: m */
    public void m5724m() {
        C14260e.m1993d(this.f28424a);
        this.f28426c = new C12664s0(this.f28424a, new C12618a());
        this.f28427d = true;
    }

    /* renamed from: n */
    public void m5723n() {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogController] destroy() invoked");
        if (this.f28427d) {
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogController] is alive");
            if (this.f28426c != null) {
                C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogController] Call CallViewController.destroy()");
                this.f28426c.m5632b();
            }
            C14260e.m1995c(this.f28424a);
            m5722o();
            this.f28427d = false;
        }
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallDialogController] destroy() end");
    }

    /* renamed from: o */
    public final void m5722o() {
        if (CallStats.m28534h().m28540b().m28508c().equalsIgnoreCase(TelephonyManager.EXTRA_STATE_IDLE) || CallStats.m28534h().m28537e() > 1) {
            CallStats.m28534h().m28546a();
        }
    }

    /* renamed from: p */
    public void m5721p() {
        C12664s0 s0Var = this.f28426c;
        if (s0Var != null) {
            s0Var.m5603p();
        }
        C14260e.m1995c(this.f28424a);
        m5722o();
    }

    /* renamed from: q */
    public final boolean m5720q() {
        return (!CallUtils.m26595a(this.f28424a) && !CallUtils.m26538g()) || CallUtils.m26526r();
    }

    /* renamed from: r */
    public final void m5719r() {
        Trace b = C10062a.m13512b("call_dialog_popup.show_call_dialog_ui");
        m5749a(null, null, null);
        b.stop();
    }

    /* renamed from: s */
    public void m5718s() {
        this.f28426c.m5593u();
    }

    /* renamed from: t */
    public EnumC12488a m5717t() {
        EnumC12488a aVar;
        CallStats.Call c = CallStats.m28534h().m28539c();
        boolean y = c.m28478y();
        C13921a a = C13921a.m3037a(y ? C13921a.EnumC13926e.CED : C13921a.EnumC13926e.CD);
        if (y) {
            EnumC12488a b = m5739b(a, "CallDialogController.start");
            C14281j.m1924a(b != EnumC12488a.NO_DIALOG, c);
            aVar = b;
            if (b == EnumC12488a.SHOW_DIALOG) {
                m5734d();
                aVar = b;
            }
        } else {
            Trace a2 = this.f28428e ? C10062a.m13511c().m13516a("call_dialog_popup.check_call_intent_result") : null;
            if (a2 != null) {
                a2.start();
            }
            EnumC12488a c2 = m5736c(a, "CallDialogController.start");
            if (a2 != null) {
                a2.stop();
            }
            aVar = c2;
            if (c2 == EnumC12488a.SHOW_DIALOG) {
                m5744a(a, "CallDialogController.start");
                aVar = c2;
            }
        }
        a.m3032c();
        return aVar;
    }

    /* renamed from: u */
    public final void m5716u() {
        AbstractC12623f fVar = this.f28425b;
        if (fVar != null) {
            fVar.onStop();
        }
    }
}
