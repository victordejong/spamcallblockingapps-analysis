package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.dynamiclinks.internal.DynamicLinkData;
import com.google.protobuf.GeneratedMessageLite;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.AddParticipants;
import com.truecaller.api.services.messenger.p138v1.GetParticipants;
import com.truecaller.api.services.messenger.p138v1.GetPermissions;
import com.truecaller.api.services.messenger.p138v1.JoinViaInviteKey;
import com.truecaller.api.services.messenger.p138v1.ReissueGroupInviteKey;
import com.truecaller.api.services.messenger.p138v1.RemoveParticipants;
import com.truecaller.api.services.messenger.p138v1.UpdateRoles;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.ContextPermissions;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfo;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfoDelta;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfoExt;
import com.truecaller.api.services.messenger.p138v1.models.ParticipantInfo;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInviteLinkDialogActivity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import e.m.d.p.b;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import n3.b.a.h;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17733s0;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6136f;
import p193e.p194a.p195a.p244k.p245a.AbstractC6520b1;
import p193e.p194a.p195a.p244k.p245a.AbstractC6543e1;
import p193e.p194a.p195a.p244k.p245a.AbstractC6625s1;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p3.a.g1;
import p3.a.i1;
import q3.a.i0;
import s1.c0.c;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.m;
/* renamed from: e.a.a.k.a.a.f */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/f.class */
public final class C6450f implements AbstractC6448d {

    /* renamed from: a */
    public final AbstractC6625s1 f21418a;

    /* renamed from: b */
    public final ContentResolver f21419b;

    /* renamed from: c */
    public final AbstractC6115g f21420c;

    /* renamed from: d */
    public final AbstractC6392i0 f21421d;

    /* renamed from: e */
    public final AbstractC19222c f21422e;

    /* renamed from: f */
    public final AbstractC6496w f21423f;

    /* renamed from: g */
    public final AbstractC7343q f21424g;

    /* renamed from: h */
    public final C20592g f21425h;

    /* renamed from: i */
    public final a<AbstractC19854f<AbstractC6233m>> f21426i;

    /* renamed from: j */
    public final a<AbstractC19854f<AbstractC6543e1>> f21427j;

    /* renamed from: k */
    public final AbstractC19854f<AbstractC19463a0> f21428k;

    /* renamed from: l */
    public final AbstractC19462a f21429l;

    /* renamed from: m */
    public final AbstractC6457i f21430m;

    /* renamed from: n */
    public final AbstractC6520b1 f21431n;

    /* renamed from: o */
    public final AbstractC6445b f21432o;

    /* renamed from: p */
    public final AbstractC7419a f21433p;

    /* renamed from: e.a.a.k.a.a.f$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/f$a.class */
    public static final class C6451a extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C6451a f21434b = new C6451a();

        public C6451a() {
            super(1);
        }

        /* renamed from: d */
        public Object m30916d(Object obj) {
            s1.z.c.l.e((String) obj, "it");
            return "?";
        }
    }

    /* renamed from: e.a.a.k.a.a.f$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/f$b.class */
    public static final class C6452b extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C6452b f21435b = new C6452b();

        public C6452b() {
            super(1);
        }

        /* renamed from: d */
        public Object m30915d(Object obj) {
            s1.z.c.l.e((String) obj, "it");
            return "?";
        }
    }

    /* renamed from: e.a.a.k.a.a.f$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/f$c.class */
    public static final class C6453c<TResult> implements OnSuccessListener<b> {

        /* renamed from: a */
        public final /* synthetic */ h f21436a;

        public C6453c(h hVar) {
            this.f21436a = hVar;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(b bVar) {
            List<String> pathSegments;
            int indexOf;
            String str;
            b bVar2 = bVar;
            if (bVar2 != null) {
                DynamicLinkData dynamicLinkData = bVar2.a;
                Uri uri = null;
                if (dynamicLinkData != null && (str = dynamicLinkData.b) != null) {
                    uri = Uri.parse(str);
                }
                if (uri == null || (pathSegments = uri.getPathSegments()) == null || !pathSegments.contains("group") || pathSegments.size() <= (indexOf = pathSegments.indexOf("group") + 1)) {
                    return;
                }
                String str2 = pathSegments.get(indexOf);
                h hVar = this.f21436a;
                s1.z.c.l.d(str2, "inviteKey");
                s1.z.c.l.e(hVar, AnalyticsConstants.CONTEXT);
                s1.z.c.l.e(str2, "inviteKey");
                Intent intent = new Intent((Context) hVar, (Class<?>) GroupInviteLinkDialogActivity.class);
                intent.putExtra("extra_invite_key", str2);
                intent.addFlags(335544320);
                this.f21436a.startActivity(intent);
            }
        }
    }

    @e(c = "com.truecaller.messaging.transport.im.groups.ImGroupHelperImpl$shouldAutomaticallyDeclineInvite$1", f = "ImGroupHelper.kt", l = {Constants.WARN_ADM_PLAYOUT_ABNORMAL_FREQUENCY}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.a.f$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/f$d.class */
    public static final class C6454d extends i implements p<i0, d<? super FilterMatch>, Object> {

        /* renamed from: e */
        public int f21437e;

        /* renamed from: g */
        public final /* synthetic */ c0 f21439g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6454d(c0 c0Var, d dVar) {
            super(2, dVar);
            C6450f.this = r5;
            this.f21439g = c0Var;
        }

        /* renamed from: i */
        public final d<s> m30914i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C6454d(this.f21439g, dVar);
        }

        /* renamed from: k */
        public final Object m30913k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C6454d(this.f21439g, dVar).m30912s(s.a);
        }

        /* renamed from: s */
        public final Object m30912s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f21437e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f21437e = 1;
                Object m15195x = C18334g0.m15195x(C6450f.this.f21433p, (String) this.f21439g.a, null, false, this, 6, null);
                obj = m15195x;
                if (m15195x == aVar) {
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

    @Inject
    public C6450f(AbstractC6625s1 abstractC6625s1, ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC6392i0 abstractC6392i0, AbstractC19222c abstractC19222c, AbstractC6496w abstractC6496w, AbstractC7343q abstractC7343q, C20592g c20592g, a<AbstractC19854f<AbstractC6233m>> aVar, a<AbstractC19854f<AbstractC6543e1>> aVar2, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19462a abstractC19462a, AbstractC6457i abstractC6457i, AbstractC6520b1 abstractC6520b1, AbstractC6445b abstractC6445b, AbstractC7419a abstractC7419a) {
        s1.z.c.l.e(abstractC6625s1, "messengerStubManager");
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(abstractC6115g, "cursorsFactory");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(abstractC6496w, "imStatusMessageManager");
        s1.z.c.l.e(abstractC7343q, "messagingNotificationsManager");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(aVar, "messagesStorage");
        s1.z.c.l.e(aVar2, "imUserManager");
        s1.z.c.l.e(abstractC19854f, "eventsTracker");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC6457i, "groupHistoryHelper");
        s1.z.c.l.e(abstractC6520b1, "imUserInfoHelper");
        s1.z.c.l.e(abstractC6445b, "acceptGroupInviteTrigger");
        s1.z.c.l.e(abstractC7419a, "blockManager");
        this.f21418a = abstractC6625s1;
        this.f21419b = contentResolver;
        this.f21420c = abstractC6115g;
        this.f21421d = abstractC6392i0;
        this.f21422e = abstractC19222c;
        this.f21423f = abstractC6496w;
        this.f21424g = abstractC7343q;
        this.f21425h = c20592g;
        this.f21426i = aVar;
        this.f21427j = aVar2;
        this.f21428k = abstractC19854f;
        this.f21429l = abstractC19462a;
        this.f21430m = abstractC6457i;
        this.f21431n = abstractC6520b1;
        this.f21432o = abstractC6445b;
        this.f21433p = abstractC7419a;
    }

    /* renamed from: A */
    public final void m30956A(String str, boolean z, boolean z2) {
        Long mo30933j = mo30933j(str);
        if (mo30933j != null) {
            ((AbstractC6233m) ((AbstractC19854f) this.f21426i.get()).mo11854a()).mo31683t(mo30933j.longValue(), 1, 0, z, z2).mo11831c();
        }
    }

    /* renamed from: B */
    public final ImGroupInfo m30955B(String str) {
        Cursor query = this.f21419b.query(C8582g0.m28338C(), null, "im_group_id = ?", new String[]{str}, null);
        ImGroupInfo imGroupInfo = null;
        if (query != null) {
            try {
                AbstractC6136f mo31788d = this.f21420c.mo31788d(query);
                imGroupInfo = (mo31788d == null || !mo31788d.moveToFirst()) ? null : mo31788d.mo31746h();
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return imGroupInfo;
    }

    /* renamed from: C */
    public final String m30954C(String str) {
        ContentResolver contentResolver = this.f21419b;
        Uri m28338C = C8582g0.m28338C();
        s1.z.c.l.d(m28338C, "ImGroupInfoTable.getContentUri()");
        return C19286f.m13696H(contentResolver, m28338C, "invite_key", "im_group_id = ?", new String[]{str}, null, 16);
    }

    /* renamed from: D */
    public final List<Participant> m30953D(List<? extends Participant> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Participant participant : list) {
            arrayList.add(participant.f11572e);
        }
        ArrayList arrayList2 = null;
        if (s1.z.c.l.a(((AbstractC6543e1) ((AbstractC19854f) this.f21427j.get()).mo11854a()).mo30791a(arrayList, true).mo11831c(), Boolean.TRUE)) {
            ContentResolver contentResolver = this.f21419b;
            Uri m28297w = C8582g0.m28297w();
            String m8618h = C22128a.m8618h(C22128a.m8728C("normalized_number IN ("), s1.u.i.O(arrayList, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6452b.f21435b, 31), ") AND im_peer_id NOT NULL");
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            Cursor query = contentResolver.query(m28297w, new String[]{"normalized_number", "im_peer_id"}, m8618h, (String[]) Arrays.copyOf(strArr, strArr.length), null);
            arrayList2 = null;
            if (query != null) {
                try {
                    arrayList2 = new ArrayList();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        Participant.C3848b c3848b = new Participant.C3848b(0);
                        c3848b.f11598e = string;
                        c3848b.f11596c = string2;
                        arrayList2.add(c3848b.m35443a());
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
        }
        return arrayList2;
    }

    /* renamed from: E */
    public final Participant m30952E(Map<Participant, Integer> map, ImGroupInfo imGroupInfo) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        Participant m30922u = m30922u(arrayList, map, imGroupInfo);
        ContentResolver contentResolver = this.f21419b;
        Uri uri = C17891a1.f50888a;
        s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
        C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList);
        if (C10480a.m25894t1(imGroupInfo)) {
            String str = imGroupInfo.f13319a;
            if (this.f21421d.mo31099b2()) {
                this.f21432o.mo30957a(str);
            }
        }
        return m30922u;
    }

    /* renamed from: F */
    public final boolean m30951F(String str, String str2) {
        String mo31078f;
        if (mo30925r(str2) && (mo31078f = this.f21421d.mo31078f()) != null) {
            Boolean bool = (Boolean) m30950G(str, C6456h.m30909b(mo31078f)).a;
            if (bool.booleanValue()) {
                C17733s0.C17735b m15824a = C17733s0.m15824a();
                m15824a.m15821c(str);
                m15824a.m15819e(str2);
                String mo31078f2 = this.f21421d.mo31078f();
                if (mo31078f2 == null) {
                    mo31078f2 = "";
                }
                m15824a.m15820d(mo31078f2);
                m15824a.m15822b("Decline");
                this.f21428k.mo11854a().mo13111a(m15824a.build());
            }
            return bool.booleanValue();
        }
        return false;
    }

    /* renamed from: G */
    public final k<Boolean, RemoveParticipants.Response> m30950G(String str, Participant participant) {
        C20458b.C20459a mo20911c;
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        mo20911c = this.f21418a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a != null) {
            try {
                RemoveParticipants.Request.C3092a newBuilder = RemoveParticipants.Request.newBuilder();
                InputPeer m30907d = C6456h.m30907d(participant);
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.addParticipants(m30907d);
                InputPeer m30910a = C6456h.m30910a(str);
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setContext(m30910a);
                long e = c.b.e();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setRandomId(e);
                RemoveParticipants.Response m11108q = c20459a.m11108q((RemoveParticipants.Request) newBuilder.build());
                s1.z.c.l.d(m11108q, "RemoveParticipants.Reque….removeParticipants(it) }");
                return new k<>(bool, m11108q);
            } catch (RuntimeException e2) {
                if (e2 instanceof i1) {
                    i1 i1Var = e2;
                    g1 g1Var = i1Var.a;
                    s1.z.c.l.d(g1Var, "e.status");
                    if (g1Var.a == g1.b.h) {
                        g1 g1Var2 = i1Var.a;
                        s1.z.c.l.d(g1Var2, "e.status");
                        if (s1.z.c.l.a(g1Var2.b, "GROUP")) {
                            return new k<>(bool, (Object) null);
                        }
                    }
                }
                return new k<>(bool2, (Object) null);
            }
        }
        return new k<>(bool2, (Object) null);
    }

    /* renamed from: H */
    public final void m30949H(String str) {
        C20458b.C20459a mo20911c;
        mo20911c = this.f21418a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a != null) {
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            arrayList.add(ContentProviderOperation.newDelete(C8582g0.m28337D()).withSelection("im_group_id = ?", new String[]{str}).build());
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            InputPeer m30910a = C6456h.m30910a(str);
            this.f21421d.mo31077f0(this.f21422e.mo13819c());
            String str2 = "";
            while (true) {
                GetParticipants.Request.C3059a newBuilder = GetParticipants.Request.newBuilder();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setContext(m30910a);
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setLimit(50);
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setPageToken(str2);
                try {
                    GetParticipants.Response m11114k = c20459a.m11114k((GetParticipants.Request) newBuilder.build());
                    s1.z.c.l.d(m11114k, "response");
                    List<ParticipantInfo> participantsInfoList = m11114k.getParticipantsInfoList();
                    s1.z.c.l.d(participantsInfoList, "response.participantsInfoList");
                    int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(participantsInfoList, 10));
                    int i = m3942Y1;
                    if (m3942Y1 < 16) {
                        i = 16;
                    }
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(i);
                    for (ParticipantInfo participantInfo : participantsInfoList) {
                        s1.z.c.l.d(participantInfo, "it");
                        Peer peer = participantInfo.getPeer();
                        s1.z.c.l.d(peer, "it.peer");
                        linkedHashMap2.put(C10480a.m25947i3(peer), Integer.valueOf(participantInfo.getRoles()));
                    }
                    m30921v(arrayList, linkedHashMap2, str);
                    Map<String, UserInfo> userInfoMap = m11114k.getUserInfoMap();
                    s1.z.c.l.d(userInfoMap, "response.userInfoMap");
                    linkedHashMap.putAll(userInfoMap);
                    if (m11114k.getParticipantsInfoCount() < 50) {
                        arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28338C()).withValue("are_participants_stale", Boolean.FALSE).withSelection("im_group_id = ?", new String[]{str}).build());
                        ContentResolver contentResolver = this.f21419b;
                        Uri uri = C17891a1.f50888a;
                        s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
                        C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList);
                        this.f21431n.mo30817d(linkedHashMap);
                        return;
                    }
                    str2 = m11114k.getNextPageToken();
                    s1.z.c.l.d(str2, "response.nextPageToken");
                } catch (RuntimeException e) {
                    return;
                }
            }
        }
    }

    /* renamed from: I */
    public final k<Boolean, RemoveParticipants.Response> m30948I(String str, Participant participant) {
        k<Boolean, RemoveParticipants.Response> m30950G = m30950G(str, participant);
        if (((Boolean) m30950G.a).booleanValue()) {
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            m30919x(arrayList, C25225a.m3962T1(participant), str);
            ContentResolver contentResolver = this.f21419b;
            Uri uri = C17891a1.f50888a;
            s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
            C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList);
        }
        return m30950G;
    }

    /* renamed from: J */
    public final boolean m30947J(String str) {
        ContentResolver contentResolver = this.f21419b;
        Uri m28338C = C8582g0.m28338C();
        s1.z.c.l.d(m28338C, "ImGroupInfoTable.getContentUri()");
        Integer m13700D = C19286f.m13700D(contentResolver, m28338C, "roles", "im_group_id = ?", new String[]{str});
        boolean z = true;
        if (m13700D != null) {
            z = m13700D.intValue() == 0;
        }
        return z;
    }

    /* renamed from: K */
    public final void m30946K(String str, String str2, String str3) {
        C17733s0.C17735b m15824a = C17733s0.m15824a();
        if (str == null) {
            str = "n/a";
        }
        m15824a.m15821c(str);
        m15824a.m15819e("n/a");
        m15824a.m15820d(this.f21421d.mo31078f());
        m15824a.m15822b(str2);
        m15824a.validate(m15824a.fields()[6], "link");
        m15824a.f50268e = "link";
        m15824a.fieldSetFlags()[6] = true;
        if (str3 != null) {
            m15824a.validate(m15824a.fields()[7], str3);
            m15824a.f50269f = str3;
            m15824a.fieldSetFlags()[7] = true;
        }
        this.f21428k.mo11854a().mo13111a(m15824a.build());
    }

    /* renamed from: L */
    public final void m30945L(String str, String str2, String str3) {
        C17733s0.C17735b m15824a = C17733s0.m15824a();
        m15824a.m15821c(str);
        m15824a.m15819e(str2);
        m15824a.m15820d(str3);
        m15824a.m15822b("Receive");
        this.f21428k.mo11854a().mo13111a(m15824a.build());
    }

    /* renamed from: M */
    public final boolean m30944M(String str, GroupInfoDelta groupInfoDelta) {
        ContentValues contentValues = new ContentValues();
        if (groupInfoDelta.getTitleInfoCase() != GroupInfoDelta.TitleInfoCase.TITLEUNCHANGED) {
            contentValues.put("title", groupInfoDelta.getTitle());
        }
        if (groupInfoDelta.getAvatarInfoCase() != GroupInfoDelta.AvatarInfoCase.AVATARUNCHANGED) {
            contentValues.put("avatar", groupInfoDelta.getAvatar());
        }
        boolean z = false;
        if (contentValues.size() == 0) {
            return false;
        }
        if (this.f21419b.update(C8582g0.m28338C(), contentValues, "im_group_id=?", new String[]{str}) > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: N */
    public final UpdateRoles.Response m30943N(String str, String str2, int i) {
        C20458b.C20459a mo20911c;
        C20458b.C20459a mo20911c2;
        String mo31078f;
        mo20911c = this.f21418a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a != null) {
            try {
                UpdateRoles.Request.C3131a newBuilder = UpdateRoles.Request.newBuilder();
                InputPeer m30910a = C6456h.m30910a(str);
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setContext(m30910a);
                InputPeer.C3289b newBuilder2 = InputPeer.newBuilder();
                InputPeer.User.C3287a newBuilder3 = InputPeer.User.newBuilder();
                newBuilder3.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder3).instance.setId(str2);
                newBuilder2.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder2).instance.setUser(newBuilder3.build());
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setParticipant(newBuilder2.build());
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setRoles(i);
                long e = c.b.e();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setRandomId(e);
                UpdateRoles.Response m11101x = c20459a.m11101x((UpdateRoles.Request) newBuilder.build());
                s1.z.c.l.d(m11101x, "UpdateRoles.Request.newB… { stub.updateRoles(it) }");
                ArrayList arrayList = new ArrayList();
                ContextPermissions permissions = m11101x.getPermissions();
                s1.z.c.l.d(permissions, "response.permissions");
                m30918y(arrayList, str, str2, i, C6456h.m30908c(permissions), null);
                ContentResolver contentResolver = this.f21419b;
                Uri uri = C17891a1.f50888a;
                s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
                C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList);
                return m11101x;
            } catch (RuntimeException e2) {
                if (!(e2 instanceof i1)) {
                    return null;
                }
                i1 i1Var = e2;
                g1 g1Var = i1Var.a;
                s1.z.c.l.d(g1Var, "e.status");
                if (g1Var.a != g1.b.f) {
                    return null;
                }
                g1 g1Var2 = i1Var.a;
                s1.z.c.l.d(g1Var2, "e.status");
                if (!s1.z.c.l.a(g1Var2.b, "UNSUPPORTED_ROLES")) {
                    return null;
                }
                mo20911c2 = this.f21418a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
                C20458b.C20459a c20459a2 = mo20911c2;
                if (c20459a2 == null || (mo31078f = this.f21421d.mo31078f()) == null) {
                    return null;
                }
                try {
                    GetPermissions.Request.C3064a newBuilder4 = GetPermissions.Request.newBuilder();
                    InputPeer m30910a2 = C6456h.m30910a(str);
                    newBuilder4.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder4).instance.setContext(m30910a2);
                    GetPermissions.Response m11113l = c20459a2.m11113l((GetPermissions.Request) newBuilder4.build());
                    s1.z.c.l.d(m11113l, "GetPermissions.Request.n…stub.getPermissions(it) }");
                    ArrayList arrayList2 = new ArrayList();
                    int roles = m11113l.getRoles();
                    ContextPermissions permissions2 = m11113l.getPermissions();
                    s1.z.c.l.d(permissions2, "response.permissions");
                    m30918y(arrayList2, str, mo31078f, roles, C6456h.m30908c(permissions2), null);
                    ContentResolver contentResolver2 = this.f21419b;
                    Uri uri2 = C17891a1.f50888a;
                    s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
                    C12864a2.m22566a0(contentResolver2, "com.truecaller", arrayList2);
                    return null;
                } catch (RuntimeException e3) {
                    return null;
                }
            }
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: a */
    public void mo30942a(h hVar) {
        s1.z.c.l.e(hVar, "activity");
        try {
            s1.z.c.l.d(e.m.d.p.a.b().a(hVar.getIntent()).m38531g(hVar, new C6453c(hVar)), "FirebaseDynamicLinks.get…      }\n                }");
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: b */
    public void mo30941b(Event.ParticipantsRemoved participantsRemoved, long j, boolean z) {
        s1.z.c.l.e(participantsRemoved, "event");
        AbstractC6496w abstractC6496w = this.f21423f;
        Peer context = participantsRemoved.getContext();
        s1.z.c.l.d(context, "event.context");
        Peer.Group group = context.getGroup();
        s1.z.c.l.d(group, "event.context.group");
        String id = group.getId();
        s1.z.c.l.d(id, "event.context.group.id");
        long m30906e = C6456h.m30906e(participantsRemoved.getDate());
        String messageId = participantsRemoved.getMessageId();
        s1.z.c.l.d(messageId, "event.messageId");
        C6446b0 c6446b0 = new C6446b0(id, m30906e, j, messageId, z);
        Peer sender = participantsRemoved.getSender();
        s1.z.c.l.d(sender, "it");
        if (!(sender.getTypeCase() == Peer.TypeCase.USER)) {
            sender = null;
        }
        String str = null;
        if (sender != null) {
            Peer.User user = sender.getUser();
            str = null;
            if (user != null) {
                str = user.getId();
            }
        }
        List<Peer> participantsList = participantsRemoved.getParticipantsList();
        s1.z.c.l.d(participantsList, "event.participantsList");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(participantsList, 10));
        for (Peer peer : participantsList) {
            s1.z.c.l.d(peer, "it");
            Peer.User user2 = peer.getUser();
            s1.z.c.l.d(user2, "it.user");
            arrayList.add(user2.getId());
        }
        abstractC6496w.mo30847e(c6446b0, str, arrayList);
        if (!z) {
            ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
            List<Peer> participantsList2 = participantsRemoved.getParticipantsList();
            s1.z.c.l.d(participantsList2, "event.participantsList");
            ArrayList arrayList3 = new ArrayList(C25225a.m4004J(participantsList2, 10));
            for (Peer peer2 : participantsList2) {
                s1.z.c.l.d(peer2, "it");
                arrayList3.add(C10480a.m25947i3(peer2));
            }
            Peer context2 = participantsRemoved.getContext();
            s1.z.c.l.d(context2, "event.context");
            Peer.Group group2 = context2.getGroup();
            s1.z.c.l.d(group2, "event.context.group");
            String id2 = group2.getId();
            s1.z.c.l.d(id2, "event.context.group.id");
            m30919x(arrayList2, arrayList3, id2);
            ContentResolver contentResolver = this.f21419b;
            Uri uri = C17891a1.f50888a;
            s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
            C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList2);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: c */
    public boolean mo30940c(String str, boolean z) {
        UpdateRoles.Response m30943N;
        int i;
        s1.z.c.l.e(str, "groupId");
        String mo31078f = this.f21421d.mo31078f();
        if (mo31078f == null || (m30943N = m30943N(str, mo31078f, 8)) == null) {
            return false;
        }
        if (z) {
            i = 1;
        } else if (z) {
            throw new s1.i();
        } else {
            i = 0;
        }
        AbstractC6496w abstractC6496w = this.f21423f;
        long m30906e = C6456h.m30906e(m30943N.getDate());
        long seq = m30943N.getSeq();
        String messageId = m30943N.getMessageId();
        s1.z.c.l.d(messageId, "response.messageId");
        abstractC6496w.mo30835q(new C6446b0(str, m30906e, seq, messageId, false, 16));
        this.f21430m.mo30901c(str, m30943N.getSeq(), 1, 0L, Integer.valueOf(i));
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: d */
    public void mo30939d(Event.GroupDeleted groupDeleted, long j, boolean z) {
        s1.z.c.l.e(groupDeleted, "event");
        AbstractC6496w abstractC6496w = this.f21423f;
        Peer context = groupDeleted.getContext();
        s1.z.c.l.d(context, "event.context");
        Peer.Group group = context.getGroup();
        s1.z.c.l.d(group, "event.context.group");
        String id = group.getId();
        s1.z.c.l.d(id, "event.context.group.id");
        long m30906e = C6456h.m30906e(groupDeleted.getDate());
        String messageId = groupDeleted.getMessageId();
        s1.z.c.l.d(messageId, "event.messageId");
        abstractC6496w.mo30839m(new C6446b0(id, m30906e, j, messageId, z));
        if (!z) {
            ArrayList arrayList = new ArrayList();
            Peer context2 = groupDeleted.getContext();
            s1.z.c.l.d(context2, "event.context");
            Peer.Group group2 = context2.getGroup();
            s1.z.c.l.d(group2, "event.context.group");
            String id2 = group2.getId();
            arrayList.add(ContentProviderOperation.newDelete(C8582g0.m28337D()).withSelection("im_group_id=?", new String[]{id2}).build());
            ContentProviderOperation.Builder withValue = ContentProviderOperation.newUpdate(C8582g0.m28338C()).withValue("roles", 0);
            ImGroupPermissions imGroupPermissions = C6456h.f21441a;
            arrayList.add(withValue.withValues(C6456h.m30905f(C6456h.f21441a)).withSelection("im_group_id = ?", new String[]{id2}).build());
            ContentResolver contentResolver = this.f21419b;
            Uri uri = C17891a1.f50888a;
            s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
            C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03c0  */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public s1.k<com.truecaller.messaging.data.types.ImInviteGroupInfo, java.lang.String> mo30938e(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 1010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.p246a.C6450f.mo30938e(java.lang.String):s1.k");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: f */
    public void mo30937f(String str, l<? super Event, s> lVar) {
        s1.z.c.l.e(str, "groupId");
        s1.z.c.l.e(lVar, "consumer");
        ImGroupInfo m30955B = m30955B(str);
        if (m30955B != null) {
            this.f21430m.mo30902b(m30955B, lVar);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: g */
    public boolean mo30936g(String str, Event event) {
        Long m13699E;
        boolean z;
        String mo31078f;
        s1.z.c.l.e(str, "groupId");
        s1.z.c.l.e(event, "event");
        ContentResolver contentResolver = this.f21419b;
        Uri m28338C = C8582g0.m28338C();
        s1.z.c.l.d(m28338C, "ImGroupInfoTable.getContentUri()");
        boolean z2 = true;
        m13699E = C19286f.m13699E(contentResolver, m28338C, "current_sequence_number", "im_group_id = ?", new String[]{str}, null);
        if (m13699E != null) {
            if (event.getContextSeq() > m13699E.longValue()) {
                z2 = false;
            }
            return z2;
        }
        if (event.getPayloadCase() == Event.PayloadCase.GROUP_CREATED) {
            z = true;
            break;
        }
        if (event.getPayloadCase() == Event.PayloadCase.PARTICIPANT_ADDED && (mo31078f = this.f21421d.mo31078f()) != null) {
            Event.ParticipantsAdded participantAdded = event.getParticipantAdded();
            s1.z.c.l.d(participantAdded, "participantAdded");
            List<ParticipantInfo> participantsList = participantAdded.getParticipantsList();
            s1.z.c.l.d(participantsList, "participantAdded.participantsList");
            if (!participantsList.isEmpty()) {
                for (ParticipantInfo participantInfo : participantsList) {
                    s1.z.c.l.d(participantInfo, "it");
                    Peer peer = participantInfo.getPeer();
                    s1.z.c.l.d(peer, "it.peer");
                    Peer.User user = peer.getUser();
                    s1.z.c.l.d(user, "it.peer.user");
                    if (s1.z.c.l.a(user.getId(), mo31078f)) {
                        z = true;
                        break;
                    }
                }
            }
        }
        z = false;
        if (z) {
            return false;
        }
        if (this.f21421d.mo31204G3() == 0) {
            return true;
        }
        this.f21421d.mo30998s2(1);
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: h */
    public int mo30935h(String str) {
        int i;
        s1.z.c.l.e(str, "groupId");
        try {
            ContentResolver contentResolver = this.f21419b;
            Uri m28337D = C8582g0.m28337D();
            s1.z.c.l.d(m28337D, "ImGroupParticipantsTable.getContentUri()");
            Integer m13700D = C19286f.m13700D(contentResolver, m28337D, "COUNT(*)", "im_group_id=?", new String[]{str});
            i = 0;
            if (m13700D != null) {
                i = m13700D.intValue();
            }
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            i = 0;
        }
        return i;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: i */
    public void mo30934i(Event.GroupInviteKeyUpdated groupInviteKeyUpdated, long j, boolean z) {
        s1.z.c.l.e(groupInviteKeyUpdated, "event");
        String inviteKey = groupInviteKeyUpdated.getInviteKey();
        if (inviteKey != null) {
            if (!(inviteKey.length() > 0)) {
                inviteKey = null;
            }
            if (inviteKey == null) {
                return;
            }
            String groupId = groupInviteKeyUpdated.getGroupId();
            s1.z.c.l.d(groupId, "event.groupId");
            boolean z2 = m30954C(groupId) != null;
            if (!z) {
                ContentResolver contentResolver = this.f21419b;
                Uri m28338C = C8582g0.m28338C();
                ContentValues contentValues = new ContentValues();
                contentValues.put("invite_key", inviteKey);
                contentResolver.update(m28338C, contentValues, "im_group_id = ?", new String[]{groupInviteKeyUpdated.getGroupId()});
            }
            if (!z2) {
                return;
            }
            AbstractC6496w abstractC6496w = this.f21423f;
            String groupId2 = groupInviteKeyUpdated.getGroupId();
            s1.z.c.l.d(groupId2, "event.groupId");
            C6446b0 c6446b0 = new C6446b0(groupId2, C6456h.m30906e(groupInviteKeyUpdated.getDate()), j, groupInviteKeyUpdated.getMessageId() + '-' + inviteKey, z);
            Peer sender = groupInviteKeyUpdated.getSender();
            s1.z.c.l.d(sender, "event.sender");
            Peer.User user = sender.getUser();
            s1.z.c.l.d(user, "event.sender.user");
            String id = user.getId();
            s1.z.c.l.d(id, "event.sender.user.id");
            abstractC6496w.mo30844h(c6446b0, id);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: j */
    public Long mo30933j(String str) {
        Long m13699E;
        s1.z.c.l.e(str, "imGroupId");
        ContentResolver contentResolver = this.f21419b;
        Uri m15702a = C17891a1.C17897f.m15702a();
        s1.z.c.l.d(m15702a, "ConversationsTable.getContentUri()");
        m13699E = C19286f.m13699E(contentResolver, m15702a, "_id", "tc_group_id = ?", new String[]{str}, null);
        return m13699E;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r44v0 */
    /* JADX WARN: Type inference failed for: r44v2 */
    /* JADX WARN: Type inference failed for: r44v3 */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: k */
    public void mo30932k(Event.GroupCreated groupCreated, long j, boolean z) {
        ParticipantInfo participantInfo;
        s1.z.c.l.e(groupCreated, "event");
        if (z) {
            groupCreated.getMessageId();
            return;
        }
        AbstractC6520b1 abstractC6520b1 = this.f21431n;
        Map<String, UserInfo> userInfoMap = groupCreated.getUserInfoMap();
        s1.z.c.l.d(userInfoMap, "event.userInfoMap");
        abstractC6520b1.mo30817d(userInfoMap);
        List<ParticipantInfo> participantsList = groupCreated.getParticipantsList();
        s1.z.c.l.d(participantsList, "event.participantsList");
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(participantsList, 10));
        int i = m3942Y1;
        if (m3942Y1 < 16) {
            i = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (ParticipantInfo participantInfo2 : participantsList) {
            s1.z.c.l.d(participantInfo2, "it");
            Peer peer = participantInfo2.getPeer();
            s1.z.c.l.d(peer, "it.peer");
            linkedHashMap.put(C10480a.m25947i3(peer), Integer.valueOf(participantInfo2.getRoles()));
        }
        Peer sender = groupCreated.getSender();
        s1.z.c.l.d(sender, "event.sender");
        Map<Participant, Integer> p0 = s1.u.i.p0(linkedHashMap, new k(C10480a.m25947i3(sender), Integer.valueOf(groupCreated.getSenderRoles())));
        String groupId = groupCreated.getGroupId();
        s1.z.c.l.d(groupId, "event.groupId");
        boolean m30947J = m30947J(groupId);
        String mo31078f = this.f21421d.mo31078f();
        List<ParticipantInfo> participantsList2 = groupCreated.getParticipantsList();
        s1.z.c.l.d(participantsList2, "event.participantsList");
        Iterator it = participantsList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                participantInfo = null;
                break;
            }
            participantInfo = it.next();
            ParticipantInfo participantInfo3 = participantInfo;
            s1.z.c.l.d(participantInfo3, "it");
            Peer peer2 = participantInfo3.getPeer();
            s1.z.c.l.d(peer2, "it.peer");
            Peer.User user = peer2.getUser();
            s1.z.c.l.d(user, "it.peer.user");
            if (s1.z.c.l.a(user.getId(), mo31078f)) {
                break;
            }
        }
        ParticipantInfo participantInfo4 = participantInfo;
        Boolean bool = null;
        if (participantInfo4 != null) {
            bool = Boolean.valueOf((participantInfo4.getRoles() & 2) != 0);
        }
        if (C12864a2.m22540r(bool)) {
            String groupId2 = groupCreated.getGroupId();
            s1.z.c.l.d(groupId2, "event.groupId");
            Peer sender2 = groupCreated.getSender();
            s1.z.c.l.d(sender2, "event.sender");
            Peer.User user2 = sender2.getUser();
            s1.z.c.l.d(user2, "event.sender.user");
            String id = user2.getId();
            s1.z.c.l.d(id, "event.sender.user.id");
            if (m30951F(groupId2, id)) {
                return;
            }
        }
        String groupId3 = groupCreated.getGroupId();
        s1.z.c.l.d(groupId3, "event.groupId");
        GroupInfo groupInfo = groupCreated.getGroupInfo();
        s1.z.c.l.d(groupInfo, "event.groupInfo");
        String title = groupInfo.getTitle();
        GroupInfo groupInfo2 = groupCreated.getGroupInfo();
        s1.z.c.l.d(groupInfo2, "event.groupInfo");
        String avatar = groupInfo2.getAvatar();
        long millis = TimeUnit.SECONDS.toMillis(groupCreated.getDate());
        Peer sender3 = groupCreated.getSender();
        s1.z.c.l.d(sender3, "event.sender");
        Peer.User user3 = sender3.getUser();
        s1.z.c.l.d(user3, "event.sender.user");
        String id2 = user3.getId();
        int roles = participantInfo4 != null ? participantInfo4.getRoles() : 0;
        ContextPermissions permissions = groupCreated.getPermissions();
        s1.z.c.l.d(permissions, "event.permissions");
        ImGroupPermissions m30908c = C6456h.m30908c(permissions);
        ?? mo13819c = m30947J ? this.f21422e.mo13819c() : false;
        GroupInfoExt groupInfoExt = groupCreated.getGroupInfoExt();
        s1.z.c.l.d(groupInfoExt, "event.groupInfoExt");
        m30952E(p0, new ImGroupInfo(groupId3, title, avatar, millis, id2, roles, m30908c, 0, 0, -1L, 0L, false, 0L, mo13819c == true ? 1L : 0L, m30947J ? 1 : 0, 0, groupInfoExt.getInviteKey()));
        AbstractC6496w abstractC6496w = this.f21423f;
        String groupId4 = groupCreated.getGroupId();
        s1.z.c.l.d(groupId4, "event.groupId");
        long m30906e = C6456h.m30906e(groupCreated.getDate());
        String messageId = groupCreated.getMessageId();
        s1.z.c.l.d(messageId, "event.messageId");
        C6446b0 c6446b0 = new C6446b0(groupId4, m30906e, j, messageId, false, 16);
        Peer sender4 = groupCreated.getSender();
        s1.z.c.l.d(sender4, "event.sender");
        Peer.User user4 = sender4.getUser();
        s1.z.c.l.d(user4, "event.sender.user");
        String id3 = user4.getId();
        s1.z.c.l.d(id3, "event.sender.user.id");
        GroupInfo groupInfo3 = groupCreated.getGroupInfo();
        s1.z.c.l.d(groupInfo3, "event.groupInfo");
        String title2 = groupInfo3.getTitle();
        s1.z.c.l.d(title2, "event.groupInfo.title");
        abstractC6496w.mo30842j(c6446b0, id3, title2);
        if (!m30947J) {
            return;
        }
        String groupId5 = groupCreated.getGroupId();
        s1.z.c.l.d(groupId5, "event.groupId");
        ImGroupInfo m30955B = m30955B(groupId5);
        if (m30955B != null) {
            this.f21424g.mo29770g(m30955B, false);
        }
        String groupId6 = groupCreated.getGroupId();
        s1.z.c.l.d(groupId6, "event.groupId");
        Peer sender5 = groupCreated.getSender();
        s1.z.c.l.d(sender5, "event.sender");
        Peer.User user5 = sender5.getUser();
        s1.z.c.l.d(user5, "event.sender.user");
        String id4 = user5.getId();
        s1.z.c.l.d(id4, "event.sender.user.id");
        m30945L(groupId6, id4, mo31078f != null ? mo31078f : "");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0457, code lost:
        if ((r0 != null ? r0.f13324f : 0) == 0) goto L74;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0642  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x05d7  */
    /* JADX WARN: Type inference failed for: r0v148 */
    /* JADX WARN: Type inference failed for: r0v173 */
    /* JADX WARN: Type inference failed for: r0v176 */
    /* JADX WARN: Type inference failed for: r0v214 */
    /* JADX WARN: Type inference failed for: r0v263, types: [long] */
    /* JADX WARN: Type inference failed for: r0v266, types: [long] */
    /* JADX WARN: Type inference failed for: r0v269, types: [long] */
    /* JADX WARN: Type inference failed for: r0v284 */
    /* JADX WARN: Type inference failed for: r0v359, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v373, types: [e.a.a.k.a.a.w] */
    /* JADX WARN: Type inference failed for: r0v70, types: [e.a.a.k.a.a.w] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r41v10 */
    /* JADX WARN: Type inference failed for: r41v5 */
    /* JADX WARN: Type inference failed for: r41v6 */
    /* JADX WARN: Type inference failed for: r41v7 */
    /* JADX WARN: Type inference failed for: r41v8 */
    /* JADX WARN: Type inference failed for: r41v9 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v1 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r50v0 */
    /* JADX WARN: Type inference failed for: r50v1 */
    /* JADX WARN: Type inference failed for: r50v2 */
    /* JADX WARN: Type inference failed for: r52v0 */
    /* JADX WARN: Type inference failed for: r52v1 */
    /* JADX WARN: Type inference failed for: r52v2 */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo30931l(com.truecaller.api.services.messenger.p138v1.events.Event.ParticipantsAdded r28, long r29, boolean r31) {
        /*
            Method dump skipped, instructions count: 2193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.p246a.C6450f.mo30931l(com.truecaller.api.services.messenger.v1.events.Event$ParticipantsAdded, long, boolean):void");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: m */
    public String mo30930m(String str) {
        s1.z.c.l.e(str, "groupId");
        String m30954C = m30954C(str);
        return m30954C != null ? m30954C : mo30927p(str);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: n */
    public Integer mo30929n(String str, String str2) {
        s1.z.c.l.e(str, "groupId");
        s1.z.c.l.e(str2, "imPeerId");
        ContentResolver contentResolver = this.f21419b;
        Uri m28337D = C8582g0.m28337D();
        s1.z.c.l.d(m28337D, "ImGroupParticipantsTable.getContentUri()");
        return C19286f.m13700D(contentResolver, m28337D, "roles", "im_group_id = ? AND im_peer_id = ?", new String[]{str, str2});
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0bfb, code lost:
        if (p193e.p194a.p682e.C12864a2.m22566a0(r0, "com.truecaller", r0) == false) goto L225;
     */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0d35  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x1236  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x1253 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x03f6  */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle mo30928o(android.content.Intent r29) {
        /*
            Method dump skipped, instructions count: 4709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.p246a.C6450f.mo30928o(android.content.Intent):android.os.Bundle");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: p */
    public String mo30927p(String str) {
        C20458b.C20459a mo20911c;
        s1.z.c.l.e(str, "groupId");
        mo20911c = this.f21418a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a != null) {
            ReissueGroupInviteKey.Request.C3088a newBuilder = ReissueGroupInviteKey.Request.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setGroupId(str);
            long e = c.b.e();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setRandomId(e);
            try {
                ReissueGroupInviteKey.Response m11109p = c20459a.m11109p((ReissueGroupInviteKey.Request) newBuilder.build());
                boolean z = m30954C(str) != null;
                ContentResolver contentResolver = this.f21419b;
                Uri m28338C = C8582g0.m28338C();
                ContentValues contentValues = new ContentValues();
                s1.z.c.l.d(m11109p, "response");
                contentValues.put("invite_key", m11109p.getInviteKey());
                contentResolver.update(m28338C, contentValues, "im_group_id=?", new String[]{str});
                if (z) {
                    AbstractC6496w abstractC6496w = this.f21423f;
                    long m30906e = C6456h.m30906e(m11109p.getDate());
                    long seq = m11109p.getSeq();
                    abstractC6496w.mo30838n(new C6446b0(str, m30906e, seq, m11109p.getMessageId() + '-' + m11109p.getInviteKey(), false));
                }
                return m11109p.getInviteKey();
            } catch (RuntimeException e2) {
                return null;
            }
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: q */
    public k<String, String> mo30926q(String str) {
        C20458b.C20459a mo20911c;
        k<String, String> kVar;
        String str2;
        s1.z.c.l.e(str, "inviteKey");
        mo20911c = this.f21418a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a != null) {
            try {
                JoinViaInviteKey.Request.C3073a newBuilder = JoinViaInviteKey.Request.newBuilder();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setInviteKey(str);
                long nextLong = new Random().nextLong();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setRandomId(nextLong);
                JoinViaInviteKey.Response m11111n = c20459a.m11111n((JoinViaInviteKey.Request) newBuilder.build());
                s1.z.c.l.d(m11111n, "response");
                m30946K(m11111n.getGroupId(), "Accept", null);
                kVar = new k<>(m11111n.getGroupId(), (Object) null);
            } catch (i1 e) {
                g1 g1Var = e.a;
                s1.z.c.l.d(g1Var, "e.status");
                g1.b bVar = g1Var.a;
                g1.b bVar2 = g1.b.h;
                if (bVar == bVar2) {
                    g1 g1Var2 = e.a;
                    s1.z.c.l.d(g1Var2, "e.status");
                    if (s1.z.c.l.a(g1Var2.b, "GROUP")) {
                        str2 = "groupNotFound";
                        m30946K(null, "Fail", str2);
                        kVar = new k<>((Object) null, str2);
                    }
                }
                g1 g1Var3 = e.a;
                s1.z.c.l.d(g1Var3, "e.status");
                if (g1Var3.a == g1.b.f) {
                    g1 g1Var4 = e.a;
                    s1.z.c.l.d(g1Var4, "e.status");
                    if (s1.z.c.l.a(g1Var4.b, "WRONG_DC")) {
                        str2 = "crossDc";
                        m30946K(null, "Fail", str2);
                        kVar = new k<>((Object) null, str2);
                    }
                }
                g1 g1Var5 = e.a;
                s1.z.c.l.d(g1Var5, "e.status");
                if (g1Var5.a == bVar2) {
                    g1 g1Var6 = e.a;
                    s1.z.c.l.d(g1Var6, "e.status");
                    if (s1.z.c.l.a(g1Var6.b, "INVITE_KEY")) {
                        str2 = "expiredLink";
                        m30946K(null, "Fail", str2);
                        kVar = new k<>((Object) null, str2);
                    }
                }
                g1 g1Var7 = e.a;
                s1.z.c.l.d(g1Var7, "e.status");
                if (g1Var7.a == g1.b.j) {
                    g1 g1Var8 = e.a;
                    s1.z.c.l.d(g1Var8, "e.status");
                    if (s1.z.c.l.a(g1Var8.b, "PARTICIPANT_WAS_KICKED_OUT")) {
                        str2 = "noRole";
                        m30946K(null, "Fail", str2);
                        kVar = new k<>((Object) null, str2);
                    }
                }
                g1 g1Var9 = e.a;
                s1.z.c.l.d(g1Var9, "e.status");
                str2 = "unknown";
                if (g1Var9.a == g1.b.l) {
                    g1 g1Var10 = e.a;
                    s1.z.c.l.d(g1Var10, "e.status");
                    str2 = "unknown";
                    if (s1.z.c.l.a(g1Var10.b, "GROUP_SIZE_LIMIT_REACHED")) {
                        str2 = "exceedSize";
                    }
                }
                m30946K(null, "Fail", str2);
                kVar = new k<>((Object) null, str2);
            } catch (RuntimeException e2) {
                m30946K(null, "Fail", "unknown");
                kVar = new k<>((Object) null, "unknown");
            }
            return kVar;
        }
        return new k<>((Object) null, "unknown");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: r */
    public boolean mo30925r(String str) {
        s1.z.c.l.e(str, "peerId");
        c0 c0Var = new c0();
        String mo11831c = ((AbstractC6543e1) ((AbstractC19854f) this.f21427j.get()).mo11854a()).mo30784h(str).mo11831c();
        if (mo11831c != null) {
            str = mo11831c;
        }
        c0Var.a = str;
        boolean z = true;
        FilterMatch filterMatch = (FilterMatch) s1.a.a.a.v0.f.d.c3((f) null, new C6454d(c0Var, null), 1, (Object) null);
        if (filterMatch.f10453b != FilterAction.FILTER_BLACKLISTED || filterMatch.f10454c != ActionSource.BLACKLISTED_NUMBER) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: s */
    public void mo30924s(Event.RolesUpdated rolesUpdated, long j, boolean z) {
        s1.z.c.l.e(rolesUpdated, "event");
        AbstractC6496w abstractC6496w = this.f21423f;
        Peer context = rolesUpdated.getContext();
        s1.z.c.l.d(context, "event.context");
        Peer.Group group = context.getGroup();
        s1.z.c.l.d(group, "event.context.group");
        String id = group.getId();
        s1.z.c.l.d(id, "event.context.group.id");
        long m30906e = C6456h.m30906e(rolesUpdated.getDate());
        String messageId = rolesUpdated.getMessageId();
        s1.z.c.l.d(messageId, "event.messageId");
        C6446b0 c6446b0 = new C6446b0(id, m30906e, j, messageId, z);
        int roles = rolesUpdated.getRoles();
        Peer sender = rolesUpdated.getSender();
        s1.z.c.l.d(sender, "it");
        if (!(sender.getTypeCase() == Peer.TypeCase.USER)) {
            sender = null;
        }
        String str = null;
        if (sender != null) {
            Peer.User user = sender.getUser();
            str = null;
            if (user != null) {
                str = user.getId();
            }
        }
        Peer participant = rolesUpdated.getParticipant();
        s1.z.c.l.d(participant, "event.participant");
        Peer.User user2 = participant.getUser();
        s1.z.c.l.d(user2, "event.participant.user");
        String id2 = user2.getId();
        s1.z.c.l.d(id2, "event.participant.user.id");
        abstractC6496w.mo30846f(c6446b0, roles, str, id2);
        if (z) {
            rolesUpdated.getMessageId();
            return;
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        Peer context2 = rolesUpdated.getContext();
        s1.z.c.l.d(context2, "event.context");
        Peer.Group group2 = context2.getGroup();
        s1.z.c.l.d(group2, "event.context.group");
        String id3 = group2.getId();
        s1.z.c.l.d(id3, "event.context.group.id");
        Peer participant2 = rolesUpdated.getParticipant();
        s1.z.c.l.d(participant2, "event.participant");
        Peer.User user3 = participant2.getUser();
        s1.z.c.l.d(user3, "event.participant.user");
        String id4 = user3.getId();
        s1.z.c.l.d(id4, "event.participant.user.id");
        int roles2 = rolesUpdated.getRoles();
        ContextPermissions permissions = rolesUpdated.getPermissions();
        s1.z.c.l.d(permissions, "event.permissions");
        m30918y(arrayList, id3, id4, roles2, C6456h.m30908c(permissions), rolesUpdated.getGroupInviteKey());
        ContentResolver contentResolver = this.f21419b;
        Uri uri = C17891a1.f50888a;
        s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
        C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d
    /* renamed from: t */
    public void mo30923t(Event.GroupInfoUpdated groupInfoUpdated, long j, boolean z) {
        s1.z.c.l.e(groupInfoUpdated, "event");
        if (!z) {
            String groupId = groupInfoUpdated.getGroupId();
            s1.z.c.l.d(groupId, "event.groupId");
            GroupInfoDelta groupInfo = groupInfoUpdated.getGroupInfo();
            s1.z.c.l.d(groupInfo, "event.groupInfo");
            m30944M(groupId, groupInfo);
        }
        GroupInfoDelta groupInfo2 = groupInfoUpdated.getGroupInfo();
        s1.z.c.l.d(groupInfo2, "event.groupInfo");
        if (groupInfo2.getTitleInfoCase() != GroupInfoDelta.TitleInfoCase.TITLEUNCHANGED) {
            AbstractC6496w abstractC6496w = this.f21423f;
            String groupId2 = groupInfoUpdated.getGroupId();
            s1.z.c.l.d(groupId2, "event.groupId");
            long m30906e = C6456h.m30906e(groupInfoUpdated.getDate());
            C6446b0 c6446b0 = new C6446b0(groupId2, m30906e, j, groupInfoUpdated.getMessageId() + "-title", z);
            Peer sender = groupInfoUpdated.getSender();
            s1.z.c.l.d(sender, "event.sender");
            Peer.User user = sender.getUser();
            s1.z.c.l.d(user, "event.sender.user");
            String id = user.getId();
            s1.z.c.l.d(id, "event.sender.user.id");
            GroupInfoDelta groupInfo3 = groupInfoUpdated.getGroupInfo();
            s1.z.c.l.d(groupInfo3, "event.groupInfo");
            String title = groupInfo3.getTitle();
            s1.z.c.l.d(title, "event.groupInfo.title");
            abstractC6496w.mo30849c(c6446b0, id, title);
        }
        GroupInfoDelta groupInfo4 = groupInfoUpdated.getGroupInfo();
        s1.z.c.l.d(groupInfo4, "event.groupInfo");
        if (groupInfo4.getAvatarInfoCase() != GroupInfoDelta.AvatarInfoCase.AVATARUNCHANGED) {
            AbstractC6496w abstractC6496w2 = this.f21423f;
            String groupId3 = groupInfoUpdated.getGroupId();
            s1.z.c.l.d(groupId3, "event.groupId");
            long m30906e2 = C6456h.m30906e(groupInfoUpdated.getDate());
            C6446b0 c6446b02 = new C6446b0(groupId3, m30906e2, j, groupInfoUpdated.getMessageId() + "-avatar", z);
            Peer sender2 = groupInfoUpdated.getSender();
            s1.z.c.l.d(sender2, "event.sender");
            Peer.User user2 = sender2.getUser();
            s1.z.c.l.d(user2, "event.sender.user");
            String id2 = user2.getId();
            s1.z.c.l.d(id2, "event.sender.user.id");
            abstractC6496w2.mo30845g(c6446b02, id2);
        }
    }

    /* renamed from: u */
    public final Participant m30922u(ArrayList<ContentProviderOperation> arrayList, Map<Participant, Integer> map, ImGroupInfo imGroupInfo) {
        Participant.C3848b c3848b = new Participant.C3848b(4);
        c3848b.f11598e = imGroupInfo.f13319a;
        Participant m35443a = c3848b.m35443a();
        s1.z.c.l.d(m35443a, "Participant.Builder(Part…pId)\n            .build()");
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28338C());
        ImGroupPermissions imGroupPermissions = C6456h.f21441a;
        ContentValues contentValues = new ContentValues();
        contentValues.put("im_group_id", imGroupInfo.f13319a);
        contentValues.put("title", imGroupInfo.f13320b);
        contentValues.put("avatar", imGroupInfo.f13321c);
        contentValues.put("invited_date", Long.valueOf(imGroupInfo.f13322d));
        contentValues.put("invited_by", imGroupInfo.f13323e);
        contentValues.put("roles", Integer.valueOf(imGroupInfo.f13324f));
        contentValues.putAll(C6456h.m30905f(imGroupInfo.f13325g));
        contentValues.put("history_status", Integer.valueOf(imGroupInfo.f13327i));
        contentValues.put("history_sequence_num", Long.valueOf(imGroupInfo.f13328j));
        contentValues.put("history_message_count", Long.valueOf(imGroupInfo.f13329k));
        contentValues.put("notification_settings", Integer.valueOf(imGroupInfo.f13326h));
        contentValues.put("are_participants_stale", Boolean.valueOf(imGroupInfo.f13330l));
        contentValues.put("current_sequence_number", Long.valueOf(imGroupInfo.f13331m));
        contentValues.put("invite_notification_date", Long.valueOf(imGroupInfo.f13332n));
        contentValues.put("invite_notification_count", Integer.valueOf(imGroupInfo.f13333o));
        String str = imGroupInfo.f13335q;
        if (!(!(str == null || str.length() == 0))) {
            str = null;
        }
        if (str != null) {
            contentValues.put("invite_key", str);
        }
        arrayList.add(newInsert.withValues(contentValues).build());
        arrayList.add(ContentProviderOperation.newDelete(C8582g0.m28337D()).withSelection("im_group_id = ?", new String[]{imGroupInfo.f13319a}).build());
        m30921v(arrayList, map, imGroupInfo.f13319a);
        return m35443a;
    }

    /* renamed from: v */
    public final void m30921v(ArrayList<ContentProviderOperation> arrayList, Map<Participant, Integer> map, String str) {
        for (Map.Entry<Participant, Integer> entry : map.entrySet()) {
            arrayList.add(ContentProviderOperation.newInsert(C8582g0.m28337D()).withValue("im_group_id", str).withValue("im_peer_id", entry.getKey().f11570c).withValue("roles", Integer.valueOf(entry.getValue().intValue())).build());
        }
    }

    /* renamed from: w */
    public final boolean m30920w(String str, List<? extends Participant> list, boolean z) {
        C20458b.C20459a mo20911c;
        if (list.isEmpty()) {
            return true;
        }
        mo20911c = this.f21418a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a == null) {
            return false;
        }
        try {
            AddParticipants.Request.C3013a newBuilder = AddParticipants.Request.newBuilder();
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (Participant participant : list) {
                arrayList.add(C6456h.m30907d(participant));
            }
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.addAllParticipants(arrayList);
            InputPeer m30910a = C6456h.m30910a(str);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setContext(m30910a);
            long e = c.b.e();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setRandomId(e);
            AddParticipants.Response m11122c = c20459a.m11122c((AddParticipants.Request) newBuilder.build());
            s1.z.c.l.d(m11122c, "AddParticipants.Request.…tub.addParticipants(it) }");
            List<Peer> invalidPeersList = m11122c.getInvalidPeersList();
            s1.z.c.l.d(invalidPeersList, "response.invalidPeersList");
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(invalidPeersList, 10));
            for (Peer peer : invalidPeersList) {
                s1.z.c.l.d(peer, "it");
                Peer.User user = peer.getUser();
                s1.z.c.l.d(user, "it.user");
                arrayList2.add(user.getId());
            }
            Set d1 = s1.u.i.d1(arrayList2);
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : list) {
                if (!d1.contains(((Participant) obj).f11570c)) {
                    arrayList3.add(obj);
                }
            }
            int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(arrayList3, 10));
            int i = m3942Y1;
            if (m3942Y1 < 16) {
                i = 16;
            }
            Map<Participant, Integer> linkedHashMap = new LinkedHashMap<>(i);
            for (Object obj2 : arrayList3) {
                Participant participant2 = (Participant) obj2;
                linkedHashMap.put(obj2, Integer.valueOf(m11122c.getParticipantRoles()));
            }
            ArrayList<ContentProviderOperation> arrayList4 = new ArrayList<>();
            m30921v(arrayList4, linkedHashMap, str);
            ContentResolver contentResolver = this.f21419b;
            Uri uri = C17891a1.f50888a;
            s1.z.c.l.d("com.truecaller", "TruecallerContract.getAuthority()");
            C12864a2.m22566a0(contentResolver, "com.truecaller", arrayList4);
            AbstractC6496w abstractC6496w = this.f21423f;
            long m30906e = C6456h.m30906e(m11122c.getDate());
            long seq = m11122c.getSeq();
            String messageId = m11122c.getMessageId();
            s1.z.c.l.d(messageId, "response.messageId");
            C6446b0 c6446b0 = new C6446b0(str, m30906e, seq, messageId, false, 16);
            ArrayList arrayList5 = new ArrayList();
            for (Participant participant3 : list) {
                String str2 = participant3.f11570c;
                if (str2 != null) {
                    arrayList5.add(str2);
                }
            }
            abstractC6496w.mo30837o(c6446b0, arrayList5);
            if (!z) {
                return true;
            }
            List<? extends Participant> arrayList6 = new ArrayList<>();
            for (Object obj3 : list) {
                if (d1.contains(((Participant) obj3).f11570c)) {
                    arrayList6.add(obj3);
                }
            }
            List<Participant> m30953D = m30953D(arrayList6);
            if (m30953D == null) {
                return true;
            }
            m30920w(str, m30953D, false);
            return true;
        } catch (RuntimeException e2) {
            return false;
        }
    }

    /* renamed from: x */
    public final void m30919x(ArrayList<ContentProviderOperation> arrayList, List<? extends Participant> list, String str) {
        String mo31078f = this.f21421d.mo31078f();
        ArrayList arrayList2 = new ArrayList();
        for (Participant participant : list) {
            String str2 = participant.f11570c;
            if (str2 != null) {
                arrayList2.add(str2);
            }
        }
        ContentProviderOperation.Builder withValue = ContentProviderOperation.newUpdate(C8582g0.m28337D()).withValue("roles", 0);
        String m8630e = C22128a.m8630e(C22128a.m8728C("im_group_id=? AND im_peer_id IN ("), s1.u.i.O(arrayList2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6451a.f21434b, 31), ')');
        Object[] array = arrayList2.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        arrayList.add(withValue.withSelection(m8630e, (String[]) s1.u.i.t0(new String[]{str}, array)).build());
        if (s1.u.i.l(arrayList2, mo31078f)) {
            ContentProviderOperation.Builder withValue2 = ContentProviderOperation.newUpdate(C8582g0.m28338C()).withValue("roles", 0);
            ImGroupPermissions imGroupPermissions = C6456h.f21441a;
            arrayList.add(withValue2.withValues(C6456h.m30905f(C6456h.f21441a)).withSelection("im_group_id = ?", new String[]{str}).build());
        }
    }

    /* renamed from: y */
    public final void m30918y(ArrayList<ContentProviderOperation> arrayList, String str, String str2, int i, ImGroupPermissions imGroupPermissions, String str3) {
        arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28337D()).withValue("roles", Integer.valueOf(i)).withSelection("im_group_id=? AND im_peer_id=?", new String[]{str, str2}).build());
        if (s1.z.c.l.a(str2, this.f21421d.mo31078f())) {
            arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28338C()).withValue("roles", Integer.valueOf(i)).withValues(C6456h.m30905f(imGroupPermissions)).withSelection("im_group_id = ?", new String[]{str}).build());
        }
        if (!(str3 == null || str3.length() == 0)) {
            arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28338C()).withValue("invite_key", str3).withSelection("im_group_id = ?", new String[]{str}).build());
        }
    }
}
