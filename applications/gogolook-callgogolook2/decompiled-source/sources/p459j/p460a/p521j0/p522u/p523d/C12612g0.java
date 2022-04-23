package p459j.p460a.p521j0.p522u.p523d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.role.RoleManagerCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.setting.CarrierIdSettingsActivity;
import gogolook.callgogolook2.setting.DualSimDddSettingActivity;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.List;
import java.util.regex.Pattern;
import p459j.p460a.p463b0.DialogC11125g;
import p459j.p460a.p463b0.p468u.C11396a;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14133r0;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p588e5.C13993a;
import p459j.p460a.p582w0.p590x4.C14299q;
import p626l.C14989s;
/* renamed from: j.a.j0.u.d.g0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/g0.class */
public class C12612g0 {

    /* renamed from: a */
    public static int f28412a = -1;

    /* renamed from: b */
    public static final String[] f28413b = {"com.android.phone.DialingMode", "com.android.phone.extra.slot", "com.asustek.phone.Dialer", "extra_asus_dial_use_dualsim", "linkID", "LastPhoneId", "network_access_mode_id", "phone", "phoneId", "phone_id", "phone_type", "simId", "simNum", "simnum", "simSlot", "simSlot_Ext", "sim_subscription", "slot", "slotId", "slot_id", "SLOT_ID", "subId", "sub_id", "subscriber_id", "subscription", "subscription_id", "SubscriberId", "Subscription", "type_call"};

    /* renamed from: c */
    public static final String[] f28414c = {"simnum"};

    /* renamed from: d */
    public static final String[] f28415d = {"19", "LG-D337", "21", "XT1033", "21", "XT1068", "21", "XT1069", "23", "MotoG3", "21", "HTC Desire 826 dual sim", "21", "SM-G531H", "22", "SM-J500M"};

    /* renamed from: e */
    public static final Pattern f28416e = Pattern.compile("^(\\*|\\*\\*|\\*#|#|##)[\\d]{1,3}#$");

    /* renamed from: j.a.j0.u.d.g0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/g0$a.class */
    public static final class View$OnClickListenerC12613a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f28417a;

        /* renamed from: b */
        public final /* synthetic */ int f28418b;

        /* renamed from: c */
        public final /* synthetic */ boolean f28419c;

        /* renamed from: d */
        public final /* synthetic */ boolean f28420d;

        public View$OnClickListenerC12613a(Dialog dialog, int i, boolean z, boolean z2) {
            this.f28417a = dialog;
            this.f28418b = i;
            this.f28419c = z;
            this.f28420d = z2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f28417a.dismiss();
            int i = this.f28418b;
            if (i == 2) {
                if (this.f28419c) {
                    C14299q.m1750Z();
                } else {
                    C14299q.m1738b0();
                }
            } else if (i == 3) {
                if (this.f28420d) {
                    C14299q.m1678r0();
                } else {
                    C14299q.m1666v0();
                }
            } else if (i == 4 && this.f28419c) {
                C14299q.m1672t0();
            }
        }
    }

    /* renamed from: j.a.j0.u.d.g0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/g0$b.class */
    public static final class DialogInterface$OnDismissListenerC12614b implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ View f28421a;

        public DialogInterface$OnDismissListenerC12614b(View view) {
            this.f28421a = view;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            this.f28421a.setOnClickListener(null);
        }
    }

    /* renamed from: j.a.j0.u.d.g0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/g0$c.class */
    public static final class C12615c implements DialogC11125g.AbstractC11127b {

        /* renamed from: a */
        public final /* synthetic */ Activity f28422a;

        public C12615c(Activity activity) {
            this.f28422a = activity;
        }

        @Override // p459j.p460a.p463b0.DialogC11125g.AbstractC11127b
        /* renamed from: a */
        public void mo5752a(String str) {
            if (C14217x3.m2196a(this.f28422a)) {
                C13915b3.m3044e("DDDSetting", str);
                C12612g0.m5798a();
                C12612g0.m5784b(2);
                Activity activity = this.f28422a;
                activity.startActivity(CarrierIdSettingsActivity.m26146a(activity));
                C14037j3.m2731a().mo2704a(new C14133r0());
            }
        }
    }

    /* renamed from: a */
    public static final Object m5788a(Class<?> cls, Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            method.setAccessible(true);
            return method.invoke(obj, objArr);
        } catch (Throwable th) {
            C13973d4.m2951a(th, SecurityException.class);
            return null;
        }
    }

    /* renamed from: a */
    public static final Object m5786a(String str) {
        try {
            Constructor<?> declaredConstructor = Class.forName(str).getDeclaredConstructor(Context.class);
            if (declaredConstructor != null) {
                return declaredConstructor.newInstance(MyApplication.m29013o());
            }
            return null;
        } catch (Throwable th) {
            C13973d4.m2952a(th);
            return null;
        }
    }

    /* renamed from: a */
    public static String m5797a(int i) {
        return C13915b3.m3056b(i == 0 ? "DDDCarrierName" : "DDDCarrierName1", (String) null);
    }

    /* renamed from: a */
    public static final List<Parcelable> m5787a(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) m5788a(obj.getClass(), obj, "getCallCapablePhoneAccounts", null, new Object[0]);
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m5789a(C11507b.C11508a aVar) {
        aVar.m9447a("prefs_callconfirm_has_click_intro_dialog", true);
        aVar.m9448a("prefs_callconfirm_dialog_mode_inapp", "single");
        aVar.m9448a("prefs_callconfirm_dialog_mode_outapp", "single");
        return null;
    }

    /* renamed from: a */
    public static final void m5798a() {
        C13978e.f31386a.m9457a(C12530b.f28235a);
    }

    /* renamed from: a */
    public static void m5796a(@NonNull Activity activity) {
        if (C14217x3.m2196a(activity)) {
            if (m5755v()) {
                if (m5765l()) {
                    m5785b();
                    m5784b(2);
                    activity.startActivity(CarrierIdSettingsActivity.m26146a(activity));
                    C14037j3.m2731a().mo2704a(new C14133r0());
                } else if (m5764m() || m5763n()) {
                    m5798a();
                    m5784b(2);
                    activity.startActivity(CarrierIdSettingsActivity.m26146a(activity));
                    C14037j3.m2731a().mo2704a(new C14133r0());
                } else {
                    activity.startActivity(DualSimDddSettingActivity.m26141a(activity, 2));
                }
            } else if (m5766k()) {
                m5798a();
                m5784b(2);
                activity.startActivity(CarrierIdSettingsActivity.m26146a(activity));
                C14037j3.m2731a().mo2704a(new C14133r0());
            } else {
                DialogC11125g gVar = new DialogC11125g(activity);
                gVar.m10247a(new C12615c(activity));
                gVar.show();
            }
        }
    }

    /* renamed from: a */
    public static void m5795a(Context context) {
        if (!C13915b3.m3062a("prefs_callconfirm_has_checked_disclaimer", false)) {
            boolean v = m5755v();
            boolean l = m5765l();
            int h = m5769h();
            if (h == 2) {
                if (v) {
                    C14299q.m1744a0();
                } else {
                    C14299q.m1733c0();
                }
            } else if (h == 3) {
                if (l) {
                    C14299q.m1675s0();
                } else {
                    C14299q.m1663w0();
                }
            } else if (h == 4 && v) {
                C14299q.m1669u0();
            }
            Dialog dialog = new Dialog(context, 16973840);
            dialog.getWindow().requestFeature(1);
            dialog.setContentView(R$layout.dialog_call_confirm_hint);
            if (l) {
                ((ImageView) dialog.findViewById(R$id.iv_hint)).setImageResource(R$drawable.dialog_img_carrier_2btn);
                ((TextView) dialog.findViewById(R$id.tv_title)).setText(R$string.call_confirm_inapp_hint_dual_successful_title);
                ((TextView) dialog.findViewById(R$id.tv_message)).setText(R$string.call_confirm_inapp_hint_dual_successful_content);
            }
            View findViewById = dialog.findViewById(R$id.btn_got_it);
            findViewById.setOnClickListener(new View$OnClickListenerC12613a(dialog, h, v, l));
            dialog.setOnDismissListener(new DialogInterface$OnDismissListenerC12614b(findViewById));
            C13915b3.m3055b("prefs_callconfirm_has_checked_disclaimer", true);
            dialog.show();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5794a(Context context, View view) {
        context.startActivity(CarrierIdSettingsActivity.m26146a(context));
        C11396a.m9698a(1, 7, 5);
    }

    /* renamed from: a */
    public static /* synthetic */ void m5792a(DialogInterface dialogInterface) {
        C13978e.f31386a.m9459a("prefs_has_shown_call_confirm_default_phone_tutorial", (String) true);
        C11396a.m9698a(1, 7, 4);
    }

    /* renamed from: a */
    public static final void m5791a(Intent intent, int i, String str) {
        List<Parcelable> a;
        if (intent == null) {
            return;
        }
        if (!m5761p()) {
            intent.putExtra("com.android.phone.force.slot", true);
            intent.putExtra("WILL_CHOOSE_SIM", false);
            intent.putExtra("NOT_NEED_SIMCARD_SELECTION", true);
            intent.putExtra("is_vt_call", false);
            intent.putExtra("is_sip_call", false);
            intent.putExtra("launch_from_dialer", true);
            intent.putExtra("fromDialer", true);
            for (String str2 : f28413b) {
                intent.putExtra(str2, i);
            }
            for (String str3 : f28414c) {
                intent.putExtra(str3, i + 1);
            }
            if (i == 1) {
                intent.putExtra("android.phone.extra.slot2", true);
                intent.putExtra("netmode", "nettype2");
            } else {
                intent.putExtra("netmode", "nettype1");
            }
            if (C14017g4.m2805s() && (a = m5787a(m5786a("android.telecom.TelecomManager"))) != null && i != -1 && i < a.size()) {
                intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", a.get(i));
                return;
            }
            return;
        }
        int j = m5767j();
        if (!(j == -1 || j == i)) {
            f28412a = j;
            m5754w();
        }
    }

    /* renamed from: a */
    public static boolean m5793a(Context context, String str) {
        if (!m5756u() || m5773d(str)) {
            return false;
        }
        if (!TextUtils.isEmpty(str) && (str.length() < 8 || str.startsWith("0800") || str.startsWith("800"))) {
            return false;
        }
        if (!C13915b3.m3067a("prefs_callconfirm_popup_dialog_contact") && !C13915b3.m3067a("prefs_callconfirm_popup_dialog_stranger")) {
            return true;
        }
        return !C14217x3.m2160b(C14217x3.m2146e(context, str)) ? C13915b3.m3062a("prefs_callconfirm_popup_dialog_contact", true) : C13915b3.m3062a("prefs_callconfirm_popup_dialog_stranger", true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @ColorInt
    /* renamed from: b */
    public static int m5782b(@NonNull Context context, String str) {
        char c;
        switch (str.hashCode()) {
            case -1048795430:
                if (str.equals("nextel")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1006804125:
                if (str.equals("others")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 3546:
                if (str.equals("oi")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 114840:
                if (str.equals("tim")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3620012:
                if (str.equals("vivo")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 92901069:
                if (str.equals("algar")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 94742869:
                if (str.equals("claro")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return context.getResources().getColor(c != 0 ? c != 1 ? c != 2 ? c != 3 ? c != 4 ? c != 5 ? 2131099807 : 2131099808 : 2131099804 : 2131099805 : 2131099803 : 2131099806 : 2131099809);
    }

    /* renamed from: b */
    public static int m5779b(String str) {
        if (!m5765l() || TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(m5797a(0)) || !str.toLowerCase().startsWith(m5797a(0).toLowerCase())) {
            return (TextUtils.isEmpty(m5797a(1)) || !str.toLowerCase().startsWith(m5797a(1).toLowerCase())) ? -1 : 1;
        }
        return 0;
    }

    /* renamed from: b */
    public static /* synthetic */ C14989s m5780b(C11507b.C11508a aVar) {
        aVar.m9447a("prefs_callconfirm_sim_recommendation", true);
        aVar.m9448a("prefs_callconfirm_dialog_mode_inapp", "single");
        aVar.m9448a("prefs_callconfirm_dialog_mode_outapp", "single");
        return null;
    }

    /* renamed from: b */
    public static final void m5785b() {
        C13978e.f31386a.m9457a(C12601f.f28407a);
    }

    /* renamed from: b */
    public static final void m5784b(int i) {
        C13915b3.m3048d("activate_call_confirm_reason", i);
    }

    /* renamed from: b */
    public static void m5783b(Context context) {
        int h = m5769h();
        if (h == 2 || h == 3 || h == 4 || h == 6) {
            m5795a(context);
        }
        m5784b(0);
    }

    /* renamed from: c */
    public static String m5775c(String str) {
        return TextUtils.isEmpty(str) ? "" : str.split(",")[0].split("-")[0].trim().toLowerCase();
    }

    /* renamed from: c */
    public static /* synthetic */ C14989s m5776c(C11507b.C11508a aVar) {
        aVar.m9448a("prefs_callconfirm_dialog_mode_inapp", "no_popup");
        aVar.m9448a("prefs_callconfirm_dialog_mode_outapp", "no_popup");
        aVar.m9447a("prefs_callconfirm_sim_recommendation", false);
        return null;
    }

    /* renamed from: c */
    public static void m5777c(final Context context) {
        C13993a.DialogC13994a.C13995a aVar = new C13993a.DialogC13994a.C13995a(context, RoleManagerCompat.ROLE_DIALER);
        aVar.m2913a(7);
        aVar.m2906d(R$string.carrier_identification_call_log_alert_title);
        aVar.m2907c(R$string.carrier_identification_call_log_alert_content);
        aVar.m2909b(R$drawable.call_confirm_set_default_phone_app);
        aVar.m2911a(DialogInterface$OnShowListenerC12553e.f28261a);
        aVar.m2908b(R$string.carrier_identification_call_log_alert_yes, View$OnClickListenerC12546d.f28245a);
        aVar.m2912a(R$string.carrier_identification_call_log_alert_no, new View.OnClickListener() { // from class: j.a.j0.u.d.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12612g0.m5794a(context, view);
            }
        });
        aVar.m2910a(View$OnClickListenerC12611g.f28411a);
        C13993a.m2919a(aVar.m2914a());
    }

    /* renamed from: c */
    public static final boolean m5778c() {
        return m5774d() || m5772e();
    }

    /* renamed from: d */
    public static boolean m5774d() {
        if (!m5756u()) {
            return false;
        }
        return C13915b3.m3056b("prefs_callconfirm_dialog_mode_inapp", "no_popup").equals("single");
    }

    /* renamed from: d */
    public static boolean m5773d(String str) {
        return f28416e.matcher(str).matches();
    }

    /* renamed from: e */
    public static boolean m5772e() {
        if (!m5756u()) {
            return false;
        }
        return C13915b3.m3056b("prefs_callconfirm_dialog_mode_outapp", "no_popup").equals("single");
    }

    /* renamed from: f */
    public static final void m5771f() {
        C13978e.f31386a.m9457a(C12524a.f28224a);
    }

    /* renamed from: g */
    public static final void m5770g() {
        C13915b3.m3055b("prefs_callconfirm_sim_recommendation", false);
    }

    /* renamed from: h */
    public static final int m5769h() {
        return C13915b3.m3066a("activate_call_confirm_reason", 0);
    }

    /* renamed from: i */
    public static int m5768i() {
        if (!C14017g4.m2835A()) {
            return 0;
        }
        return m5762o() ? 2 : 1;
    }

    /* renamed from: j */
    public static final int m5767j() {
        Object systemService = MyApplication.m29013o().getSystemService("phone");
        try {
            return ((Integer) m5788a(systemService.getClass(), systemService, "getDefaultSubscription", null, new Object[0])).intValue();
        } catch (Throwable th) {
            return -1;
        }
    }

    /* renamed from: k */
    public static boolean m5766k() {
        return !TextUtils.isEmpty(C13915b3.m3056b("DDDSetting", (String) null));
    }

    /* renamed from: l */
    public static boolean m5765l() {
        return m5755v() && m5764m() && m5763n();
    }

    /* renamed from: m */
    public static boolean m5764m() {
        return !TextUtils.isEmpty(C13915b3.m3056b("DDDSetting", (String) null)) && !TextUtils.isEmpty(C13915b3.m3056b("DDDCarrierName", (String) null));
    }

    /* renamed from: n */
    public static boolean m5763n() {
        return !TextUtils.isEmpty(C13915b3.m3056b("DDDSetting1", (String) null)) && !TextUtils.isEmpty(C13915b3.m3056b("DDDCarrierName1", (String) null));
    }

    /* renamed from: o */
    public static boolean m5762o() {
        String f = C14017g4.m2818f();
        if (TextUtils.isEmpty(f)) {
            return false;
        }
        int length = f28415d.length;
        for (int i = 0; i < length; i += 2) {
            if (C14017g4.m2825a(Integer.parseInt(f28415d[i])) && TextUtils.equals(f, f28415d[i + 1])) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p */
    public static boolean m5761p() {
        String f = C14017g4.m2818f();
        String e = C14017g4.m2819e();
        return !TextUtils.isEmpty(e) && TextUtils.equals(e.toLowerCase(), "lge") && !TextUtils.isEmpty(f) && TextUtils.equals(f.toLowerCase(), "LG-D337".toLowerCase());
    }

    /* renamed from: q */
    public static final boolean m5760q() {
        boolean z = false;
        if (C14017g4.m2835A()) {
            z = false;
            if (!m5766k()) {
                z = false;
                if (!C13915b3.m3062a("HasInputDDD", false)) {
                    z = false;
                    if (!m5755v()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        if (m5765l() == false) goto L_0x002e;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m5759r() {
        /*
            boolean r0 = m5755v()
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0030
            r0 = r4
            r5 = r0
            java.lang.String r0 = "HasInputDualSimDDD"
            r1 = 0
            boolean r0 = p459j.p460a.p582w0.C13915b3.m3062a(r0, r1)
            if (r0 != 0) goto L_0x0030
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2207A()
            if (r0 != 0) goto L_0x002e
            r0 = r4
            r5 = r0
            boolean r0 = m5778c()
            if (r0 == 0) goto L_0x0030
            r0 = r4
            r5 = r0
            boolean r0 = m5765l()
            if (r0 != 0) goto L_0x0030
        L_0x002e:
            r0 = 1
            r5 = r0
        L_0x0030:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12612g0.m5759r():boolean");
    }

    /* renamed from: s */
    public static boolean m5758s() {
        boolean z = false;
        if (!CallUtils.m26533k()) {
            z = false;
            if (m5778c()) {
                z = false;
                if (!C14217x3.m2207A()) {
                    z = false;
                    if (!C13915b3.m3062a("prefs_has_shown_call_confirm_default_phone_tutorial", false)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: t */
    public static final boolean m5757t() {
        return C13915b3.m3062a("prefs_callconfirm_sim_recommendation", false);
    }

    /* renamed from: u */
    public static boolean m5756u() {
        return m5768i() > 0;
    }

    /* renamed from: v */
    public static boolean m5755v() {
        return m5768i() == 2;
    }

    /* renamed from: w */
    public static final void m5754w() {
        Intent intent = new Intent();
        intent.setAction("com.lge.android.intent.action.DUAL_SIM_SWITCHING_KEY_PRESSED");
        MyApplication.m29013o().sendBroadcast(intent);
    }

    /* renamed from: x */
    public static final void m5753x() {
        int j;
        int i = f28412a;
        if ((i == 0 || i == 1) && (j = m5767j()) != -1 && j != f28412a) {
            f28412a = -1;
            m5754w();
        }
    }
}
