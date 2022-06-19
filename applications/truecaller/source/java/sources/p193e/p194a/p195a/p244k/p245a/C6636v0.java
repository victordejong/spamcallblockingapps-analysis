package p193e.p194a.p195a.p244k.p245a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.p183ui.TruecallerInit;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26458x;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.C6112e0;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p279r0.C7219j;
import p193e.p194a.p372b0.p373a.p375a0.C8239a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p751f4.p764i.C14037a;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.AbstractC15287q;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.k.a.v0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/v0.class */
public final class C6636v0 implements AbstractC6614r0 {

    /* renamed from: a */
    public final C20592g f21900a;

    /* renamed from: b */
    public final a<AbstractC6248w> f21901b;

    /* renamed from: c */
    public final AbstractC18951b0 f21902c;

    /* renamed from: d */
    public final C8601l0 f21903d;

    /* renamed from: e */
    public final Context f21904e;

    /* renamed from: f */
    public final AbstractC15275e f21905f;

    /* renamed from: g */
    public final AbstractC15287q f21906g;

    /* renamed from: h */
    public final AbstractC19022f0 f21907h;

    /* renamed from: i */
    public final AbstractC6392i0 f21908i;

    /* renamed from: j */
    public final AbstractC19462a f21909j;

    /* renamed from: k */
    public final a<C8239a> f21910k;

    /* renamed from: e.a.a.k.a.v0$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/v0$a.class */
    public static final class C6637a implements AbstractC15287q.AbstractC15288a {

        /* renamed from: b */
        public final /* synthetic */ EnumC6521b2 f21912b;

        /* renamed from: c */
        public final /* synthetic */ List f21913c;

        public C6637a(EnumC6521b2 enumC6521b2, List list) {
            C6636v0.this = r4;
            this.f21912b = enumC6521b2;
            this.f21913c = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [java.lang.String] */
        @Override // p193e.p194a.p912i4.AbstractC15287q.AbstractC15288a
        public final Bitmap create() {
            C6636v0 c6636v0 = C6636v0.this;
            EnumC6521b2 enumC6521b2 = this.f21912b;
            List list = this.f21913c;
            Objects.requireNonNull(c6636v0);
            boolean z = enumC6521b2 == EnumC6521b2.GROUPS_48_HOURS || enumC6521b2 == EnumC6521b2.GROUPS_6_HOURS;
            List<C6112e0> K0 = i.K0(list, 2);
            ArrayList arrayList = new ArrayList();
            for (C6112e0 c6112e0 : K0) {
                Uri mo14235k = z ? c6112e0.f20301l : c6636v0.f21907h.mo14235k(c6112e0.f20294e, c6112e0.f20295f, true);
                if (mo14235k != null) {
                    arrayList.add(mo14235k);
                }
            }
            Comparable comparable = (Comparable) i.D(arrayList);
            Bitmap m15656N0 = C17891a1.C17902k.m15656N0(C14037a.m20828a(comparable != null ? comparable.toString() : null, 0, 2), c6636v0.f21904e);
            if (m15656N0 == null) {
                C8243a.m28739ok((C8243a) c6636v0.f21910k.get(), new AvatarXConfig(null, ((C6112e0) i.B(list)).f20293d, null, n.t1(((C6112e0) i.B(list)).f20292c, false, 1), false, z, false, false, false, false, false, false, false, false, null, false, 65493), false, 2, null);
                m15656N0 = (Bitmap) d.c3((f) null, new C6624s0(c6636v0, null), 1, (Object) null);
            }
            return m15656N0;
        }
    }

    @Inject
    public C6636v0(C20592g c20592g, a<AbstractC6248w> aVar, AbstractC18951b0 abstractC18951b0, C8601l0 c8601l0, Context context, AbstractC15275e abstractC15275e, AbstractC15287q abstractC15287q, AbstractC19022f0 abstractC19022f0, AbstractC6392i0 abstractC6392i0, AbstractC19462a abstractC19462a, a<C8239a> aVar2) {
        l.e(c20592g, "featuresRegistry");
        l.e(aVar, "readMessageStorage");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c8601l0, "timestampUtil");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15275e, "notificationManager");
        l.e(abstractC15287q, "notificationIconHelper");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar2, "avatarXPresenter");
        this.f21900a = c20592g;
        this.f21901b = aVar;
        this.f21902c = abstractC18951b0;
        this.f21903d = c8601l0;
        this.f21904e = context;
        this.f21905f = abstractC15275e;
        this.f21906g = abstractC15287q;
        this.f21907h = abstractC19022f0;
        this.f21908i = abstractC6392i0;
        this.f21909j = abstractC19462a;
        this.f21910k = aVar2;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6614r0
    /* renamed from: a */
    public void mo30611a(Conversation[] conversationArr) {
        l.e(conversationArr, "conversations");
        for (Conversation conversation : conversationArr) {
            Participant[] participantArr = conversation.f13211m;
            l.d(participantArr, "conversation.participants");
            if (C6405h.m31298f(participantArr)) {
                new C26458x(this.f21904e).m1816b(C2752R.C2754id.im_unread_reminders_groups_notification_id);
            } else if (conversation.f13223y == 2) {
                new C26458x(this.f21904e).m1816b(C2752R.C2754id.im_unread_reminders_notification_id);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6614r0
    /* renamed from: b */
    public void mo30610b() {
        C20592g c20592g = this.f21900a;
        int i = ((AbstractC20597i) c20592g.f57923f4.m10941a(c20592g, C20592g.f57695p6[269])).getInt(0);
        C8601l0 c8601l0 = this.f21903d;
        b mo31210F2 = this.f21908i.mo31210F2();
        l.d(mo31210F2, "settings.lastUnreadReminderShortNotificationDate");
        char c = ((e) mo31210F2).a;
        b mo31095c0 = this.f21908i.mo31095c0();
        l.d(mo31095c0, "settings.lastUnreadReminderLongNotificationDate");
        b mo31115Y2 = this.f21908i.mo31115Y2();
        l.d(mo31115Y2, "settings.lastGroupUnread…nderShortNotificationDate");
        b mo31038l3 = this.f21908i.mo31038l3();
        l.d(mo31038l3, "settings.lastGroupUnread…inderLongNotificationDate");
        long[] jArr = {((e) mo31095c0).a, ((e) mo31115Y2).a, ((e) mo31038l3).a};
        l.e(jArr, "other");
        for (int i2 = 0; i2 < 3; i2++) {
            c = Math.max((long) c, jArr[i2]);
        }
        if (c8601l0.m28260a(c, 1L, TimeUnit.DAYS)) {
            this.f21908i.mo31188K(0);
        }
        boolean z = i == 0 || this.f21908i.mo31152R0() < i;
        b P = new b().P();
        l.d(P, "DateTime().withTimeAtStartOfDay()");
        boolean z2 = false;
        if (z) {
            AbstractC18951b0 abstractC18951b0 = this.f21902c;
            b mo14285j = abstractC18951b0.mo14285j();
            b E = P.E(22);
            l.d(E, "startOfDay.plusHours(22)");
            z2 = false;
            if (abstractC18951b0.mo14289f(mo14285j, E)) {
                AbstractC18951b0 abstractC18951b02 = this.f21902c;
                b mo14285j2 = abstractC18951b02.mo14285j();
                b E2 = P.E(8);
                l.d(E2, "startOfDay.plusHours(8)");
                z2 = false;
                if (abstractC18951b02.mo14288g(mo14285j2, E2)) {
                    z2 = true;
                }
            }
        }
        if (!z2) {
            return;
        }
        b mo31095c02 = this.f21908i.mo31095c0();
        l.d(mo31095c02, "settings.lastUnreadReminderLongNotificationDate");
        if (((e) mo31095c02).a == 0) {
            this.f21908i.mo30988u2(this.f21902c.mo14285j());
        }
        b mo31210F22 = this.f21908i.mo31210F2();
        l.d(mo31210F22, "settings.lastUnreadReminderShortNotificationDate");
        if (((e) mo31210F22).a == 0) {
            this.f21908i.mo31224C3(this.f21902c.mo14285j());
        }
        b mo31038l32 = this.f21908i.mo31038l3();
        l.d(mo31038l32, "settings.lastGroupUnread…inderLongNotificationDate");
        if (((e) mo31038l32).a == 0) {
            this.f21908i.mo31016p1(this.f21902c.mo14285j());
        }
        b mo31115Y22 = this.f21908i.mo31115Y2();
        l.d(mo31115Y22, "settings.lastGroupUnread…nderShortNotificationDate");
        if (((e) mo31115Y22).a == 0) {
            this.f21908i.mo31084e(this.f21902c.mo14285j());
        }
        List<C6112e0> list = (List) d.c3((f) null, new C6633u0(this, null), 1, (Object) null);
        if (!list.isEmpty()) {
            C8601l0 c8601l02 = this.f21903d;
            long j = ((C6112e0) i.B(list)).f20291b;
            TimeUnit timeUnit = TimeUnit.HOURS;
            if (c8601l02.m28260a(j, 48L, timeUnit)) {
                long j2 = ((C6112e0) i.B(list)).f20291b;
                b mo31095c03 = this.f21908i.mo31095c0();
                l.d(mo31095c03, "settings.lastUnreadReminderLongNotificationDate");
                if (j2 > ((e) mo31095c03).a) {
                    m30609c(EnumC6521b2.PERSONAL_48_HOURS, list);
                }
            }
            if (this.f21903d.m28260a(((C6112e0) i.B(list)).f20291b, 6L, timeUnit)) {
                long j3 = ((C6112e0) i.B(list)).f20291b;
                b mo31210F23 = this.f21908i.mo31210F2();
                l.d(mo31210F23, "settings.lastUnreadReminderShortNotificationDate");
                if (j3 > ((e) mo31210F23).a) {
                    m30609c(EnumC6521b2.PERSONAL_6_HOURS, list);
                }
            }
        }
        C6112e0 c6112e0 = (C6112e0) d.c3((f) null, new C6627t0(this, null), 1, (Object) null);
        if (c6112e0 == null) {
            return;
        }
        C8601l0 c8601l03 = this.f21903d;
        long j4 = c6112e0.f20291b;
        TimeUnit timeUnit2 = TimeUnit.HOURS;
        if (c8601l03.m28260a(j4, 48L, timeUnit2)) {
            long j5 = c6112e0.f20291b;
            b mo31038l33 = this.f21908i.mo31038l3();
            l.d(mo31038l33, "settings.lastGroupUnread…inderLongNotificationDate");
            if (j5 > ((e) mo31038l33).a) {
                m30609c(EnumC6521b2.GROUPS_48_HOURS, C25225a.m3962T1(c6112e0));
                return;
            }
        }
        if (!this.f21903d.m28260a(c6112e0.f20291b, 6L, timeUnit2)) {
            return;
        }
        long j6 = c6112e0.f20291b;
        b mo31115Y23 = this.f21908i.mo31115Y2();
        l.d(mo31115Y23, "settings.lastGroupUnread…nderShortNotificationDate");
        if (j6 <= ((e) mo31115Y23).a) {
            return;
        }
        m30609c(EnumC6521b2.GROUPS_6_HOURS, C25225a.m3962T1(c6112e0));
    }

    /* renamed from: c */
    public final void m30609c(EnumC6521b2 enumC6521b2, List<C6112e0> list) {
        PendingIntent pendingIntent;
        PendingIntent mo18966h;
        PendingIntent pendingIntent2;
        PendingIntent mo18966h2;
        String str;
        String str2;
        int ordinal;
        int i;
        String str3;
        String str4;
        AbstractC19462a abstractC19462a = this.f21909j;
        LinkedHashMap m8655X = C22128a.m8655X("UnreadImNotification", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y("action", AnalyticsConstants.NAME, ViewAction.VIEW, "value", m8655X, "action", ViewAction.VIEW);
        String m25951i = C10480a.m25951i(enumC6521b2);
        l.e("peer", AnalyticsConstants.NAME);
        l.e(m25951i, "value");
        m8655X.put("peer", m25951i);
        String m25941k = C10480a.m25941k(enumC6521b2);
        l.e("unreadPeriod", AnalyticsConstants.NAME);
        l.e(m25941k, "value");
        m8655X.put("unreadPeriod", m25941k);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("UnreadImNotification");
        m15852a.m15849c(m8652Y);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a.mo13275a(build);
        int ordinal2 = enumC6521b2.ordinal();
        if (ordinal2 == 0) {
            this.f21908i.mo31224C3(this.f21902c.mo14285j());
        } else if (ordinal2 == 1) {
            this.f21908i.mo30988u2(this.f21902c.mo14285j());
        } else if (ordinal2 == 2) {
            this.f21908i.mo31084e(this.f21902c.mo14285j());
        } else if (ordinal2 == 3) {
            this.f21908i.mo31016p1(this.f21902c.mo14285j());
        }
        AbstractC6392i0 abstractC6392i0 = this.f21908i;
        abstractC6392i0.mo31188K(abstractC6392i0.mo31152R0() + 1);
        long j = ((C6112e0) i.B(list)).f20290a;
        String m25951i2 = C10480a.m25951i(enumC6521b2);
        String m25941k2 = C10480a.m25941k(enumC6521b2);
        int ordinal3 = enumC6521b2.ordinal();
        if (ordinal3 == 0 || ordinal3 == 1) {
            Context context = this.f21904e;
            Objects.requireNonNull(C7219j.f23115l);
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e("notificationImUnreadReminder", "analyticsContext");
            Intent putExtra = TruecallerInit.m34553xa(context, "messages", "notificationImUnreadReminder").putExtra("unread_conv_state", true);
            l.d(putExtra, "TruecallerInit.buildInte…UnreadConversationsState)");
            C10480a.m25871y(putExtra, m25951i2, m25941k2);
            C10480a.m25867z(putExtra, m25951i2);
            pendingIntent = PendingIntent.getActivity(context, 0, putExtra, 335544320);
            l.d(pendingIntent, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        } else if (ordinal3 != 2 && ordinal3 != 3) {
            throw new s1.i();
        } else {
            Context context2 = this.f21904e;
            Intent intent = new Intent(context2, ConversationActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("conversation_id", j);
            C10480a.m25871y(intent, m25951i2, m25941k2);
            C10480a.m25867z(intent, m25951i2);
            pendingIntent = PendingIntent.getActivity(context2, (int) j, intent, 335544320);
            l.d(pendingIntent, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
        }
        mo18966h = this.f21905f.mo18966h(pendingIntent, "notificationImUnreadReminder", (r9 & 4) != 0 ? "Opened" : null);
        String m25951i3 = C10480a.m25951i(enumC6521b2);
        String m25941k3 = C10480a.m25941k(enumC6521b2);
        int ordinal4 = enumC6521b2.ordinal();
        if (ordinal4 == 0 || ordinal4 == 1) {
            Context context3 = this.f21904e;
            l.e(context3, AnalyticsConstants.CONTEXT);
            l.e(m25951i3, "analyticsPeer");
            l.e(m25941k3, "analyticsUnreadPeriod");
            Bundle bundle = new Bundle();
            bundle.putString("analytics_peer", m25951i3);
            bundle.putString("analytics_unread_period", m25941k3);
            pendingIntent2 = C10480a.m26015U(context3, "com.truecaller.maybe_later_personal", bundle);
        } else if (ordinal4 != 2 && ordinal4 != 3) {
            throw new s1.i();
        } else {
            Context context4 = this.f21904e;
            l.e(context4, AnalyticsConstants.CONTEXT);
            l.e(m25951i3, "analyticsPeer");
            l.e(m25941k3, "analyticsUnreadPeriod");
            Bundle bundle2 = new Bundle();
            bundle2.putString("analytics_peer", m25951i3);
            bundle2.putString("analytics_unread_period", m25941k3);
            pendingIntent2 = C10480a.m26015U(context4, "com.truecaller.maybe_later_groups", bundle2);
        }
        mo18966h2 = this.f21905f.mo18966h(pendingIntent2, "notificationImUnreadReminderMaybeLater", (r9 & 4) != 0 ? "Opened" : null);
        String str5 = null;
        if (list.isEmpty()) {
            str = null;
        } else {
            int ordinal5 = enumC6521b2.ordinal();
            if (ordinal5 == 0) {
                str3 = this.f21904e.getResources().getString(C2752R.string.UnreadRemindersPersonalSubtitleSixHours);
            } else if (ordinal5 == 1) {
                str3 = this.f21904e.getResources().getString(C2752R.string.UnreadRemindersPersonalSubtitleTwoDays);
            } else if (ordinal5 == 2) {
                str = this.f21904e.getResources().getString(C2752R.string.UnreadRemindersGroupsSubtitleSixHours, ((C6112e0) i.B(list)).f20300k);
            } else if (ordinal5 != 3) {
                throw new s1.i();
            } else {
                str = this.f21904e.getResources().getString(C2752R.string.UnreadRemindersGroupsSubtitleTwoDays, ((C6112e0) i.B(list)).f20300k);
            }
            l.d(str3, "when (unreadReminder) {\n…).imGroupTitle)\n        }");
            Participant.C3848b c3848b = new Participant.C3848b(((C6112e0) i.B(list)).f20296g);
            c3848b.f11598e = ((C6112e0) i.B(list)).f20293d;
            c3848b.f11605l = ((C6112e0) i.B(list)).f20292c;
            Participant m35443a = c3848b.m35443a();
            l.d(m35443a, "Participant.Builder(unre…ons.first().name).build()");
            String m31301c = C6405h.m31301c(m35443a);
            C6112e0 c6112e0 = (C6112e0) C10480a.m25864z2(list);
            if (c6112e0 == null || (str4 = c6112e0.f20292c) == null) {
                C6112e0 c6112e02 = (C6112e0) C10480a.m25864z2(list);
                if (c6112e02 != null) {
                    str5 = c6112e02.f20293d;
                }
            } else {
                str5 = str4;
            }
            StringBuilder m8728C = C22128a.m8728C(str3);
            m8728C.append(' ' + m31301c);
            if (str5 != null) {
                C22128a.m8691L0(", ", str5, m8728C);
            }
            if (list.size() > 2) {
                m8728C.append(this.f21904e.getResources().getString(C2752R.string.UnreadRemindersPersonalSubtitleAndOthers));
            }
            str = m8728C.toString();
            l.d(str, "StringBuilder().apply(builderAction).toString()");
        }
        C26450q c26450q = new C26450q(this.f21904e, this.f21905f.mo18973a("unread_reminders"));
        int ordinal6 = enumC6521b2.ordinal();
        if (ordinal6 != 0) {
            if (ordinal6 == 1 || ordinal6 == 2) {
                str2 = this.f21904e.getResources().getString(C2752R.string.UnreadRemindersMessagesFromFriends);
                l.d(str2, "context.resources.getStr…ndersMessagesFromFriends)");
                c26450q.m1855n(str2);
                c26450q.m1856m(str);
                C26447o c26447o = new C26447o();
                c26447o.m1873k(str);
                c26450q.m1845x(c26447o);
                c26450q.f74137R.icon = 2131232129;
                c26450q.m1854o(4);
                Context context5 = this.f21904e;
                Object obj = C26467a.f74235a;
                c26450q.f74123D = C26467a.C26471d.m1787a(context5, 2131101323);
                c26450q.m1853p(16, true);
                c26450q.f74147g = mo18966h;
                c26450q.f74137R.deleteIntent = mo18966h2;
                c26450q.m1868a(0, this.f21904e.getString(C2752R.string.NotificationActionShow), mo18966h);
                c26450q.m1868a(0, this.f21904e.getString(C2752R.string.NotificationActionMaybeLaterButton), mo18966h2);
                c26450q.f74138S = true;
                l.d(c26450q, "NotificationCompat.Build… .setNotificationSilent()");
                AbstractC15275e abstractC15275e = this.f21905f;
                ordinal = enumC6521b2.ordinal();
                if (ordinal != 0 || ordinal == 1) {
                    i = 2131364230;
                } else if (ordinal != 2 && ordinal != 3) {
                    throw new s1.i();
                } else {
                    i = 2131364229;
                }
                Notification mo18955a = this.f21906g.mo18955a(c26450q, new C6637a(enumC6521b2, list));
                l.d(mo18955a, "notificationIconHelper.c…r, unreadConversations) }");
                abstractC15275e.mo18964j(i, mo18955a, "notificationImUnreadReminder");
            } else if (ordinal6 != 3) {
                throw new s1.i();
            }
        }
        str2 = this.f21904e.getResources().getString(C2752R.string.UnreadRemindersMissingOut);
        l.d(str2, "context.resources.getStr…nreadRemindersMissingOut)");
        c26450q.m1855n(str2);
        c26450q.m1856m(str);
        C26447o c26447o2 = new C26447o();
        c26447o2.m1873k(str);
        c26450q.m1845x(c26447o2);
        c26450q.f74137R.icon = 2131232129;
        c26450q.m1854o(4);
        Context context52 = this.f21904e;
        Object obj2 = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context52, 2131101323);
        c26450q.m1853p(16, true);
        c26450q.f74147g = mo18966h;
        c26450q.f74137R.deleteIntent = mo18966h2;
        c26450q.m1868a(0, this.f21904e.getString(C2752R.string.NotificationActionShow), mo18966h);
        c26450q.m1868a(0, this.f21904e.getString(C2752R.string.NotificationActionMaybeLaterButton), mo18966h2);
        c26450q.f74138S = true;
        l.d(c26450q, "NotificationCompat.Build… .setNotificationSilent()");
        AbstractC15275e abstractC15275e2 = this.f21905f;
        ordinal = enumC6521b2.ordinal();
        if (ordinal != 0) {
        }
        i = 2131364230;
        Notification mo18955a2 = this.f21906g.mo18955a(c26450q, new C6637a(enumC6521b2, list));
        l.d(mo18955a2, "notificationIconHelper.c…r, unreadConversations) }");
        abstractC15275e2.mo18964j(i, mo18955a2, "notificationImUnreadReminder");
    }
}
