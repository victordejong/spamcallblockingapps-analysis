package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.p170im.FetchLinkPreviewWorker;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p244k.C6702p;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import p193e.p194a.p372b0.p430q.C8582g0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b0;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.k.a.o */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/o.class */
public final class C6595o implements AbstractC6592n {

    /* renamed from: a */
    public final ContentResolver f21780a;

    /* renamed from: b */
    public final AbstractC6115g f21781b;

    /* renamed from: c */
    public final a<AbstractC6248w> f21782c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC6233m>> f21783d;

    /* renamed from: e */
    public final a<AbstractC19854f<AbstractC6626t>> f21784e;

    /* renamed from: f */
    public final a<AbstractC26857y> f21785f;

    /* renamed from: g */
    public final a<AbstractC7283a> f21786g;

    /* renamed from: h */
    public final a<C6587m0> f21787h;

    @e(c = "com.truecaller.messaging.transport.im.ImEditMessageHelperImpl$editMessageEntities$message$1", f = "ImEditMessageHelper.kt", l = {78}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.o$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/o$a.class */
    public static final class C6596a extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: e */
        public int f21788e;

        /* renamed from: g */
        public final /* synthetic */ b0 f21790g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6596a(b0 b0Var, d dVar) {
            super(2, dVar);
            C6595o.this = r5;
            this.f21790g = b0Var;
        }

        /* renamed from: i */
        public final d<s> m30694i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6596a(this.f21790g, dVar);
        }

        /* renamed from: k */
        public final Object m30693k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6596a(this.f21790g, dVar).m30692s(s.a);
        }

        /* renamed from: s */
        public final Object m30692s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f21788e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C6595o.this.f21782c.get();
                long j = this.f21790g.a;
                this.f21788e = 1;
                Object mo31579D = abstractC6248w.mo31579D(j, this);
                obj = mo31579D;
                if (mo31579D == aVar) {
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

    @e(c = "com.truecaller.messaging.transport.im.ImEditMessageHelperImpl$editScheduledMessageEntities$message$1", f = "ImEditMessageHelper.kt", l = {115}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.o$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/o$b.class */
    public static final class C6597b extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: e */
        public int f21791e;

        /* renamed from: g */
        public final /* synthetic */ b0 f21793g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6597b(b0 b0Var, d dVar) {
            super(2, dVar);
            C6595o.this = r5;
            this.f21793g = b0Var;
        }

        /* renamed from: i */
        public final d<s> m30691i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6597b(this.f21793g, dVar);
        }

        /* renamed from: k */
        public final Object m30690k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6597b(this.f21793g, dVar).m30689s(s.a);
        }

        /* renamed from: s */
        public final Object m30689s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f21791e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C6595o.this.f21782c.get();
                long j = this.f21793g.a;
                this.f21791e = 1;
                Object mo31579D = abstractC6248w.mo31579D(j, this);
                obj = mo31579D;
                if (mo31579D == aVar) {
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
    public C6595o(ContentResolver contentResolver, AbstractC6115g abstractC6115g, a<AbstractC6248w> aVar, a<AbstractC19854f<AbstractC6233m>> aVar2, a<AbstractC19854f<AbstractC6626t>> aVar3, a<AbstractC26857y> aVar4, a<AbstractC7283a> aVar5, a<C6587m0> aVar6) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorFactory");
        l.e(aVar, "readMessageStorage");
        l.e(aVar2, "messageStorage");
        l.e(aVar3, "imManager");
        l.e(aVar4, "workManager");
        l.e(aVar5, "linkMetaDataExtractor");
        l.e(aVar6, "imTransport");
        this.f21780a = contentResolver;
        this.f21781b = abstractC6115g;
        this.f21782c = aVar;
        this.f21783d = aVar2;
        this.f21784e = aVar3;
        this.f21785f = aVar4;
        this.f21786g = aVar5;
        this.f21787h = aVar6;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6592n
    /* renamed from: a */
    public C6702p mo30700a(Message message) {
        C6702p c6702p;
        boolean z;
        boolean z2;
        AbstractC6149q query;
        Message message2;
        l.e(message, "message");
        TransportInfo transportInfo = message.f13393n;
        l.d(transportInfo, "message.getTransportInfo()");
        int i = ((ImTransportInfo) transportInfo).f13745r;
        if (i == 3000) {
            AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), new String[0]);
            long j = message.f13380a;
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            if (message.m35018h() && (query = this.f21780a.query(C8582g0.m28296x(), new String[]{"entity_info1", "entity_type"}, "message_id = ? AND entity_type IN (1, 2, 3, 4, 5, 6)", new String[]{String.valueOf(j)}, null)) != null) {
                while (query.moveToNext()) {
                    try {
                        Uri parse = Uri.parse(query.getString(0));
                        l.d(parse, "Uri.parse(cursor.getString(0))");
                        arrayList2.add(parse);
                        arrayList3.add(Integer.valueOf(query.getInt(1)));
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
                C25225a.m4016G(query, null);
            }
            if (message.m35017i() || m30696e(j, 0)) {
                arrayList3.add(0);
            }
            Entity[] entityArr = message.f13394o;
            l.d(entityArr, "message.entities");
            int length = entityArr.length;
            int i2 = 0;
            while (true) {
                z = false;
                if (i2 >= length) {
                    break;
                } else if (entityArr[i2].mo34997n()) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z || m30696e(j, 7)) {
                arrayList3.add(7);
            }
            if (arrayList3.size() > 0) {
                arrayList.add(ContentProviderOperation.newDelete(C8582g0.m28296x()).withSelection(C22128a.m8630e(C22128a.m8728C("message_id=? AND entity_type IN ("), s1.u.i.O(arrayList3, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 63), ')'), new String[]{String.valueOf(j)}).build());
            }
            Mention[] mentionArr = message.f13395p;
            l.d(mentionArr, "message.mentions");
            if (!(mentionArr.length == 0)) {
                arrayList.add(ContentProviderOperation.newDelete(C8582g0.m28301s()).withSelection("message_id=?", new String[]{String.valueOf(j)}).build());
            }
            ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28340A(j));
            ContentValues contentValues = new ContentValues();
            contentValues.put("edit_message_id", Long.valueOf(message.f13379S));
            contentValues.put("edit_message_date", Long.valueOf(message.f13378R));
            arrayList.add(newUpdate.withValues(contentValues).build());
            C6587m0 c6587m0 = (C6587m0) this.f21787h.get();
            Entity[] entityArr2 = message.f13394o;
            l.d(entityArr2, "message.entities");
            c6587m0.m30711Y(arrayList, j, entityArr2);
            C6587m0 c6587m02 = (C6587m0) this.f21787h.get();
            Mention[] mentionArr2 = message.f13395p;
            l.d(mentionArr2, "message.mentions");
            c6587m02.m30712X(arrayList, j, mentionArr2);
            ContentProviderResult[] m30697d = m30697d(arrayList);
            if (m30697d != null) {
                if (m30697d.length == 0) {
                    c6702p = new C6702p(false, false, false, null);
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                C19286f.m13693K(this.f21780a, (Uri) it.next());
            }
            ((AbstractC6626t) ((AbstractC19854f) this.f21784e.get()).mo11854a()).mo30631c();
            Entity[] entityArr3 = message.f13394o;
            l.d(entityArr3, "message.entities");
            int length2 = entityArr3.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    z2 = true;
                    break;
                } else if (entityArr3[i3].mo34997n()) {
                    z2 = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (z2) {
                AbstractC7283a abstractC7283a = (AbstractC7283a) this.f21786g.get();
                String m35025a = message.m35025a();
                l.d(m35025a, "message.buildMessageText()");
                if (abstractC7283a.mo29854b(m35025a) != null) {
                    AbstractC26857y abstractC26857y = (AbstractC26857y) this.f21785f.get();
                    EnumC26832h enumC26832h = EnumC26832h.APPEND;
                    String m35025a2 = message.m35025a();
                    l.d(m35025a2, "message.buildMessageText()");
                    l.e(m35025a2, "text");
                    C26842r.C26843a c26843a = new C26842r.C26843a(FetchLinkPreviewWorker.class);
                    HashMap hashMap = new HashMap();
                    hashMap.put("message_id", Long.valueOf(j));
                    hashMap.put("text", m35025a2);
                    C26829f c26829f = new C26829f(hashMap);
                    C26829f.m1300g(c26829f);
                    c26843a.f75127c.f74906e = c26829f;
                    c26843a.f75128d.add("fetch_link_preview");
                    C26825d.C26826a c26826a = new C26825d.C26826a();
                    c26826a.f75068c = EnumC26841q.CONNECTED;
                    c26843a.f75127c.f74911j = new C26825d(c26826a);
                    C26842r m1272b = c26843a.m1272b();
                    l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
                    abstractC26857y.m1279i("FetchLinkPreview", enumC26832h, m1272b);
                }
            }
            c6702p = new C6702p(true, true, false, null);
        } else if (i != 3001) {
            c6702p = null;
        } else {
            AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), new String[0]);
            Cursor query2 = this.f21780a.query(C8582g0.m28295y(), null, "(status & 256) = 256 AND edit_message_id = ?", new String[]{String.valueOf(message.f13379S)}, null);
            if (query2 == null || (query = this.f21781b.mo31778n(query2)) == null) {
                message2 = null;
            } else {
                try {
                    if (query.moveToFirst()) {
                        l.d(query, "it");
                        message2 = query.getMessage();
                    } else {
                        message2 = null;
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            ArrayList<ContentProviderOperation> arrayList4 = new ArrayList<>();
            ContentProviderOperation.Builder withValue = ContentProviderOperation.newUpdate(C8582g0.m28340A(message.f13380a)).withValue(UpdateKey.STATUS, Integer.valueOf(message.f13386g)).withValue("edit_message_date", Long.valueOf(message.f13378R));
            if (message2 != null) {
                b bVar = message2.f13383d;
                l.d(bVar, "editDraft.dateSent");
                withValue.withValue("date_sent", Long.valueOf(((w3.b.a.e0.e) bVar).a));
            }
            arrayList4.add(withValue.build());
            arrayList4.add(ContentProviderOperation.newUpdate(C8582g0.m28296x()).withSelection("message_id=?", new String[]{String.valueOf(message.f13380a)}).withValue("edited", 0).build());
            ContentProviderResult[] m30697d2 = m30697d(arrayList4);
            if (m30697d2 != null) {
                if (!(m30697d2.length == 0)) {
                    if (message2 != null) {
                        ((AbstractC6233m) ((AbstractC19854f) this.f21783d.get()).mo11854a()).mo31708Q(message2.f13380a).mo11828g();
                    }
                    c6702p = new C6702p(true, true, false, null);
                }
            }
            c6702p = new C6702p(false, false, false, null);
        }
        return c6702p;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6592n
    /* renamed from: b */
    public Message mo30699b(Message message) {
        l.e(message, "draft");
        b0 b0Var = new b0();
        Long valueOf = Long.valueOf(message.f13379S);
        if (!(valueOf.longValue() != -1)) {
            valueOf = null;
        }
        if (valueOf != null) {
            b0Var.a = valueOf.longValue();
            Message message2 = (Message) s1.a.a.a.v0.f.d.c3((f) null, new C6596a(b0Var, null), 1, (Object) null);
            if (message2 == null) {
                return null;
            }
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28340A(message.f13380a));
            ContentValues contentValues = new ContentValues();
            contentValues.put(UpdateKey.STATUS, (Integer) 256);
            b bVar = message2.f13384e;
            l.d(bVar, "message.date");
            contentValues.put("date", Long.valueOf(((w3.b.a.e0.e) bVar).a));
            b bVar2 = message2.f13383d;
            l.d(bVar2, "message.dateSent");
            contentValues.put("date_sent", Long.valueOf(((w3.b.a.e0.e) bVar2).a));
            contentValues.put("edit_message_id", Long.valueOf(message2.f13380a));
            arrayList.add(newUpdate.withValues(contentValues).build());
            ContentProviderOperation.Builder newUpdate2 = ContentProviderOperation.newUpdate(C8582g0.m28340A(message2.f13380a));
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("edit_message_id", Long.valueOf(message.f13380a));
            arrayList.add(newUpdate2.withValues(contentValues2).build());
            Uri m30695f = m30695f(arrayList, message2, message);
            ContentProviderResult[] m30697d = m30697d(arrayList);
            int i = 0;
            if (m30697d != null) {
                i = m30697d.length;
            }
            if (i > 0 && m30695f != null) {
                C19286f.m13693K(this.f21780a, m30695f);
            }
            return message2;
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6592n
    /* renamed from: c */
    public Message mo30698c(Message message) {
        l.e(message, "draft");
        b0 b0Var = new b0();
        Long valueOf = Long.valueOf(message.f13379S);
        if (!(valueOf.longValue() != -1)) {
            valueOf = null;
        }
        if (valueOf != null) {
            b0Var.a = valueOf.longValue();
            Message message2 = (Message) s1.a.a.a.v0.f.d.c3((f) null, new C6597b(b0Var, null), 1, (Object) null);
            if (message2 == null) {
                return null;
            }
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            ContentProviderOperation.Builder withValue = ContentProviderOperation.newUpdate(C8582g0.m28340A(message2.f13380a)).withValue("edit_message_id", Long.valueOf(message2.f13380a));
            b bVar = new b();
            l.d(bVar, "DateTime.now()");
            arrayList.add(withValue.withValue("edit_message_date", Long.valueOf(((w3.b.a.e0.e) bVar).a)).build());
            Uri m30695f = m30695f(arrayList, message2, message);
            ContentProviderResult[] m30697d = m30697d(arrayList);
            int i = 0;
            if (m30697d != null) {
                i = m30697d.length;
            }
            if (i > 0) {
                if (m30695f != null) {
                    C19286f.m13693K(this.f21780a, m30695f);
                }
                ((AbstractC6233m) ((AbstractC19854f) this.f21783d.get()).mo11854a()).mo31708Q(message.f13380a).mo11828g();
            }
            return message2;
        }
        return null;
    }

    /* renamed from: d */
    public final ContentProviderResult[] m30697d(ArrayList<ContentProviderOperation> arrayList) {
        try {
            ContentResolver contentResolver = this.f21780a;
            Uri uri = C17891a1.f50888a;
            return contentResolver.applyBatch("com.truecaller", arrayList);
        } catch (OperationApplicationException | RemoteException e) {
            return null;
        }
    }

    /* renamed from: e */
    public final boolean m30696e(long j, int i) {
        ContentResolver contentResolver = this.f21780a;
        Uri m28296x = C8582g0.m28296x();
        l.d(m28296x, "MessageEntitiesTable.getContentUri()");
        boolean z = false;
        Integer m13700D = C19286f.m13700D(contentResolver, m28296x, "COUNT(*)", "entity_type=? AND message_id=?", new String[]{String.valueOf(i), String.valueOf(j)});
        if ((m13700D != null ? m13700D.intValue() : 0) > 0) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0179 A[SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.net.Uri m30695f(java.util.ArrayList<android.content.ContentProviderOperation> r10, com.truecaller.messaging.data.types.Message r11, com.truecaller.messaging.data.types.Message r12) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6595o.m30695f(java.util.ArrayList, com.truecaller.messaging.data.types.Message, com.truecaller.messaging.data.types.Message):android.net.Uri");
    }
}
