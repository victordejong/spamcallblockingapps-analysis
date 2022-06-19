package com.truecaller.messaging.notifications;

import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.notifications.NotificationBroadcastReceiver;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.r.t.c;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import o3.c.b;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p195a.p197a1.C4908a;
import p193e.p194a.p195a.p197a1.C4911b;
import p193e.p194a.p195a.p197a1.C4914e;
import p193e.p194a.p195a.p197a1.C4915f;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p285x0.C7296a;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
import w3.c.a.a.a.a;
import w3.c.a.a.a.h;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/notifications/NotificationBroadcastReceiver.class */
public class NotificationBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: b */
    public static final /* synthetic */ int f13651b = 0;
    @Inject

    /* renamed from: a */
    public C4914e f13652a;

    /* renamed from: a */
    public static Intent m34922a(Context context, String str, List<Message> list, boolean z, NotificationIdentifier notificationIdentifier, String str2) {
        Intent intent = new Intent(context, NotificationBroadcastReceiver.class);
        intent.setAction(str);
        int size = list.size();
        AssertionUtil.AlwaysFatal.isTrue(size > 0, new String[0]);
        long[] jArr = new long[size];
        int i = 0;
        for (Message message : list) {
            jArr[i] = message.f13380a;
            i++;
        }
        intent.putExtra("EXTRA_MESSAGE_IDS", jArr);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Message message2 : list) {
            linkedHashSet.add(Long.valueOf(message2.f13381b));
        }
        intent.putExtra("EXTRA_CONVERSATION_IDS", a.h((Long[]) linkedHashSet.toArray(new Long[linkedHashSet.size()])));
        if (list.size() == 1) {
            intent.putExtra("EXTRA_MESSAGE_ID", list.get(0).f13380a);
        }
        intent.putExtra("EXTRA_AUTHORIZED_ONLY", z);
        intent.putExtra("EXTRA_NOTIFICATION_ID", notificationIdentifier);
        intent.putExtra("EXTRA_NOTIFICATION_CHANNEL_ID", str2);
        return intent;
    }

    /* renamed from: b */
    public static PendingIntent m34921b(Context context, String str, List<Message> list, boolean z, NotificationIdentifier notificationIdentifier) {
        return PendingIntent.getBroadcast(context, notificationIdentifier.f13655c, m34922a(context, str, list, z, notificationIdentifier, ""), 201326592);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z;
        boolean z2;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        AbstractC19022f0 mo12377g0 = mo10154s.mo12377g0();
        if (intent.getBooleanExtra("EXTRA_AUTHORIZED_ONLY", false) && !mo12377g0.mo14245a() && mo12377g0.mo14246Q0()) {
            c.Ga(context, WizardActivity.class, WizardStartContext.NOTIFICATION);
            return;
        }
        AbstractC19510i0 mo12264o4 = mo10154s.mo12264o4();
        AbstractC19854f<AbstractC6233m> mo12453a7 = mo10154s.mo12453a7();
        AbstractC19854f<AbstractC7343q> mo12417d3 = mo10154s.mo12417d3();
        String action = intent.getAction();
        NotificationIdentifier notificationIdentifier = (NotificationIdentifier) intent.getParcelableExtra("EXTRA_NOTIFICATION_ID");
        C26458x mo12721G5 = mo10154s.mo12721G5();
        action.hashCode();
        if (action.equals("com.truecaller.messaging.notifications.ERROR_DISMISSED")) {
            if (!a.f(intent.getLongArrayExtra("EXTRA_CONVERSATION_IDS"))) {
                return;
            }
            if (notificationIdentifier != null) {
                mo12721G5.f74199b.cancel(notificationIdentifier.f13654b, notificationIdentifier.f13653a);
            }
            long[] longArrayExtra = intent.getLongArrayExtra("EXTRA_MESSAGE_IDS");
            if (a.d(longArrayExtra)) {
                return;
            }
            mo12264o4.mo13220f("dismiss", longArrayExtra[longArrayExtra.length - 1]);
        } else if (action.equals("com.truecaller.messaging.notifications.DISMISSED")) {
            long[] longArrayExtra2 = intent.getLongArrayExtra("EXTRA_MESSAGE_IDS");
            if (a.d(longArrayExtra2)) {
                return;
            }
            mo12453a7.mo11854a().mo31690g0(longArrayExtra2);
            mo12264o4.mo13223c("dismiss", longArrayExtra2[longArrayExtra2.length - 1], false);
        } else {
            final AbstractC6708t mo12524V0 = mo10154s.mo12524V0();
            switch (action.hashCode()) {
                case -262798704:
                    if (action.equals("com.truecaller.messaging.notifications.MARK_READ")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 317616099:
                    if (action.equals("com.truecaller.messaging.notifications.DELETE")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 464095904:
                    if (action.equals("com.truecaller.messaging.notifications.QUICK_REPLY")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 718632563:
                    if (action.equals("com.truecaller.messaging.notifications.RESEND")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1737289192:
                    if (action.equals("com.truecaller.messaging.notifications.MARK_MESSAGE_READ")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            if (!z) {
                long[] longArrayExtra3 = intent.getLongArrayExtra("EXTRA_CONVERSATION_IDS");
                long[] longArrayExtra4 = intent.getLongArrayExtra("EXTRA_MESSAGE_IDS");
                if (a.f(longArrayExtra3) && a.f(longArrayExtra4)) {
                    if (Build.VERSION.SDK_INT < 24) {
                        mo12453a7.mo11854a().mo31712M(longArrayExtra3, RemoteMessageConst.NOTIFICATION, false).mo11828g();
                    } else {
                        mo12453a7.mo11854a().mo31706U(RemoteMessageConst.NOTIFICATION, false, true, longArrayExtra3, longArrayExtra4);
                    }
                    mo12264o4.mo13223c("markAllAsRead", longArrayExtra4[longArrayExtra4.length - 1], false);
                }
            } else if (z) {
                long longExtra = intent.getLongExtra("EXTRA_MESSAGE_ID", -1L);
                mo12264o4.mo13223c("delete", longExtra, false);
                mo12453a7.mo11854a().mo31708Q(longExtra).mo11828g();
            } else if (z) {
                long[] longArrayExtra5 = intent.getLongArrayExtra("EXTRA_CONVERSATION_IDS");
                if (!a.d(longArrayExtra5)) {
                    Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
                    CharSequence charSequence = resultsFromIntent != null ? resultsFromIntent.getCharSequence("KEY_REPLY_TEXT") : null;
                    if (h.l(charSequence)) {
                        C4915f c4915f = new C4915f(longArrayExtra5[0]);
                        C25225a.m3846s(c4915f, C4915f.class);
                        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
                        C4908a c4908a = new C4908a(c4915f, mo10154s, null);
                        f mo12378g = mo10154s.mo12378g();
                        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                        o3.a a = b.a(c4908a.f16665d);
                        AbstractC19870l mo12119z1 = c4908a.f16663b.mo12119z1();
                        Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
                        AbstractC6708t mo12524V02 = c4908a.f16663b.mo12524V0();
                        Objects.requireNonNull(mo12524V02, "Cannot return null from a non-@Nullable component method");
                        C4915f c4915f2 = c4908a.f16662a;
                        AbstractC13497p mo11636l = c4908a.f16663b.mo11636l();
                        Objects.requireNonNull(mo11636l, "Cannot return null from a non-@Nullable component method");
                        AbstractC19223c0 mo12349i = c4908a.f16663b.mo12349i();
                        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                        AbstractC19462a mo12776C4 = c4908a.f16663b.mo12776C4();
                        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                        Objects.requireNonNull(c4915f2);
                        C7296a c7296a = new C7296a(mo11636l, mo12349i, mo12776C4, "quickReply");
                        AbstractC19510i0 mo12264o42 = c4908a.f16663b.mo12264o4();
                        Objects.requireNonNull(mo12264o42, "Cannot return null from a non-@Nullable component method");
                        AbstractC5854d mo12115z5 = c4908a.f16663b.mo12115z5();
                        Objects.requireNonNull(mo12115z5, "Cannot return null from a non-@Nullable component method");
                        AbstractC19854f<AbstractC6233m> mo12453a72 = c4908a.f16663b.mo12453a7();
                        Objects.requireNonNull(mo12453a72, "Cannot return null from a non-@Nullable component method");
                        this.f13652a = new C4914e(mo12378g, c4915f.f16685a, a, mo12119z1.mo11845d(), mo12524V02, c7296a, mo12264o42, mo12115z5, mo12453a72);
                        long[] longArrayExtra6 = intent.getLongArrayExtra("EXTRA_MESSAGE_IDS");
                        if (!a.d(longArrayExtra6)) {
                            C4914e c4914e = this.f13652a;
                            String charSequence2 = charSequence.toString();
                            Objects.requireNonNull(c4914e);
                            l.e(charSequence2, "text");
                            l.e(longArrayExtra6, "messageIds");
                            if (!h.i(charSequence2)) {
                                c4914e.f16673a = charSequence2;
                                c4914e.f16674b = longArrayExtra6;
                                d.w2(h1.a, c4914e.f16676d, (j0) null, new C4911b(c4914e, null), 2, (Object) null);
                            }
                            mo12264o4.mo13223c("reply", longArrayExtra6[longArrayExtra6.length - 1], false);
                        }
                    }
                }
            } else if (z) {
                long[] longArrayExtra7 = intent.getLongArrayExtra("EXTRA_MESSAGE_IDS");
                if (a.f(intent.getLongArrayExtra("EXTRA_CONVERSATION_IDS")) && notificationIdentifier != null) {
                    mo12721G5.f74199b.cancel(notificationIdentifier.f13654b, notificationIdentifier.f13653a);
                }
                if (!a.d(longArrayExtra7)) {
                    mo12453a7.mo11854a().mo31715I(longArrayExtra7[0]).mo11829f(new AbstractC19851d0() { // from class: e.a.a.y0.h
                        @Override // p193e.p194a.p1187r2.AbstractC19851d0
                        public final void onResult(Object obj) {
                            AbstractC6708t abstractC6708t = AbstractC6708t.this;
                            Message message = (Message) obj;
                            int i = NotificationBroadcastReceiver.f13651b;
                            if (message != null) {
                                abstractC6708t.mo30555g(message);
                            }
                        }
                    });
                    mo12264o4.mo13220f("resend", longArrayExtra7[longArrayExtra7.length - 1]);
                }
            } else if (z) {
                long longExtra2 = intent.getLongExtra("EXTRA_MESSAGE_ID", -1L);
                long[] longArrayExtra8 = intent.getLongArrayExtra("EXTRA_CONVERSATION_IDS");
                if (longExtra2 == -1) {
                    AssertionUtil.reportWeirdnessButNeverCrash("No message id was sent.");
                } else {
                    mo12453a7.mo11854a().mo31706U(RemoteMessageConst.NOTIFICATION, false, true, longArrayExtra8, longExtra2);
                }
                mo12264o4.mo13223c("markAsRead", longExtra2, false);
            }
            switch (action.hashCode()) {
                case -1086701267:
                    if (action.equals("com.truecaller.messaging.notifications.CHECK_BALANCE")) {
                        z2 = false;
                        break;
                    }
                    z2 = true;
                    break;
                case -262798704:
                    if (action.equals("com.truecaller.messaging.notifications.MARK_READ")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                case 317616099:
                    if (action.equals("com.truecaller.messaging.notifications.DELETE")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                case 1737289192:
                    if (action.equals("com.truecaller.messaging.notifications.MARK_MESSAGE_READ")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                default:
                    z2 = true;
                    break;
            }
            switch (z2) {
                case false:
                case true:
                case true:
                case true:
                    if (notificationIdentifier == null) {
                        return;
                    }
                    String str = notificationIdentifier.f13654b;
                    int i = notificationIdentifier.f13653a;
                    if (i != 2131364918 || str == null) {
                        mo12721G5.f74199b.cancel(str, i);
                        return;
                    } else {
                        mo12417d3.mo11854a().mo29774c(Collections.singleton(Long.valueOf(C19231g0.m13805L(str))));
                        return;
                    }
                default:
                    return;
            }
        }
    }
}
