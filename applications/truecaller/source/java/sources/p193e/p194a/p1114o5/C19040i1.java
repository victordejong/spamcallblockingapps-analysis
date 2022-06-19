package p193e.p194a.p1114o5;

import android.content.ContentProviderOperation;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.data.entity.Contact;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1129p5.AbstractC19247m0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6583l;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p997k3.p998j.C16487j;
/* renamed from: e.a.o5.i1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/i1.class */
public class C19040i1 {

    /* renamed from: a */
    public final Context f53183a;

    /* renamed from: b */
    public final C16487j f53184b;

    /* renamed from: c */
    public final AbstractC19247m0 f53185c;

    /* renamed from: d */
    public final AbstractC19219a0 f53186d;

    /* renamed from: e */
    public final AbstractC6583l f53187e;

    /* renamed from: f */
    public final AbstractC16111h f53188f;

    /* renamed from: e.a.o5.i1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/i1$b.class */
    public class C19042b {

        /* renamed from: a */
        public final ArrayList<String> f53189a = new ArrayList<>();

        /* renamed from: b */
        public final List<String> f53190b = new ArrayList();

        /* renamed from: c */
        public final ArrayList<Contact> f53191c = new ArrayList<>();

        /* renamed from: d */
        public final List<Long> f53192d = new ArrayList();

        /* renamed from: e */
        public int f53193e = 0;

        public C19042b(C19041a c19041a) {
            C19040i1.this = r5;
        }

        /* renamed from: a */
        public void m14208a() {
            if (!this.f53189a.isEmpty()) {
                C19040i1.this.f53184b.m17323k(Collections.unmodifiableList(this.f53189a));
                this.f53193e = this.f53190b.size() + this.f53193e;
                this.f53189a.clear();
            }
            if (!this.f53190b.isEmpty() || !this.f53191c.isEmpty()) {
                C16487j c16487j = C19040i1.this.f53184b;
                List<String> unmodifiableList = Collections.unmodifiableList(this.f53190b);
                List<Contact> unmodifiableList2 = Collections.unmodifiableList(this.f53191c);
                Objects.requireNonNull(c16487j);
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                ArrayList arrayList2 = new ArrayList();
                for (String str : unmodifiableList) {
                    c16487j.m17329e(arrayList, str);
                }
                int i = 0;
                for (Contact contact : unmodifiableList2) {
                    boolean z = true;
                    i++;
                    if (i % 5 != 0) {
                        z = false;
                    }
                    c16487j.m17324j(arrayList, arrayList2, contact, z);
                }
                c16487j.m17348a(arrayList, arrayList2);
                Iterator<Contact> it = this.f53191c.iterator();
                while (it.hasNext()) {
                    Long id = it.next().getId();
                    if (id != null) {
                        this.f53192d.add(id);
                    }
                }
                this.f53193e = this.f53190b.size() + this.f53193e;
                this.f53190b.clear();
                this.f53191c.clear();
            }
        }

        /* renamed from: b */
        public final void m14207b() {
            if (this.f53189a.size() >= 100 || this.f53191c.size() >= 100 || this.f53190b.size() >= 100) {
                m14208a();
            }
        }
    }

    /* renamed from: e.a.o5.i1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/i1$c.class */
    public static class C19043c {

        /* renamed from: a */
        public final List<Long> f53195a;

        /* renamed from: b */
        public final int f53196b;

        /* renamed from: c */
        public final int f53197c;

        public C19043c(List list, int i, int i2, C19041a c19041a) {
            this.f53195a = list;
            this.f53196b = i;
            this.f53197c = i2;
        }
    }

    public C19040i1(Context context, AbstractC19247m0 abstractC19247m0, AbstractC19219a0 abstractC19219a0, AbstractC6583l abstractC6583l, AbstractC16111h abstractC16111h) {
        this.f53183a = context;
        this.f53184b = new C16487j(context);
        this.f53185c = abstractC19247m0;
        this.f53186d = abstractC19219a0;
        this.f53187e = abstractC6583l;
        this.f53188f = abstractC16111h;
    }

    /* renamed from: c */
    public static long m14214c(long j, long j2) {
        return ((j >> 57) ^ (j << 7)) ^ j2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0131, code lost:
        if (r0.equals("vnd.android.cursor.item/website") == false) goto L33;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.data.entity.Contact m14216a(p193e.p194a.p1114o5.C19037h1 r7) {
        /*
            Method dump skipped, instructions count: 1075
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19040i1.m14216a(e.a.o5.h1):com.truecaller.data.entity.Contact");
    }

    /* renamed from: b */
    public final boolean m14215b() {
        return this.f53186d.mo13825h("android.permission.READ_CONTACTS");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x03aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x036f A[Catch: all -> 0x03b1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x03b1, blocks: (B:7:0x00b5, B:9:0x00c4, B:12:0x0102, B:14:0x010a, B:18:0x0144, B:22:0x0154, B:24:0x015c, B:28:0x016c, B:30:0x0178, B:35:0x018d, B:41:0x01a8, B:43:0x020d, B:45:0x021e, B:47:0x0256, B:53:0x0270, B:56:0x0284, B:59:0x02b0, B:61:0x02b9, B:63:0x02cf, B:67:0x02ea, B:69:0x030b, B:71:0x0313, B:73:0x032f, B:75:0x0337, B:77:0x0347, B:84:0x036f, B:86:0x0387), top: B:95:0x00b5 }] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p1114o5.C19040i1.C19043c m14213d(android.database.Cursor r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            Method dump skipped, instructions count: 967
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19040i1.m14213d(android.database.Cursor, android.net.Uri, java.lang.String, java.lang.String[]):e.a.o5.i1$c");
    }

    /* renamed from: e */
    public void m14212e() {
        Cursor m17326h;
        if (!m14215b()) {
            return;
        }
        AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) this.f53183a.getApplicationContext();
        Objects.requireNonNull(abstractApplicationC8442a);
        if (TextUtils.isEmpty(abstractApplicationC8442a.m28543T())) {
            return;
        }
        AbstractC19244l0 mo13749a = this.f53185c.mo13749a("PhoneBookSync");
        mo13749a.mo13752b("IsInitialSync", String.valueOf(!C15571h.m18636o("initialContactsSyncComplete")));
        try {
            try {
                m17326h = this.f53184b.m17326h();
            } finally {
                mo13749a.stop();
            }
        } catch (RuntimeException e) {
            C10480a.m26057J1(e, "Phone book sync failed");
            mo13749a.mo13752b("Result", "Failure");
        }
        try {
            C19043c m14213d = m14213d(m17326h, ContactsContract.Data.CONTENT_URI, "has_phone_number=?", new String[]{"1"});
            if (!C15571h.m18649b("initialContactsSyncComplete")) {
                C15571h.m18626y("initialContactsSyncComplete", true);
                if (this.f53187e.isEnabled()) {
                    this.f53187e.mo30733b();
                }
            }
            if (this.f53188f.mo17820z()) {
                this.f53188f.mo17863E();
            }
            mo13749a.mo13752b("Result", "Success");
            mo13749a.mo13753a("ContactHasNoNumberCount", m14213d.f53197c);
            mo13749a.mo13753a("SyncedContactCount", m14213d.f53196b);
            if (m17326h != null) {
                m17326h.close();
            }
        } catch (Throwable th) {
            if (m17326h != null) {
                try {
                    m17326h.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: f */
    public Uri m14211f(long j) {
        if (j == 0 || !m14215b()) {
            return null;
        }
        return m14209h(ContactsContract.Data.CONTENT_URI, j, "contact_id=?", new String[]{String.valueOf(j)});
    }

    /* renamed from: g */
    public Uri m14210g(Uri uri) {
        if (uri == null || !m14215b()) {
            return null;
        }
        try {
            Uri lookupContact = ContactsContract.Contacts.lookupContact(this.f53183a.getContentResolver(), uri);
            if (lookupContact == null) {
                return null;
            }
            return m14209h(Uri.withAppendedPath(uri, RemoteMessageConst.DATA), ContentUris.parseId(lookupContact), null, null);
        } catch (SQLiteException | IllegalArgumentException | SecurityException e) {
            return null;
        }
    }

    /* renamed from: h */
    public final Uri m14209h(Uri uri, long j, String str, String[] strArr) {
        if (j < 1) {
            PrintStream printStream = System.out;
            printStream.println("Bad contactId, " + j);
            return null;
        }
        Cursor query = this.f53184b.f46338b.query(C17891a1.C17904m.m15552a(), new String[]{"tc_id", "contact_phonebook_id", "contact_phonebook_hash"}, "contact_phonebook_id=?", new String[]{String.valueOf(j)}, null);
        try {
            List<Long> list = m14213d(query, uri, str, strArr).f53195a;
            if (list != null && list.size() == 1) {
                Uri withAppendedId = ContentUris.withAppendedId(C17891a1.C17904m.m15552a(), list.get(0).longValue());
                if (query != null) {
                    query.close();
                }
                return withAppendedId;
            }
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
