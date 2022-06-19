package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6135e0;
import p193e.p194a.p195a.p244k.AbstractC6690i;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p195a.p286y0.AbstractC7347u;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.g;
import s1.u.i;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.k.a.d0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d0.class */
public final class C6528d0 implements AbstractC6523c0 {

    /* renamed from: a */
    public long f21579a = -1;

    /* renamed from: b */
    public final g f21580b = C25225a.m3978P1(new C6529a());

    /* renamed from: c */
    public final ContentResolver f21581c;

    /* renamed from: d */
    public final AbstractC6115g f21582d;

    /* renamed from: e */
    public final AbstractC6392i0 f21583e;

    /* renamed from: f */
    public final AbstractC7347u f21584f;

    /* renamed from: g */
    public final a<AbstractC19854f<AbstractC6690i>> f21585g;

    /* renamed from: h */
    public final a<AbstractC6708t> f21586h;

    /* renamed from: e.a.a.k.a.d0$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d0$a.class */
    public static final class C6529a extends m implements s1.z.b.a<AbstractC6704q<C6713w>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6529a() {
            super(0);
            C6528d0.this = r4;
        }

        public Object invoke() {
            return ((AbstractC6708t) C6528d0.this.f21586h.get()).mo30539x(2);
        }
    }

    @Inject
    public C6528d0(ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC6392i0 abstractC6392i0, AbstractC7347u abstractC7347u, a<AbstractC19854f<AbstractC6690i>> aVar, a<AbstractC6708t> aVar2) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorFactory");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC7347u, "reactionNotificationManager");
        l.e(aVar, "messagesProcessor");
        l.e(aVar2, "transportManager");
        this.f21581c = contentResolver;
        this.f21582d = abstractC6115g;
        this.f21583e = abstractC6392i0;
        this.f21584f = abstractC7347u;
        this.f21585g = aVar;
        this.f21586h = aVar2;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: a */
    public void mo30805a(long j) {
        if (this.f21579a == j) {
            this.f21579a = -1L;
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: b */
    public void mo30804b(long j) {
        this.f21579a = j;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: c */
    public AbstractC19891x<Map<Reaction, Participant>> mo30803c(long j) {
        AbstractC6135e0 mo31782j = this.f21582d.mo31782j(this.f21581c.query(Uri.withAppendedPath(C17891a1.f50888a, "reaction_with_participants"), null, "im_reaction_message_id=?", new String[]{String.valueOf(j)}, null));
        Map map = null;
        if (mo31782j != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (mo31782j.moveToNext()) {
                    arrayList.add(mo31782j.mo31747v1());
                }
                C25225a.m4016G(mo31782j, null);
                map = i.V0(arrayList);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        AbstractC19891x<Map<Reaction, Participant>> m11834h = AbstractC19891x.m11834h(map);
        l.d(m11834h, "contentResolver.query(\n ….let { Promise.wrap(it) }");
        return m11834h;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: d */
    public void mo30802d(long j) {
        boolean z = true;
        Cursor query = this.f21581c.query(C8582g0.m28295y(), new String[]{"_id"}, C22128a.m8543z2("conversation_id=? AND ", "_id IN\n            (SELECT message_id FROM msg_im_reactions\n            WHERE status IN (4,1))"), new String[]{String.valueOf(j)}, null);
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(Long.valueOf(query.getLong(0)));
                }
                C25225a.m4016G(query, null);
                long[] U0 = i.U0(arrayList);
                if (U0.length != 0) {
                    z = false;
                }
                if (!(!z)) {
                    return;
                }
                mo30797i(U0);
                this.f21584f.mo29748b(j);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(query, th);
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: e */
    public void mo30801e() {
        Map<Reaction, ? extends Participant> V0;
        AbstractC6135e0 mo31782j = this.f21582d.mo31782j(this.f21581c.query(Uri.withAppendedPath(C17891a1.f50888a, "reaction_with_participants"), null, "im_reaction_status IN (?,?) AND im_message_status=? AND im_conversation_id!=?", new String[]{String.valueOf(1), String.valueOf(4), String.valueOf(1), String.valueOf(this.f21579a)}, "im_reaction_id LIMIT 25"));
        LinkedHashMap linkedHashMap = null;
        if (mo31782j != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (mo31782j.moveToNext()) {
                    arrayList.add(mo31782j.mo31747v1());
                }
                C25225a.m4016G(mo31782j, null);
                V0 = i.V0(arrayList);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(mo31782j, th);
                    throw th2;
                }
            }
        } else {
            V0 = null;
        }
        if (V0 != null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Iterator<Map.Entry<Reaction, ? extends Participant>> it = V0.entrySet().iterator();
            while (true) {
                linkedHashMap = linkedHashMap2;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Reaction, ? extends Participant> next = it.next();
                if (next.getKey().f13456f == 1) {
                    linkedHashMap2.put(next.getKey(), next.getValue());
                }
            }
        }
        if (!(V0 == null || V0.isEmpty())) {
            if (linkedHashMap == null || linkedHashMap.isEmpty()) {
                return;
            }
            ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
            Iterator it2 = linkedHashMap.entrySet().iterator();
            while (it2.hasNext()) {
                arrayList2.add(ContentProviderOperation.newUpdate(C8582g0.m28300t()).withSelection("message_id=?", new String[]{String.valueOf(((Reaction) ((Map.Entry) it2.next()).getKey()).f13452b)}).withValue(UpdateKey.STATUS, 4).build());
            }
            try {
                ContentResolver contentResolver = this.f21581c;
                Uri uri = C17891a1.f50888a;
                contentResolver.applyBatch("com.truecaller", arrayList2);
            } catch (OperationApplicationException | RemoteException e) {
            }
            this.f21584f.mo29749a(V0);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: f */
    public AbstractC19891x<String> mo30800f(long j) {
        Cursor query = this.f21581c.query(C8582g0.m28300t(), new String[]{"emoji"}, "from_peer_id=? AND message_id=?", new String[]{this.f21583e.mo31078f(), String.valueOf(j)}, null);
        String str = null;
        if (query != null) {
            try {
                str = query.moveToFirst() ? query.getString(0) : null;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        AbstractC19891x<String> m11834h = AbstractC19891x.m11834h(str);
        l.d(m11834h, "Promise.wrap(reaction)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: g */
    public AbstractC19891x<Boolean> mo30799g(String str, Reaction[] reactionArr) {
        l.e(str, "rawMessageId");
        l.e(reactionArr, "reactions");
        ArrayList arrayList = new ArrayList(reactionArr.length);
        for (Reaction reaction : reactionArr) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("from_peer_id", reaction.f13453c);
            contentValues.put("emoji", reaction.f13454d);
            contentValues.put("send_date", Long.valueOf(reaction.f13455e));
            contentValues.put(UpdateKey.STATUS, Integer.valueOf(reaction.f13456f));
            arrayList.add(contentValues);
        }
        ContentResolver contentResolver = this.f21581c;
        Uri m28331J = C8582g0.m28331J(str);
        Object[] array = arrayList.toArray(new ContentValues[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        contentResolver.bulkInsert(m28331J, (ContentValues[]) array);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.TRUE);
        l.d(m11834h, "Promise.wrap(true)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: h */
    public void mo30798h(Message message, String str, String str2) {
        l.e(message, "message");
        l.e(str2, "initiatedVia");
        Intent intent = new Intent("send_reaction");
        intent.putExtra("message", message);
        intent.putExtra("emoji", str);
        intent.putExtra("initiated_via", str2);
        ((AbstractC6690i) ((AbstractC19854f) this.f21585g.get()).mo11854a()).mo30574i((AbstractC6704q) this.f21580b.getValue(), intent, 0).mo11828g();
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: i */
    public void mo30797i(long[] jArr) {
        l.e(jArr, "messageIds");
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (long j : jArr) {
            arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28300t()).withSelection("message_id=?", new String[]{String.valueOf(j)}).withValue(UpdateKey.STATUS, 0).build());
        }
        try {
            ContentResolver contentResolver = this.f21581c;
            Uri uri = C17891a1.f50888a;
            contentResolver.applyBatch("com.truecaller", arrayList);
        } catch (OperationApplicationException | RemoteException e) {
        }
    }
}
