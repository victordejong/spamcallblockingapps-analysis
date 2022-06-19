package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1187r2.AbstractC19849c0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19892y;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6136f;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6140h;
import p193e.p194a.p195a.p231g.p234l0.C6226b;
import p193e.p194a.p195a.p244k.AbstractC6690i;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.g;
import s1.k;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.k.a.a.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/a.class */
public final class C6438a implements AbstractC6485m {

    /* renamed from: a */
    public final g f21394a = C25225a.m3978P1(new C6443e());

    /* renamed from: b */
    public final ContentResolver f21395b;

    /* renamed from: c */
    public final AbstractC6115g f21396c;

    /* renamed from: d */
    public final AbstractC6392i0 f21397d;

    /* renamed from: e */
    public final a<AbstractC19854f<AbstractC6233m>> f21398e;

    /* renamed from: f */
    public final a<AbstractC19854f<AbstractC6690i>> f21399f;

    /* renamed from: g */
    public final a<AbstractC6708t> f21400g;

    /* renamed from: h */
    public final a<AbstractC19854f<AbstractC7343q>> f21401h;

    /* renamed from: i */
    public final AbstractC19222c f21402i;

    /* renamed from: e.a.a.k.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/k/a/a/a$a.class */
    public static final class C6439a<T> implements Comparator {

        /* renamed from: a */
        public final /* synthetic */ int f21403a;

        public C6439a(int i) {
            this.f21403a = i;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int i = this.f21403a;
            if (i != 0 && i != 1) {
                throw null;
            }
            return C25225a.m4000K(Long.valueOf(((C6226b) t2).f20864c), Long.valueOf(((C6226b) t).f20864c));
        }
    }

    /* renamed from: e.a.a.k.a.a.a$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/a$b.class */
    public static final class C6440b<T> implements AbstractC19849c0<AbstractC6487o> {

        /* renamed from: a */
        public static final C6440b f21404a = new C6440b();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC6487o abstractC6487o) {
            AbstractC6487o abstractC6487o2 = abstractC6487o;
            l.e(abstractC6487o2, "it");
            abstractC6487o2.close();
        }
    }

    /* renamed from: e.a.a.k.a.a.a$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/a$c.class */
    public static final class C6441c<T> implements AbstractC19849c0<AbstractC6487o> {

        /* renamed from: a */
        public static final C6441c f21405a = new C6441c();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC6487o abstractC6487o) {
            AbstractC6487o abstractC6487o2 = abstractC6487o;
            l.e(abstractC6487o2, "it");
            abstractC6487o2.close();
        }
    }

    /* renamed from: e.a.a.k.a.a.a$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/a$d.class */
    public static final class C6442d extends m implements s1.z.b.l<C6226b, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ List f21406b;

        /* renamed from: c */
        public final /* synthetic */ List f21407c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6442d(List list, List list2) {
            super(1);
            this.f21406b = list;
            this.f21407c = list2;
        }

        /* renamed from: d */
        public Object m30958d(Object obj) {
            boolean z;
            C6226b c6226b = (C6226b) obj;
            l.e(c6226b, "delivered");
            List list = this.f21406b;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    z = false;
                    if (!it.hasNext()) {
                        break;
                    }
                    if (l.a(c6226b.f20862a, ((C6226b) it.next()).f20862a)) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: e.a.a.k.a.a.a$e */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/a$e.class */
    public static final class C6443e extends m implements s1.z.b.a<AbstractC6704q<C6713w>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6443e() {
            super(0);
            C6438a.this = r4;
        }

        public Object invoke() {
            return ((AbstractC6708t) C6438a.this.f21400g.get()).mo30539x(2);
        }
    }

    @Inject
    public C6438a(ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC6392i0 abstractC6392i0, a<AbstractC19854f<AbstractC6233m>> aVar, a<AbstractC19854f<AbstractC6690i>> aVar2, a<AbstractC6708t> aVar3, a<AbstractC19854f<AbstractC7343q>> aVar4, AbstractC19222c abstractC19222c) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(abstractC6392i0, "messageSettings");
        l.e(aVar, "messagesStorage");
        l.e(aVar2, "messagesProcessor");
        l.e(aVar3, "transportManager");
        l.e(aVar4, "notificationsManager");
        l.e(abstractC19222c, "clock");
        this.f21395b = contentResolver;
        this.f21396c = abstractC6115g;
        this.f21397d = abstractC6392i0;
        this.f21398e = aVar;
        this.f21399f = aVar2;
        this.f21400g = aVar3;
        this.f21401h = aVar4;
        this.f21402i = abstractC19222c;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: a */
    public void mo30899a(String str) {
        l.e(str, "groupId");
        Intent intent = new Intent("fail_history_loading_in_progress");
        intent.putExtra("group_id", str);
        m30959x(intent);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: b */
    public AbstractC19891x<List<Participant>> mo30898b(String str) {
        l.e(str, "groupId");
        AbstractC6487o mo31777o = this.f21396c.mo31777o(this.f21395b.query(C8582g0.m28335F(str, null, true), null, null, null, null));
        ArrayList arrayList = null;
        if (mo31777o != null) {
            try {
                ArrayList arrayList2 = new ArrayList();
                while (mo31777o.moveToNext()) {
                    arrayList2.add(mo31777o.mo30875i1());
                }
                C25225a.m4016G(mo31777o, null);
                ArrayList arrayList3 = new ArrayList(C25225a.m4004J(arrayList2, 10));
                Iterator it = arrayList2.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (!it.hasNext()) {
                        break;
                    }
                    C16503a c16503a = (C16503a) it.next();
                    Participant.C3848b c3848b = new Participant.C3848b(3);
                    String str2 = c16503a.f46397a;
                    c3848b.f11598e = str2;
                    c3848b.f11596c = str2;
                    c3848b.f11605l = c16503a.f46401e;
                    c3848b.f11608o = c16503a.f46404h;
                    String str3 = c16503a.f46403g;
                    if (str3 == null) {
                        str3 = "";
                    }
                    c3848b.f11606m = str3;
                    Participant m35443a = c3848b.m35443a();
                    l.d(m35443a, "Participant.Builder(Part…y())\n            .build()");
                    arrayList3.add(m35443a);
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        AbstractC19891x<List<Participant>> m11834h = AbstractC19891x.m11834h(arrayList);
        l.d(m11834h, "contentResolver.query(Im….let { Promise.wrap(it) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: c */
    public AbstractC19891x<Boolean> mo30897c(String str, Participant participant) {
        l.e(str, "groupId");
        l.e(participant, "participant");
        Intent intent = new Intent("remove_participant");
        intent.putExtra("group_id", str);
        intent.putExtra("participant", participant);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(RemoveParticipant…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: d */
    public void mo30896d(boolean z, boolean z2) {
        if (z2) {
            this.f21397d.mo31077f0(0L);
        }
        if (this.f21397d.mo31204G3() == 0) {
            return;
        }
        this.f21397d.mo30998s2(!z ? 1 : 0);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo30895e(String str) {
        l.e(str, "groupId");
        Intent intent = new Intent("accept_invite");
        intent.putExtra("group_id", str);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(AcceptInvite.ACTI…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo30894f(String str, List<? extends Participant> list) {
        l.e(str, "groupId");
        l.e(list, "participants");
        Intent intent = new Intent("add_participants");
        intent.putExtra("group_id", str);
        intent.putExtra("participants", new ArrayList(list));
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(AddParticipants.A…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: g */
    public AbstractC19891x<Boolean> mo30893g(String str, boolean z) {
        l.e(str, "groupId");
        Intent intent = new Intent("delete_group_history");
        intent.putExtra("group_id", str);
        intent.putExtra("delete_public_entities", z);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(DeleteGroupHistor…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: h */
    public void mo30892h(String str, String str2) {
        l.e(str, "groupId");
        l.e(str2, "analyticsContext");
        Cursor query = this.f21395b.query(C17891a1.C17897f.m15702a(), new String[]{"_id"}, "tc_group_id = ?", new String[]{str}, null);
        Long l = null;
        if (query != null) {
            try {
                l = query.moveToFirst() ? Long.valueOf(query.getLong(0)) : null;
                th = null;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    C25225a.m4016G(query, th);
                }
            }
        }
        if (l != null) {
            ((AbstractC6233m) ((AbstractC19854f) this.f21398e.get()).mo11854a()).mo31688h0(l.longValue(), 1, 0, true, str2);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: i */
    public AbstractC19891x<Integer> mo30891i() {
        ContentResolver contentResolver = this.f21395b;
        Uri m28338C = C8582g0.m28338C();
        l.d(m28338C, "ImGroupInfoTable.getContentUri()");
        AbstractC19891x<Integer> m11834h = AbstractC19891x.m11834h(C19286f.m13700D(contentResolver, m28338C, "COUNT()", "(roles & 2) != 0", null));
        l.d(m11834h, "Promise.wrap(count)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: j */
    public AbstractC19891x<Boolean> mo30890j(String str, String str2, int i) {
        l.e(str, "groupId");
        l.e(str2, "imPeerId");
        Intent intent = new Intent("update_roles");
        intent.putExtra("group_id", str);
        intent.putExtra("im_peer_id", str2);
        intent.putExtra("roles", i);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(UpdateRoles.ACTIO…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: k */
    public void mo30889k(String str) {
        l.e(str, "groupId");
        Intent intent = new Intent("load_group_history");
        intent.putExtra("group_id", str);
        m30959x(intent);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: l */
    public AbstractC19891x<Integer> mo30888l(String str) {
        l.e(str, "groupId");
        ContentResolver contentResolver = this.f21395b;
        Uri m28337D = C8582g0.m28337D();
        l.d(m28337D, "ImGroupParticipantsTable.getContentUri()");
        int i = 0;
        Integer m13700D = C19286f.m13700D(contentResolver, m28337D, "COUNT()", "im_group_id = ? AND roles != ?", new String[]{str, String.valueOf(0)});
        if (m13700D != null) {
            i = m13700D.intValue();
        }
        AbstractC19891x<Integer> m11834h = AbstractC19891x.m11834h(Integer.valueOf(i));
        l.d(m11834h, "contentResolver.queryInt…{ Promise.wrap(it ?: 0) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: m */
    public AbstractC19891x<Boolean> mo30887m() {
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(new Intent("recover_groups")))));
        l.d(m11834h, "Promise.wrap(deliverInte….ACTION)).isSuccessful())");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: n */
    public AbstractC19891x<k<List<C6226b>, List<C6226b>>> mo30886n(String str, long j) {
        AbstractC19891x<k<List<C6226b>, List<C6226b>>> m11834h;
        l.e(str, "groupId");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        AbstractC6140h mo31790b = this.f21396c.mo31790b(this.f21395b.query(C17891a1.f50888a.buildUpon().appendEncodedPath("msg_im_group_reports_query").appendQueryParameter("group_id", str).appendQueryParameter("sequence_number", String.valueOf(j)).build(), null, null, null, null));
        if (mo31790b != null) {
            while (mo31790b.moveToNext()) {
                try {
                    C6226b mo31745P1 = mo31790b.mo31745P1();
                    if (mo31745P1.f20863b == 1) {
                        arrayList.add(mo31745P1);
                    } else {
                        arrayList2.add(mo31745P1);
                    }
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            i.w0(arrayList2, new C6442d(arrayList, arrayList2));
            m11834h = AbstractC19891x.m11834h(new k(i.F0(arrayList, new C6439a(0)), i.F0(arrayList2, new C6439a(1))));
            th = null;
        } else {
            s sVar = s.a;
            m11834h = AbstractC19891x.m11834h(new k(sVar, sVar));
            l.d(m11834h, "Promise.wrap(Pair(emptyList(), emptyList()))");
        }
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: o */
    public AbstractC19891x<Boolean> mo30885o(String str, int i) {
        l.e(str, "groupId");
        Intent intent = new Intent("set_notification_settings");
        intent.putExtra("group_id", str);
        intent.putExtra("settings", i);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(SetNotificationSe…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: p */
    public AbstractC19891x<Boolean> mo30884p() {
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(new Intent("accept_pending_invites")))));
        l.d(m11834h, "Intent(AcceptPendingInvi…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: q */
    public AbstractC19891x<AbstractC6487o> mo30883q(String str) {
        l.e(str, "groupId");
        C19892y c19892y = new C19892y(this.f21396c.mo31777o(this.f21395b.query(C8582g0.m28335F(str, this.f21397d.mo31078f(), true), null, null, null, "is_self DESC, roles DESC, name IS NULL ASC, name COLLATE NOCASE ASC")), C6441c.f21405a);
        l.d(c19892y, "contentResolver.query(\n …(cursor) { it.close() } }");
        return c19892y;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: r */
    public AbstractC19891x<Boolean> mo30882r(String str, String str2, String str3) {
        l.e(str, "groupId");
        l.e(str2, "title");
        Intent intent = new Intent("edit_group");
        intent.putExtra("group_id", str);
        intent.putExtra("title", str2);
        intent.putExtra("avatar", str3);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(EditGroup.ACTION)…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: s */
    public AbstractC19891x<Participant> mo30881s(List<? extends Participant> list, String str, String str2) {
        l.e(list, "participants");
        l.e(str, "title");
        Intent intent = new Intent("create_group");
        intent.putExtra("participants", new ArrayList(list));
        intent.putExtra("title", str);
        intent.putExtra("avatar", str2);
        Bundle m30959x = m30959x(intent);
        AbstractC19891x<Participant> m11834h = AbstractC19891x.m11834h(m30959x != null ? (Participant) m30959x.getParcelable("participant") : null);
        l.d(m11834h, "Intent(CreateGroup.ACTIO…up.RESULT_PARTICIPANT)) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: t */
    public AbstractC19891x<AbstractC6487o> mo30880t(String str, String str2) {
        l.e(str, "groupId");
        ContentResolver contentResolver = this.f21395b;
        Uri m28335F = C8582g0.m28335F(str, this.f21397d.mo31078f(), true);
        C19892y c19892y = new C19892y(this.f21396c.mo31777o(contentResolver.query(m28335F, null, "name LIKE ? AND is_self = 0", new String[]{'%' + str2 + '%'}, null)), C6440b.f21404a);
        l.d(c19892y, "contentResolver.query(\n …(cursor) { it.close() } }");
        return c19892y;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: u */
    public AbstractC19891x<Boolean> mo30879u() {
        Boolean bool = Boolean.TRUE;
        AbstractC6136f mo31788d = this.f21396c.mo31788d(this.f21395b.query(C8582g0.m28338C(), null, "(roles & ?) != 0 AND invite_notification_date < ? AND invite_notification_count <= ?", new String[]{String.valueOf(2), String.valueOf(this.f21402i.mo13819c() - C6486n.f21486a), String.valueOf(2)}, null));
        ArrayList<ImGroupInfo> arrayList = null;
        if (mo31788d != null) {
            try {
                arrayList = new ArrayList();
                while (mo31788d.moveToNext()) {
                    arrayList.add(mo31788d.mo31746h());
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        if (arrayList == null) {
            arrayList = s.a;
        }
        if (arrayList.isEmpty()) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(bool);
            l.d(m11834h, "Promise.wrap(true)");
            return m11834h;
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (ImGroupInfo imGroupInfo : arrayList) {
            arrayList2.add(ContentProviderOperation.newUpdate(C8582g0.m28338C()).withValue("invite_notification_date", Long.valueOf(this.f21402i.mo13819c())).withValue("invite_notification_count", Integer.valueOf(imGroupInfo.f13333o + 1)).withSelection("im_group_id = ?", new String[]{imGroupInfo.f13319a}).build());
        }
        ContentResolver contentResolver = this.f21395b;
        Uri uri = C17891a1.f50888a;
        l.d("com.truecaller", "TruecallerContract.getAuthority()");
        if (!C12864a2.m22566a0(contentResolver, "com.truecaller", new ArrayList(arrayList2))) {
            AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.FALSE);
            l.d(m11834h2, "Promise.wrap(false)");
            return m11834h2;
        }
        for (ImGroupInfo imGroupInfo2 : arrayList) {
            ((AbstractC7343q) ((AbstractC19854f) this.f21401h.get()).mo11854a()).mo29770g(imGroupInfo2, true);
        }
        AbstractC19891x<Boolean> m11834h3 = AbstractC19891x.m11834h(bool);
        l.d(m11834h3, "Promise.wrap(true)");
        return m11834h3;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: v */
    public AbstractC19891x<Boolean> mo30878v(String str, boolean z) {
        l.e(str, "groupId");
        Intent intent = new Intent("leave_group");
        intent.putExtra("group_id", str);
        intent.putExtra("delete_conversation", z);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(C6486n.m30876a(m30959x(intent))));
        l.d(m11834h, "Intent(LeaveGroup.ACTION…ort(it).isSuccessful()) }");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: w */
    public AbstractC19891x<ImGroupInfo> mo30877w(String str) {
        l.e(str, "groupId");
        Cursor query = this.f21395b.query(C8582g0.m28338C(), null, "im_group_id = ?", new String[]{str}, null);
        ImGroupInfo imGroupInfo = null;
        if (query != null) {
            try {
                AbstractC6136f mo31788d = this.f21396c.mo31788d(query);
                imGroupInfo = (mo31788d == null || !mo31788d.moveToFirst()) ? null : mo31788d.mo31746h();
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        AbstractC19891x<ImGroupInfo> m11834h = AbstractC19891x.m11834h(imGroupInfo);
        l.d(m11834h, "contentResolver.query(\n ….let { Promise.wrap(it) }");
        return m11834h;
    }

    /* renamed from: x */
    public final Bundle m30959x(Intent intent) {
        return ((AbstractC6690i) ((AbstractC19854f) this.f21399f.get()).mo11854a()).mo30574i((AbstractC6704q) this.f21394a.getValue(), intent, 0).mo11831c();
    }
}
