package p193e.p194a.p195a.p231g;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6131c0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6132d;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6156x;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.g.a */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/a.class */
public final class C6064a implements AbstractC6248w {

    /* renamed from: a */
    public final String f20132a = "archived_date = 0";

    /* renamed from: b */
    public final String f20133b = "pinned_date DESC, date DESC";

    /* renamed from: c */
    public final ContentResolver f20134c;

    /* renamed from: d */
    public final AbstractC6115g f20135d;

    /* renamed from: e */
    public final C20592g f20136e;

    /* renamed from: f */
    public final AbstractC6249x f20137f;

    /* renamed from: g */
    public final f f20138g;

    /* renamed from: h */
    public final boolean f20139h;

    /* renamed from: i */
    public final AbstractC18951b0 f20140i;

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readDraft$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$a.class */
    public static final class C6065a extends i implements p<i0, d<? super Draft>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Participant[] f20142f;

        /* renamed from: g */
        public final /* synthetic */ int f20143g;

        /* renamed from: e.a.a.g.a$a$a */
        /* loaded from: classes3-dex2jar.jar:e/a/a/g/a$a$a.class */
        public static final class C6066a<T> implements Comparator<Participant> {

            /* renamed from: b */
            public static final C6066a f20144b = new C6066a(0);

            /* renamed from: c */
            public static final C6066a f20145c = new C6066a(1);

            /* renamed from: a */
            public final /* synthetic */ int f20146a;

            public C6066a(int i) {
                this.f20146a = i;
            }

            @Override // java.util.Comparator
            public final int compare(Participant participant, Participant participant2) {
                int i = this.f20146a;
                if (i == 0) {
                    String str = participant.f11572e;
                    String str2 = participant2.f11572e;
                    l.d(str2, "right.normalizedAddress");
                    return str.compareTo(str2);
                } else if (i != 1) {
                    throw null;
                } else {
                    String str3 = participant.f11572e;
                    String str4 = participant2.f11572e;
                    l.d(str4, "right.normalizedAddress");
                    return str3.compareTo(str4);
                }
            }
        }

        /* renamed from: e.a.a.g.a$a$b */
        /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$a$b.class */
        public static final class C6067b extends m implements s1.z.b.l<Participant, Boolean> {

            /* renamed from: b */
            public final /* synthetic */ Participant f20147b;

            /* renamed from: c */
            public final /* synthetic */ AbstractC6131c0 f20148c;

            /* renamed from: d */
            public final /* synthetic */ C6065a f20149d;

            /* renamed from: e */
            public final /* synthetic */ TreeSet f20150e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6067b(Participant participant, AbstractC6131c0 abstractC6131c0, C6065a c6065a, Set set, TreeSet treeSet) {
                super(1);
                this.f20147b = participant;
                this.f20148c = abstractC6131c0;
                this.f20149d = c6065a;
                this.f20150e = treeSet;
            }

            /* JADX WARN: Removed duplicated region for block: B:31:0x00dc  */
            /* renamed from: d */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m31900d(java.lang.Object r6) {
                /*
                    Method dump skipped, instructions count: 243
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.C6064a.C6065a.C6067b.m31900d(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6065a(Participant[] participantArr, int i, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20142f = participantArr;
            this.f20143g = i;
        }

        /* renamed from: i */
        public final d<s> m31903i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6065a(this.f20142f, this.f20143g, dVar);
        }

        /* renamed from: k */
        public final Object m31902k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6065a(this.f20142f, this.f20143g, dVar).m31901s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x0236  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m31901s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 811
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.C6064a.C6065a.m31901s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readPersonalUnreadImThreads$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$a0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$a0.class */
    public static final class C6068a0 extends i implements p<i0, d<? super List<? extends C6112e0>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6068a0(d dVar) {
            super(2, dVar);
            C6064a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31899i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6068a0(dVar);
        }

        /* renamed from: k */
        public final Object m31898k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            long j = ((w3.b.a.e0.e) c6064a.f20140i.mo14285j()).a;
            String m31905J = C6064a.m31905J(c6064a, 0);
            return C6064a.m31906I(c6064a, InboxTab.PERSONAL, m31905J + "\n                AND latest_message_transport =  2\n                AND muted < " + j + " \n                AND muted != -1\n            ", "date DESC");
        }

        /* renamed from: s */
        public final Object m31897s(Object obj) {
            C25225a.m3932a3(obj);
            long j = ((w3.b.a.e0.e) C6064a.this.f20140i.mo14285j()).a;
            String m31905J = C6064a.m31905J(C6064a.this, 0);
            return C6064a.m31906I(C6064a.this, InboxTab.PERSONAL, m31905J + "\n                AND latest_message_transport =  2\n                AND muted < " + j + " \n                AND muted != -1\n            ", "date DESC");
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$getExistingConversationIds$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$b.class */
    public static final class C6069b extends i implements p<i0, d<? super List<? extends Long>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Collection f20153f;

        /* renamed from: e.a.a.g.a$b$a */
        /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$b$a.class */
        public static final class C6070a extends m implements s1.z.b.l<Long, CharSequence> {

            /* renamed from: b */
            public static final C6070a f20154b = new C6070a();

            public C6070a() {
                super(1);
            }

            /* renamed from: d */
            public /* bridge */ /* synthetic */ Object m31893d(Object obj) {
                ((Number) obj).longValue();
                return "?";
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6069b(Collection collection, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20153f = collection;
        }

        /* renamed from: i */
        public final d<s> m31896i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6069b(this.f20153f, dVar);
        }

        /* renamed from: k */
        public final Object m31895k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6069b(this.f20153f, dVar).m31894s(s.a);
        }

        /* renamed from: s */
        public final Object m31894s(Object obj) {
            ArrayList arrayList;
            C25225a.m3932a3(obj);
            ContentResolver contentResolver = C6064a.this.f20134c;
            Uri m15702a = C17891a1.C17897f.m15702a();
            String m8630e = C22128a.m8630e(C22128a.m8728C("_id IN ("), s1.u.i.O(this.f20153f, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6070a.f20154b, 31), ')');
            Collection<Number> collection = this.f20153f;
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(collection, 10));
            for (Number number : collection) {
                arrayList2.add(String.valueOf(number.longValue()));
            }
            Object[] array = arrayList2.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            Cursor query = contentResolver.query(m15702a, new String[]{"_id"}, m8630e, (String[]) array, null);
            if (query != null) {
                try {
                    arrayList = new ArrayList();
                    while (query.moveToNext()) {
                        arrayList.add(new Long(query.getLong(0)));
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                arrayList = s1.u.s.a;
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readScheduledMessages$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$b0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$b0.class */
    public static final class C6071b0 extends i implements p<i0, d<? super List<? extends Message>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Long f20156f;

        /* renamed from: g */
        public final /* synthetic */ Long f20157g;

        /* renamed from: h */
        public final /* synthetic */ Integer f20158h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6071b0(Long l, Long l2, Integer num, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20156f = l;
            this.f20157g = l2;
            this.f20158h = num;
        }

        /* renamed from: i */
        public final d<s> m31892i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6071b0(this.f20156f, this.f20157g, this.f20158h, dVar);
        }

        /* renamed from: k */
        public final Object m31891k(Object obj, Object obj2) {
            return m31892i(obj, (d) obj2).m31890s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v67, types: [long] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* renamed from: s */
        public final Object m31890s(Object obj) {
            String str;
            ArrayList arrayList;
            AbstractC6149q mo31783i;
            C25225a.m3932a3(obj);
            StringBuilder sb = new StringBuilder();
            StringBuilder m8728C = C22128a.m8728C("send_schedule_date > ");
            Long l = this.f20156f;
            m8728C.append((l != null ? l.longValue() : false) == true ? 1L : 0L);
            sb.append(m8728C.toString());
            if (this.f20157g != null) {
                sb.append(" AND ");
                sb.append("send_schedule_date <= " + this.f20157g);
            }
            sb.append(" AND ");
            sb.append("(status & 128) = 128");
            String sb2 = sb.toString();
            l.d(sb2, "StringBuilder().apply(builderAction).toString()");
            ContentResolver contentResolver = C6064a.this.f20134c;
            Uri m28294z = C8582g0.m28294z();
            if (this.f20158h != null) {
                StringBuilder m8728C2 = C22128a.m8728C("send_schedule_date ASC LIMIT ");
                m8728C2.append(this.f20158h);
                str = m8728C2.toString();
            } else {
                str = "send_schedule_date ASC";
            }
            Cursor query = contentResolver.query(m28294z, null, sb2, null, str);
            if (query == null || (mo31783i = C6064a.this.f20135d.mo31783i(query)) == null) {
                arrayList = s1.u.s.a;
            } else {
                try {
                    arrayList = new ArrayList();
                    while (mo31783i.moveToNext()) {
                        Message message = mo31783i.getMessage();
                        l.d(message, "message");
                        arrayList.add(message);
                    }
                    Throwable th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$hasIncomingIm$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$c.class */
    public static final class C6072c extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ long f20160f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6072c(long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20160f = j;
        }

        /* renamed from: i */
        public final d<s> m31889i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6072c(this.f20160f, dVar);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: k */
        public final Object m31888k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            long j = this.f20160f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Cursor query = c6064a.f20134c.query(C8582g0.m28295y(), new String[]{"_id"}, "\n            conversation_id = ? AND transport=2 \n            AND (status & 1)=0\n        ", new String[]{String.valueOf(j)}, "_id LIMIT 1");
            boolean z = false;
            if (query != null) {
                try {
                    Boolean valueOf = Boolean.valueOf(query.moveToFirst());
                    C25225a.m4016G(query, null);
                    z = false;
                    if (valueOf != null) {
                        z = valueOf.booleanValue();
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            return Boolean.valueOf(z);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m31887s(Object obj) {
            C25225a.m3932a3(obj);
            Cursor query = C6064a.this.f20134c.query(C8582g0.m28295y(), new String[]{"_id"}, "\n            conversation_id = ? AND transport=2 \n            AND (status & 1)=0\n        ", new String[]{String.valueOf(this.f20160f)}, "_id LIMIT 1");
            boolean z = false;
            if (query != null) {
                try {
                    Boolean valueOf = Boolean.valueOf(query.moveToFirst());
                    C25225a.m4016G(query, null);
                    z = false;
                    if (valueOf != null) {
                        z = valueOf.booleanValue();
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readScheduledMessagesCursor$2", f = "ReadMessageStorage.kt", l = {460}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$c0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$c0.class */
    public static final class C6073c0 extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20161e;

        /* renamed from: g */
        public final /* synthetic */ int f20163g;

        /* renamed from: h */
        public final /* synthetic */ int f20164h;

        /* renamed from: i */
        public final /* synthetic */ long f20165i;

        /* renamed from: j */
        public final /* synthetic */ Integer f20166j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6073c0(int i, int i2, long j, Integer num, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20163g = i;
            this.f20164h = i2;
            this.f20165i = j;
            this.f20166j = num;
        }

        /* renamed from: i */
        public final d<s> m31886i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6073c0(this.f20163g, this.f20164h, this.f20165i, this.f20166j, dVar);
        }

        /* renamed from: k */
        public final Object m31885k(Object obj, Object obj2) {
            return m31886i(obj, (d) obj2).m31884s(s.a);
        }

        /* renamed from: s */
        public final Object m31884s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20161e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                StringBuilder sb = new StringBuilder();
                Objects.requireNonNull(C6064a.this);
                sb.append("(status & 2) = 0 AND (status & 256) = 0");
                sb.append(" AND (status & 128) = 128");
                sb.append(' ');
                C6064a c6064a = C6064a.this;
                sb.append(C8582g0.m28318b(c6064a.f20136e, c6064a.f20139h, this.f20163g, this.f20164h, false, 16));
                String sb2 = sb.toString();
                ContentResolver contentResolver = C6064a.this.f20134c;
                Uri m28339B = C8582g0.m28339B(this.f20165i);
                StringBuilder m8728C = C22128a.m8728C("send_schedule_date DESC, date DESC");
                Integer num = this.f20166j;
                String m8611i2 = num != null ? C22128a.m8611i2(" LIMIT ", num.intValue()) : null;
                if (m8611i2 == null) {
                    m8611i2 = "";
                }
                m8728C.append(m8611i2);
                Cursor query = contentResolver.query(m28339B, null, sb2, null, m8728C.toString());
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20161e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$hasMessageWithPublicEntities$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$d.class */
    public static final class C6074d extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f20168f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6074d(List list, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20168f = list;
        }

        /* renamed from: i */
        public final d<s> m31883i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6074d(this.f20168f, dVar);
        }

        /* renamed from: k */
        public final Object m31882k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            List list = this.f20168f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            StringBuilder sb = new StringBuilder();
            sb.append("conversation_id IN (");
            String m8618h = C22128a.m8618h(sb, s1.u.i.O(list, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), ") AND _id IN\n            (SELECT message_id FROM msg_entities WHERE entity_info1 LIKE (?))");
            ContentResolver contentResolver = c6064a.f20134c;
            Uri m28295y = C8582g0.m28295y();
            l.d(m28295y, "MessagesTable.getContentUri()");
            Integer m13700D = C19286f.m13700D(contentResolver, m28295y, "COUNT()", m8618h, new String[]{"%public_media%"});
            boolean z = false;
            if (m13700D != null) {
                Boolean valueOf = Boolean.valueOf(m13700D.intValue() > 0);
                z = false;
                if (valueOf != null) {
                    z = valueOf.booleanValue();
                }
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: s */
        public final Object m31881s(Object obj) {
            C25225a.m3932a3(obj);
            StringBuilder sb = new StringBuilder();
            sb.append("conversation_id IN (");
            String m8618h = C22128a.m8618h(sb, s1.u.i.O(this.f20168f, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), ") AND _id IN\n            (SELECT message_id FROM msg_entities WHERE entity_info1 LIKE (?))");
            ContentResolver contentResolver = C6064a.this.f20134c;
            Uri m28295y = C8582g0.m28295y();
            l.d(m28295y, "MessagesTable.getContentUri()");
            Integer m13700D = C19286f.m13700D(contentResolver, m28295y, "COUNT()", m8618h, new String[]{"%public_media%"});
            boolean z = false;
            if (m13700D != null) {
                Boolean valueOf = Boolean.valueOf(m13700D.intValue() > 0);
                z = false;
                if (valueOf != null) {
                    z = valueOf.booleanValue();
                }
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readSpamMessageCursor$2", f = "ReadMessageStorage.kt", l = {550}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$d0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$d0.class */
    public static final class C6075d0 extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20169e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6075d0(d dVar) {
            super(2, dVar);
            C6064a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31880i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6075d0(dVar);
        }

        /* renamed from: k */
        public final Object m31879k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6075d0(dVar).m31878s(s.a);
        }

        /* renamed from: s */
        public final Object m31878s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20169e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Cursor query = C6064a.this.f20134c.query(C8582g0.m28294z(), null, "category=3 AND classification=2", null, "date DESC");
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20169e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readArchiveConversationList$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$e */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$e.class */
    public static final class C6076e extends i implements p<i0, d<? super ArrayList<Conversation>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6076e(d dVar) {
            super(2, dVar);
            C6064a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31877i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6076e(dVar);
        }

        /* renamed from: k */
        public final Object m31876k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6076e(dVar).m31875s(s.a);
        }

        /* renamed from: s */
        public final Object m31875s(Object obj) {
            C25225a.m3932a3(obj);
            Cursor m31907H = C6064a.m31907H(C6064a.this, InboxTab.PERSONAL);
            Cursor m31907H2 = C6064a.m31907H(C6064a.this, InboxTab.OTHERS);
            Cursor m31907H3 = C6064a.m31907H(C6064a.this, InboxTab.SPAM);
            Cursor m31907H4 = C6064a.m31907H(C6064a.this, InboxTab.PROMOTIONAL);
            C6064a c6064a = C6064a.this;
            List<Cursor> T = s1.u.i.T(new Cursor[]{m31907H, m31907H2, m31907H3, m31907H4});
            Objects.requireNonNull(c6064a);
            ArrayList arrayList = new ArrayList();
            for (Cursor cursor : T) {
                if (cursor != null) {
                    try {
                        AbstractC6126a mo31772t = c6064a.f20135d.mo31772t(cursor);
                        if (mo31772t != null) {
                            while (mo31772t.moveToNext()) {
                                arrayList.add(mo31772t.mo31752p());
                            }
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
            return arrayList;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readTcyInboxConversationCursor$2", f = "ReadMessageStorage.kt", l = {389}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$e0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$e0.class */
    public static final class C6077e0 extends i implements p<i0, d<? super AbstractC6126a>, Object> {

        /* renamed from: e */
        public int f20172e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6077e0(d dVar) {
            super(2, dVar);
            C6064a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31874i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6077e0(dVar);
        }

        /* renamed from: k */
        public final Object m31873k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6077e0(dVar).m31872s(s.a);
        }

        /* renamed from: s */
        public final Object m31872s(Object obj) {
            AbstractC6126a abstractC6126a;
            a aVar = a.a;
            int i = this.f20172e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C6064a c6064a = C6064a.this;
                ContentResolver contentResolver = c6064a.f20134c;
                Uri m28308l = C8582g0.m28308l(c6064a.f20139h);
                C6064a c6064a2 = C6064a.this;
                Cursor query = contentResolver.query(m28308l, null, c6064a2.f20132a, null, c6064a2.f20133b);
                abstractC6126a = null;
                if (query != null) {
                    AbstractC6126a mo31772t = C6064a.this.f20135d.mo31772t(query);
                    abstractC6126a = null;
                    if (mo31772t != null) {
                        this.f20172e = 1;
                        Object m13518r = C19291g.m13518r(mo31772t, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6126a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6126a = (AbstractC6126a) obj;
            return abstractC6126a;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readConversation$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$f */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$f.class */
    public static final class C6078f extends i implements p<i0, d<? super Conversation>, Object> {

        /* renamed from: f */
        public final /* synthetic */ long f20175f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6078f(long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20175f = j;
        }

        /* renamed from: i */
        public final d<s> m31871i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6078f(this.f20175f, dVar);
        }

        /* renamed from: k */
        public final Object m31870k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            long j = this.f20175f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Long l = new Long(j);
            if (!Boolean.valueOf(l.longValue() > 0).booleanValue()) {
                l = null;
            }
            Conversation conversation = null;
            if (l != null) {
                l.longValue();
                Cursor query = c6064a.f20134c.query(C8582g0.m28313g(j), null, null, null, null);
                conversation = null;
                if (query != null) {
                    AbstractC6126a mo31772t = c6064a.f20135d.mo31772t(query);
                    conversation = null;
                    if (mo31772t != null) {
                        try {
                            conversation = mo31772t.moveToFirst() ? mo31772t.mo31752p() : null;
                            th = null;
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                }
            }
            return conversation;
        }

        /* renamed from: s */
        public final Object m31869s(Object obj) {
            C25225a.m3932a3(obj);
            Long l = new Long(this.f20175f);
            if (!Boolean.valueOf(l.longValue() > 0).booleanValue()) {
                l = null;
            }
            Conversation conversation = null;
            if (l != null) {
                l.longValue();
                Cursor query = C6064a.this.f20134c.query(C8582g0.m28313g(this.f20175f), null, null, null, null);
                conversation = null;
                if (query != null) {
                    AbstractC6126a mo31772t = C6064a.this.f20135d.mo31772t(query);
                    conversation = null;
                    if (mo31772t != null) {
                        try {
                            conversation = mo31772t.moveToFirst() ? mo31772t.mo31752p() : null;
                            th = null;
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                }
            }
            return conversation;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readUnreadConversationCursor$2", f = "ReadMessageStorage.kt", l = {446}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$f0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$f0.class */
    public static final class C6079f0 extends i implements p<i0, d<? super AbstractC6126a>, Object> {

        /* renamed from: e */
        public int f20176e;

        /* renamed from: g */
        public final /* synthetic */ InboxTab f20178g;

        /* renamed from: h */
        public final /* synthetic */ Set f20179h;

        /* renamed from: e.a.a.g.a$f0$a */
        /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$f0$a.class */
        public static final class C6080a extends m implements s1.z.b.l<Long, CharSequence> {

            /* renamed from: b */
            public static final C6080a f20180b = new C6080a();

            public C6080a() {
                super(1);
            }

            /* renamed from: d */
            public /* bridge */ /* synthetic */ Object m31865d(Object obj) {
                ((Number) obj).longValue();
                return "?";
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6079f0(InboxTab inboxTab, Set set, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20178g = inboxTab;
            this.f20179h = set;
        }

        /* renamed from: i */
        public final d<s> m31868i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6079f0(this.f20178g, this.f20179h, dVar);
        }

        /* renamed from: k */
        public final Object m31867k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6079f0(this.f20178g, this.f20179h, dVar).m31866s(s.a);
        }

        /* renamed from: s */
        public final Object m31866s(Object obj) {
            AbstractC6126a abstractC6126a;
            AbstractC6126a mo31772t;
            a aVar = a.a;
            int i = this.f20176e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                StringBuilder sb = new StringBuilder();
                if (!C6064a.this.f20139h || this.f20178g != InboxTab.PERSONAL) {
                    StringBuilder m8558w = C22128a.m8558w('(');
                    m8558w.append(C6064a.this.f20137f.mo31549a(this.f20178g));
                    m8558w.append(") AND ");
                    sb.append(m8558w.toString());
                }
                C22128a.m8669S0(sb, C6064a.this.f20132a, " AND ", "(unread_messages_count > 0 OR marked_unread = 1)");
                if (!this.f20179h.isEmpty()) {
                    sb.append(" OR ");
                    sb.append("_id IN (" + s1.u.i.O(this.f20179h, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6080a.f20180b, 31) + ')');
                }
                String sb2 = sb.toString();
                l.d(sb2, "StringBuilder().apply(builderAction).toString()");
                boolean z = C6064a.this.f20139h;
                Uri m28314f = (!z || this.f20178g != InboxTab.PERSONAL) ? C8582g0.m28314f(this.f20178g.getConversationFilter()) : C8582g0.m28308l(z);
                ContentResolver contentResolver = C6064a.this.f20134c;
                Set<Number> set = this.f20179h;
                ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
                for (Number number : set) {
                    arrayList.add(String.valueOf(number.longValue()));
                }
                Object[] array = arrayList.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                Cursor query = contentResolver.query(m28314f, null, sb2, (String[]) array, C6064a.this.f20133b);
                if (query == null || (mo31772t = C6064a.this.f20135d.mo31772t(query)) == null) {
                    abstractC6126a = null;
                    return abstractC6126a;
                }
                this.f20176e = 1;
                Object m13518r = C19291g.m13518r(mo31772t, this);
                obj = m13518r;
                if (m13518r == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6126a = (AbstractC6126a) obj;
            return abstractC6126a;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readConversationCursor$2", f = "ReadMessageStorage.kt", l = {351}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$g */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$g.class */
    public static final class C6081g extends i implements p<i0, d<? super AbstractC6126a>, Object> {

        /* renamed from: e */
        public int f20181e;

        /* renamed from: g */
        public final /* synthetic */ Integer f20183g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6081g(Integer num, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20183g = num;
        }

        /* renamed from: i */
        public final d<s> m31864i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6081g(this.f20183g, dVar);
        }

        /* renamed from: k */
        public final Object m31863k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6081g(this.f20183g, dVar).m31862s(s.a);
        }

        /* renamed from: s */
        public final Object m31862s(Object obj) {
            AbstractC6126a abstractC6126a;
            AbstractC6126a mo31772t;
            a aVar = a.a;
            int i = this.f20181e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                StringBuilder sb = new StringBuilder();
                sb.append("date DESC");
                Integer num = this.f20183g;
                if (num != null) {
                    num.intValue();
                    sb.append(" LIMIT " + this.f20183g);
                }
                String sb2 = sb.toString();
                l.d(sb2, "StringBuilder().apply(builderAction).toString()");
                Cursor query = C6064a.this.f20134c.query(C8582g0.m28306n(), null, null, null, sb2);
                if (query == null || (mo31772t = C6064a.this.f20135d.mo31772t(query)) == null) {
                    abstractC6126a = null;
                    return abstractC6126a;
                }
                this.f20181e = 1;
                Object m13518r = C19291g.m13518r(mo31772t, this);
                obj = m13518r;
                if (m13518r == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6126a = (AbstractC6126a) obj;
            return abstractC6126a;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readUnreadThreadsCountCursor$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$g0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$g0.class */
    public static final class C6082g0 extends i implements p<i0, d<? super Map<InboxTab, List<? extends C6112e0>>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f20185f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6082g0(List list, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20185f = list;
        }

        /* renamed from: i */
        public final d<s> m31861i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6082g0(this.f20185f, dVar);
        }

        /* renamed from: k */
        public final Object m31860k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            List<InboxTab> list = this.f20185f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (InboxTab inboxTab : list) {
                if (!c6064a.f20139h || inboxTab != InboxTab.PERSONAL) {
                    linkedHashMap.put(inboxTab, C6064a.m31906I(c6064a, inboxTab, C6064a.m31904K(c6064a, inboxTab), "date DESC"));
                } else {
                    List m31906I = C6064a.m31906I(c6064a, inboxTab, C6064a.m31904K(c6064a, inboxTab), "date DESC");
                    InboxTab inboxTab2 = InboxTab.OTHERS;
                    linkedHashMap.put(inboxTab, s1.u.i.l0(m31906I, C6064a.m31906I(c6064a, inboxTab2, C6064a.m31904K(c6064a, inboxTab2), "date DESC")));
                }
            }
            return linkedHashMap;
        }

        /* renamed from: s */
        public final Object m31859s(Object obj) {
            C25225a.m3932a3(obj);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (InboxTab inboxTab : this.f20185f) {
                C6064a c6064a = C6064a.this;
                if (!c6064a.f20139h || inboxTab != InboxTab.PERSONAL) {
                    linkedHashMap.put(inboxTab, C6064a.m31906I(c6064a, inboxTab, C6064a.m31904K(c6064a, inboxTab), "date DESC"));
                } else {
                    List m31906I = C6064a.m31906I(c6064a, inboxTab, C6064a.m31904K(c6064a, inboxTab), "date DESC");
                    C6064a c6064a2 = C6064a.this;
                    InboxTab inboxTab2 = InboxTab.OTHERS;
                    linkedHashMap.put(inboxTab, s1.u.i.l0(m31906I, C6064a.m31906I(c6064a2, inboxTab2, C6064a.m31904K(c6064a2, inboxTab2), "date DESC")));
                }
            }
            return linkedHashMap;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readConversationStats$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$h */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$h.class */
    public static final class C6083h extends i implements p<i0, d<? super C6113f>, Object> {

        /* renamed from: f */
        public final /* synthetic */ long f20187f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6083h(long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20187f = j;
        }

        /* renamed from: i */
        public final d<s> m31858i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6083h(this.f20187f, dVar);
        }

        /* renamed from: k */
        public final Object m31857k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            long j = this.f20187f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Cursor query = c6064a.f20134c.query(C17891a1.C17897f.m15702a(), new String[]{"history_events_count", "scheduled_messages_count", "load_events_mode"}, "_id = ?", new String[]{String.valueOf(j)}, null);
            C6113f c6113f = null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        l.d(query, "cursor");
                        c6113f = new C6113f(C19291g.m13520q0(query, "scheduled_messages_count"), C19291g.m13520q0(query, "history_events_count"), C19291g.m13520q0(query, "load_events_mode"));
                    } else {
                        c6113f = null;
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return c6113f;
        }

        /* renamed from: s */
        public final Object m31856s(Object obj) {
            C25225a.m3932a3(obj);
            Cursor query = C6064a.this.f20134c.query(C17891a1.C17897f.m15702a(), new String[]{"history_events_count", "scheduled_messages_count", "load_events_mode"}, "_id = ?", new String[]{String.valueOf(this.f20187f)}, null);
            C6113f c6113f = null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        l.d(query, "cursor");
                        c6113f = new C6113f(C19291g.m13520q0(query, "scheduled_messages_count"), C19291g.m13520q0(query, "history_events_count"), C19291g.m13520q0(query, "load_events_mode"));
                    } else {
                        c6113f = null;
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return c6113f;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readConversations$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$i */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$i.class */
    public static final class C6084i extends i implements p<i0, d<? super List<? extends Conversation>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f20189f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6084i(List list, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20189f = list;
        }

        /* renamed from: i */
        public final d<s> m31855i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6084i(this.f20189f, dVar);
        }

        /* renamed from: k */
        public final Object m31854k(Object obj, Object obj2) {
            ArrayList arrayList;
            AbstractC6126a mo31772t;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            List list = this.f20189f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Cursor query = c6064a.f20134c.query(C8582g0.m28306n(), null, C22128a.m8630e(C22128a.m8728C("_id IN ("), s1.u.i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 63), ')'), null, null);
            if (query == null || (mo31772t = c6064a.f20135d.mo31772t(query)) == null) {
                arrayList = s1.u.s.a;
            } else {
                try {
                    arrayList = new ArrayList();
                    while (mo31772t.moveToNext()) {
                        arrayList.add(mo31772t.mo31752p());
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return arrayList;
        }

        /* renamed from: s */
        public final Object m31853s(Object obj) {
            ArrayList arrayList;
            AbstractC6126a mo31772t;
            C25225a.m3932a3(obj);
            Cursor query = C6064a.this.f20134c.query(C8582g0.m28306n(), null, C22128a.m8630e(C22128a.m8728C("_id IN ("), s1.u.i.O(this.f20189f, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 63), ')'), null, null);
            if (query == null || (mo31772t = C6064a.this.f20135d.mo31772t(query)) == null) {
                arrayList = s1.u.s.a;
            } else {
                try {
                    arrayList = new ArrayList();
                    while (mo31772t.moveToNext()) {
                        arrayList.add(mo31772t.mo31752p());
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl", f = "ReadMessageStorage.kt", l = {193}, m = "readDraft")
    /* renamed from: e.a.a.g.a$j */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$j.class */
    public static final class C6085j extends c {

        /* renamed from: d */
        public /* synthetic */ Object f20190d;

        /* renamed from: e */
        public int f20191e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6085j(d dVar) {
            super(dVar);
            C6064a.this = r4;
        }

        /* renamed from: s */
        public final Object m31852s(Object obj) {
            this.f20190d = obj;
            this.f20191e |= Integer.MIN_VALUE;
            return C6064a.this.mo31555u(null, 0, this);
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readFilteredMessageCursor$2", f = "ReadMessageStorage.kt", l = {680}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$k */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$k.class */
    public static final class C6086k extends i implements p<i0, d<? super AbstractC6156x>, Object> {

        /* renamed from: e */
        public int f20193e;

        /* renamed from: g */
        public final /* synthetic */ String f20195g;

        /* renamed from: h */
        public final /* synthetic */ int f20196h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6086k(String str, int i, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20195g = str;
            this.f20196h = i;
        }

        /* renamed from: i */
        public final d<s> m31851i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6086k(this.f20195g, this.f20196h, dVar);
        }

        /* renamed from: k */
        public final Object m31850k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6086k(this.f20195g, this.f20196h, dVar).m31849s(s.a);
        }

        /* renamed from: s */
        public final Object m31849s(Object obj) {
            AbstractC6156x abstractC6156x;
            a aVar = a.a;
            int i = this.f20193e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ContentResolver contentResolver = C6064a.this.f20134c;
                Uri build = C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_messages_with_entities").appendQueryParameter("filter", this.f20195g).build();
                StringBuilder m8728C = C22128a.m8728C("CASE WHEN me_participant_type=1 THEN 0 ELSE 1 END,date DESC LIMIT ");
                m8728C.append(this.f20196h);
                Cursor query = contentResolver.query(build, null, "transport NOT IN (5, 6)", null, m8728C.toString());
                abstractC6156x = null;
                if (query != null) {
                    AbstractC6156x mo31785g = C6064a.this.f20135d.mo31785g(query);
                    abstractC6156x = null;
                    if (mo31785g != null) {
                        this.f20193e = 1;
                        Object m13518r = C19291g.m13518r(mo31785g, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6156x;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6156x = (AbstractC6156x) obj;
            return abstractC6156x;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readFilteredMessageCursorByConversationId$2", f = "ReadMessageStorage.kt", l = {697}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$l */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$l.class */
    public static final class C6087l extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20197e;

        /* renamed from: g */
        public final /* synthetic */ String f20199g;

        /* renamed from: h */
        public final /* synthetic */ int f20200h;

        /* renamed from: i */
        public final /* synthetic */ int f20201i;

        /* renamed from: j */
        public final /* synthetic */ long f20202j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6087l(String str, int i, int i2, long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20199g = str;
            this.f20200h = i;
            this.f20201i = i2;
            this.f20202j = j;
        }

        /* renamed from: i */
        public final d<s> m31848i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6087l(this.f20199g, this.f20200h, this.f20201i, this.f20202j, dVar);
        }

        /* renamed from: k */
        public final Object m31847k(Object obj, Object obj2) {
            return m31848i(obj, (d) obj2).m31846s(s.a);
        }

        /* renamed from: s */
        public final Object m31846s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20197e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ContentResolver contentResolver = C6064a.this.f20134c;
                Uri build = C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_messages_with_entities").appendQueryParameter("filter", this.f20199g).appendQueryParameter("filename_filter_enabled", String.valueOf(true)).build();
                StringBuilder sb = new StringBuilder();
                Objects.requireNonNull(C6064a.this);
                sb.append("(status & 2) = 0 AND (status & 256) = 0");
                sb.append(' ');
                C6064a c6064a = C6064a.this;
                Cursor query = contentResolver.query(build, null, C22128a.m8606k(sb, C8582g0.m28318b(c6064a.f20136e, c6064a.f20139h, this.f20200h, this.f20201i, false, 16), " AND ", "transport NOT IN (5, 6) AND ", "conversation_id = ?"), new String[]{String.valueOf(this.f20202j)}, "sequence_number DESC, date DESC, _id DESC");
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20197e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readGroupConversationCursor$2", f = "ReadMessageStorage.kt", l = {369}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$m */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$m.class */
    public static final class C6088m extends i implements p<i0, d<? super AbstractC6132d>, Object> {

        /* renamed from: e */
        public int f20203e;

        /* renamed from: g */
        public final /* synthetic */ Integer f20205g;

        /* renamed from: h */
        public final /* synthetic */ String f20206h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6088m(Integer num, String str, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20205g = num;
            this.f20206h = str;
        }

        /* renamed from: i */
        public final d<s> m31845i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6088m(this.f20205g, this.f20206h, dVar);
        }

        /* renamed from: k */
        public final Object m31844k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6088m(this.f20205g, this.f20206h, dVar).m31843s(s.a);
        }

        /* renamed from: s */
        public final Object m31843s(Object obj) {
            AbstractC6132d abstractC6132d;
            AbstractC6132d mo31779m;
            a aVar = a.a;
            int i = this.f20203e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                StringBuilder sb = new StringBuilder();
                sb.append("date_sorting DESC");
                Integer num = this.f20205g;
                if (num != null) {
                    num.intValue();
                    sb.append(" LIMIT " + this.f20205g);
                }
                String sb2 = sb.toString();
                l.d(sb2, "StringBuilder().apply(builderAction).toString()");
                Cursor query = C6064a.this.f20134c.query(C17891a1.f50888a.buildUpon().appendEncodedPath("group_conversation_search").build(), null, "group_name LIKE ? OR participants_names LIKE ? ", new String[]{C22128a.m8630e(C22128a.m8558w('%'), this.f20206h, '%'), C22128a.m8630e(C22128a.m8558w('%'), this.f20206h, '%')}, sb2);
                if (query == null || (mo31779m = C6064a.this.f20135d.mo31779m(query)) == null) {
                    abstractC6132d = null;
                    return abstractC6132d;
                }
                this.f20203e = 1;
                Object m13518r = C19291g.m13518r(mo31779m, this);
                obj = m13518r;
                if (m13518r == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6132d = (AbstractC6132d) obj;
            return abstractC6132d;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readImportantMessageCursor$2", f = "ReadMessageStorage.kt", l = {494}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$n */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$n.class */
    public static final class C6089n extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20207e;

        /* renamed from: g */
        public final /* synthetic */ Long f20209g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6089n(Long l, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20209g = l;
        }

        /* renamed from: i */
        public final d<s> m31842i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6089n(this.f20209g, dVar);
        }

        /* renamed from: k */
        public final Object m31841k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6089n(this.f20209g, dVar).m31840s(s.a);
        }

        /* renamed from: s */
        public final Object m31840s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20207e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ContentResolver contentResolver = C6064a.this.f20134c;
                Uri m28294z = C8582g0.m28294z();
                StringBuilder m8728C = C22128a.m8728C("important");
                m8728C.append(this.f20209g != null ? " AND conversation_id = ?" : "");
                String sb = m8728C.toString();
                Long l = this.f20209g;
                Cursor query = contentResolver.query(m28294z, null, sb, l != null ? new String[]{String.valueOf(l.longValue())} : null, "date DESC");
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20207e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readImportantMessagesByThread$2", f = "ReadMessageStorage.kt", l = {732}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$o */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$o.class */
    public static final class C6090o extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20210e;

        /* renamed from: g */
        public final /* synthetic */ long f20212g;

        /* renamed from: h */
        public final /* synthetic */ int f20213h;

        /* renamed from: i */
        public final /* synthetic */ int f20214i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6090o(long j, int i, int i2, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20212g = j;
            this.f20213h = i;
            this.f20214i = i2;
        }

        /* renamed from: i */
        public final d<s> m31839i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6090o(this.f20212g, this.f20213h, this.f20214i, dVar);
        }

        /* renamed from: k */
        public final Object m31838k(Object obj, Object obj2) {
            return m31839i(obj, (d) obj2).m31837s(s.a);
        }

        /* renamed from: s */
        public final Object m31837s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20210e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ContentResolver contentResolver = C6064a.this.f20134c;
                Uri m28339B = C8582g0.m28339B(this.f20212g);
                StringBuilder sb = new StringBuilder();
                Objects.requireNonNull(C6064a.this);
                sb.append("(status & 2) = 0 AND (status & 256) = 0");
                sb.append(' ');
                C6064a c6064a = C6064a.this;
                Cursor query = contentResolver.query(m28339B, null, C22128a.m8618h(sb, C8582g0.m28318b(c6064a.f20136e, c6064a.f20139h, this.f20213h, this.f20214i, false, 16), " AND important"), null, "sequence_number DESC, date DESC, _id DESC");
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20210e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readLatestUnreadImGroup$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$p */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$p.class */
    public static final class C6091p extends i implements p<i0, d<? super C6112e0>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6091p(d dVar) {
            super(2, dVar);
            C6064a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31836i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6091p(dVar);
        }

        /* renamed from: k */
        public final Object m31835k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return s1.u.i.D(C6064a.m31906I(c6064a, InboxTab.PERSONAL, C22128a.m8543z2(C6064a.m31905J(c6064a, 1), "\n            AND im_group_id IS NOT NULL\n            AND im_group_notification_settings = 0\n        "), "date DESC LIMIT 1"));
        }

        /* renamed from: s */
        public final Object m31834s(Object obj) {
            C25225a.m3932a3(obj);
            return s1.u.i.D(C6064a.m31906I(C6064a.this, InboxTab.PERSONAL, C22128a.m8543z2(C6064a.m31905J(C6064a.this, 1), "\n            AND im_group_id IS NOT NULL\n            AND im_group_notification_settings = 0\n        "), "date DESC LIMIT 1"));
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessage$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$q */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$q.class */
    public static final class C6092q extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: f */
        public final /* synthetic */ long f20217f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6092q(long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20217f = j;
        }

        /* renamed from: i */
        public final d<s> m31833i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6092q(this.f20217f, dVar);
        }

        /* renamed from: k */
        public final Object m31832k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            long j = this.f20217f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Cursor query = c6064a.f20134c.query(C8582g0.m28294z(), null, "_id = ?", new String[]{String.valueOf(j)}, null);
            Message message = null;
            if (query != null) {
                AbstractC6149q mo31783i = c6064a.f20135d.mo31783i(query);
                message = null;
                if (mo31783i != null) {
                    try {
                        if (mo31783i.moveToFirst()) {
                            l.d(mo31783i, "it");
                            message = mo31783i.getMessage();
                        } else {
                            message = null;
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
            return message;
        }

        /* renamed from: s */
        public final Object m31831s(Object obj) {
            C25225a.m3932a3(obj);
            Cursor query = C6064a.this.f20134c.query(C8582g0.m28294z(), null, "_id = ?", new String[]{String.valueOf(this.f20217f)}, null);
            Message message = null;
            if (query != null) {
                AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                message = null;
                if (mo31783i != null) {
                    try {
                        if (mo31783i.moveToFirst()) {
                            l.d(mo31783i, "it");
                            message = mo31783i.getMessage();
                        } else {
                            message = null;
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
            return message;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessage$4", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$r */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$r.class */
    public static final class C6093r extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f20219f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6093r(String str, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20219f = str;
        }

        /* renamed from: i */
        public final d<s> m31830i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6093r(this.f20219f, dVar);
        }

        /* renamed from: k */
        public final Object m31829k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            String str = this.f20219f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Cursor query = c6064a.f20134c.query(C8582g0.m28294z(), null, "transport = 2 AND raw_id = ?", new String[]{str}, null);
            Message message = null;
            if (query != null) {
                AbstractC6149q mo31783i = c6064a.f20135d.mo31783i(query);
                message = null;
                if (mo31783i != null) {
                    try {
                        if (mo31783i.moveToFirst()) {
                            l.d(mo31783i, "it");
                            message = mo31783i.getMessage();
                        } else {
                            message = null;
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
            return message;
        }

        /* renamed from: s */
        public final Object m31828s(Object obj) {
            C25225a.m3932a3(obj);
            Cursor query = C6064a.this.f20134c.query(C8582g0.m28294z(), null, "transport = 2 AND raw_id = ?", new String[]{this.f20219f}, null);
            Message message = null;
            if (query != null) {
                AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                message = null;
                if (mo31783i != null) {
                    try {
                        if (mo31783i.moveToFirst()) {
                            l.d(mo31783i, "it");
                            message = mo31783i.getMessage();
                        } else {
                            message = null;
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
            return message;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageByDate$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$s */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$s.class */
    public static final class C6094s extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: f */
        public final /* synthetic */ long f20221f;

        /* renamed from: g */
        public final /* synthetic */ int f20222g;

        /* renamed from: h */
        public final /* synthetic */ int f20223h;

        /* renamed from: i */
        public final /* synthetic */ long f20224i;

        /* renamed from: j */
        public final /* synthetic */ long f20225j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6094s(long j, int i, int i2, long j2, long j3, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20221f = j;
            this.f20222g = i;
            this.f20223h = i2;
            this.f20224i = j2;
            this.f20225j = j3;
        }

        /* renamed from: i */
        public final d<s> m31827i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6094s(this.f20221f, this.f20222g, this.f20223h, this.f20224i, this.f20225j, dVar);
        }

        /* renamed from: k */
        public final Object m31826k(Object obj, Object obj2) {
            return m31827i(obj, (d) obj2).m31825s(s.a);
        }

        /* renamed from: s */
        public final Object m31825s(Object obj) {
            C25225a.m3932a3(obj);
            ContentResolver contentResolver = C6064a.this.f20134c;
            Uri m28339B = C8582g0.m28339B(this.f20221f);
            StringBuilder sb = new StringBuilder();
            Objects.requireNonNull(C6064a.this);
            sb.append("(status & 2) = 0 AND (status & 256) = 0");
            sb.append(' ');
            C6064a c6064a = C6064a.this;
            Cursor query = contentResolver.query(m28339B, null, C22128a.m8606k(sb, C8582g0.m28318b(c6064a.f20136e, c6064a.f20139h, this.f20222g, this.f20223h, false, 16), " AND ", "transport NOT IN (5, 6) AND ", "date >= ? AND date < ?"), new String[]{String.valueOf(this.f20224i), String.valueOf(this.f20225j)}, "date ASC");
            Message message = null;
            if (query != null) {
                AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                message = null;
                if (mo31783i != null) {
                    try {
                        if (mo31783i.moveToFirst()) {
                            l.d(mo31783i, "it");
                            message = mo31783i.getMessage();
                        } else {
                            message = null;
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
            return message;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageCursor$2", f = "ReadMessageStorage.kt", l = {473, 482}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$t */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$t.class */
    public static final class C6095t extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20226e;

        /* renamed from: g */
        public final /* synthetic */ boolean f20228g;

        /* renamed from: h */
        public final /* synthetic */ long f20229h;

        /* renamed from: i */
        public final /* synthetic */ Integer f20230i;

        /* renamed from: j */
        public final /* synthetic */ int f20231j;

        /* renamed from: k */
        public final /* synthetic */ int f20232k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6095t(boolean z, long j, Integer num, int i, int i2, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20228g = z;
            this.f20229h = j;
            this.f20230i = num;
            this.f20231j = i;
            this.f20232k = i2;
        }

        /* renamed from: i */
        public final d<s> m31824i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6095t(this.f20228g, this.f20229h, this.f20230i, this.f20231j, this.f20232k, dVar);
        }

        /* renamed from: k */
        public final Object m31823k(Object obj, Object obj2) {
            return m31824i(obj, (d) obj2).m31822s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x0159, code lost:
            if (r9 != null) goto L31;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m31822s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 445
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.C6064a.C6095t.m31822s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageCursor$4", f = "ReadMessageStorage.kt", l = {669}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$u */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$u.class */
    public static final class C6096u extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20233e;

        /* renamed from: g */
        public final /* synthetic */ long f20235g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6096u(long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20235g = j;
        }

        /* renamed from: i */
        public final d<s> m31821i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6096u(this.f20235g, dVar);
        }

        /* renamed from: k */
        public final Object m31820k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6096u(this.f20235g, dVar).m31819s(s.a);
        }

        /* renamed from: s */
        public final Object m31819s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20233e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Cursor query = C6064a.this.f20134c.query(C8582g0.m28294z(), null, "_id = ?", new String[]{String.valueOf(this.f20235g)}, null);
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20233e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageId$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$v */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$v.class */
    public static final class C6097v extends i implements p<i0, d<? super Long>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f20237f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6097v(String str, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20237f = str;
        }

        /* renamed from: i */
        public final d<s> m31818i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6097v(this.f20237f, dVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* renamed from: k */
        public final Object m31817k(Object obj, Object obj2) {
            Long m13699E;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            String str = this.f20237f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            ContentResolver contentResolver = c6064a.f20134c;
            Uri m28305o = C8582g0.m28305o(2);
            l.d(m28305o, "MessagesTable.getContent…ssagesTable.TRANSPORT_IM)");
            m13699E = C19286f.m13699E(contentResolver, m28305o, "_id", "raw_id = ?", new String[]{str}, null);
            return new Long((m13699E != null ? m13699E.longValue() : true) == true ? 1L : 0L);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* renamed from: s */
        public final Object m31816s(Object obj) {
            Long m13699E;
            C25225a.m3932a3(obj);
            ContentResolver contentResolver = C6064a.this.f20134c;
            Uri m28305o = C8582g0.m28305o(2);
            l.d(m28305o, "MessagesTable.getContent…ssagesTable.TRANSPORT_IM)");
            m13699E = C19286f.m13699E(contentResolver, m28305o, "_id", "raw_id = ?", new String[]{this.f20237f}, null);
            return new Long((m13699E != null ? m13699E.longValue() : true) == true ? 1L : 0L);
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageRawId$2", f = "ReadMessageStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$w */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$w.class */
    public static final class C6098w extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: f */
        public final /* synthetic */ long f20239f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6098w(long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20239f = j;
        }

        /* renamed from: i */
        public final d<s> m31815i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6098w(this.f20239f, dVar);
        }

        /* renamed from: k */
        public final Object m31814k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6064a c6064a = C6064a.this;
            long j = this.f20239f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            ContentResolver contentResolver = c6064a.f20134c;
            Uri m28305o = C8582g0.m28305o(2);
            l.d(m28305o, "MessagesTable.getContent…ssagesTable.TRANSPORT_IM)");
            return C19286f.m13696H(contentResolver, m28305o, "raw_id", "_id = ?", new String[]{String.valueOf(j)}, null, 16);
        }

        /* renamed from: s */
        public final Object m31813s(Object obj) {
            C25225a.m3932a3(obj);
            ContentResolver contentResolver = C6064a.this.f20134c;
            Uri m28305o = C8582g0.m28305o(2);
            l.d(m28305o, "MessagesTable.getContent…ssagesTable.TRANSPORT_IM)");
            return C19286f.m13696H(contentResolver, m28305o, "raw_id", "_id = ?", new String[]{String.valueOf(this.f20239f)}, null, 16);
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessagesByImPeerId$2", f = "ReadMessageStorage.kt", l = {742}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$x */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$x.class */
    public static final class C6099x extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20240e;

        /* renamed from: g */
        public final /* synthetic */ String f20242g;

        /* renamed from: h */
        public final /* synthetic */ long f20243h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6099x(String str, long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20242g = str;
            this.f20243h = j;
        }

        /* renamed from: i */
        public final d<s> m31812i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6099x(this.f20242g, this.f20243h, dVar);
        }

        /* renamed from: k */
        public final Object m31811k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6099x(this.f20242g, this.f20243h, dVar).m31810s(s.a);
        }

        /* renamed from: s */
        public final Object m31810s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20240e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Cursor query = C6064a.this.f20134c.query(C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_messages_with_entities").appendQueryParameter("im_id", this.f20242g).build(), null, "conversation_id = ?", new String[]{String.valueOf(this.f20243h)}, "sequence_number DESC, date DESC, _id DESC");
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20240e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readNonBlockConversationCursor$2", f = "ReadMessageStorage.kt", l = {379}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$y */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$y.class */
    public static final class C6100y extends i implements p<i0, d<? super AbstractC6126a>, Object> {

        /* renamed from: e */
        public int f20244e;

        /* renamed from: g */
        public final /* synthetic */ InboxTab f20246g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6100y(InboxTab inboxTab, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20246g = inboxTab;
        }

        /* renamed from: i */
        public final d<s> m31809i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6100y(this.f20246g, dVar);
        }

        /* renamed from: k */
        public final Object m31808k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6100y(this.f20246g, dVar).m31807s(s.a);
        }

        /* renamed from: s */
        public final Object m31807s(Object obj) {
            AbstractC6126a abstractC6126a;
            AbstractC6126a mo31772t;
            a aVar = a.a;
            int i = this.f20244e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ContentResolver contentResolver = C6064a.this.f20134c;
                Uri m28314f = C8582g0.m28314f(this.f20246g.getConversationFilter());
                StringBuilder m8558w = C22128a.m8558w('(');
                m8558w.append(C6064a.this.f20137f.mo31549a(this.f20246g));
                m8558w.append(") AND ");
                m8558w.append(C6064a.this.f20132a);
                Cursor query = contentResolver.query(m28314f, null, m8558w.toString(), null, C6064a.this.f20133b);
                if (query == null || (mo31772t = C6064a.this.f20135d.mo31772t(query)) == null) {
                    abstractC6126a = null;
                    return abstractC6126a;
                }
                this.f20244e = 1;
                Object m13518r = C19291g.m13518r(mo31772t, this);
                obj = m13518r;
                if (m13518r == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6126a = (AbstractC6126a) obj;
            return abstractC6126a;
        }
    }

    @e(c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readOutgoingMessages$2", f = "ReadMessageStorage.kt", l = {752}, m = "invokeSuspend")
    /* renamed from: e.a.a.g.a$z */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a$z.class */
    public static final class C6101z extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f20247e;

        /* renamed from: g */
        public final /* synthetic */ long f20249g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6101z(long j, d dVar) {
            super(2, dVar);
            C6064a.this = r5;
            this.f20249g = j;
        }

        /* renamed from: i */
        public final d<s> m31806i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6101z(this.f20249g, dVar);
        }

        /* renamed from: k */
        public final Object m31805k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6101z(this.f20249g, dVar).m31804s(s.a);
        }

        /* renamed from: s */
        public final Object m31804s(Object obj) {
            AbstractC6149q abstractC6149q;
            a aVar = a.a;
            int i = this.f20247e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Cursor query = C6064a.this.f20134c.query(C8582g0.m28339B(this.f20249g), null, "status & 1 != 0 ", null, "sequence_number DESC, date DESC, _id DESC");
                abstractC6149q = null;
                if (query != null) {
                    AbstractC6149q mo31783i = C6064a.this.f20135d.mo31783i(query);
                    abstractC6149q = null;
                    if (mo31783i != null) {
                        this.f20247e = 1;
                        Object m13518r = C19291g.m13518r(mo31783i, this);
                        obj = m13518r;
                        if (m13518r == aVar) {
                            return aVar;
                        }
                    }
                }
                return abstractC6149q;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC6149q = (AbstractC6149q) obj;
            return abstractC6149q;
        }
    }

    @Inject
    public C6064a(ContentResolver contentResolver, AbstractC6115g abstractC6115g, C20592g c20592g, AbstractC6249x abstractC6249x, @Named("IO") f fVar, boolean z, AbstractC18951b0 abstractC18951b0) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorFactory");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC6249x, "selectionProvider");
        l.e(fVar, "asyncContext");
        l.e(abstractC18951b0, "dateHelper");
        this.f20134c = contentResolver;
        this.f20135d = abstractC6115g;
        this.f20136e = c20592g;
        this.f20137f = abstractC6249x;
        this.f20138g = fVar;
        this.f20139h = z;
        this.f20140i = abstractC18951b0;
    }

    /* renamed from: H */
    public static final Cursor m31907H(C6064a c6064a, InboxTab inboxTab) {
        String mo31549a = c6064a.f20137f.mo31549a(inboxTab);
        ContentResolver contentResolver = c6064a.f20134c;
        Uri m28314f = C8582g0.m28314f(inboxTab.getConversationFilter());
        return contentResolver.query(m28314f, null, '(' + mo31549a + ") AND archived_date > 0", null, "date DESC, archived_date DESC");
    }

    /* renamed from: I */
    public static final List m31906I(C6064a c6064a, InboxTab inboxTab, String str, String str2) {
        Objects.requireNonNull(c6064a);
        ArrayList arrayList = new ArrayList();
        Cursor query = c6064a.f20134c.query(C8582g0.m28314f(inboxTab.getConversationFilter()), new String[]{"_id", "date", "participants_name", "participants_normalized_destination", "participants_phonebook_id", "participants_image_url", "filter", "split_criteria", "im_group_id", "im_group_title", "im_group_avatar", "participants_type"}, str, null, str2);
        if (query != null) {
            try {
                C6111e c6111e = new C6111e(query);
                c6111e.moveToPosition(-1);
                while (c6111e.moveToNext()) {
                    List<String> m31792b = c6111e.m31792b(C19291g.m13628F1(c6111e, "participants_normalized_destination"));
                    l.d(m31792b, "readComposedStrings(stri…_NORMALIZED_DESTINATION))");
                    if (!((ArrayList) m31792b).isEmpty()) {
                        long m13632E0 = C19291g.m13632E0(c6111e, "_id");
                        long m13632E02 = C19291g.m13632E0(c6111e, "date");
                        List<String> m31792b2 = c6111e.m31792b(C19291g.m13628F1(c6111e, "participants_name"));
                        l.d(m31792b2, "readComposedStrings(stri…RTICIPANTS_GROUPED_NAME))");
                        String str3 = (String) s1.u.i.D(m31792b2);
                        Object B = s1.u.i.B(m31792b);
                        l.d(B, "numbers.first()");
                        String str4 = (String) B;
                        long parseLong = Long.parseLong((String) s1.u.i.B(C10480a.m25873x2(C19291g.m13628F1(c6111e, "participants_phonebook_id"))));
                        List<String> m31792b3 = c6111e.m31792b(C19291g.m13628F1(c6111e, "participants_image_url"));
                        l.d(m31792b3, "readComposedStrings(stri…PANTS_GROUPED_IMAGE_URL))");
                        arrayList.add(new C6112e0(m13632E0, m13632E02, str3, str4, parseLong, (String) s1.u.i.D(m31792b3), Integer.parseInt((String) s1.u.i.B(C10480a.m25873x2(C19291g.m13628F1(c6111e, "participants_type")))), C19291g.m13520q0(c6111e, "filter"), C19291g.m13520q0(c6111e, "split_criteria"), C19291g.m13628F1(c6111e, "im_group_id"), C19291g.m13628F1(c6111e, "im_group_title"), C19291g.m13628F1(c6111e, "im_group_avatar")));
                    }
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return arrayList;
    }

    /* renamed from: J */
    public static final String m31905J(C6064a c6064a, int i) {
        Objects.requireNonNull(c6064a);
        StringBuilder sb = new StringBuilder();
        StringBuilder m8728C = C22128a.m8728C("\n                    (");
        m8728C.append(c6064a.f20137f.mo31549a(InboxTab.PERSONAL));
        m8728C.append(")\n                    AND (unread_messages_count > 0 OR marked_unread = 1)\n                    AND ");
        m8728C.append(c6064a.f20132a);
        m8728C.append(" \n                    AND type =  ");
        m8728C.append(i);
        m8728C.append("\n                ");
        sb.append(m8728C.toString());
        String sb2 = sb.toString();
        l.d(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: K */
    public static final String m31904K(C6064a c6064a, InboxTab inboxTab) {
        Objects.requireNonNull(c6064a);
        StringBuilder sb = new StringBuilder();
        StringBuilder m8558w = C22128a.m8558w('(');
        m8558w.append(c6064a.f20137f.mo31549a(inboxTab));
        m8558w.append(')');
        sb.append(m8558w.toString());
        sb.append(" AND (unread_messages_count > 0 OR marked_unread = 1)");
        sb.append(" AND " + c6064a.f20132a + ' ');
        String sb2 = sb.toString();
        l.d(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: A */
    public Object mo31582A(long j, int i, int i2, Integer num, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6073c0(i, i2, j, num, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: B */
    public Object mo31581B(List<Long> list, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6074d(list, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: C */
    public Object mo31580C(String str, d<? super Long> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6097v(str, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: D */
    public Object mo31579D(long j, d<? super Message> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6092q(j, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: E */
    public Object mo31578E(String str, d<? super Message> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6093r(str, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: F */
    public Object mo31577F(long j, d<? super String> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6098w(j, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: G */
    public Object mo31576G(long j, int i, int i2, boolean z, Integer num, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6095t(z, j, num, i, i2, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: a */
    public Object mo31575a(d<? super C6112e0> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6091p(null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: b */
    public Object mo31574b(Collection<Long> collection, d<? super List<Long>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6069b(collection, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: c */
    public Object mo31573c(d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6075d0(null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: d */
    public Object mo31572d(String str, long j, int i, int i2, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6087l(str, i, i2, j, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: e */
    public Object mo31571e(String str, Integer num, d<? super AbstractC6132d> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6088m(num, str, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: f */
    public Object mo31570f(Integer num, d<? super AbstractC6126a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6081g(num, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: g */
    public Object mo31569g(long j, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6096u(j, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: h */
    public Object mo31568h(long j, String str, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6099x(str, j, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: i */
    public Object mo31567i(List<Long> list, d<? super List<? extends Conversation>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6084i(list, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: j */
    public Object mo31566j(long j, d<? super Conversation> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6078f(j, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: k */
    public Object mo31565k(d<? super AbstractC6126a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6077e0(null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: l */
    public Object mo31564l(long j, long j2, long j3, int i, int i2, d<? super Message> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6094s(j3, i, i2, j, j2, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: m */
    public Object mo31563m(d<? super List<C6112e0>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6068a0(null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: n */
    public Object mo31562n(Long l, Long l2, Integer num, d<? super List<Message>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6071b0(l2, l, num, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: o */
    public Object mo31561o(InboxTab inboxTab, Set<Long> set, d<? super AbstractC6126a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6079f0(inboxTab, set, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: p */
    public Object mo31560p(InboxTab inboxTab, d<? super AbstractC6126a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6100y(inboxTab, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: q */
    public Object mo31559q(Long l, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6089n(l, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: r */
    public Object mo31558r(long j, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6101z(j, null), dVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: s */
    public Object mo31557s(d<? super C6247v> dVar) {
        ArrayList arrayList;
        Long m13699E;
        AbstractC6126a mo31772t;
        StringBuilder m8558w = C22128a.m8558w('(');
        m8558w.append(this.f20137f.mo31549a(InboxTab.PROMOTIONAL));
        m8558w.append(") AND ");
        m8558w.append(this.f20132a);
        String sb = m8558w.toString();
        Cursor query = this.f20134c.query(C8582g0.m28314f(4), null, sb, null, C22128a.m8618h(new StringBuilder(), this.f20133b, " LIMIT 8"));
        if (query == null || (mo31772t = this.f20135d.mo31772t(query)) == null) {
            arrayList = null;
        } else {
            try {
                arrayList = new ArrayList();
                while (mo31772t.moveToNext()) {
                    arrayList.add(mo31772t.mo31752p());
                }
                Throwable th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        if ((arrayList == null || arrayList.isEmpty()) == true) {
            return null;
        }
        ContentResolver contentResolver = this.f20134c;
        Uri m28314f = C8582g0.m28314f(4);
        l.d(m28314f, "ConversationListView.get…sationFilter.PROMOTIONAL)");
        m13699E = C19286f.m13699E(contentResolver, m28314f, "MAX(date)", sb + " AND unread_messages_count > 0", null, null);
        return new C6247v(arrayList, (m13699E != null ? m13699E.longValue() : false) == true ? 1L : 0L);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: t */
    public Object mo31556t(List<? extends InboxTab> list, d<? super Map<InboxTab, ? extends List<C6112e0>>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6082g0(list, null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo31555u(com.truecaller.data.entity.messaging.Participant[] r8, int r9, s1.w.d<? super com.truecaller.messaging.data.types.Draft> r10) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.C6064a.mo31555u(com.truecaller.data.entity.messaging.Participant[], int, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: v */
    public Object mo31554v(String str, int i, d<? super AbstractC6156x> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6086k(str, i, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: w */
    public Object mo31553w(long j, d<? super C6113f> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6083h(j, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: x */
    public Object mo31552x(long j, int i, int i2, d<? super AbstractC6149q> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6090o(j, i, i2, null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: y */
    public Object mo31551y(d<? super List<? extends Conversation>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6076e(null), dVar);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6248w
    /* renamed from: z */
    public Object mo31550z(long j, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f20138g, new C6072c(j, null), dVar);
    }
}
