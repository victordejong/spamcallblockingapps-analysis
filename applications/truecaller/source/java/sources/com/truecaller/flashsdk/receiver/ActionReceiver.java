package com.truecaller.flashsdk.receiver;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.Sender;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26458x;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.AbstractC21642i;
import p193e.p194a.p1365y.p1382c.C21632c;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/truecaller/flashsdk/receiver/ActionReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Le/a/y/c/b;", C22021b.f61237c, "Le/a/y/c/b;", "flashManager", "a", "Landroid/content/Intent;", "finishIntent", "Le/a/y/c/i;", AbstractC2405c.f7629a, "Le/a/y/c/i;", "flashPoint", "<init>", "()V", "flash_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/receiver/ActionReceiver.class */
public final class ActionReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public final Intent f12019a = new Intent("response_sent");

    /* renamed from: b */
    public final AbstractC21631b f12020b;

    /* renamed from: c */
    public final AbstractC21642i f12021c;

    public ActionReceiver() {
        AbstractC21631b m9330b = C21632c.m9330b();
        this.f12020b = m9330b;
        this.f12021c = m9330b.mo9292z();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Payload payload;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        if (intent.hasExtra("flash")) {
            Flash flash = (Flash) intent.getParcelableExtra("flash");
            if (flash == null) {
                return;
            }
            l.d(flash, "it");
            if (!flash.m35391c()) {
                flash = null;
            }
            if (flash == null) {
                return;
            }
            l.d(flash, "intent.getParcelableExtr…                ?: return");
            Flash flash2 = new Flash();
            Sender sender = flash.f11991a;
            l.d(sender, "incomingFlash.sender");
            Long m35377c = sender.m35377c();
            l.d(m35377c, "incomingFlash.sender.phone");
            flash2.f11992b = m35377c.longValue();
            flash2.m35389e();
            flash2.m35390d();
            if (l.a("com.truecaller.flashsdk.receiver.ACTION_DISMISS", intent.getAction())) {
                payload = new Payload("busy", context.getString(C3909R.string.is_busy), null, null);
                flash2.f11994d = "final";
            } else if (l.a("com.truecaller.flashsdk.receiver.ACTION_DISMISS_SILENTLY", intent.getAction())) {
                new C26458x(context).m1816b(C3909R.C3911id.call_me_back_notification_id);
                Payload payload2 = new Payload("busy", context.getString(C3909R.string.is_busy), null, null);
                flash2.f11994d = "final";
                AbstractC21642i abstractC21642i = this.f12021c;
                payload = payload2;
                if (abstractC21642i != null) {
                    abstractC21642i.mo9271j(1, null, null);
                    payload = payload2;
                }
            } else if (l.a("com.truecaller.flashsdk.ACTION_FLASH", intent.getAction())) {
                new C26458x(context).m1816b(C3909R.C3911id.call_me_back_notification_id);
                payload = new Payload("busy", context.getString(C3909R.string.is_busy), null, null);
                flash2.f11994d = "final";
                AbstractC21642i abstractC21642i2 = this.f12021c;
                if (abstractC21642i2 != null) {
                    abstractC21642i2.mo9271j(2, null, null);
                }
                String stringExtra = intent.getStringExtra(AnalyticsConstants.NAME);
                AbstractC21631b abstractC21631b = this.f12020b;
                Sender sender2 = flash.f11991a;
                l.d(sender2, "incomingFlash.sender");
                Long m35377c2 = sender2.m35377c();
                l.d(m35377c2, "incomingFlash.sender.phone");
                abstractC21631b.mo9319K(context, m35377c2.longValue(), stringExtra, RemoteMessageConst.NOTIFICATION);
            } else if (l.a("com.truecaller.flashsdk.receiver.ACTION_CALL_PHONE", intent.getAction())) {
                if (C26467a.m1801a(context, "android.permission.CALL_PHONE") != 0) {
                    int i = C3909R.string.tel_num;
                    Sender sender3 = flash.f11991a;
                    l.d(sender3, "incomingFlash.sender");
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(context.getString(i, String.valueOf(sender3.m35377c().longValue())))));
                } else {
                    int i2 = C3909R.string.tel_num;
                    Sender sender4 = flash.f11991a;
                    l.d(sender4, "incomingFlash.sender");
                    Intent intent2 = new Intent("android.intent.action.CALL", Uri.parse(context.getString(i2, String.valueOf(sender4.m35377c().longValue()))));
                    intent2.setFlags(268435456);
                    context.startActivity(intent2);
                }
                payload = new Payload("call", context.getString(C3909R.string.calling_you_back), null, null);
                flash2.f11994d = "final";
            } else if (l.a("com.truecaller.flashsdk.receiver.ACTION_CALL_PHONE_CALL_ME", intent.getAction())) {
                new C26458x(context).m1816b(C3909R.C3911id.call_me_back_notification_id);
                if (C26467a.m1801a(context, "android.permission.CALL_PHONE") != 0) {
                    int i3 = C3909R.string.tel_num;
                    Sender sender5 = flash.f11991a;
                    l.d(sender5, "incomingFlash.sender");
                    context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(context.getString(i3, String.valueOf(sender5.m35377c().longValue())))));
                } else {
                    int i4 = C3909R.string.tel_num;
                    Sender sender6 = flash.f11991a;
                    l.d(sender6, "incomingFlash.sender");
                    Intent intent3 = new Intent("android.intent.action.CALL", Uri.parse(context.getString(i4, String.valueOf(sender6.m35377c().longValue()))));
                    intent3.setFlags(268435456);
                    context.startActivity(intent3);
                }
                AbstractC21642i abstractC21642i3 = this.f12021c;
                if (abstractC21642i3 != null) {
                    abstractC21642i3.mo9271j(0, null, null);
                }
                payload = new Payload("busy", context.getString(C3909R.string.is_busy), null, null);
                flash2.f11994d = "final";
            } else {
                payload = null;
            }
            if (payload != null) {
                flash2.f11996f = payload;
                String m35384c = TextUtils.equals(payload.m35382e(), "emoji") ? payload.m35384c() : C17891a1.C17902k.m15644T(payload.m35382e());
                if (!TextUtils.isEmpty(flash.m35393a())) {
                    m35384c = C22128a.m8562v(new Object[]{flash.m35393a(), m35384c}, 2, "%s %s", "java.lang.String.format(format, *args)");
                }
                flash2.f11995e = m35384c;
                this.f12020b.mo9323G(flash2);
            }
            Object systemService = context.getSystemService(RemoteMessageConst.NOTIFICATION);
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).cancel(intent.getIntExtra("notification_id", -1));
            C19291g.m13515s(context);
            this.f12019a.putExtra("response_sent", true);
            C27062a.m968b(context).m966d(this.f12019a);
        }
    }
}
