package p193e.p194a.p195a.p227e;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.inboxcleanup.CleanupResult;
import com.truecaller.messaging.inboxcleanup.InboxCleanerBroadcastReceiver;
import com.truecaller.messaging.inboxcleanup.InboxCleanupActivity;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26446n;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p613c0.C10912h;
import p193e.p194a.p849h4.AbstractC14920n;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.a.e.p */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/p.class */
public final class C6013p implements AbstractC6012o {

    /* renamed from: a */
    public final Context f20027a;

    /* renamed from: b */
    public final AbstractC14920n f20028b;

    /* renamed from: c */
    public final C10912h f20029c;

    @Inject
    public C6013p(Context context, AbstractC14920n abstractC14920n, C10912h c10912h) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14920n, "notificationManager");
        l.e(c10912h, "experimentRegistry");
        this.f20027a = context;
        this.f20028b = abstractC14920n;
        this.f20029c = c10912h;
    }

    /* renamed from: h */
    public static C26450q m32026h(C6013p c6013p, String str, String str2, PendingIntent pendingIntent, boolean z, Integer num, int i) {
        C26446n c26446n;
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            pendingIntent = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            num = null;
        }
        C26450q c26450q = new C26450q(c6013p.f20027a, c6013p.f20028b.mo19425a("inbox_cleanup"));
        c26450q.m1855n(str);
        c26450q.m1856m(str2);
        if (num != null) {
            int intValue = num.intValue();
            C26446n c26446n2 = new C26446n();
            c26446n2.f74102e = BitmapFactory.decodeResource(c6013p.f20027a.getResources(), intValue);
            c26446n = c26446n2;
        } else {
            C26447o c26447o = new C26447o();
            c26447o.m1873k(str2);
            l.d(c26447o, "NotificationCompat.BigTextStyle().bigText(content)");
            c26446n = c26447o;
        }
        c26450q.m1845x(c26446n);
        c26450q.f74137R.icon = 2131232129;
        c26450q.m1854o(4);
        Context context = c6013p.f20027a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1853p(16, true);
        c26450q.f74147g = pendingIntent;
        c26450q.f74138S = true;
        l.d(c26450q, "NotificationCompat.Build…         .setSilent(true)");
        if (z) {
            c26450q.m1852q(BitmapFactory.decodeResource(c6013p.f20027a.getResources(), C2752R.C2753drawable.ic_inbox_cleaner_notif));
        }
        return c26450q;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6012o
    /* renamed from: a */
    public void mo32033a(CleanupResult cleanupResult) {
        String str;
        l.e(cleanupResult, "result");
        boolean z = cleanupResult instanceof CleanupResult.GeneralError;
        if (!z || ((CleanupResult.GeneralError) cleanupResult).f13494a) {
            boolean z2 = cleanupResult instanceof CleanupResult.Success;
            String string = z2 ? this.f20027a.getString(C2752R.string.inbox_cleanup_auto_success) : this.f20027a.getString(C2752R.string.inbox_cleanup_auto_failed);
            l.d(string, "when (result) {\n        …up_auto_failed)\n        }");
            if (z2) {
                CleanupResult.Success success = (CleanupResult.Success) cleanupResult;
                StringBuilder sb = new StringBuilder();
                if (success.f13496a > 0) {
                    Resources resources = this.f20027a.getResources();
                    int i = success.f13496a;
                    sb.append(resources.getQuantityString(C2752R.plurals.inbox_cleanup_num_otp, i, Integer.valueOf(i)));
                }
                if (success.f13497b > 0) {
                    if (success.f13496a > 0) {
                        sb.append(", ");
                    }
                    Resources resources2 = this.f20027a.getResources();
                    int i2 = success.f13497b;
                    sb.append(resources2.getQuantityString(C2752R.plurals.inbox_cleanup_num_promotional, i2, Integer.valueOf(i2)));
                }
                if (success.f13498c > 0) {
                    if (success.f13496a > 0 || success.f13497b > 0) {
                        StringBuilder m8558w = C22128a.m8558w(' ');
                        m8558w.append(this.f20027a.getString(C2752R.string.inbox_cleanup_and));
                        m8558w.append(' ');
                        sb.append(m8558w.toString());
                    }
                    Resources resources3 = this.f20027a.getResources();
                    int i3 = success.f13498c;
                    sb.append(resources3.getQuantityString(C2752R.plurals.inbox_cleanup_num_spam, i3, Integer.valueOf(i3)));
                }
                StringBuilder m8558w2 = C22128a.m8558w(' ');
                m8558w2.append(this.f20027a.getString(C2752R.string.inbox_cleanup_deleted));
                sb.append(m8558w2.toString());
                str = sb.toString();
                l.d(str, "StringBuilder().apply(builderAction).toString()");
            } else if (z) {
                str = this.f20027a.getString(C2752R.string.inbox_cleanup_auto_error_general);
                l.d(str, "context.getString(R.stri…eanup_auto_error_general)");
            } else if (!(cleanupResult instanceof CleanupResult.NoPermissionsError)) {
                throw new i();
            } else {
                str = this.f20027a.getString(C2752R.string.inbox_cleanup_auto_error_sms_app);
                l.d(str, "context.getString(R.stri…eanup_auto_error_sms_app)");
            }
            Context context = this.f20027a;
            Notification m1865d = m32026h(this, string, str, PendingIntent.getActivity(context, 0, InboxCleanupActivity.C4221a.m34985b(InboxCleanupActivity.f13499a, context, cleanupResult, "Notification", 0, 8), 201326592), false, null, 24).m1865d();
            AbstractC14920n abstractC14920n = this.f20028b;
            l.d(m1865d, "it");
            abstractC14920n.mo19419g(C2752R.C2754id.inbox_cleaner_auto_cleanup_notification_id, m1865d);
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6012o
    /* renamed from: b */
    public void mo32032b(int i) {
        String string = this.f20027a.getString(C2752R.string.inbox_cleanup_notif_neutral_title, Integer.valueOf(i));
        l.d(string, "context.getString(R.stri…ral_title, messagesCount)");
        String string2 = this.f20027a.getString(C2752R.string.inbox_cleanup_notif_neutral_body);
        l.d(string2, "context.getString(R.stri…eanup_notif_neutral_body)");
        m32027g(string, string2, null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6012o
    /* renamed from: c */
    public void mo32031c(CleanupResult cleanupResult) {
        l.e(cleanupResult, "result");
        Context context = this.f20027a;
        PendingIntent activity = PendingIntent.getActivity(context, 0, InboxCleanupActivity.C4221a.m34985b(InboxCleanupActivity.f13499a, context, cleanupResult, "Notification", 0, 8), 201326592);
        String string = this.f20027a.getString(C2752R.string.inbox_cleanup_stats_title);
        l.d(string, "context.getString(R.stri…nbox_cleanup_stats_title)");
        Notification m1865d = m32026h(this, string, this.f20027a.getString(C2752R.string.inbox_cleanup_notification_subtitle), activity, true, null, 16).m1865d();
        AbstractC14920n abstractC14920n = this.f20028b;
        l.d(m1865d, "it");
        abstractC14920n.mo19419g(C2752R.C2754id.inbox_cleaner_manual_cleanup_done_notification_id, m1865d);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6012o
    /* renamed from: d */
    public void mo32030d() {
        String string = this.f20027a.getString(C2752R.string.inbox_cleanup_notif_passive_title);
        l.d(string, "context.getString(R.stri…anup_notif_passive_title)");
        String string2 = this.f20027a.getString(C2752R.string.inbox_cleanup_notif_passive_body);
        l.d(string2, "context.getString(R.stri…eanup_notif_passive_body)");
        m32027g(string, string2, Integer.valueOf((int) C2752R.C2753drawable.dma_notification_passive));
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6012o
    /* renamed from: e */
    public void mo32029e() {
        String string = this.f20027a.getString(C2752R.string.inbox_cleanup_notif_aggressive_title);
        l.d(string, "context.getString(R.stri…p_notif_aggressive_title)");
        String string2 = this.f20027a.getString(C2752R.string.inbox_cleanup_notif_aggressive_body);
        l.d(string2, "context.getString(R.stri…up_notif_aggressive_body)");
        m32027g(string, string2, Integer.valueOf((int) C2752R.C2753drawable.dma_notification_aggressive));
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6012o
    /* renamed from: f */
    public C26450q mo32028f() {
        String string = this.f20027a.getString(C2752R.string.inbox_cleanup_anim_title);
        l.d(string, "context.getString(R.stri…inbox_cleanup_anim_title)");
        C26450q m32026h = m32026h(this, string, null, null, false, null, 30);
        m32026h.m1853p(2, true);
        m32026h.m1848u(100, 0, true);
        String string2 = this.f20027a.getString(C2752R.string.inbox_cleanup_notification_action);
        Context context = this.f20027a;
        Intent intent = new Intent(context, InboxCleanerBroadcastReceiver.class);
        intent.setAction("com.truecaller.stop_cleanup");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 201326592);
        l.d(broadcast, "Intent(context, InboxCle…ent.FLAG_IMMUTABLE)\n    }");
        m32026h.m1868a(0, string2, broadcast);
        l.d(m32026h, "buildNotification(title …xt, ACTION_STOP_CLEANUP))");
        return m32026h;
    }

    /* renamed from: g */
    public final void m32027g(String str, String str2, Integer num) {
        Context context = this.f20027a;
        Notification m1865d = m32026h(this, str, str2, PendingIntent.getActivity(context, 0, InboxCleanupActivity.C4221a.m34985b(InboxCleanupActivity.f13499a, context, null, "Notification", 1, 2), 201326592), false, num, 8).m1865d();
        AbstractC14920n abstractC14920n = this.f20028b;
        l.d(m1865d, "it");
        abstractC14920n.mo19419g(C2752R.C2754id.inbox_cleaner_dma_notification_id, m1865d);
        AbstractC10908f.m25507e(this.f20029c.f32406h, false, null, 3, null);
    }
}
