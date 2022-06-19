package p193e.p194a.p1114o5;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1441d.AbstractC22153f;
import p193e.p1432d.p1441d.C22150c;
import p193e.p1432d.p1441d.C22157j;
import p193e.p1432d.p1441d.C22161n;
import p193e.p1432d.p1441d.C22162o;
import p193e.p1432d.p1441d.p1442p.C22166b;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p372b0.p419m.p423d.AbstractC8514a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p997k3.AbstractC16452e;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import w3.c.a.a.a.h;
/* renamed from: e.a.o5.y */
/* loaded from: classes15-dex2jar.jar:e/a/o5/y.class */
public class C19129y implements AbstractC19126x {

    /* renamed from: a */
    public final C19040i1 f53347a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC17348c> f53348b;

    /* renamed from: c */
    public final C16461b f53349c;

    /* renamed from: d */
    public final ContentResolver f53350d;

    /* renamed from: e */
    public final AbstractC8514a f53351e;

    /* renamed from: f */
    public final AbstractC19219a0 f53352f;

    /* renamed from: g */
    public final AbstractC16452e f53353g;

    public C19129y(C19040i1 c19040i1, AbstractC19854f<AbstractC17348c> abstractC19854f, C16461b c16461b, ContentResolver contentResolver, C16487j c16487j, AbstractC8514a abstractC8514a, AbstractC19219a0 abstractC19219a0, AbstractC16452e abstractC16452e) {
        this.f53347a = c19040i1;
        this.f53348b = abstractC19854f;
        this.f53349c = c16461b;
        this.f53350d = contentResolver;
        this.f53351e = abstractC8514a;
        this.f53352f = abstractC19219a0;
        this.f53353g = abstractC16452e;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: a */
    public AbstractC19891x<Map<Uri, C19107u>> mo14080a(List<Uri> list) {
        if (list.isEmpty()) {
            return AbstractC19891x.m11834h(null);
        }
        C19131y1 c19131y1 = new C19131y1();
        C22150c c22150c = new C22150c();
        c22150c.f61558d.add(c19131y1);
        C22161n c22161n = new C22161n();
        C22157j c22157j = new C22157j();
        c22157j.f61574a.f61560b.add(c22161n);
        C26174a c26174a = new C26174a(list.size());
        for (Uri uri : list) {
            if (uri != null) {
                m14070k(uri, c22157j);
                try {
                    AbstractC22153f m8494e = C22162o.m8494e(c22161n.m8499f());
                    m8494e.mo8508a(c22150c);
                    m14070k(uri, m8494e);
                    C19107u c19107u = c19131y1.f53354a;
                    if (c19107u != null) {
                        c19107u.f53325a = uri;
                        if (c19107u.f53329e > 0) {
                            c26174a.put(uri, c19107u);
                        }
                    }
                } catch (C22166b e) {
                    String str = "Unable to read vcard from " + uri + " (" + e + ")";
                }
            }
        }
        return AbstractC19891x.m11834h(c26174a);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: b */
    public AbstractC19891x<Contact> mo14079b(String str) {
        return AbstractC19891x.m11834h(this.f53349c.m17365g(str));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: c */
    public AbstractC19891x<String> mo14078c(Uri uri) {
        if (uri != null && this.f53352f.mo13825h("android.permission.READ_CONTACTS")) {
            Cursor query = this.f53350d.query(uri, new String[]{"display_name", "data1"}, null, null, null);
            String str = null;
            if (query != null) {
                str = null;
                try {
                    if (query.moveToFirst()) {
                        str = m14071j(query.getString(0), query.getString(1));
                    }
                } finally {
                    query.close();
                }
            }
            if (query != null) {
            }
            return AbstractC19891x.m11834h(str);
        }
        return AbstractC19891x.m11834h(null);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: d */
    public AbstractC19891x<Contact> mo14077d(long j) {
        return AbstractC19891x.m11834h(this.f53349c.m17367e(j));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: e */
    public void mo14076e(HistoryEvent historyEvent) {
        Contact contact = historyEvent.f11539f;
        if (contact == null || !contact.m35523d1()) {
            this.f53348b.mo11854a().mo16234n(historyEvent);
        } else {
            this.f53348b.mo11854a().mo16242f(historyEvent, historyEvent.f11539f).mo11828g();
        }
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: f */
    public AbstractC19891x<Uri> mo14075f(Uri uri) {
        return AbstractC19891x.m11834h(this.f53347a.m14210g(uri));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: g */
    public AbstractC19891x<C19107u> mo14074g(Uri uri) {
        if (uri != null && this.f53352f.mo13825h("android.permission.READ_CONTACTS")) {
            Cursor query = this.f53350d.query(uri, new String[]{"lookup", "display_name", "photo_thumb_uri"}, null, null, null);
            C19107u c19107u = null;
            if (query != null) {
                c19107u = null;
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(0);
                        c19107u = null;
                        if (h.k(new CharSequence[]{string})) {
                            c19107u = new C19107u();
                            c19107u.f53325a = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, string);
                            c19107u.f53327c = query.getString(1);
                            String string2 = query.getString(query.getColumnIndexOrThrow("photo_thumb_uri"));
                            if (string2 != null) {
                                c19107u.f53326b = Uri.parse(string2);
                            }
                            c19107u.m14093a(1);
                        }
                    }
                } finally {
                    query.close();
                }
            }
            if (query != null) {
            }
            return AbstractC19891x.m11834h(c19107u);
        }
        return AbstractC19891x.m11834h(null);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: h */
    public AbstractC19891x<Contact> mo14073h(String str) {
        return AbstractC19891x.m11834h(this.f53349c.m17364h(str));
    }

    @Override // p193e.p194a.p1114o5.AbstractC19126x
    /* renamed from: i */
    public AbstractC19891x<Boolean> mo14072i() {
        this.f53347a.m14212e();
        return AbstractC19891x.m11834h(Boolean.TRUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m14071j(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 1
            java.lang.CharSequence[] r0 = new java.lang.CharSequence[r0]
            r1 = r0
            r2 = 0
            r3 = r6
            r1[r2] = r3
            boolean r0 = w3.c.a.a.a.h.k(r0)
            r10 = r0
            r0 = 1
            java.lang.CharSequence[] r0 = new java.lang.CharSequence[r0]
            r11 = r0
            r0 = r11
            r1 = 0
            r2 = r7
            r0[r1] = r2
            r0 = r11
            boolean r0 = w3.c.a.a.a.a.e(r0)
            if (r0 == 0) goto L2e
            goto L46
        L2e:
            r0 = 0
            r12 = r0
        L31:
            r0 = r9
            r13 = r0
            r0 = r12
            r1 = 1
            if (r0 >= r1) goto L52
            r0 = r11
            r1 = r12
            r0 = r0[r1]
            boolean r0 = w3.c.a.a.a.h.i(r0)
            if (r0 == 0) goto L4c
        L46:
            r0 = 1
            r13 = r0
            goto L52
        L4c:
            int r12 = r12 + 1
            goto L31
        L52:
            r0 = 1
            r1 = r13
            r0 = r0 ^ r1
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L70
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            if (r0 == 0) goto L70
            r0 = r8
            java.lang.String r1 = " (\t"
            java.lang.StringBuilder r0 = r0.append(r1)
        L70:
            r0 = r13
            if (r0 == 0) goto L87
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            if (r0 == 0) goto L87
            r0 = r8
            java.lang.String r1 = ")"
            java.lang.StringBuilder r0 = r0.append(r1)
        L87:
            r0 = r8
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19129y.m14071j(java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: k */
    public final void m14070k(Uri uri, AbstractC22153f abstractC22153f) {
        Object e;
        InputStream inputStream;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        InputStream inputStream4 = null;
        try {
            try {
                InputStream openInputStream = this.f53350d.openInputStream(uri);
                inputStream4 = openInputStream;
                if (openInputStream != null) {
                    inputStream2 = openInputStream;
                    inputStream3 = openInputStream;
                    abstractC22153f.mo8507b(openInputStream);
                    inputStream4 = openInputStream;
                }
            } finally {
                C12864a2.m22543o(inputStream4);
            }
        } catch (C22166b e2) {
            e = e2;
            inputStream = inputStream3;
            InputStream inputStream5 = inputStream;
            StringBuilder sb = new StringBuilder();
            InputStream inputStream6 = inputStream;
            sb.append("Unable to read vcard from ");
            InputStream inputStream7 = inputStream;
            sb.append(uri);
            InputStream inputStream8 = inputStream;
            sb.append(" (");
            InputStream inputStream9 = inputStream;
            sb.append(e);
            InputStream inputStream10 = inputStream;
            sb.append(")");
            InputStream inputStream11 = inputStream;
            sb.toString();
            inputStream4 = inputStream;
        } catch (IOException e3) {
            e = e3;
            inputStream = inputStream2;
            InputStream inputStream52 = inputStream;
            StringBuilder sb2 = new StringBuilder();
            InputStream inputStream62 = inputStream;
            sb2.append("Unable to read vcard from ");
            InputStream inputStream72 = inputStream;
            sb2.append(uri);
            InputStream inputStream82 = inputStream;
            sb2.append(" (");
            InputStream inputStream92 = inputStream;
            sb2.append(e);
            InputStream inputStream102 = inputStream;
            sb2.append(")");
            InputStream inputStream112 = inputStream;
            sb2.toString();
            inputStream4 = inputStream;
        }
    }
}
