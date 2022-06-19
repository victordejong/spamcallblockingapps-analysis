package p193e.p194a.p1396y4.p1397f;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.UnmutedException;
import com.truecaller.service.contact.RefreshContactIndexingService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.e0.c;
import s1.e0.x;
import s1.k;
import s1.u.i;
import s1.u.s;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.y4.f.b */
/* loaded from: classes13-dex2jar.jar:e/a/y4/f/b.class */
public final class C21797b {

    /* renamed from: a */
    public final ContentResolver f60655a;

    /* renamed from: b */
    public final RefreshContactIndexingService.C4472a f60656b;

    /* renamed from: e.a.y4.f.b$a */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/f/b$a.class */
    public static final class C21798a extends m implements l<k<? extends Contact, ? extends Long>, ContentProviderOperation> {

        /* renamed from: b */
        public final /* synthetic */ Uri f60657b;

        /* renamed from: c */
        public final /* synthetic */ C21802c f60658c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21798a(C21797b c21797b, long[] jArr, Uri uri, C21802c c21802c) {
            super(1);
            this.f60657b = uri;
            this.f60658c = c21802c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0097, code lost:
            if (r5 != null) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x00d1, code lost:
            if (r5 != null) goto L19;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m9052d(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 344
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1396y4.p1397f.C21797b.C21798a.m9052d(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.y4.f.b$b */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/f/b$b.class */
    public static final class C21799b extends m implements l<Cursor, Long> {

        /* renamed from: b */
        public static final C21799b f60659b = new C21799b();

        public C21799b() {
            super(1);
        }

        /* renamed from: d */
        public Object m9051d(Object obj) {
            Cursor cursor = (Cursor) obj;
            s1.z.c.l.e(cursor, "it");
            return Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("aggregated_update_timestamp")));
        }
    }

    /* renamed from: e.a.y4.f.b$c */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/f/b$c.class */
    public static final class C21800c extends m implements p<Contact, Long, k<? extends Contact, ? extends Long>> {

        /* renamed from: b */
        public static final C21800c f60660b = new C21800c();

        public C21800c() {
            super(2);
        }

        /* renamed from: k */
        public Object m9050k(Object obj, Object obj2) {
            Contact contact = (Contact) obj;
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            return new k(contact, (Long) obj2);
        }
    }

    /* renamed from: e.a.y4.f.b$d */
    /* loaded from: classes13-dex2jar.jar:e/a/y4/f/b$d.class */
    public static final class C21801d extends m implements l<k<? extends Contact, ? extends Long>, Long> {

        /* renamed from: b */
        public static final C21801d f60661b = new C21801d();

        public C21801d() {
            super(1);
        }

        /* renamed from: d */
        public Object m9049d(Object obj) {
            k kVar = (k) obj;
            s1.z.c.l.e(kVar, "it");
            return ((Contact) kVar.a).getId();
        }
    }

    public C21797b(ContentResolver contentResolver, RefreshContactIndexingService.C4472a c4472a) {
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(c4472a, "serviceLauncher");
        this.f60655a = contentResolver;
        this.f60656b = c4472a;
    }

    /* renamed from: a */
    public final void m9054a(long[] jArr) {
        s1.z.c.l.e(jArr, "aggregatedContactIds");
        C21802c c21802c = new C21802c(C21803d.f60663a, C21796a.f60654a);
        Uri m15704a = C17891a1.C17896e.m15704a();
        System.currentTimeMillis();
        String O = i.O(C25225a.m3937Z2(jArr, 100), (CharSequence) null, "(", ")", 0, (CharSequence) null, (l) null, 57);
        String m8543z2 = C22128a.m8543z2("aggregated_contact_id IN ", O);
        String m8543z22 = C22128a.m8543z2("_id IN ", O);
        long currentTimeMillis = System.currentTimeMillis();
        int delete = this.f60655a.delete(m15704a, m8543z2, null);
        long currentTimeMillis2 = System.currentTimeMillis();
        String str = "delete from " + m15704a + ' ' + delete + " items, took: " + (currentTimeMillis2 - currentTimeMillis) + "ms\ndeleteWhere = " + m8543z2;
        System.currentTimeMillis();
        List m22581M = C12864a2.m22581M(this.f60655a.query(C17891a1.C17892a.m15707d(), null, m8543z22, null, null), C21799b.f60659b, C21800c.f60660b);
        System.currentTimeMillis();
        m22581M.size();
        s1.e0.k h = i.h(m22581M);
        C21801d c21801d = C21801d.f60661b;
        s1.z.c.l.e(h, "$this$distinctBy");
        s1.z.c.l.e(c21801d, "selector");
        List r = x.r(x.k(new c(h, c21801d), new C21798a(this, jArr, m15704a, c21802c)));
        System.currentTimeMillis();
        ContentResolver contentResolver = this.f60655a;
        Uri uri = C17891a1.f50888a;
        contentResolver.applyBatch("com.truecaller", new ArrayList<>(r));
        System.currentTimeMillis();
        r.size();
        System.currentTimeMillis();
        Arrays.toString(jArr);
    }

    /* renamed from: b */
    public final void m9053b(boolean z) {
        ArrayList arrayList;
        Intent action;
        Intent putExtra;
        Uri m15709b = C17891a1.C17892a.m15709b();
        Uri m15704a = C17891a1.C17896e.m15704a();
        long currentTimeMillis = System.currentTimeMillis();
        try {
            int delete = this.f60655a.delete(m15704a, "\n                                aggregated_contact_id NOT IN (\n                                        SELECT _id FROM aggregated_contact\n                                        )\n                                ", null);
            long currentTimeMillis2 = System.currentTimeMillis();
            String str = "Contacts sorting sync() deletes from " + m15704a + ' ' + delete + " items, took: " + (currentTimeMillis2 - currentTimeMillis) + "ms";
            String str2 = z ? null : "\n                                _id IN (\n                                    SELECT a_with_update_ts._id\n                                        FROM (\n                                            SELECT a._id, a.aggregated_update_timestamp\n                                            FROM aggregated_contact a\n                                        ) a_with_update_ts\n                                        LEFT JOIN (\n                                                SELECT aggregated_contact_id, contact_update_timestamp\n                                                    FROM contact_sorting_index\n                                        ) cs\n                                            ON a_with_update_ts._id = cs.aggregated_contact_id\n                                            AND a_with_update_ts.aggregated_update_timestamp = cs.contact_update_timestamp\n                                        WHERE cs.aggregated_contact_id IS NULL\n                                )\n                                ";
            long currentTimeMillis3 = System.currentTimeMillis();
            Cursor query = this.f60655a.query(m15709b, new String[]{"_id"}, str2, null, null);
            if (query != null) {
                try {
                    arrayList = new ArrayList();
                    while (query.moveToNext()) {
                        arrayList.add(Long.valueOf(query.getLong(0)));
                    }
                    th = null;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                        C25225a.m4016G(query, th);
                    }
                }
            } else {
                arrayList = s.a;
            }
            long currentTimeMillis4 = System.currentTimeMillis();
            String str3 = "Contacts sorting sync() fetches from " + m15709b + ' ' + arrayList.size() + " items, took: " + (currentTimeMillis4 - currentTimeMillis3) + "ms";
            if (!(!arrayList.isEmpty())) {
                arrayList = null;
            }
            if (arrayList == null) {
                return;
            }
            for (List list : i.k(arrayList, 100)) {
                RefreshContactIndexingService.C4472a c4472a = this.f60656b;
                Objects.requireNonNull(c4472a);
                s1.z.c.l.e(list, "scope");
                Intent intent = new Intent(c4472a.f14779a, RefreshContactIndexingService.class);
                if (!((list.isEmpty() ^ true) && list.size() <= 100)) {
                    intent = null;
                }
                if (intent != null && (action = intent.setAction("RefreshContactIndexingService.action.rebuild")) != null && (putExtra = action.putExtra("RefreshContactIndexingService.extra.scopes", i.U0(list))) != null) {
                    AbstractServiceC26431i.enqueueWork(c4472a.f14779a, RefreshContactIndexingService.class, (int) C2752R.C2754id.refresh_contacts_index_service_id, putExtra);
                }
            }
        } catch (IllegalArgumentException e) {
            Uri uri = C17891a1.f50888a;
            String message = e.getMessage();
            if (message == null) {
                message = "No message";
            }
            C10480a.m26061I1(new UnmutedException.C4142a("com.truecaller", message));
        }
    }
}
