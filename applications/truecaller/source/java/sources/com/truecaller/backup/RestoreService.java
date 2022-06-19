package com.truecaller.backup;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.widget.Toast;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26444m;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1066n.AbstractC18250a2;
import p193e.p194a.p1066n.AbstractC18269b2;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b/\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0010J\u0017\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u0017\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u0010J\u001f\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010\u0010J\u000f\u0010 \u001a\u00020\u0003H\u0016¢\u0006\u0004\b \u0010\u0005R\"\u0010'\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010.\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001a\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00060"}, d2 = {"Lcom/truecaller/backup/RestoreService;", "Landroid/app/Service;", "Le/a/n/b2;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "", RemoteMessageConst.Notification.CHANNEL_ID, "g", "(Ljava/lang/String;)V", "", AnalyticsConstants.SUCCESS, "f", "(Z)V", "e", "h", "messageResId", "a", "(I)V", C22021b.f61237c, "i", "appDownloadUri", "d", "(Ljava/lang/String;Ljava/lang/String;)V", AbstractC2405c.f7629a, "onDestroy", "Le/a/n/a2;", "Le/a/n/a2;", "getPresenter", "()Le/a/n/a2;", "setPresenter", "(Le/a/n/a2;)V", "presenter", "Le/a/i4/e;", "Le/a/i4/e;", "getNotificationManager", "()Le/a/i4/e;", "setNotificationManager", "(Le/a/i4/e;)V", "notificationManager", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/RestoreService.class */
public final class RestoreService extends Service implements AbstractC18269b2 {
    @Inject

    /* renamed from: a */
    public AbstractC18250a2 f10178a;
    @Inject

    /* renamed from: b */
    public AbstractC15275e f10179b;

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: a */
    public void mo15352a(int i) {
        Toast.makeText(this, i, 1).show();
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: b */
    public void mo15351b() {
        stopSelf();
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: c */
    public void mo15350c(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        AbstractC15275e abstractC15275e = this.f10179b;
        if (abstractC15275e != null) {
            abstractC15275e.mo18968f(C2752R.C2754id.restore_error_notification_id);
        } else {
            l.l("notificationManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: d */
    public void mo15349d(String str, String str2) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(str2, "appDownloadUri");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
        C26450q c26450q = new C26450q(this, str);
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(this, 2131099684);
        c26450q.f74137R.icon = 2131231792;
        c26450q.m1855n(getString(2131888284));
        c26450q.m1856m(getString(2131888262));
        c26450q.f74147g = PendingIntent.getActivity(this, 0, intent, 67108864);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(getString(2131888262));
        c26450q.m1845x(c26447o);
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "createNotificationBuilde…rue)\n            .build()");
        Bundle bundle = new Bundle();
        bundle.putString("Subtype", "restoreErrorNotSupportedDb");
        AbstractC15275e abstractC15275e = this.f10179b;
        if (abstractC15275e != null) {
            abstractC15275e.mo18971c(null, C2752R.C2754id.restore_error_notification_id, m1865d, "notificationBackup", bundle);
        } else {
            l.l("notificationManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: e */
    public void mo15348e(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        Intent m34554wa = TruecallerInit.m34554wa(this, "notificationBackup");
        m34554wa.addFlags(268435456);
        m34554wa.addFlags(32768);
        PendingIntent activity = PendingIntent.getActivity(this, 0, m34554wa, 335544320);
        C26450q c26450q = new C26450q(this, str);
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(this, 2131099684);
        c26450q.f74137R.icon = C2752R.C2753drawable.ic_cloud_done;
        c26450q.m1855n(getString(C2752R.string.restore_done_title));
        c26450q.m1856m(getString(C2752R.string.restore_done_message));
        c26450q.f74147g = activity;
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "createNotificationBuilde…rue)\n            .build()");
        Bundle bundle = new Bundle();
        bundle.putString("Subtype", "restoreSuccess");
        AbstractC15275e abstractC15275e = this.f10179b;
        if (abstractC15275e != null) {
            abstractC15275e.mo18971c(null, C2752R.C2754id.restore_done_notification_id, m1865d, "notificationBackup", bundle);
        } else {
            l.l("notificationManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: f */
    public void mo15347f(boolean z) {
        C27062a.m968b(this).m966d(new Intent("com.truecaller.action.RESTORE_COMPLETED").putExtra("com.truecaller.extra.RESTORE_SUCCESSFUL", z));
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: g */
    public void mo15346g(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        C26450q c26450q = new C26450q(this, str);
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(this, 2131099684);
        c26450q.f74137R.icon = 17301633;
        c26450q.m1855n(getString(C2752R.string.restore_notification_restoring));
        c26450q.m1853p(2, true);
        c26450q.m1848u(0, 0, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "createNotificationBuilde…rue)\n            .build()");
        startForeground(C2752R.C2754id.restore_progress_notification_id, m1865d);
        C10480a.m26045M1("[RestoreService] startForeground called");
        Bundle bundle = new Bundle();
        bundle.putString("Subtype", "restoreInProgress");
        AbstractC15275e abstractC15275e = this.f10179b;
        if (abstractC15275e != null) {
            abstractC15275e.mo18971c(null, C2752R.C2754id.restore_progress_notification_id, m1865d, "notificationBackup", bundle);
        } else {
            l.l("notificationManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: h */
    public void mo15345h(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        PendingIntent activity = PendingIntent.getActivity(this, 0, TruecallerInit.m34554wa(this, "notificationBackup"), 335544320);
        C26450q c26450q = new C26450q(this, str);
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(this, 2131099684);
        c26450q.f74137R.icon = C2752R.C2753drawable.ic_cloud_done;
        c26450q.m1855n(getString(C2752R.string.restore_done_title));
        c26450q.m1856m(getString(C2752R.string.restore_done_message_alternative));
        c26450q.f74147g = activity;
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "createNotificationBuilde…rue)\n            .build()");
        Bundle bundle = new Bundle();
        bundle.putString("Subtype", "restoreSuccess");
        AbstractC15275e abstractC15275e = this.f10179b;
        if (abstractC15275e != null) {
            abstractC15275e.mo18971c(null, C2752R.C2754id.restore_done_notification_alternative_id, m1865d, "notificationBackup", bundle);
        } else {
            l.l("notificationManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18269b2
    /* renamed from: i */
    public void mo15344i(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        Intent intent = new Intent(this, RestoreService.class);
        C26444m m1875b = new C26444m.C26445a(2131231945, getString(2131887920), Build.VERSION.SDK_INT >= 26 ? PendingIntent.getForegroundService(this, 0, intent, 201326592) : PendingIntent.getService(this, 0, intent, 201326592)).m1875b();
        l.d(m1875b, "NotificationCompat.Actio…gIntent\n        ).build()");
        C26450q c26450q = new C26450q(this, str);
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(this, 2131099684);
        c26450q.f74137R.icon = 2131231792;
        c26450q.m1855n(getString(2131888284));
        c26450q.m1856m(getString(2131888261));
        c26450q.m1867b(m1875b);
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "createNotificationBuilde…rue)\n            .build()");
        Bundle bundle = new Bundle();
        bundle.putString("Subtype", "restoreError");
        AbstractC15275e abstractC15275e = this.f10179b;
        if (abstractC15275e != null) {
            abstractC15275e.mo18971c(null, C2752R.C2754id.restore_error_notification_id, m1865d, "notificationBackup", bundle);
        } else {
            l.l("notificationManager");
            throw null;
        }
    }

    @Override // android.app.Service
    public /* bridge */ /* synthetic */ IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C20399t1.C20403c c20403c = (C20399t1.C20403c) AbstractC17399l2.f48744a.m16142a().mo11178f();
        this.f10178a = (AbstractC18250a2) c20403c.f57342A.get();
        AbstractC15275e mo12617O1 = c20403c.f57343a.f57299b.mo12617O1();
        Objects.requireNonNull(mo12617O1, "Cannot return null from a non-@Nullable component method");
        this.f10179b = mo12617O1;
        AbstractC18250a2 abstractC18250a2 = this.f10178a;
        if (abstractC18250a2 != null) {
            abstractC18250a2.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        AbstractC18250a2 abstractC18250a2 = this.f10178a;
        if (abstractC18250a2 != null) {
            abstractC18250a2.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        AbstractC18250a2 abstractC18250a2 = this.f10178a;
        if (abstractC18250a2 != null) {
            abstractC18250a2.mo15309hg();
            return 2;
        }
        l.l("presenter");
        throw null;
    }
}
