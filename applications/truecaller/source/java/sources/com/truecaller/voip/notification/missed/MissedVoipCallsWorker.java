package com.truecaller.voip.notification.missed;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
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
import p193e.p194a.p619d.p666y.p669c.AbstractC12320g;
import p193e.p194a.p619d.p666y.p669c.AbstractC12321h;
import p193e.p194a.p619d.p666y.p669c.C12318e;
import p193e.p194a.p619d.p666y.p669c.C12322i;
import p193e.p194a.p619d.p666y.p669c.C12323j;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import s1.a.a.a.v0.f.d;
import s1.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u001d\b\u0007\u0012\b\b\u0001\u0010\u001c\u001a\u00020\u0019\u0012\b\b\u0001\u00101\u001a\u000200¢\u0006\u0004\b2\u00103J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\bJ\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010/\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0013\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00064"}, d2 = {"Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;", "Landroidx/work/Worker;", "Le/a/d/y/c/h;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Ls1/s;", "onStopped", "()V", "Le/a/d/y/c/e;", "missedCall", "Landroid/graphics/Bitmap;", "notificationIcon", "g", "(Le/a/d/y/c/e;Landroid/graphics/Bitmap;)V", "", "missedCallsToShow", "", "count", C22021b.f61237c, "(Ljava/util/List;I)V", "d", "Ln3/k/a/q;", "n", "()Ln3/k/a/q;", "Landroid/content/Context;", AbstractC2405c.f7629a, "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Le/a/h4/n;", "o", "()Le/a/h4/n;", "notificationManager", "Le/a/d/y/c/g;", "a", "Le/a/d/y/c/g;", "getPresenter", "()Le/a/d/y/c/g;", "setPresenter", "(Le/a/d/y/c/g;)V", "presenter", "Le/a/d/c0/j1;", "Le/a/d/c0/j1;", "getSupport", "()Le/a/d/c0/j1;", "setSupport", "(Le/a/d/c0/j1;)V", "support", "Landroidx/work/WorkerParameters;", "workerParameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/notification/missed/MissedVoipCallsWorker.class */
public final class MissedVoipCallsWorker extends Worker implements AbstractC12321h {
    @Inject

    /* renamed from: a */
    public AbstractC12320g f16389a;
    @Inject

    /* renamed from: b */
    public AbstractC11421j1 f16390b;

    /* renamed from: c */
    public final Context f16391c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissedVoipCallsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "workerParameters");
        this.f16391c = context;
    }

    @Override // p193e.p194a.p619d.p666y.p669c.AbstractC12321h
    /* renamed from: b */
    public void mo23273b(List<C12318e> list, int i) {
        String str;
        String str2;
        l.e(list, "missedCallsToShow");
        Resources resources = this.f16391c.getResources();
        int i2 = C4781R.plurals.voip_notification_missed_grouped_title;
        Context context = this.f16391c;
        int i3 = C4781R.string.voip_text;
        String quantityString = resources.getQuantityString(i2, i, context.getString(i3));
        l.d(quantityString, "context.resources.getQua…ring.voip_text)\n        )");
        Context context2 = this.f16391c;
        int i4 = C4781R.string.voip_notification_missed_grouped_message;
        if (i > 99) {
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            sb.append('+');
            str = sb.toString();
        } else {
            str = Integer.valueOf(i);
        }
        String string = context2.getString(i4, str, this.f16391c.getString(i3));
        l.d(string, "context.getString(\n     …ring.voip_text)\n        )");
        C26452s c26452s = new C26452s();
        c26452s.m1840l(string);
        for (C12318e c12318e : list) {
            boolean isToday = DateUtils.isToday(c12318e.f35985f);
            if (isToday) {
                str2 = C8602m.m28252f(this.f16391c, c12318e.f35985f);
            } else if (isToday) {
                throw new i();
            } else {
                str2 = C8602m.m28255c(this.f16391c, c12318e.f35985f);
            }
            String str3 = str2;
            l.d(str3, "when (DateUtils.isToday(….timestamp)\n            }");
            c26452s.m1841k(this.f16391c.getString(C4781R.string.voip_notification_missed_grouped_time_and_caller, str3, c12318e.f35980a));
        }
        if (i > list.size()) {
            c26452s.m1841k(this.f16391c.getString(C4781R.string.voip_notification_missed_grouped_more, Integer.valueOf(i - list.size())));
        }
        long j = ((C12318e) s1.u.i.B(list)).f35985f;
        C26450q m34320n = m34320n();
        m34320n.m1855n(quantityString);
        m34320n.m1856m(string);
        AbstractC11421j1 abstractC11421j1 = this.f16390b;
        if (abstractC11421j1 == null) {
            l.l("support");
            throw null;
        }
        m34320n.f74147g = abstractC11421j1.mo24105m();
        AbstractC11421j1 abstractC11421j12 = this.f16390b;
        if (abstractC11421j12 == null) {
            l.l("support");
            throw null;
        }
        m34320n.f74137R.deleteIntent = abstractC11421j12.mo24103o(j);
        m34320n.f74153m = true;
        m34320n.m1845x(c26452s);
        Notification m1865d = m34320n.m1865d();
        l.d(m1865d, "createNotificationBuilde…yle)\n            .build()");
        m34319o().mo19419g(C4781R.C4783id.voip_incoming_service_missed_call_notification, m1865d);
    }

    @Override // p193e.p194a.p619d.p666y.p669c.AbstractC12321h
    /* renamed from: d */
    public void mo23272d() {
        m34319o().mo19420f(C4781R.C4783id.voip_incoming_service_missed_call_notification);
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
        AbstractC12320g abstractC12320g = this.f16389a;
        if (abstractC12320g == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC12320g).f57683a = this;
        if (abstractC12320g == null) {
            l.l("presenter");
            throw null;
        }
        C12323j c12323j = (C12323j) abstractC12320g;
        Objects.requireNonNull(c12323j);
        try {
            c0417c = (ListenableWorker.AbstractC0414a) d.b3(c12323j.getCoroutineContext(), new C12322i(c12323j, null));
        } catch (CancellationException e) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        }
        l.d(c0417c, "try {\n        TLog.d(\"Ch…   Result.success()\n    }");
        AbstractC12320g abstractC12320g2 = this.f16389a;
        if (abstractC12320g2 != null) {
            ((AbstractC20574a) abstractC12320g2).mo9806c();
            return c0417c;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p666y.p669c.AbstractC12321h
    /* renamed from: g */
    public void mo23271g(C12318e c12318e, Bitmap bitmap) {
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        l.e(c12318e, "missedCall");
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            Context context = this.f16391c;
            int i2 = C4781R.C4783id.voip_missed_call_notification_action_call_back_legacy;
            AbstractC11421j1 abstractC11421j1 = this.f16390b;
            if (abstractC11421j1 == null) {
                l.l("support");
                throw null;
            }
            pendingIntent = PendingIntent.getActivity(context, i2, abstractC11421j1.mo24099s(context, c12318e.f35981b), 201326592);
        } else {
            Intent m34333f = LegacyVoipService.m34333f(this.f16391c, c12318e.f35981b);
            m34333f.putExtra("com.truecaller.voip.incoming.EXTRA_FROM_MISSED_CALL", true);
            Context context2 = this.f16391c;
            int i3 = C4781R.C4783id.voip_missed_call_notification_action_call_back;
            l.e(context2, "$this$getForegroundServicePendingIntent");
            l.e(m34333f, "intent");
            if (i >= 26) {
                pendingIntent = PendingIntent.getForegroundService(context2, i3, m34333f, 201326592);
                l.d(pendingIntent, "PendingIntent.getForegro…questCode, intent, flags)");
            } else {
                pendingIntent = PendingIntent.getService(context2, i3, m34333f, 201326592);
                l.d(pendingIntent, "PendingIntent.getService…questCode, intent, flags)");
            }
        }
        if (i >= 31) {
            Context context3 = this.f16391c;
            int i4 = C4781R.C4783id.voip_missed_call_notification_action_message;
            AbstractC11421j1 abstractC11421j12 = this.f16390b;
            if (abstractC11421j12 == null) {
                l.l("support");
                throw null;
            }
            pendingIntent2 = PendingIntent.getActivity(context3, i4, abstractC11421j12.mo24096v(context3, c12318e.f35981b), 201326592);
        } else {
            Context context4 = this.f16391c;
            int i5 = C4781R.C4783id.voip_missed_call_notification_action_message;
            String str = c12318e.f35981b;
            l.e(context4, AnalyticsConstants.CONTEXT);
            l.e(str, "number");
            Intent putExtra = new Intent(context4, MissedVoipCallMessageBroadcast.class).setAction("com.truecaller.voip.ACTION_MESSAGE").putExtra("com.truecaller.voip.extra.EXTRA_NUMBER", str);
            l.d(putExtra, "Intent(context, MissedVo…tra(EXTRA_NUMBER, number)");
            pendingIntent2 = PendingIntent.getBroadcast(context4, i5, putExtra, 201326592);
        }
        C26450q m34320n = m34320n();
        long j = c12318e.f35985f;
        if (j > 0) {
            m34320n.f74137R.when = j;
        }
        m34320n.m1868a(C4781R.C4782drawable.ic_notification_call, this.f16391c.getString(C4781R.string.voip_button_notification_call_back), pendingIntent);
        m34320n.m1868a(C4781R.C4782drawable.ic_sms, this.f16391c.getString(C4781R.string.voip_button_notification_message), pendingIntent2);
        if (bitmap != null) {
            m34320n.m1852q(bitmap);
        }
        m34320n.m1855n(this.f16391c.getResources().getQuantityString(C4781R.plurals.voip_notification_missed_grouped_title, 1, this.f16391c.getString(C4781R.string.voip_text)));
        m34320n.m1856m(c12318e.f35980a);
        AbstractC11421j1 abstractC11421j13 = this.f16390b;
        if (abstractC11421j13 == null) {
            l.l("support");
            throw null;
        }
        m34320n.f74147g = abstractC11421j13.mo24105m();
        AbstractC11421j1 abstractC11421j14 = this.f16390b;
        if (abstractC11421j14 == null) {
            l.l("support");
            throw null;
        }
        m34320n.f74137R.deleteIntent = abstractC11421j14.mo24103o(c12318e.f35985f);
        m34320n.m1853p(16, true);
        Notification m1865d = m34320n.m1865d();
        l.d(m1865d, "createNotificationBuilde…rue)\n            .build()");
        m34319o().mo19419g(C4781R.C4783id.voip_incoming_service_missed_call_notification, m1865d);
    }

    /* renamed from: n */
    public final C26450q m34320n() {
        C26450q c26450q = new C26450q(this.f16391c, m34319o().mo19425a("missed_calls"));
        c26450q.m1854o(4);
        Context context = this.f16391c;
        int i = C4781R.color.truecaller_blue_all_themes;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, i);
        c26450q.f74137R.icon = C4781R.C4782drawable.ic_notification_call_missed;
        c26450q.m1853p(16, true);
        l.d(c26450q, "NotificationCompat.Build…     .setAutoCancel(true)");
        return c26450q;
    }

    /* renamed from: o */
    public final AbstractC14920n m34319o() {
        Context applicationContext = this.f16391c.getApplicationContext();
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
        AbstractC12320g abstractC12320g = this.f16389a;
        if (abstractC12320g != null) {
            if (abstractC12320g != null) {
                ((AbstractC20574a) abstractC12320g).mo9806c();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }
}
