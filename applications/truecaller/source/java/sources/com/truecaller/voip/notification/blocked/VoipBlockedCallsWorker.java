package com.truecaller.voip.notification.blocked;

import android.app.Notification;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.text.format.DateUtils;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26452s;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p372b0.p430q.C8602m;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p666y.p667a.AbstractC12289c;
import p193e.p194a.p619d.p666y.p667a.AbstractC12291e;
import p193e.p194a.p619d.p666y.p667a.C12288b;
import p193e.p194a.p619d.p666y.p667a.C12292f;
import p193e.p194a.p619d.p666y.p667a.C12293g;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import s1.a.a.a.v0.f.d;
import s1.i;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u001d\b\u0007\u0012\b\b\u0001\u0010&\u001a\u00020#\u0012\b\b\u0001\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ%\u0010\u000f\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00063"}, d2 = {"Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;", "Landroidx/work/Worker;", "Le/a/d/y/a/e;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/d/y/a/b;", "blockedCall", "Ls1/s;", "e", "(Le/a/d/y/a/b;)V", "", "blockedCallsToShow", "", "totalBlockedCallsCount", "h", "(Ljava/util/List;I)V", "i", "()V", "onStopped", "Ln3/k/a/q;", "n", "()Ln3/k/a/q;", "Le/a/d/y/a/c;", "a", "Le/a/d/y/a/c;", "getPresenter", "()Le/a/d/y/a/c;", "setPresenter", "(Le/a/d/y/a/c;)V", "presenter", "Le/a/h4/n;", "o", "()Le/a/h4/n;", "notificationManager", "Landroid/content/Context;", AbstractC2405c.f7629a, "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Le/a/d/c0/j1;", C22021b.f61237c, "Le/a/d/c0/j1;", "getSupport", "()Le/a/d/c0/j1;", "setSupport", "(Le/a/d/c0/j1;)V", "support", "Landroidx/work/WorkerParameters;", "workerParameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/notification/blocked/VoipBlockedCallsWorker.class */
public final class VoipBlockedCallsWorker extends Worker implements AbstractC12291e {
    @Inject

    /* renamed from: a */
    public AbstractC12289c f16377a;
    @Inject

    /* renamed from: b */
    public AbstractC11421j1 f16378b;

    /* renamed from: c */
    public final Context f16379c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoipBlockedCallsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "workerParameters");
        this.f16379c = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        if (isStopped()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c2, "Result.success()");
            return c0417c2;
        }
        AbstractC12289c abstractC12289c = this.f16377a;
        if (abstractC12289c == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC12289c).f57683a = this;
        if (abstractC12289c == null) {
            l.l("presenter");
            throw null;
        }
        C12293g c12293g = (C12293g) abstractC12289c;
        Objects.requireNonNull(c12293g);
        try {
            c0417c = (ListenableWorker.AbstractC0414a) d.c3((f) null, new C12292f(c12293g, null), 1, (Object) null);
        } catch (CancellationException e) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        }
        l.d(c0417c, "try {\n        runBlockin…   Result.success()\n    }");
        return c0417c;
    }

    @Override // p193e.p194a.p619d.p666y.p667a.AbstractC12291e
    /* renamed from: e */
    public void mo23313e(C12288b c12288b) {
        l.e(c12288b, "blockedCall");
        String string = this.f16379c.getString(C4781R.string.voip_notification_blocked_calls_single_content_v2, c12288b.f35917a);
        l.d(string, "context.getString(R.stri…ent_v2, blockedCall.name)");
        C26450q m34325n = m34325n();
        long j = c12288b.f35918b;
        if (j > 0) {
            m34325n.f74137R.when = j;
        }
        Context context = this.f16379c;
        m34325n.m1855n(context.getString(C4781R.string.voip_notification_blocked_calls_single_title_v2, context.getString(C4781R.string.voip_text)));
        m34325n.m1856m(string);
        m34325n.m1852q(BitmapFactory.decodeResource(this.f16379c.getResources(), C4781R.C4782drawable.ic_notification_call_blocked_standard));
        AbstractC11421j1 abstractC11421j1 = this.f16378b;
        if (abstractC11421j1 == null) {
            l.l("support");
            throw null;
        }
        m34325n.f74147g = abstractC11421j1.mo24105m();
        AbstractC11421j1 abstractC11421j12 = this.f16378b;
        if (abstractC11421j12 == null) {
            l.l("support");
            throw null;
        }
        m34325n.f74137R.deleteIntent = abstractC11421j12.mo24103o(c12288b.f35918b);
        Notification m1865d = m34325n.m1865d();
        l.d(m1865d, "getNotificationBuilder()…mp))\n            .build()");
        m34324o().mo19419g(C4781R.C4783id.voip_blocked_call_notification, m1865d);
    }

    @Override // p193e.p194a.p619d.p666y.p667a.AbstractC12291e
    /* renamed from: h */
    public void mo23312h(List<C12288b> list, int i) {
        String str;
        l.e(list, "blockedCallsToShow");
        Context context = this.f16379c;
        String string = context.getString(C4781R.string.voip_notification_blocked_calls_grouped_content_v2, context.getString(C4781R.string.voip_text), String.valueOf(i));
        l.d(string, "context.getString(\n     …ount.toString()\n        )");
        String string2 = i > list.size() ? this.f16379c.getString(C4781R.string.voip_notification_blocked_calls_grouped_summary, Integer.valueOf(i - list.size())) : "";
        l.d(string2, "if (totalBlockedCallsCou…w.size)\n        } else \"\"");
        C26452s c26452s = new C26452s();
        c26452s.m1840l(string);
        c26452s.m1839m(string2);
        for (C12288b c12288b : list) {
            boolean isToday = DateUtils.isToday(c12288b.f35918b);
            if (isToday) {
                str = C8602m.m28252f(this.f16379c, c12288b.f35918b);
            } else if (isToday) {
                throw new i();
            } else {
                str = C8602m.m28255c(this.f16379c, c12288b.f35918b);
            }
            String str2 = str;
            l.d(str2, "when (DateUtils.isToday(….timestamp)\n            }");
            c26452s.m1841k(this.f16379c.getString(C4781R.string.voip_notification_blocked_calls_grouped_caller_v2, str2, c12288b.f35917a));
        }
        C26450q m34325n = m34325n();
        Context context2 = this.f16379c;
        m34325n.m1855n(context2.getString(C4781R.string.voip_notification_blocked_calls_grouped_title_v2, context2.getString(C4781R.string.voip_text)));
        m34325n.m1856m(string);
        AbstractC11421j1 abstractC11421j1 = this.f16378b;
        if (abstractC11421j1 == null) {
            l.l("support");
            throw null;
        }
        m34325n.f74147g = abstractC11421j1.mo24105m();
        AbstractC11421j1 abstractC11421j12 = this.f16378b;
        if (abstractC11421j12 == null) {
            l.l("support");
            throw null;
        }
        m34325n.f74137R.deleteIntent = abstractC11421j12.mo24103o(((C12288b) s1.u.i.B(list)).f35918b);
        m34325n.f74153m = true;
        m34325n.m1845x(c26452s);
        Notification m1865d = m34325n.m1865d();
        l.d(m1865d, "getNotificationBuilder()…yle)\n            .build()");
        m34324o().mo19419g(C4781R.C4783id.voip_blocked_call_notification, m1865d);
    }

    @Override // p193e.p194a.p619d.p666y.p667a.AbstractC12291e
    /* renamed from: i */
    public void mo23311i() {
        m34324o().mo19420f(C4781R.C4783id.voip_blocked_call_notification);
    }

    /* renamed from: n */
    public final C26450q m34325n() {
        C26450q c26450q = new C26450q(this.f16379c, m34324o().mo19425a("blocked_calls"));
        c26450q.m1854o(4);
        Context context = this.f16379c;
        int i = C4781R.color.truecaller_blue_all_themes;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, i);
        c26450q.f74137R.icon = C4781R.C4782drawable.ic_notification_blocked_call;
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        return c26450q;
    }

    /* renamed from: o */
    public final AbstractC14920n m34324o() {
        Context applicationContext = this.f16379c.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g != null) {
            return abstractC14932g.mo19403n();
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        AbstractC12289c abstractC12289c = this.f16377a;
        if (abstractC12289c != null) {
            if (abstractC12289c != null) {
                ((AbstractC20574a) abstractC12289c).mo9806c();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }
}
