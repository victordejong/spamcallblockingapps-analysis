package p459j.p460a.p521j0.p529x;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import p459j.p460a.p474c0.p488f.p490q.C11867d;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p587d5.C13980g;
/* renamed from: j.a.j0.x.e */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/e.class */
public final class C12758e {
    static {
        new C12758e();
    }

    /* renamed from: a */
    public static final boolean m5415a() {
        return C13980g.f31390a.m9462a("has_notify_filter_ready", (Boolean) false);
    }

    /* renamed from: b */
    public static final boolean m5414b() {
        return C13980g.f31390a.m9462a("has_sync_before", (Boolean) false);
    }

    /* renamed from: c */
    public static final boolean m5413c() {
        return m5412d() && m5411e() && m5407i();
    }

    /* renamed from: d */
    public static final boolean m5412d() {
        return m5406j() && m5405k();
    }

    /* renamed from: e */
    public static final boolean m5411e() {
        return m5410f() && m5414b();
    }

    /* renamed from: f */
    public static final boolean m5410f() {
        return C13980g.f31390a.m9462a("has_history_sms_infer_completed", (Boolean) false);
    }

    /* renamed from: g */
    public static final boolean m5409g() {
        return C14017g4.m2832D();
    }

    /* renamed from: h */
    public static final boolean m5408h() {
        return C14017g4.m2830F();
    }

    /* renamed from: i */
    public static final boolean m5407i() {
        return C13980g.f31390a.m9462a("has_sms_filter_intro_complete", (Boolean) false);
    }

    /* renamed from: j */
    public static final boolean m5406j() {
        return C13978e.f31386a.m9462a("enable_sms_filter", (Boolean) true);
    }

    /* renamed from: k */
    public static final boolean m5405k() {
        return C14021h2.m2779g() && C14017g4.m2832D() && C13640c.m3745d().m3753a("sms_assistant_enable");
    }

    /* renamed from: l */
    public static final boolean m5404l() {
        return m5405k() && !m5406j();
    }

    /* renamed from: m */
    public static final void m5403m() {
        if (m5412d() && !m5415a()) {
            C14037j3.m2731a().mo2704a(new C11867d.C11868a());
            m5402n();
            C13980g.f31390a.m9459a("has_notify_filter_ready", (String) true);
        }
        if (!C13980g.f31390a.m9463a("sms_filter_infer_end_time")) {
            C13980g.f31390a.m9459a("sms_filter_infer_end_time", (String) Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* renamed from: n */
    public static final void m5402n() {
        Context o = MyApplication.m29013o();
        if (o != null) {
            Intent intent = new Intent(o, MainActivity.class);
            intent.putExtra("goto", "smslog");
            intent.putExtra("from", "filter_enable_notification");
            NotificationManagerCompat.from(o).notify(2001, C14173t4.m2307a(o).setContentTitle(o.getString(R$string.sms_filter_process_sms_push_title)).setContentText(o.getString(R$string.sms_filter_process_sms_push_content)).setStyle(new NotificationCompat.BigTextStyle().setSummaryText(null).bigText(o.getString(R$string.sms_filter_process_sms_push_content))).setContentIntent(C14217x3.m2188a(o, intent, 2001)).build());
        }
    }
}
