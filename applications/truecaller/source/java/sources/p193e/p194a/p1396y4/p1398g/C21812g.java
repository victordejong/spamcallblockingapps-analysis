package p193e.p194a.p1396y4.p1398g;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.UnmutedException;
import com.truecaller.service.p176t9.T9DaoHelper;
import java.util.List;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1410z4.C21883f;
import p193e.p194a.p432b4.p433a.AbstractC8640d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p997k3.p998j.C16463d;
import s1.a.a.a.v0.f.d;
import s1.e0.h;
import s1.e0.x;
import s1.g;
import s1.o;
import s1.u.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.y4.g.g */
/* loaded from: classes13-dex2jar.jar:e/a/y4/g/g.class */
public final class C21812g {

    /* renamed from: a */
    public final g f60671a = C25225a.m3978P1(new C21817e());

    /* renamed from: b */
    public final ContentResolver f60672b;

    /* renamed from: c */
    public final T9DaoHelper f60673c;

    /* renamed from: d */
    public final C21883f f60674d;

    /* renamed from: e */
    public final AbstractC8640d f60675e;

    /* renamed from: e.a.y4.g.g$a */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/g/g$a.class */
    public static final class C21813a extends m implements a<Long> {

        /* renamed from: b */
        public final /* synthetic */ Cursor f60676b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21813a(Cursor cursor) {
            super(0);
            this.f60676b = cursor;
        }

        public final Long invoke() {
            return this.f60676b.moveToNext() ? Long.valueOf(this.f60676b.getLong(0)) : null;
        }
    }

    /* renamed from: e.a.y4.g.g$b */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/g/g$b.class */
    public static final class C21814b extends m implements l<Cursor, o<? extends Long, ? extends Contact, ? extends Long>> {

        /* renamed from: b */
        public static final C21814b f60677b = new C21814b();

        public C21814b() {
            super(1);
        }

        /* renamed from: d */
        public Object m9036d(Object obj) {
            Long id;
            Cursor cursor = (Cursor) obj;
            s1.z.c.l.e(cursor, "cursor");
            C16463d c16463d = new C16463d(cursor);
            Contact m17354g = c16463d.m17354g(cursor);
            return (m17354g == null || (id = m17354g.getId()) == null) ? null : new o(id, m17354g, c16463d.m17371d(cursor, c16463d.f46223E));
        }
    }

    /* renamed from: e.a.y4.g.g$c */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/g/g$c.class */
    public static final class C21815c extends m implements l<Cursor, o> {

        /* renamed from: b */
        public static final C21815c f60678b = new C21815c();

        public C21815c() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:61:0x0223  */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m9035d(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 567
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1396y4.p1398g.C21812g.C21815c.m9035d(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.y4.g.g$d */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/g/g$d.class */
    public static final class C21816d extends m implements l<List<? extends Long>, Boolean> {

        /* renamed from: b */
        public static final C21816d f60679b = new C21816d();

        public C21816d() {
            super(1);
        }

        /* renamed from: d */
        public Object m9034d(Object obj) {
            List list = (List) obj;
            s1.z.c.l.e(list, "it");
            return Boolean.valueOf(!list.isEmpty());
        }
    }

    /* renamed from: e.a.y4.g.g$e */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/g/g$e.class */
    public static final class C21817e extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21817e() {
            super(0);
            C21812g.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x005e, code lost:
            if (r6 != null) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke() {
            /*
                r5 = this;
                r0 = r5
                e.a.y4.g.g r0 = p193e.p194a.p1396y4.p1398g.C21812g.this
                e.a.z4.f r0 = r0.f60674d
                e.a.z4.d r0 = r0.f60768a
                java.lang.String r1 = "t9_lang"
                java.lang.String r0 = r0.getString(r1)
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L64
                e.a.b0.k.d r0 = p193e.p194a.p372b0.p417k.C8495d.f26276h
                r7 = r0
                java.util.List<e.a.b0.k.c> r0 = p193e.p194a.p372b0.p417k.C8495d.f26274f
                r8 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r2 = r8
                r3 = 10
                int r2 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4004J(r2, r3)
                r1.<init>(r2)
                r7 = r0
                r0 = r8
                java.util.Iterator r0 = r0.iterator()
                r8 = r0
            L33:
                r0 = r8
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L50
                r0 = r7
                r1 = r8
                java.lang.Object r1 = r1.next()
                e.a.b0.k.c r1 = (p193e.p194a.p372b0.p417k.C8494c) r1
                java.lang.String r1 = r1.f26267b
                boolean r0 = r0.add(r1)
                goto L33
            L50:
                r0 = r7
                r1 = r6
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L5b
                goto L5d
            L5b:
                r0 = 0
                r6 = r0
            L5d:
                r0 = r6
                if (r0 == 0) goto L64
                goto L79
            L64:
                java.util.Locale r0 = p193e.p194a.p372b0.p417k.C8502h.f26287b
                r6 = r0
                r0 = r6
                java.lang.String r1 = "LocaleManager.getAppLocale()"
                s1.z.c.l.d(r0, r1)
                r0 = r6
                java.lang.String r0 = r0.getLanguage()
                r6 = r0
                r0 = r6
                java.lang.String r1 = "LocaleManager.getAppLocale().language"
                s1.z.c.l.d(r0, r1)
            L79:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1396y4.p1398g.C21812g.C21817e.invoke():java.lang.Object");
        }
    }

    @Inject
    public C21812g(ContentResolver contentResolver, T9DaoHelper t9DaoHelper, C21883f c21883f, AbstractC8640d abstractC8640d) {
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(t9DaoHelper, "t9DaoHelper");
        s1.z.c.l.e(c21883f, "languageManager");
        s1.z.c.l.e(abstractC8640d, "t9KeyMapProvider");
        this.f60672b = contentResolver;
        this.f60673c = t9DaoHelper;
        this.f60674d = c21883f;
        this.f60675e = abstractC8640d;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x04d5 A[LOOP:6: B:61:0x04cb->B:63:0x04d5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0522  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9038a(long[] r10) {
        /*
            Method dump skipped, instructions count: 1492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1396y4.p1398g.C21812g.m9038a(long[]):void");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public final void m9037b(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            int delete = this.f60672b.delete(C17891a1.C17902k.m15663L(), "\n                                raw_contact_id NOT IN (\n                                        SELECT _id FROM raw_contact)\n                                ", null);
            long currentTimeMillis2 = System.currentTimeMillis();
            StringBuilder m8728C = C22128a.m8728C(" sync() deletes from ");
            m8728C.append(C17891a1.C17902k.m15663L());
            m8728C.append(' ');
            m8728C.append(delete);
            m8728C.append(" items, took: ");
            m8728C.append(currentTimeMillis2 - currentTimeMillis);
            m8728C.append("ms");
            m8728C.toString();
            String str = z ? null : "\n                                _id IN (\n                                    SELECT r._id\n                                        FROM raw_contact r\n                                        LEFT JOIN t9_mapping m\n                                            ON r._id = m.raw_contact_id\n                                            AND r.insert_timestamp = m.raw_contact_insert_timestamp\n                                        WHERE m.raw_contact_id IS NULL\n                                )\n                                ";
            long currentTimeMillis3 = System.currentTimeMillis();
            Cursor query = this.f60672b.query(C17891a1.C17904m.m15552a(), new String[]{"_id"}, str, null, null);
            Integer num = null;
            if (query != null) {
                try {
                    h.a aVar = new h.a(x.f(x.b(d.e1(new C21813a(query)), 300), C21816d.f60679b));
                    while (aVar.hasNext()) {
                        try {
                            m9038a(i.U0((List) aVar.next()));
                        } catch (SQLException e) {
                        }
                    }
                    s1.z.c.l.d(query, "cursor");
                    int count = query.getCount();
                    C25225a.m4016G(query, null);
                    num = Integer.valueOf(count);
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            long currentTimeMillis4 = System.currentTimeMillis();
            StringBuilder m8728C2 = C22128a.m8728C(" sync() fetches from ");
            m8728C2.append(C17891a1.C17904m.m15552a());
            m8728C2.append(' ');
            m8728C2.append(num);
            m8728C2.append(" items, took: ");
            m8728C2.append(currentTimeMillis4 - currentTimeMillis3);
            m8728C2.append("ms");
            m8728C2.toString();
        } catch (IllegalArgumentException e2) {
            Uri uri = C17891a1.f50888a;
            String message = e2.getMessage();
            if (message == null) {
                message = "No message";
            }
            C10480a.m26061I1(new UnmutedException.C4142a("com.truecaller", message));
        }
    }
}
