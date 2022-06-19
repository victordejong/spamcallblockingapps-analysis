package p193e.p194a.p195a.p286y0;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.imgroupinvitation.ImGroupInvitationActivity;
import com.truecaller.messaging.notifications.ClassZeroActivity;
import com.truecaller.messaging.notifications.NotificationBroadcastReceiver;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import com.truecaller.messaging.smspermission.SmsPermissionActivity;
import com.truecaller.multisim.SimInfo;
import com.truecaller.notifications.OtpAnalyticsModel;
import com.truecaller.p183ui.TruecallerInit;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26451r;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19056l1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.p1409i.AbstractC21873e;
import p193e.p194a.p1406z3.p1409i.C21869a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6241p;
import p193e.p194a.p195a.p279r0.C7219j;
import p193e.p194a.p293a5.C7474a;
import p193e.p194a.p293a5.C7476b;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10252b;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p552i.p561i.AbstractC10357a;
import p193e.p194a.p437c.p552i.p565l.AbstractC10394b;
import p193e.p194a.p437c.p552i.p565l.C10393a;
import p193e.p194a.p437c.p552i.p565l.p566e.C10401a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p590k.C10646d;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.AbstractC15287q;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.k;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.u;
import w3.b.a.v;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.y0.s */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/s.class */
public class C7345s implements AbstractC7343q {

    /* renamed from: A */
    public final AbstractC10252b f23393A;

    /* renamed from: B */
    public final AbstractC7314g0 f23394B;

    /* renamed from: C */
    public final C10401a f23395C;

    /* renamed from: D */
    public long f23396D = -100;

    /* renamed from: E */
    public long f23397E = -1;

    /* renamed from: a */
    public final Context f23398a;

    /* renamed from: b */
    public final AbstractC15287q f23399b;

    /* renamed from: c */
    public final AbstractC15275e f23400c;

    /* renamed from: d */
    public final AbstractC19022f0 f23401d;

    /* renamed from: e */
    public final AbstractC19056l1 f23402e;

    /* renamed from: f */
    public final AbstractC14840m f23403f;

    /* renamed from: g */
    public final AbstractC19223c0 f23404g;

    /* renamed from: h */
    public final AbstractC6392i0 f23405h;

    /* renamed from: i */
    public final C7346t f23406i;

    /* renamed from: j */
    public final AbstractC8541a f23407j;

    /* renamed from: k */
    public final C20592g f23408k;

    /* renamed from: l */
    public final C7476b f23409l;

    /* renamed from: m */
    public final AbstractC6241p f23410m;

    /* renamed from: n */
    public final a<AbstractC19854f<AbstractC6233m>> f23411n;

    /* renamed from: o */
    public final AbstractC10357a f23412o;

    /* renamed from: p */
    public final AbstractC10394b f23413p;

    /* renamed from: q */
    public final AbstractC13497p f23414q;

    /* renamed from: r */
    public final AbstractC18951b0 f23415r;

    /* renamed from: s */
    public final AbstractC7351y f23416s;

    /* renamed from: t */
    public final C7322k f23417t;

    /* renamed from: u */
    public final AbstractC7323l f23418u;

    /* renamed from: v */
    public final AbstractC10060c f23419v;

    /* renamed from: w */
    public final C16461b f23420w;

    /* renamed from: x */
    public final AbstractC8511a f23421x;

    /* renamed from: y */
    public final AbstractC9691j f23422y;

    /* renamed from: z */
    public final AbstractC10821g f23423z;

    @Inject
    public C7345s(Context context, AbstractC15275e abstractC15275e, AbstractC19022f0 abstractC19022f0, AbstractC19056l1 abstractC19056l1, AbstractC14840m abstractC14840m, AbstractC19223c0 abstractC19223c0, AbstractC6392i0 abstractC6392i0, AbstractC15287q abstractC15287q, C7346t c7346t, AbstractC8541a abstractC8541a, C20592g c20592g, AbstractC10357a abstractC10357a, AbstractC6241p abstractC6241p, a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC10394b abstractC10394b, AbstractC13497p abstractC13497p, AbstractC18951b0 abstractC18951b0, AbstractC7351y abstractC7351y, C7322k c7322k, AbstractC7323l abstractC7323l, AbstractC10060c abstractC10060c, C16461b c16461b, C10401a c10401a, AbstractC8511a abstractC8511a, AbstractC9691j abstractC9691j, AbstractC10821g abstractC10821g, AbstractC10252b abstractC10252b, C7476b c7476b, AbstractC7314g0 abstractC7314g0) {
        this.f23398a = context;
        this.f23400c = abstractC15275e;
        this.f23401d = abstractC19022f0;
        this.f23402e = abstractC19056l1;
        this.f23403f = abstractC14840m;
        this.f23404g = abstractC19223c0;
        this.f23405h = abstractC6392i0;
        this.f23399b = abstractC15287q;
        this.f23406i = c7346t;
        this.f23407j = abstractC8541a;
        this.f23408k = c20592g;
        this.f23409l = c7476b;
        this.f23412o = abstractC10357a;
        this.f23410m = abstractC6241p;
        this.f23411n = aVar;
        this.f23413p = abstractC10394b;
        this.f23414q = abstractC13497p;
        this.f23415r = abstractC18951b0;
        this.f23416s = abstractC7351y;
        this.f23417t = c7322k;
        this.f23418u = abstractC7323l;
        this.f23419v = abstractC10060c;
        this.f23420w = c16461b;
        this.f23395C = c10401a;
        this.f23421x = abstractC8511a;
        this.f23422y = abstractC9691j;
        this.f23393A = abstractC10252b;
        this.f23423z = abstractC10821g;
        this.f23394B = abstractC7314g0;
    }

    /* renamed from: A */
    public final void m29777A(C26450q c26450q, int i) {
        c26450q.m1854o(this.f23405h.mo31195I2() && this.f23401d.mo14232n() != 0 ? 6 : 4);
        if (i == 2) {
            c26450q.m1846w(this.f23402e.mo14179g());
        } else {
            c26450q.m1846w(this.f23402e.mo14182d());
        }
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: a */
    public void mo29776a(long j) {
        if (this.f23396D == j) {
            this.f23396D = -100L;
        }
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: b */
    public void mo29775b(long j) {
        this.f23396D = j;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: c */
    public void mo29774c(Collection<Long> collection) {
        this.f23416s.mo29747a(collection);
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: d */
    public void mo29773d(Message message) {
        Notification notification;
        boolean z;
        int i;
        Context context;
        int i2;
        Context context2;
        if (!this.f23401d.mo14245a()) {
            return;
        }
        boolean z2 = !this.f23407j.getBoolean("smart_notifications_disabled", false);
        if (z2 && m29755v(Collections.singletonList(message), false)) {
            return;
        }
        if (!m29758s(message) && z2) {
            m29754w(message, false, this.f23407j.getBoolean("smart_notifications_clicked", false));
        }
        long millis = TimeUnit.DAYS.toMillis(2L);
        b P = new b().P();
        if (!P.N(((e) P).b.b(new u(new int[]{0, 0, 0, 0, 10, 0, 0, 0}, v.e()), ((e) P).a, 1)).j() || m29759r(message)) {
            return;
        }
        if (!(this.f23405h.mo31064h1() < ((int) C18334g0.f51791a.getLong("featurePromoIncomingMsgCount", (long) 0))) || !this.f23405h.mo31018p().M(millis, 1).j()) {
            return;
        }
        Map<String, Participant> mo29780b = this.f23418u.mo29780b(Collections.singletonList(message));
        final C7346t c7346t = this.f23406i;
        Participant participant = message.f13382c;
        Participant participant2 = mo29780b.get(participant.f11572e);
        if (participant2 != null) {
            participant = participant2;
        }
        String mo18970d = this.f23400c.mo18970d();
        Objects.requireNonNull(c7346t);
        if (participant.m35446n() || participant.f11569b != 1) {
            C26450q c26450q = new C26450q(c7346t.f23424a, mo18970d);
            c26450q.f74137R.icon = 2131232129;
            Context context3 = c7346t.f23424a;
            Object obj = C26467a.f74235a;
            c26450q.f74123D = C26467a.C26471d.m1787a(context3, 2131099684);
            if (c7346t.m29750a(participant)) {
                context = c7346t.f23424a;
                i = 2131888373;
            } else {
                context = c7346t.f23424a;
                i = 2131888371;
            }
            c26450q.m1855n(String.format(context.getString(i), C10480a.m26058J0(participant)));
            if (c7346t.m29750a(participant)) {
                context2 = c7346t.f23424a;
                i2 = 2131888372;
            } else {
                context2 = c7346t.f23424a;
                i2 = 2131888370;
            }
            c26450q.m1856m(context2.getString(i2));
            Context context4 = c7346t.f23424a;
            int i3 = SmsPermissionActivity.f13672c;
            Intent intent = new Intent(context4, SmsPermissionActivity.class);
            intent.putExtra("AppUserInteraction.Context", "notificationIncomingMessagePromo");
            intent.putExtra("success_intent", (Parcelable) null);
            c26450q.f74147g = PendingIntent.getActivity(context4, 0, intent.addFlags(268435456), 335544320);
            c26450q.m1853p(16, true);
            final Participant participant3 = participant;
            notification = c7346t.f23425b.mo18955a(c26450q, new AbstractC15287q.AbstractC15288a() { // from class: e.a.a.y0.i
                @Override // p193e.p194a.p912i4.AbstractC15287q.AbstractC15288a
                public final Bitmap create() {
                    C7346t c7346t2 = C7346t.this;
                    Participant participant4 = participant3;
                    Context context5 = c7346t2.f23424a;
                    int i4 = c7346t2.m29750a(participant4) ? 2131232658 : 2131232500;
                    Object obj2 = C26467a.f74235a;
                    return C8605o.m28237c(C26467a.C26470c.m1789b(context5, i4));
                }
            });
        } else {
            notification = null;
        }
        if (notification == null) {
            z = false;
        } else {
            this.f23400c.mo18964j(C2752R.C2754id.message_promotion_notification_id, notification, "notificationIncomingMessagePromo");
            z = true;
        }
        if (!z) {
            return;
        }
        this.f23405h.mo31223D(this.f23405h.mo31064h1() + 1);
        this.f23405h.mo31229B3(new b());
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: e */
    public void mo29772e(Message message, String str) {
        if (str == null) {
            str = C10480a.m25885v0(message.f13382c);
        }
        m29753x(message, BitmapFactory.decodeResource(this.f23398a.getResources(), C2752R.C2753drawable.ic_notification_message_failed_standard), this.f23398a.getString(C2752R.string.ScheduledMessageNotificationFailedTitle), this.f23398a.getString(C2752R.string.ScheduledMessageNotificationFailedContent, str, m29761p(((e) message.f13385f).a)), "notificationFailedScheduledMessage");
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: f */
    public void mo29771f(Conversation conversation) {
        Participant participant = conversation.f13211m[0];
        long j = conversation.f13199a;
        String.valueOf(conversation.f13199a).hashCode();
        C26450q c26450q = new C26450q(this.f23398a, this.f23400c.mo18973a("personal_chats"));
        c26450q.f74137R.icon = 2131232129;
        Context context = this.f23398a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131100922);
        c26450q.m1855n(this.f23398a.getString(C2752R.string.MessageNotificationDetailsUpdatedTitle));
        c26450q.m1856m(this.f23398a.getString(C2752R.string.ConversationNumberResolvedBanner));
        c26450q.f74147g = ConversationActivity.C4167a.m35127c(ConversationActivity.f13017e, this.f23398a, conversation.f13199a, -1L, "notificationHiddenNumberResolved", false, false, false, null, null, null, 1008);
        c26450q.m1853p(16, true);
        final Uri mo14235k = this.f23401d.mo14235k(participant.f11582o, participant.f11580m, true);
        this.f23400c.mo18965i(String.valueOf(j), C2752R.C2754id.hidden_number_resolved_notification_id, this.f23399b.mo18955a(c26450q, new AbstractC15287q.AbstractC15288a() { // from class: e.a.a.y0.e
            @Override // p193e.p194a.p912i4.AbstractC15287q.AbstractC15288a
            public final Bitmap create() {
                C7345s c7345s = C7345s.this;
                Uri uri = mo14235k;
                Objects.requireNonNull(c7345s);
                C21869a c21869a = new C21869a(uri, AbstractC21873e.C21875b.f60766c);
                c21869a.f60757a = true;
                c21869a.f60758b = -1;
                return C17891a1.C17902k.m15651P0(c21869a, 2131232500, c7345s.f23398a);
            }
        }), "notificationHiddenNumberResolved");
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: g */
    public void mo29770g(ImGroupInfo imGroupInfo, boolean z) {
        String str;
        if (z) {
            str = this.f23398a.getString(C2752R.string.ImGroupInvitationNotificationReminder);
        } else {
            String str2 = imGroupInfo.f13323e;
            Contact m17365g = str2 != null ? this.f23420w.m17365g(str2) : null;
            str = (m17365g == null || m17365g.m35566G() == null) ? this.f23398a.getString(C2752R.string.ImGroupInvitationNotification) : this.f23398a.getString(C2752R.string.ImGroupInvitationNotificationWithName, m17365g.m35566G());
        }
        C26450q c26450q = new C26450q(this.f23398a, this.f23400c.mo18973a("group_chats"));
        c26450q.m1855n(imGroupInfo.f13320b);
        c26450q.m1856m(str);
        c26450q.f74152l = 2;
        c26450q.m1853p(8, true);
        m29777A(c26450q, 2);
        String str3 = imGroupInfo.f13319a;
        str3.hashCode();
        Context context = this.f23398a;
        Intent m34556ua = TruecallerInit.m34556ua(context, "messages", "notificationImGroupInvitation", InboxTab.PERSONAL);
        Intent m34987pa = ImGroupInvitationActivity.m34987pa(context, imGroupInfo);
        C10480a.m26079E(m34987pa, C2752R.C2754id.im_group_invitation_notification_id, str3);
        c26450q.f74147g = PendingIntent.getActivities(context, 1, new Intent[]{m34556ua, m34987pa}, 335544320);
        m29751z(c26450q);
        final Uri parse = h.j(imGroupInfo.f13321c) ? null : Uri.parse(imGroupInfo.f13321c);
        Notification mo18955a = this.f23399b.mo18955a(c26450q, new AbstractC15287q.AbstractC15288a() { // from class: e.a.a.y0.g
            @Override // p193e.p194a.p912i4.AbstractC15287q.AbstractC15288a
            public final Bitmap create() {
                return C7345s.this.m29762o(parse);
            }
        });
        AbstractC15275e abstractC15275e = this.f23400c;
        String str4 = imGroupInfo.f13319a;
        String str5 = "notificationImGroupInvitation";
        if (z) {
            str5 = "notificationImGroupInvitationReminder";
        }
        abstractC15275e.mo18965i(str4, C2752R.C2754id.im_group_invitation_notification_id, mo18955a, str5);
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: h */
    public void mo29769h(Message message, String str) {
        if (str == null) {
            str = C10480a.m25885v0(message.f13382c);
        }
        String m29761p = m29761p(((e) message.f13385f).a);
        String string = this.f23398a.getString(C2752R.string.ScheduledMessageNotificationSentTitle);
        String string2 = this.f23398a.getString(C2752R.string.ScheduledMessageNotificationSentContent, str, m29761p);
        AbstractC19022f0 abstractC19022f0 = this.f23401d;
        Participant participant = message.f13382c;
        m29753x(message, m29762o(abstractC19022f0.mo14235k(participant.f11582o, participant.f11580m, true)), string, string2, "notificationSentScheduledMessage");
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: i */
    public void mo29768i(ImGroupInfo imGroupInfo) {
        this.f23400c.mo18972b(imGroupInfo.f13319a, C2752R.C2754id.im_group_invitation_notification_id);
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: j */
    public void mo29767j(Map<Conversation, List<Message>> map) {
        try {
            m29752y(map);
        } catch (CancellationException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: k */
    public void mo29766k(long j) {
        if (j == this.f23397E) {
            this.f23400c.mo18968f(C2752R.C2754id.failed_messages_notification_id);
            this.f23397E = -1L;
        }
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: l */
    public void mo29765l() {
        Toast.makeText(this.f23398a, (int) C2752R.string.MessageNotificationMmsDownloadFailed, 0).show();
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: m */
    public void mo29764m(Message message, String str) {
        long j = this.f23396D;
        long j2 = message.f13381b;
        if (j == j2) {
            return;
        }
        this.f23397E = j2;
        C26450q c26450q = new C26450q(this.f23398a, this.f23400c.mo18970d());
        m29751z(c26450q);
        Participant participant = message.f13382c;
        Resources resources = this.f23398a.getResources();
        String string = resources.getString(C2752R.string.MessageNotificationNotSentTitle);
        if (str == null) {
            str = C10480a.m25885v0(participant);
        }
        String string2 = resources.getString(C2752R.string.MessageNotificationCouldNotBeSentContent, str);
        c26450q.m1855n(string);
        c26450q.m1856m(string2);
        c26450q.m1852q(BitmapFactory.decodeResource(this.f23398a.getResources(), C2752R.C2753drawable.ic_notification_message_failed_standard));
        String valueOf = String.valueOf(message.f13380a);
        NotificationIdentifier notificationIdentifier = new NotificationIdentifier(C2752R.C2754id.failed_messages_notification_id, valueOf, valueOf.hashCode());
        c26450q.f74147g = C10480a.m26023S(this.f23398a, Collections.singletonList(message), notificationIdentifier, "view_failed_message", RemoteMessageConst.NOTIFICATION);
        String string3 = resources.getString(C2752R.string.MessageNotificationNotSentDismiss);
        Context context = this.f23398a;
        int i = NotificationBroadcastReceiver.f13651b;
        PendingIntent m34921b = NotificationBroadcastReceiver.m34921b(context, "com.truecaller.messaging.notifications.ERROR_DISMISSED", Collections.singletonList(message), false, notificationIdentifier);
        c26450q.m1868a(2131231787, string3, m34921b);
        c26450q.m1868a(C2752R.C2753drawable.ic_send_gray_24dp, resources.getString(C2752R.string.MessageNotificationNotSentResend), NotificationBroadcastReceiver.m34921b(this.f23398a, "com.truecaller.messaging.notifications.RESEND", Collections.singletonList(message), false, notificationIdentifier));
        c26450q.f74137R.when = ((e) message.f13384e).a;
        c26450q.m1853p(16, true);
        m29777A(c26450q, message.f13390k);
        c26450q.f74137R.deleteIntent = m34921b;
        this.f23400c.mo18965i(notificationIdentifier.f13654b, notificationIdentifier.f13653a, c26450q.m1865d(), "notificationFailedMessage");
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: n */
    public void mo29763n(Message message) {
        Context context = this.f23398a;
        int i = ClassZeroActivity.f13643g;
        Intent intent = new Intent(context, ClassZeroActivity.class);
        intent.putExtra("extra_message_values", message);
        intent.setFlags(402653184);
        context.startActivity(intent);
    }

    /* renamed from: o */
    public final Bitmap m29762o(Uri uri) {
        C21869a c21869a = new C21869a(uri, AbstractC21873e.C21875b.f60766c);
        c21869a.f60757a = true;
        c21869a.f60758b = -1;
        return C17891a1.C17902k.m15656N0(c21869a, this.f23398a);
    }

    /* renamed from: p */
    public final String m29761p(long j) {
        return this.f23415r.mo14275t(j, "dd MMM") + ", " + this.f23415r.mo14283l(j);
    }

    /* renamed from: q */
    public final RemoteViews m29760q(int i, String str, NotificationIdentifier notificationIdentifier, long j, Participant participant, OtpAnalyticsModel otpAnalyticsModel, String str2, boolean z, boolean z2) {
        String m25885v0 = C10480a.m25885v0(participant);
        RemoteViews remoteViews = new RemoteViews(this.f23398a.getPackageName(), i);
        Context context = this.f23398a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, AnalyticsConstants.OTP);
        l.e(notificationIdentifier, "otpNotificationId");
        l.e(otpAnalyticsModel, "otpAnalyticsModel");
        String str3 = "notificationid: " + notificationIdentifier;
        Intent m26027R = C10480a.m26027R(context, "ACTION_COPY_OTP", j, notificationIdentifier, otpAnalyticsModel, 0L, null, 96);
        m26027R.putExtra("OTP", str);
        PendingIntent service = PendingIntent.getService(this.f23398a, 0, m26027R, 201326592);
        remoteViews.setTextViewText(C2752R.C2754id.textOtp, str.replaceAll("", StringConstant.SPACE).trim());
        remoteViews.setTextViewText(2131366317, this.f23404g.mo13768b(C2752R.string.otp_notification_sender_info, m25885v0));
        remoteViews.setOnClickPendingIntent(2131362972, service);
        remoteViews.setViewVisibility(2131365240, z2 ? 8 : 0);
        if (i == 2131559478) {
            int i2 = 8;
            if (AnalyticsConstants.OTP.equals(str2)) {
                i2 = 8;
                if (!z2) {
                    i2 = 0;
                }
            }
            remoteViews.setViewVisibility(C2752R.C2754id.labelConfidential, i2);
            if (z) {
                remoteViews.setTextViewText(C2752R.C2754id.labelConfidential, this.f23404g.mo13768b(C2752R.string.otp_notification_different_format, new Object[0]));
            }
        }
        return remoteViews;
    }

    /* renamed from: r */
    public final boolean m29759r(Message message) {
        int i = message.f13390k;
        Participant participant = message.f13382c;
        return this.f23393A.mo10140a(this.f23398a, i == 2 ? participant.f11572e : participant.f11571d);
    }

    /* renamed from: s */
    public final boolean m29758s(Message message) {
        return message.f13382c.m35449k(this.f23403f.mo19547u() && !this.f23408k.m10963h0().isEnabled());
    }

    /* renamed from: t */
    public void m29757t(Notification notification, String str, final RemoteViews remoteViews, int i) {
        if (!this.f23422y.mo27238v()) {
            final C10393a c10393a = new C10393a(this.f23398a, 2131365240, remoteViews, notification, i, this.f23422y);
            this.f23421x.mo28429Iz(str, new s1.z.b.l() { // from class: e.a.a.y0.f
                /* renamed from: d */
                public final Object m29792d(Object obj) {
                    C7345s c7345s = C7345s.this;
                    RemoteViews remoteViews2 = remoteViews;
                    e.f.a.r.k.h hVar = c10393a;
                    C8505a c8505a = (C8505a) obj;
                    Objects.requireNonNull(c7345s);
                    if (!h.j(c8505a.f26291b)) {
                        remoteViews2.setTextViewText(2131366317, c7345s.f23404g.mo13768b(C2752R.string.otp_notification_sender_info, c8505a.f26291b));
                    }
                    if (c8505a.f26292c != null) {
                        C7344r c7344r = new C7344r(c7345s, remoteViews2);
                        C21852d<Bitmap> m8983a0 = C17891a1.C17902k.m15664K1(c7345s.f23398a).mo8415f().m8983a0(C22591h.m8074H());
                        m8983a0.m8974j0(c8505a.f26292c);
                        m8983a0.f61768K = null;
                        m8983a0.mo8433H(c7344r);
                        m8983a0.m8429M(hVar);
                        return null;
                    }
                    return null;
                }
            });
            return;
        }
        C21869a c21869a = new C21869a(this.f23421x.mo28428Kw(str).f26292c, AbstractC21873e.C21875b.f60766c);
        c21869a.f60757a = true;
        remoteViews.setImageViewBitmap(2131365240, C17891a1.C17902k.m15656N0(c21869a, this.f23398a));
        remoteViews.setInt(2131365240, "setBackgroundColor", 0);
    }

    /* renamed from: u */
    public final void m29756u(List<Message> list, String str, String str2) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (Message message : list) {
            Participant participant = message.f13382c;
            hashMap.put(participant.f11572e, participant);
            List list2 = (List) hashMap2.get(message.f13382c.f11572e);
            ArrayList arrayList = list2;
            if (list2 == null) {
                arrayList = new ArrayList();
                hashMap2.put(message.f13382c.f11572e, arrayList);
            }
            arrayList.add(Message.m35022d(message.f13393n.mo34881k0(), message.f13384e));
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            this.f23417t.mo29782a(new k<>((Participant) entry.getValue(), this.f23420w.m17367e(((Participant) entry.getValue()).f11575h)), str, str2, (List) hashMap2.get(entry.getKey()));
        }
    }

    /* renamed from: v */
    public final boolean m29755v(List<Message> list, boolean z) {
        boolean z2;
        String str;
        String str2;
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        boolean z3;
        ArrayList arrayList = new ArrayList(list);
        if (!this.f23407j.getBoolean("featureOTPNotificationEnabled") || arrayList.isEmpty()) {
            StringBuilder m8728C = C22128a.m8728C("OTP FF not enabled or messagesCopy is empty with size: ");
            m8728C.append(arrayList.size());
            C10263b.m26509a(m8728C.toString());
            return false;
        }
        Collections.sort(arrayList, C7305d.f23306a);
        Message message = (Message) arrayList.get(arrayList.size() - 1);
        StringBuilder m8728C2 = C22128a.m8728C("OTP notif check: ");
        m8728C2.append(message.f13382c.f11571d);
        C10263b.m26509a(m8728C2.toString());
        if (!this.f23423z.mo25584e("GRM_OTP", message.f13382c.f11572e)) {
            C10263b.m26509a("sender blacklisted");
            z2 = false;
        } else {
            C10263b.m26509a("no sender blacklist");
            Contact m17367e = this.f23420w.m17367e(message.f13382c.f11575h);
            if (m17367e != null && !m17367e.m35557M().isEmpty()) {
                if (m17367e.f11526u != null) {
                    C10263b.m26509a("Is a business profile");
                    z2 = true;
                }
            }
            if (this.f23422y.mo27234z()) {
                C10263b.m26509a("Ten digit sender enabled");
                z2 = !m29759r(message) && (message.f13382c.m35448l() || message.f13390k != 2);
                C10263b.m26509a("Not in contact and is a business Im: " + z2);
            } else {
                C10263b.m26509a("Ten digit sender not enabled");
                if (!m29759r(message)) {
                    if (message.f13382c.m35448l()) {
                        z3 = false;
                    } else {
                        int i = message.f13390k;
                        Participant participant = message.f13382c;
                        z3 = C10031q.m26801c(i == 2 ? participant.f11572e : participant.f11571d);
                    }
                    if (!z3) {
                        z2 = true;
                        C10263b.m26509a("Not in contact and is not a personal contact: " + z2);
                    }
                }
                z2 = false;
                C10263b.m26509a("Not in contact and is not a personal contact: " + z2);
            }
        }
        if (!z2) {
            C10263b.m26509a("canShowOtpNotification returned false");
            return false;
        }
        boolean z4 = false;
        for (Entity entity : message.f13394o) {
            if (entity.mo34894r()) {
                z4 = true;
            }
        }
        if (!z4) {
            C10263b.m26509a("Message has not text entity");
            return false;
        }
        Participant participant2 = this.f23418u.mo29780b(Collections.singletonList(message)).get(message.f13382c.f11572e);
        C10266c c10266c = new C10266c(message.f13380a, message.f13382c.f11572e, message.m35025a(), message.f13384e.n(), message.f13381b, message.f13390k, message.f13392m, 1, null, false, message.f13382c.f11579l);
        C10646d mo26294g = this.f23412o.mo26294g(c10266c);
        if (mo26294g != null) {
            str2 = mo26294g.f31723a;
            str = mo26294g.f31724b;
        } else {
            str2 = null;
            str = null;
        }
        if (str2 == null) {
            C10263b.m26509a("No otp found on message");
            return false;
        }
        String m28239a = C8605o.m28239a(str2);
        NotificationIdentifier notificationIdentifier = new NotificationIdentifier(C2752R.C2754id.new_otp_message_notification_id, null, 0, 6);
        OtpAnalyticsModel otpAnalyticsModel = new OtpAnalyticsModel("parser", participant2.f11572e, message.f13390k);
        Participant participant3 = message.f13382c;
        SmartNotificationMetadata smartNotificationMetadata = new SmartNotificationMetadata("OTP", participant3.f11572e, true, false, participant3.m35448l());
        C7474a c7474a = new C7474a(message, this.f23410m);
        Context context = this.f23398a;
        String str3 = participant2.f11572e;
        int i2 = message.f13390k;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e("parser", "otpProcessor");
        l.e(str3, "senderId");
        OtpAnalyticsModel otpAnalyticsModel2 = new OtpAnalyticsModel("parser", str3, i2);
        int i3 = c7474a.f23732a;
        NotificationIdentifier notificationIdentifier2 = new NotificationIdentifier(i3, null, i3, 2);
        if (z) {
            pendingIntent = ConversationActivity.f13017e.m35129a(context, c7474a.f23735d, "otp_notification", notificationIdentifier2, smartNotificationMetadata, otpAnalyticsModel2);
        } else {
            Long m29564k = c7474a.m29564k();
            if (m29564k != null) {
                Message.C4209b m35024b = c7474a.f23735d.m35024b();
                m35024b.f13422b = m29564k.longValue();
                Message m35012a = m35024b.m35012a();
                l.d(m35012a, "message.buildUpon().conv…n(conversationId).build()");
                pendingIntent = ConversationActivity.f13017e.m35129a(context, m35012a, "otp_notification", notificationIdentifier2, smartNotificationMetadata, otpAnalyticsModel2);
            } else {
                pendingIntent = PendingIntent.getActivity(context, c7474a.f23733b.b(), TruecallerInit.m34555va(context, "messages", "otp_notification", "show_sms", notificationIdentifier2, smartNotificationMetadata, otpAnalyticsModel2), 201326592);
                l.d(pendingIntent, "PendingIntent.getActivit…ingIntent.FLAG_IMMUTABLE)");
            }
        }
        Context context2 = this.f23398a;
        long j = message.f13380a;
        l.e(context2, AnalyticsConstants.CONTEXT);
        l.e(notificationIdentifier, "otpNotificationId");
        l.e(otpAnalyticsModel, "otpAnalyticsModel");
        PendingIntent service = PendingIntent.getService(context2, 0, C10480a.m26027R(context2, "ACTION_DISMISS_OTP", j, notificationIdentifier, otpAnalyticsModel, 0L, null, 96), 201326592);
        if (z) {
            Context context3 = this.f23398a;
            long j2 = message.f13380a;
            long j3 = message.f13381b;
            l.e(context3, AnalyticsConstants.CONTEXT);
            l.e(notificationIdentifier, "otpNotificationId");
            l.e(otpAnalyticsModel, "otpAnalyticsModel");
            pendingIntent2 = PendingIntent.getService(context3, 0, C10480a.m26027R(context3, "ACTION_MARK_MESSAGE_READ", j2, notificationIdentifier, otpAnalyticsModel, j3, null, 64), 201326592);
        } else {
            Context context4 = this.f23398a;
            String str4 = c10266c.f30434c;
            l.e(context4, AnalyticsConstants.CONTEXT);
            l.e(notificationIdentifier, "otpNotificationId");
            l.e(otpAnalyticsModel, "otpAnalyticsModel");
            l.e(str4, "message");
            pendingIntent2 = PendingIntent.getService(context4, 0, C10480a.m26031Q(context4, "ACTION_SILENT_MARK_MESSAGE_READ", -1L, notificationIdentifier, otpAnalyticsModel, -1L, str4), 201326592);
        }
        String mo18973a = this.f23400c.mo18973a("non_spam_sms_v2");
        C26450q c26450q = new C26450q(this.f23398a, mo18973a);
        int i4 = message.f13390k;
        boolean z5 = i4 == 0 || i4 == 4;
        boolean m35448l = message.f13382c.m35448l();
        boolean z6 = Build.VERSION.SDK_INT <= 23;
        RemoteViews m29760q = m29760q(C2752R.layout.remote_view_otp_notification, m28239a, notificationIdentifier, message.f13380a, participant2, otpAnalyticsModel, str, !z5 && !m35448l, z6);
        RemoteViews m29760q2 = m29760q(C2752R.layout.remote_view_otp_notification_small, m28239a, notificationIdentifier, message.f13380a, participant2, otpAnalyticsModel, str, !z5 && !m35448l, z6);
        C26450q c26450q2 = new C26450q(this.f23398a, mo18973a);
        c26450q2.m1855n(this.f23404g.mo13768b(C2752R.string.otp_notification_secure_screen_title, C10480a.m25885v0(participant2)));
        c26450q2.m1856m(this.f23404g.mo13768b(C2752R.string.otp_notification_secure_screen_message, new Object[0]));
        Notification m1865d = c26450q2.m1865d();
        String m25885v0 = C10480a.m25885v0(participant2);
        CharSequence string = z5 ? this.f23398a.getString(2131887125, m25885v0) : this.f23398a.getString(2131887124, m25885v0);
        CharSequence string2 = this.f23398a.getString(2131887157, m25885v0);
        m29751z(c26450q);
        c26450q.m1845x(new C26451r());
        c26450q.m1844y(string);
        c26450q.m1855n(m28239a);
        c26450q.m1856m(string2);
        c26450q.f74127H = m29760q;
        c26450q.f74126G = m29760q2;
        c26450q.f74128I = m29760q2;
        c26450q.f74147g = pendingIntent;
        c26450q.f74124E = 0;
        c26450q.f74125F = m1865d;
        c26450q.f74152l = 2;
        c26450q.m1868a(C2752R.C2753drawable.ic_drafts_gray_24dp, this.f23398a.getString(2131886951), pendingIntent2);
        c26450q.m1868a(2131231787, this.f23398a.getString(C2752R.string.dialog_dismiss), service);
        c26450q.f74137R.deleteIntent = service;
        c26450q.m1853p(16, true);
        m29777A(c26450q, 0);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("otp_notification", "<set-?>");
        String otpProcessor = otpAnalyticsModel.getOtpProcessor();
        l.e(otpProcessor, "<set-?>");
        l.e("create", "<set-?>");
        String eventInfo = otpAnalyticsModel.getEventInfo();
        l.e(eventInfo, "<set-?>");
        String context5 = otpAnalyticsModel.getContext();
        l.e(context5, "<set-?>");
        this.f23419v.mo26757a(new C10529b(new SimpleAnalyticsModel("otp_notification", otpProcessor, eventInfo, context5, "create", "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
        Notification m1865d2 = c26450q.m1865d();
        if (!z6) {
            m29757t(m1865d2, message.f13382c.f11572e, m29760q, notificationIdentifier.f13653a);
            m29757t(m1865d2, message.f13382c.f11572e, m29760q2, notificationIdentifier.f13653a);
        }
        this.f23400c.mo18964j(notificationIdentifier.f13653a, m1865d2, "notificationOtpMessage");
        ((AbstractC6233m) ((AbstractC19854f) this.f23409l.f23738a.get()).mo11854a()).mo31713L(message.f13380a);
        C10263b.m26509a("Otp shown");
        return true;
    }

    /* renamed from: w */
    public final boolean m29754w(Message message, boolean z, boolean z2) {
        String str;
        String str2;
        boolean m35448l = message.f13382c.m35448l();
        String m28346m = m35448l ? C8574c0.m28346m(message.f13382c.f11572e) : C8574c0.m28346m(message.f13382c.f11571d);
        SimInfo mo21719v = this.f23414q.mo21719v(message.f13392m);
        if (mo21719v == null || (str2 = mo21719v.f13985c) == null) {
            str = null;
        } else {
            Set<Character> set = C19231g0.f53598a;
            str = str2.substring(str2.length() - Math.min(10, str2.length()));
        }
        return this.f23407j.getBoolean("featureSmartNotifications") && this.f23413p.mo26233a(m28346m, message.m35025a(), str, z, message.f13390k, z2, new C7474a(message, this.f23410m), this.f23395C, ((e) message.f13384e).a, m35448l, C17422k.m16110H(message));
    }

    /* renamed from: x */
    public final void m29753x(Message message, final Bitmap bitmap, String str, String str2, String str3) {
        C26450q c26450q = new C26450q(this.f23398a, this.f23400c.mo18970d());
        c26450q.m1855n(str);
        c26450q.m1856m(str2);
        m29777A(c26450q, message.f13390k);
        c26450q.m1845x(new C26447o());
        String valueOf = String.valueOf(message.f13380a);
        NotificationIdentifier notificationIdentifier = new NotificationIdentifier(C2752R.C2754id.scheduled_message_sent_notification_id, valueOf, valueOf.hashCode());
        c26450q.f74147g = C10480a.m26023S(this.f23398a, Collections.singletonList(message), notificationIdentifier, "view_scheduled_message", RemoteMessageConst.NOTIFICATION);
        m29751z(c26450q);
        this.f23400c.mo18965i(notificationIdentifier.f13654b, notificationIdentifier.f13653a, this.f23399b.mo18955a(c26450q, new AbstractC15287q.AbstractC15288a() { // from class: e.a.a.y0.c
            @Override // p193e.p194a.p912i4.AbstractC15287q.AbstractC15288a
            public final Bitmap create() {
                return bitmap;
            }
        }), str3);
    }

    /* renamed from: y */
    public final void m29752y(Map<Conversation, List<Message>> map) {
        ArrayList arrayList = new ArrayList();
        for (List<Message> list : map.values()) {
            arrayList.addAll(list);
        }
        if (m29755v(arrayList, true)) {
            return;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        boolean z = this.f23407j.getBoolean("smart_notifications_disabled", false);
        for (Map.Entry<Conversation, List<Message>> entry : map.entrySet()) {
            Conversation key = entry.getKey();
            for (Message message : entry.getValue()) {
                this.f23394B.mo29788d(message, key);
                if (this.f23396D == message.f13381b) {
                    arrayList3.add(message);
                } else if (!m29758s(message) && (!z) && m29754w(message, true, this.f23407j.getBoolean("smart_notifications_clicked", false))) {
                    ((AbstractC6233m) ((AbstractC19854f) this.f23409l.f23738a.get()).mo11854a()).mo31713L(message.f13380a);
                } else if (message.f13399t == 4 && key.f13218t != 0 && this.f23408k.m10969e0().isEnabled() && !this.f23405h.mo31034m1()) {
                    ((AbstractC6233m) ((AbstractC19854f) this.f23411n.get()).mo11854a()).mo31713L(message.f13380a);
                } else if (m29758s(message)) {
                    arrayList2.add(message);
                } else {
                    List list2 = (List) hashMap.get(key);
                    ArrayList arrayList4 = list2;
                    if (list2 == null) {
                        ArrayList arrayList5 = new ArrayList();
                        hashMap.put(key, arrayList5);
                        arrayList4 = arrayList5;
                    }
                    arrayList4.add(message);
                }
            }
        }
        this.f23416s.mo29746b(hashMap);
        if (arrayList2.isEmpty()) {
            this.f23400c.mo18968f(C2752R.C2754id.new_blocked_messages_notification_id);
        } else {
            m29756u(arrayList2, "inSpammerList", "spamNotification");
            if (!this.f23405h.mo31225C2()) {
                int size = arrayList2.size();
                long[] jArr = new long[size];
                for (int i = 0; i < arrayList2.size(); i++) {
                    jArr[i] = ((Message) arrayList2.get(i)).f13380a;
                }
                if (size > 0) {
                    ((AbstractC6233m) ((AbstractC19854f) this.f23411n.get()).mo11854a()).mo31690g0(jArr);
                }
            } else {
                C26450q c26450q = new C26450q(this.f23398a, this.f23400c.mo18973a("blocked_sms"));
                c26450q.f74137R.icon = C2752R.C2753drawable.ic_notification_blocked_message;
                Context context = this.f23398a;
                Object obj = C26467a.f74235a;
                c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131099684);
                c26450q.m1855n(this.f23398a.getResources().getQuantityString(C2752R.plurals.MessageNotificationBlockedTitle, arrayList2.size(), Integer.valueOf(arrayList2.size())));
                c26450q.m1856m(this.f23398a.getString(C2752R.string.MessageNotificationBlockedText));
                c26450q.m1852q(C8605o.m28237c(C26467a.C26470c.m1789b(this.f23398a, 2131232658)));
                c26450q.f74137R.deleteIntent = NotificationBroadcastReceiver.m34921b(this.f23398a, "com.truecaller.messaging.notifications.DISMISSED", arrayList2, false, new NotificationIdentifier(C2752R.C2754id.new_blocked_messages_notification_id, null, 0, 6));
                Context context2 = this.f23398a;
                Intent m29967a = C7219j.f23115l.m29967a(context2, InboxTab.SPAM, "notificationBlockedMessage");
                C10480a.m26087C(m29967a, arrayList2);
                C10480a.m26083D(m29967a, "block_messages");
                C10480a.m26079E(m29967a, C2752R.C2754id.new_blocked_messages_notification_id, null);
                c26450q.f74147g = PendingIntent.getActivity(context2, 0, m29967a, 335544320);
                this.f23400c.mo18964j(C2752R.C2754id.new_blocked_messages_notification_id, c26450q.m1865d(), "notificationBlockedMessage");
            }
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        m29756u(arrayList3, "inConversationView", "conversation");
    }

    /* renamed from: z */
    public final void m29751z(C26450q c26450q) {
        c26450q.f74137R.icon = 2131232129;
        Context context = this.f23398a;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131099684);
    }
}
