package p193e.p194a.p195a.p286y0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.view.ContextThemeWrapper;
import androidx.core.graphics.drawable.IconCompat;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.notifications.NotificationBroadcastReceiver;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1807k.p1808a.C26444m;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26464y;
import p1727n3.p1807k.p1808a.C26466z;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19056l1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1406z3.p1409i.C21869a;
import p193e.p194a.p1406z3.p1409i.C21872d;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.p217o.AbstractC5614h;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6393a;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p372b0.p373a.p375a0.C8239a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8578e0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p849h4.AbstractC14913g;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p912i4.AbstractC15275e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.y0.d0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/d0.class */
public final class C7306d0 implements AbstractC7351y {

    /* renamed from: a */
    public final int f23307a;

    /* renamed from: b */
    public final int f23308b;

    /* renamed from: c */
    public final Context f23309c;

    /* renamed from: d */
    public final AbstractC19022f0 f23310d;

    /* renamed from: e */
    public final a<AbstractC15275e> f23311e;

    /* renamed from: f */
    public final a<C8239a> f23312f;

    /* renamed from: g */
    public final a<AbstractC7323l> f23313g;

    /* renamed from: h */
    public final a<C20592g> f23314h;

    /* renamed from: i */
    public final AbstractC6392i0 f23315i;

    /* renamed from: j */
    public final a<AbstractC19056l1> f23316j;

    /* renamed from: k */
    public final a<AbstractC7325n> f23317k;

    /* renamed from: l */
    public final a<AbstractC6394b> f23318l;

    /* renamed from: m */
    public final AbstractC8541a f23319m;

    /* renamed from: n */
    public final AbstractC8438a f23320n;

    /* renamed from: o */
    public final a<AbstractC6248w> f23321o;

    /* renamed from: p */
    public final a<AbstractC5614h> f23322p;

    /* renamed from: q */
    public final a<AbstractC14913g> f23323q;

    /* renamed from: r */
    public final a<AbstractC14920n> f23324r;

    /* renamed from: s */
    public final boolean f23325s;

    /* renamed from: t */
    public final AbstractC19219a0 f23326t;

    @e(c = "com.truecaller.messaging.notifications.RegularMessagingNotificationsManagerImpl$getParticipantIcon$1", f = "RegularMessagingNotificationsManager.kt", l = {445}, m = "invokeSuspend")
    /* renamed from: e.a.a.y0.d0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/d0$a.class */
    public static final class C7307a extends i implements p<i0, d<? super Bitmap>, Object> {

        /* renamed from: e */
        public int f23327e;

        /* renamed from: g */
        public final /* synthetic */ int f23329g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7307a(int i, d dVar) {
            super(2, dVar);
            C7306d0.this = r5;
            this.f23329g = i;
        }

        /* renamed from: i */
        public final d<s> m29799i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7307a(this.f23329g, dVar);
        }

        /* renamed from: k */
        public final Object m29798k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7307a(this.f23329g, dVar).m29797s(s.a);
        }

        /* renamed from: s */
        public final Object m29797s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f23327e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8239a c8239a = (C8239a) C7306d0.this.f23312f.get();
                int i2 = this.f23329g;
                this.f23327e = 1;
                Object m28760rk = c8239a.m28760rk(i2, this);
                obj = m28760rk;
                if (m28760rk == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.messaging.notifications.RegularMessagingNotificationsManagerImpl$setDefaultsAndSound$1$1$1", f = "RegularMessagingNotificationsManager.kt", l = {503}, m = "invokeSuspend")
    /* renamed from: e.a.a.y0.d0$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/d0$b.class */
    public static final class C7308b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f23330e;

        /* renamed from: f */
        public final /* synthetic */ C26450q f23331f;

        /* renamed from: g */
        public final /* synthetic */ C7306d0 f23332g;

        /* renamed from: h */
        public final /* synthetic */ int f23333h;

        /* renamed from: i */
        public final /* synthetic */ boolean f23334i;

        /* renamed from: j */
        public final /* synthetic */ Conversation f23335j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7308b(d dVar, C26450q c26450q, C7306d0 c7306d0, int i, boolean z, Conversation conversation) {
            super(2, dVar);
            this.f23331f = c26450q;
            this.f23332g = c7306d0;
            this.f23333h = i;
            this.f23334i = z;
            this.f23335j = conversation;
        }

        /* renamed from: i */
        public final d<s> m29796i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7308b(dVar, this.f23331f, this.f23332g, this.f23333h, this.f23334i, this.f23335j);
        }

        /* renamed from: k */
        public final Object m29795k(Object obj, Object obj2) {
            return m29796i(obj, (d) obj2).m29794s(s.a);
        }

        /* renamed from: s */
        public final Object m29794s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f23330e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC5614h abstractC5614h = (AbstractC5614h) this.f23332g.f23322p.get();
                Conversation conversation = this.f23335j;
                this.f23330e = 1;
                if (abstractC5614h.mo32886a(conversation, null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C7306d0(Context context, AbstractC19022f0 abstractC19022f0, a<AbstractC15275e> aVar, a<C8239a> aVar2, a<AbstractC7323l> aVar3, a<C20592g> aVar4, AbstractC6392i0 abstractC6392i0, a<AbstractC19056l1> aVar5, a<AbstractC7325n> aVar6, a<AbstractC6394b> aVar7, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, a<AbstractC6248w> aVar8, a<AbstractC5614h> aVar9, a<AbstractC14913g> aVar10, a<AbstractC14920n> aVar11, boolean z, AbstractC19219a0 abstractC19219a0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19022f0, "deviceManager");
        l.e(aVar, "notificationManager");
        l.e(aVar2, "avatarXPresenter");
        l.e(aVar3, "searchHelper");
        l.e(aVar4, "featuresRegistry");
        l.e(abstractC6392i0, "messageSettings");
        l.e(aVar5, "ringtoneNotificationSettings");
        l.e(aVar6, "notificationState");
        l.e(aVar7, "messageUtil");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(aVar8, "readMessageStorage");
        l.e(aVar9, "conversationNotificationsManager");
        l.e(aVar10, "messagingNotificationSettings");
        l.e(aVar11, "systemNotificationManager");
        l.e(abstractC19219a0, "permissionUtil");
        this.f23309c = context;
        this.f23310d = abstractC19022f0;
        this.f23311e = aVar;
        this.f23312f = aVar2;
        this.f23313g = aVar3;
        this.f23314h = aVar4;
        this.f23315i = abstractC6392i0;
        this.f23316j = aVar5;
        this.f23317k = aVar6;
        this.f23318l = aVar7;
        this.f23319m = abstractC8541a;
        this.f23320n = abstractC8438a;
        this.f23321o = aVar8;
        this.f23322p = aVar9;
        this.f23323q = aVar10;
        this.f23324r = aVar11;
        this.f23325s = z;
        this.f23326t = abstractC19219a0;
        this.f23307a = context.getResources().getDimensionPixelSize(C2752R.dimen.message_notification_avatar_image_size);
        this.f23308b = context.getResources().getDimensionPixelSize(17104902);
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7351y
    /* renamed from: a */
    public void mo29747a(Collection<Long> collection) {
        l.e(collection, "conversationIds");
        for (Number number : collection) {
            ((AbstractC15275e) this.f23311e.get()).mo18972b(String.valueOf(number.longValue()), C2752R.C2754id.new_messages_notification_id);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            ArrayList arrayList = new ArrayList(C25225a.m4004J(collection, 10));
            for (Number number2 : collection) {
                arrayList.add(String.valueOf(number2.longValue()));
            }
            Set d1 = s1.u.i.d1(arrayList);
            List<StatusBarNotification> m29809d = m29809d();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : m29809d) {
                if (true ^ d1.contains(((StatusBarNotification) obj).getTag())) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() != 1 || ((StatusBarNotification) arrayList2.get(0)).getTag() != null) {
                return;
            }
            ((AbstractC15275e) this.f23311e.get()).mo18968f(C2752R.C2754id.new_messages_notification_id);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x05b4, code lost:
        if (r27 != null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0e77, code lost:
        if (p193e.p194a.p437c.p578p.C10480a.m25919o1((com.truecaller.messaging.data.types.Conversation) r0) != false) goto L272;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:325:0x11b9 -> B:176:0x092c). Please submit an issue!!! */
    @Override // p193e.p194a.p195a.p286y0.AbstractC7351y
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo29746b(java.util.Map<com.truecaller.messaging.data.types.Conversation, ? extends java.util.List<com.truecaller.messaging.data.types.Message>> r22) {
        /*
            Method dump skipped, instructions count: 4542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p286y0.C7306d0.mo29746b(java.util.Map):void");
    }

    /* renamed from: c */
    public final void m29810c(C26450q c26450q, SortedMap<Conversation, List<Message>> sortedMap, String str, boolean z) {
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        Conversation lastKey = sortedMap.lastKey();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Conversation, List<Message>> entry : sortedMap.entrySet()) {
            s1.u.i.b(arrayList, entry.getValue());
        }
        NotificationIdentifier notificationIdentifier = z ? new NotificationIdentifier(C2752R.C2754id.new_messages_notification_id, null, 0, 6) : new NotificationIdentifier(C2752R.C2754id.new_messages_notification_id, String.valueOf(lastKey.f13199a), (int) lastKey.f13199a);
        Set<Map.Entry<Conversation, List<Message>>> entrySet = sortedMap.entrySet();
        l.d(entrySet, "conversations.entries");
        Object P = s1.u.i.P(entrySet);
        l.d(P, "conversations.entries.last()");
        Map.Entry entry2 = (Map.Entry) P;
        Object key = entry2.getKey();
        l.d(key, "conversation.key");
        Conversation conversation = (Conversation) key;
        Object value = entry2.getValue();
        l.d(value, "conversation.value");
        if (C6393a.m31350a(conversation, ((C20592g) this.f23314h.get()).m10963h0().isEnabled(), ((Message) s1.u.i.Q((List) value)).f13399t, this.f23325s) == InboxTab.OTHERS) {
            pendingIntent = C10480a.m26019T(this.f23309c, arrayList, notificationIdentifier, "view_message", null, true, false, 40);
        } else {
            Object key2 = entry2.getKey();
            l.d(key2, "conversation.key");
            Conversation conversation2 = (Conversation) key2;
            Object value2 = entry2.getValue();
            l.d(value2, "conversation.value");
            pendingIntent = (((Message) s1.u.i.Q((List) value2)).f13399t == 4 || conversation2.f13216r == 4) && ((C20592g) this.f23314h.get()).m10969e0().isEnabled() ? C10480a.m26019T(this.f23309c, arrayList, notificationIdentifier, "view_message", null, false, true, 24) : C10480a.m26019T(this.f23309c, arrayList, notificationIdentifier, "view_message", null, false, false, 56);
        }
        c26450q.f74137R.deleteIntent = NotificationBroadcastReceiver.m34921b(this.f23309c, "com.truecaller.messaging.notifications.DISMISSED", arrayList, false, notificationIdentifier);
        c26450q.f74147g = pendingIntent;
        String string = this.f23309c.getString(arrayList.size() == 1 ? 2131886951 : 2131886950);
        Context context = this.f23309c;
        int i = NotificationBroadcastReceiver.f13651b;
        c26450q.m1867b(new C26444m(C2752R.C2753drawable.ic_drafts_gray_24dp, string, NotificationBroadcastReceiver.m34921b(context, arrayList.size() == 1 ? "com.truecaller.messaging.notifications.MARK_MESSAGE_READ" : "com.truecaller.messaging.notifications.MARK_READ", arrayList, true, notificationIdentifier)));
        if (sortedMap.size() > 1) {
            return;
        }
        Object H = s1.u.i.H(sortedMap, lastKey);
        l.d(H, "conversations.getValue(latestConversation)");
        Message message = (Message) s1.u.i.Q((List) H);
        if (arrayList.size() == 1 && message.f13390k == 0) {
            String string2 = this.f23309c.getString(2131887879);
            Context context2 = this.f23309c;
            Intent intent = new Intent(context2, NotificationBroadcastReceiver.class);
            intent.setAction("com.truecaller.messaging.notifications.DELETE");
            intent.putExtra("EXTRA_MESSAGE_ID", message.f13380a);
            intent.putExtra("EXTRA_NOTIFICATION_ID", notificationIdentifier);
            c26450q.m1867b(new C26444m(C2752R.C2753drawable.ic_delete_gray_24dp, string2, PendingIntent.getBroadcast(context2, notificationIdentifier.f13655c, intent, 201326592)));
        }
        Participant participant = message.f13382c;
        l.d(participant, "latestMessage.participant");
        if (participant.f11569b == 1 || (((C20592g) this.f23314h.get()).m10998G().isEnabled() && participant.m35448l() && (participant.f11593z & 4) == 0)) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        boolean z2 = i2 >= 24;
        if (z2) {
            Context context3 = this.f23309c;
            pendingIntent2 = PendingIntent.getBroadcast(context3, notificationIdentifier.f13655c, NotificationBroadcastReceiver.m34922a(context3, "com.truecaller.messaging.notifications.QUICK_REPLY", arrayList, true, notificationIdentifier, str), i2 >= 31 ? 167772160 : 134217728);
            l.d(pendingIntent2, "NotificationBroadcastRec…r, notificationChannelId)");
        } else if (z2) {
            throw new s1.i();
        } else {
            pendingIntent2 = C10480a.m26019T(this.f23309c, arrayList, new NotificationIdentifier(0, null, 0, 6), "reply_message", null, false, false, 56);
        }
        String string3 = this.f23309c.getString(2131889851);
        l.d(string3, "context.getString(R.string.reply)");
        C26444m.C26445a c26445a = new C26444m.C26445a((int) C2752R.C2753drawable.ic_send_gray_24dp, string3, pendingIntent2);
        c26445a.m1876a(new C26466z("KEY_REPLY_TEXT", string3, null, true, 0, new Bundle(), new HashSet()));
        C26444m m1875b = c26445a.m1875b();
        l.d(m1875b, "NotificationCompat.Actio…d())\n            .build()");
        c26450q.m1867b(m1875b);
    }

    /* renamed from: d */
    public final List<StatusBarNotification> m29809d() {
        StatusBarNotification[] mo18969e = ((AbstractC15275e) this.f23311e.get()).mo18969e();
        ArrayList arrayList = new ArrayList();
        for (StatusBarNotification statusBarNotification : mo18969e) {
            if (statusBarNotification.getId() == 2131364918) {
                arrayList.add(statusBarNotification);
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public final Bitmap m29808e(Participant participant, int i) {
        Bitmap bitmap;
        Uri mo14235k = this.f23310d.mo14235k(participant.f11582o, participant.f11580m, true);
        if (mo14235k != null) {
            C21869a c21869a = new C21869a(mo14235k, new C21872d(i, i));
            c21869a.f60757a = true;
            bitmap = C17891a1.C17902k.m15656N0(c21869a, this.f23309c);
        } else {
            bitmap = null;
        }
        if (bitmap != null) {
            return bitmap;
        }
        C8243a.m28739ok((C8243a) this.f23312f.get(), new AvatarXConfig(null, participant.f11572e, null, n.t1(participant.f11579l, false, 1), participant.m35446n() && !((C20592g) this.f23314h.get()).m10963h0().isEnabled(), false, participant.f11569b == 1, false, false, false, false, false, false, false, null, false, 65445), false, 2, null);
        return (Bitmap) s1.a.a.a.v0.f.d.c3((f) null, new C7307a(i, null), 1, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r4 != null) goto L7;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m29807f(com.truecaller.messaging.data.types.Conversation r4) {
        /*
            r3 = this;
            r0 = r4
            com.truecaller.messaging.data.types.ImGroupInfo r0 = r0.f13224z
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L15
            r0 = r4
            java.lang.String r0 = r0.f13320b
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L15
            goto L27
        L15:
            r0 = r3
            android.content.Context r0 = r0.f23309c
            r1 = 2131887016(0x7f1203a8, float:1.9408627E38)
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "context.getString(R.stri…MessageNotificationGroup)"
            s1.z.c.l.d(r0, r1)
        L27:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p286y0.C7306d0.m29807f(com.truecaller.messaging.data.types.Conversation):java.lang.String");
    }

    /* renamed from: g */
    public final CharSequence m29806g(Message message) {
        String m28344a = C8578e0.m28344a(((AbstractC6394b) this.f23318l.get()).mo31314z(message));
        l.d(m28344a, "RtlUtils.stringWithPhone…).buildSnippetText(this))");
        l.e(m28344a, "snippetText");
        SpannableString spannableString = new SpannableString(m28344a);
        Resources resources = this.f23309c.getResources();
        l.d(resources, "context.resources");
        l.e(resources, "res");
        String mo31318v = ((AbstractC6394b) this.f23318l.get()).mo31318v(message);
        ContextThemeWrapper m16113E = C17422k.m16113E(this.f23309c, true);
        boolean m25865z1 = C10480a.m25865z1(message);
        l.e(m16113E, AnalyticsConstants.CONTEXT);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (mo31318v != null) {
            spannableStringBuilder.append((CharSequence) mo31318v).append((CharSequence) StringConstant.SPACE);
        }
        if (m25865z1) {
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            spannableStringBuilder.append((CharSequence) TextDelimiterFormatter.m35098c(m16113E, spannableString, TextDelimiterFormatter.DelimiterVisibility.REMOVE));
        } else {
            spannableStringBuilder.append((CharSequence) spannableString);
        }
        return spannableStringBuilder;
    }

    /* renamed from: h */
    public final C26464y m29805h() {
        C26464y.C26465a c26465a = new C26464y.C26465a();
        c26465a.f74222a = this.f23309c.getString(C2752R.string.MessageNotificationYou);
        Participant.C3848b c3848b = new Participant.C3848b(0);
        c3848b.f11598e = this.f23320n.getString("profileNumber", "");
        c3848b.f11605l = this.f23319m.getString("profileFirstName");
        c3848b.f11606m = this.f23319m.getString("profileAvatar");
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "Participant.Builder(Part…AVATAR))\n        .build()");
        c26465a.f74223b = IconCompat.h(m29808e(m35443a, this.f23307a));
        C26464y c26464y = new C26464y(c26465a);
        l.d(c26464y, "Person.Builder()\n       …nSize)))\n        .build()");
        return c26464y;
    }

    /* renamed from: i */
    public final C26450q m29804i(C26450q c26450q, int i, boolean z, Conversation conversation) {
        c26450q.m1854o((!this.f23315i.mo31195I2() || this.f23310d.mo14232n() == 0) ? 4 : 6);
        if (i != 2) {
            c26450q.m1846w(((AbstractC19056l1) this.f23316j.get()).mo14182d());
        } else if (z) {
            c26450q.m1846w(((AbstractC19056l1) this.f23316j.get()).mo14184b());
            c26450q.f74137R.vibrate = ((AbstractC19056l1) this.f23316j.get()).mo14185a();
        } else {
            c26450q.m1846w(((AbstractC19056l1) this.f23316j.get()).mo14179g());
        }
        String str = conversation.f13198Q;
        if (str != null) {
            Uri parse = Uri.parse(str);
            l.d(parse, "uri");
            if (C19286f.m13672g(parse, this.f23309c)) {
                c26450q.m1846w(parse);
                l.d(c26450q, "setSound(uri)");
            } else {
                s1.a.a.a.v0.f.d.c3((f) null, new C7308b(null, c26450q, this, i, z, conversation), 1, (Object) null);
                conversation.f13198Q = null;
            }
        }
        c26450q.f74152l = 5;
        return c26450q;
    }

    /* renamed from: j */
    public final boolean m29803j(Map<Conversation, ? extends List<Message>> map) {
        boolean z;
        boolean z2 = true;
        if (!map.isEmpty()) {
            for (Map.Entry<Conversation, ? extends List<Message>> entry : map.entrySet()) {
                List<Message> value = entry.getValue();
                if (!(value instanceof Collection) || !value.isEmpty()) {
                    for (Message message : value) {
                        if (C10480a.m25899s1(message) && !((AbstractC7325n) this.f23317k.get()).mo29779a(message.f13380a)) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    break;
                }
            }
        }
        z2 = false;
        return z2;
    }

    /* renamed from: k */
    public final boolean m29802k(Message message) {
        return ((C20592g) this.f23314h.get()).m10982W().isEnabled() && this.f23326t.mo13822k() && this.f23315i.mo31159P3() && C10480a.m26081D1(message);
    }

    /* renamed from: l */
    public final boolean m29801l(Map<Conversation, ? extends List<Message>> map) {
        boolean z;
        boolean z2 = true;
        if (!map.isEmpty()) {
            for (Map.Entry<Conversation, ? extends List<Message>> entry : map.entrySet()) {
                List<Message> value = entry.getValue();
                if (!(value instanceof Collection) || !value.isEmpty()) {
                    for (Message message : value) {
                        if (!((AbstractC7325n) this.f23317k.get()).mo29779a(message.f13380a)) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    break;
                }
            }
        }
        z2 = false;
        return z2;
    }

    /* renamed from: m */
    public final C26464y m29800m(Participant participant) {
        C26464y.C26465a c26465a = new C26464y.C26465a();
        c26465a.f74222a = C6405h.m31301c(participant);
        c26465a.f74223b = IconCompat.h(m29808e(participant, this.f23307a));
        c26465a.f74227f = true;
        C26464y c26464y = new C26464y(c26465a);
        l.d(c26464y, "Person.Builder()\n       …rue)\n            .build()");
        return c26464y;
    }
}
