package org.mistergroup.shouldianswer.model;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import kotlin.p088io.C1763a;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3100g;
import org.mistergroup.shouldianswer.utils.C3101h;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3131u;
/* renamed from: org.mistergroup.shouldianswer.model.ad */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ad.class */
public final class C2386ad extends Observable {

    /* renamed from: c */
    private static Boolean f6887c;

    /* renamed from: e */
    private static boolean f6889e;

    /* renamed from: f */
    private static int f6890f;

    /* renamed from: h */
    private static boolean f6892h;

    /* renamed from: j */
    private static long f6894j;

    /* renamed from: k */
    private static boolean f6895k;

    /* renamed from: m */
    private static long f6897m;

    /* renamed from: a */
    public static final C2386ad f6885a = new C2386ad();

    /* renamed from: b */
    private static final ContentResolver f6886b = MyApp.f5480c.m1801b();

    /* renamed from: d */
    private static boolean f6888d = true;

    /* renamed from: g */
    private static final ContentObserver f6891g = new C2387a();

    /* renamed from: i */
    private static final C3101h<C2385ac> f6893i = new C3101h<>();

    /* renamed from: l */
    private static final C3101h<C2385ac> f6896l = new C3101h<>();

    /* renamed from: org.mistergroup.shouldianswer.model.ad$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ad$a.class */
    public static final class C2387a extends ContentObserver {
        public C2387a() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            C1694h.m3117b(uri, "uri");
            super.onChange(z, uri);
            C3104j.m157a(C3104j.f9124a, "PhoneContactsObservable contactsObserver.changed!", (String) null, 2, (Object) null);
            C2386ad c2386ad = C2386ad.f6885a;
            C2386ad.f6888d = true;
            if (C2386ad.f6885a.countObservers() > 0) {
                C3104j.m157a(C3104j.f9124a, "PhoneContactsObservable contactsObserver.changed updateAsync", (String) null, 2, (Object) null);
                C2386ad.f6885a.m1338a(true);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.ad$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ad$b.class */
    public static final class C2388b {

        /* renamed from: a */
        private long f6898a;

        /* renamed from: b */
        private String f6899b;

        /* renamed from: c */
        private String f6900c;

        /* renamed from: d */
        private String f6901d;

        public C2388b() {
            this(0L, null, null, null, 15, null);
        }

        public C2388b(long j, String str, String str2, String str3) {
            this.f6898a = j;
            this.f6899b = str;
            this.f6900c = str2;
            this.f6901d = str3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Type inference failed for: r8v3 */
        public /* synthetic */ C2388b(long j, String str, String str2, String str3, int i, C1691e c1691e) {
            this((i & 1) != 0 ? 0 : j, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3);
        }

        /* renamed from: a */
        public final String m1328a() {
            return this.f6899b;
        }

        /* renamed from: a */
        public final void m1327a(long j) {
            this.f6898a = j;
        }

        /* renamed from: a */
        public final void m1326a(String str) {
            this.f6899b = str;
        }

        /* renamed from: b */
        public final void m1325b(String str) {
            this.f6900c = str;
        }

        /* renamed from: c */
        public final void m1324c(String str) {
            this.f6901d = str;
        }
    }

    @AbstractC1634f(m3162b = "PhoneContacts.kt", m3161c = {276, 285}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.model.PhoneContacts$updateAsync$1")
    /* renamed from: org.mistergroup.shouldianswer.model.ad$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ad$c.class */
    public static final class C2389c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6902a;

        /* renamed from: b */
        int f6903b;

        /* renamed from: c */
        final /* synthetic */ boolean f6904c;

        /* renamed from: d */
        final /* synthetic */ int f6905d;

        /* renamed from: e */
        private AbstractC1786ad f6906e;

        @AbstractC1634f(m3162b = "PhoneContacts.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.model.PhoneContacts$updateAsync$1$1")
        /* renamed from: org.mistergroup.shouldianswer.model.ad$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ad$c$1.class */
        public static final class C23901 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f6907a;

            /* renamed from: b */
            private AbstractC1786ad f6908b;

            C23901(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C23901) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C23901 c23901 = new C23901(abstractC1641c);
                c23901.f6908b = (AbstractC1786ad) obj;
                return c23901;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f6907a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6908b;
                    C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateAsync notifyObservers", (String) null, 2, (Object) null);
                    C2386ad.f6885a.setChanged();
                    C2386ad.f6885a.notifyObservers();
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2389c(boolean z, int i, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f6904c = z;
            this.f6905d = i;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2389c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2389c c2389c = new C2389c(this.f6904c, this.f6905d, abstractC1641c);
            c2389c.f6906e = (AbstractC1786ad) obj;
            return c2389c;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00a2 A[Catch: Exception -> 0x00d6, TRY_LEAVE, TryCatch #0 {Exception -> 0x00d6, blocks: (B:9:0x0020, B:23:0x0099, B:25:0x00a2), top: B:35:0x000a }] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 229
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2386ad.C2389c.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    private C2386ad() {
    }

    /* renamed from: a */
    static /* synthetic */ void m1339a(C2386ad c2386ad, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        c2386ad.m1338a(z);
    }

    /* renamed from: a */
    public final void m1338a(boolean z) {
        f6890f++;
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2389c(z, f6890f, null), 2, null);
    }

    /* renamed from: f */
    private final boolean m1330f() {
        if (f6892h) {
            return true;
        }
        C3104j.m157a(C3104j.f9124a, "PhoneContacts.registerObserver", (String) null, 2, (Object) null);
        try {
            if (C3115o.f9175a.m113j()) {
                f6886b.registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, f6891g);
                f6892h = true;
                f6895k = false;
                return true;
            }
            f6895k = true;
            if (f6889e) {
                C3104j.m152c(C3104j.f9124a, "PhoneContacts.registerObserver - READ CONTACTS permission NOT granted!", null, 2, null);
                return false;
            }
            C3104j.m158a(C3104j.f9124a, new Exception("PhoneContacts.registerObserver - READ CONTACTS permission NOT granted!"), (String) null, 2, (Object) null);
            f6889e = true;
            return false;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }

    /* renamed from: g */
    public final boolean m1329g() {
        boolean z;
        String str;
        String str2;
        C3101h<C2385ac> c3101h;
        String str3;
        String str4;
        boolean z2;
        String str5;
        int i;
        String m1465h;
        Long b;
        Throwable th;
        String str6;
        C3104j.m157a(C3104j.f9124a, "PhoneContacts.readContacts", (String) null, 2, (Object) null);
        long m41a = C3131u.f9265a.m41a();
        try {
            boolean z3 = f6896l.m6850b() == 0;
            String m177a = C3099f.f9116a.m177a();
            Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
            String str7 = z3 ? null : "contact_last_updated_timestamp > ?";
            String[] strArr = z3 ? null : new String[]{String.valueOf(f6894j)};
            String str8 = z3 ? null : "contact_last_updated_timestamp DESC";
            C3101h c3101h2 = new C3101h();
            C3104j.m157a(C3104j.f9124a, "PhoneContacts.readContacts contentResolver.query", (String) null, 2, (Object) null);
            Cursor query = f6886b.query(uri, new String[]{"_id", "contact_id", "data1", "in_visible_group", "starred", "is_primary", "photo_id", "display_name", "contact_last_updated_timestamp", "last_time_contacted"}, str7, strArr, str8);
            if (query != null) {
                Cursor cursor = query;
                Throwable th2 = null;
                try {
                    Cursor cursor2 = cursor;
                    C3104j c3104j = C3104j.f9124a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("PhoneContacts.readContacts contentResolver.query returned ");
                    C1694h.m3122a((Object) cursor2, "cursor");
                    sb.append(String.valueOf(cursor2.getCount()));
                    sb.append(" items");
                    C3104j.m157a(c3104j, sb.toString(), (String) null, 2, (Object) null);
                    if (cursor2.getCount() > 0) {
                        Cursor cursor3 = cursor;
                        try {
                            int m174a = C3100g.f9119a.m174a(cursor2, "contact_id");
                            int m174a2 = C3100g.f9119a.m174a(cursor2, "data1");
                            int m174a3 = C3100g.f9119a.m174a(cursor2, "in_visible_group");
                            int m174a4 = C3100g.f9119a.m174a(cursor2, "photo_id");
                            int m174a5 = C3100g.f9119a.m174a(cursor2, "display_name");
                            int m174a6 = C3100g.f9119a.m174a(cursor2, "is_primary");
                            int m174a7 = C3100g.f9119a.m174a(cursor2, "starred");
                            int m174a8 = C3100g.f9119a.m174a(cursor2, "contact_last_updated_timestamp");
                            int m174a9 = C3100g.f9119a.m174a(cursor2, "last_time_contacted");
                            boolean m1305F = C2398ai.f6930a.m1305F();
                            while (true) {
                                cursor3 = cursor;
                                if (!cursor2.moveToNext()) {
                                    break;
                                }
                                try {
                                    long m170c = C3100g.f9119a.m170c(cursor2, m174a);
                                    if (C3100g.f9119a.m172b(cursor2, m174a3) != 0 || m1305F) {
                                        f6887c = true;
                                        C2385ac c2385ac = (C2385ac) c3101h2.m6852a(m170c);
                                        if (c2385ac == null) {
                                            c2385ac = new C2385ac();
                                            c2385ac.m1367a(m170c);
                                            c2385ac.m1359b(C3100g.f9119a.m170c(cursor2, m174a4));
                                            c2385ac.m1364a(C3100g.f9119a.m175a(cursor2, m174a5));
                                            if (c2385ac.m1360b() == null) {
                                                c2385ac.m1364a("Undefined");
                                            }
                                            c2385ac.m1361a(C3100g.f9119a.m172b(cursor2, m174a7) != 0);
                                            c2385ac.m1355c(C3100g.f9119a.m170c(cursor2, m174a8));
                                            c2385ac.m1352d(C3100g.f9119a.m170c(cursor2, m174a9));
                                            c3101h2.m6847b(m170c, c2385ac);
                                        }
                                        boolean z4 = C3100g.f9119a.m172b(cursor2, m174a6) != 0;
                                        String m175a = C3100g.f9119a.m175a(cursor2, m174a2);
                                        if (m175a != null) {
                                            String m1465h2 = new NumberInfo(m175a, m177a, EnumC2436k.INCOMING, false, 8, null).m1465h();
                                            try {
                                                Long b2 = C1747g.m3043b(m1465h2);
                                                if (b2 != null) {
                                                    f6893i.m6847b(b2.longValue(), c2385ac);
                                                } else {
                                                    C3104j.m152c(C3104j.f9124a, "PhoneContacts.updateContacts cant convert " + m1465h2 + " to number", null, 2, null);
                                                }
                                            } catch (Exception e) {
                                                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                                            }
                                            c2385ac.m1363a(m175a, m177a, z4);
                                            C1775o c1775o = C1775o.f4450a;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                            c3101h = c3101h2;
                            str6 = "cursor";
                            str = " items";
                            str4 = "data1";
                            str2 = "contact_last_updated_timestamp";
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } else {
                        str4 = "data1";
                        str2 = "contact_last_updated_timestamp";
                        c3101h = c3101h2;
                        str6 = "cursor";
                        str = " items";
                    }
                    try {
                        C1775o c1775o2 = C1775o.f4450a;
                        C1763a.m2995a(cursor, th2);
                        z = z3;
                        str3 = str6;
                    } catch (Throwable th5) {
                        th = th5;
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } else {
                str3 = "cursor";
                str = " items";
                str4 = "data1";
                str2 = "contact_last_updated_timestamp";
                c3101h = c3101h2;
                z = z3;
            }
            if (!z) {
                C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts searching for deleted contacts", (String) null, 2, (Object) null);
                C3101h c3101h3 = new C3101h();
                for (C2385ac c2385ac2 : f6896l) {
                    c3101h3.m6847b(c2385ac2.m1368a(), c2385ac2);
                }
                Cursor query2 = f6886b.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"contact_id"}, null, null, null);
                if (query2 != null) {
                    Cursor cursor4 = query2;
                    Throwable th7 = null;
                    Cursor cursor5 = cursor4;
                    while (cursor5.moveToNext()) {
                        C3100g c3100g = C3100g.f9119a;
                        C1694h.m3122a((Object) cursor5, str3);
                        c3101h3.m6848b(c3100g.m170c(cursor5, 0));
                    }
                    C1775o c1775o3 = C1775o.f4450a;
                    C1763a.m2995a(cursor4, th7);
                }
                Iterator<E> it = c3101h3.iterator();
                boolean z5 = false;
                while (true) {
                    z2 = z5;
                    str5 = str3;
                    if (!it.hasNext()) {
                        break;
                    }
                    C2385ac c2385ac3 = (C2385ac) it.next();
                    C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts deleting contact " + c2385ac3.m1368a() + " from items", (String) null, 2, (Object) null);
                    f6896l.m6848b(c2385ac3.m1368a());
                    NumberInfo m1346j = c2385ac3.m1346j();
                    if (m1346j != null && (m1465h = m1346j.m1465h()) != null && (b = C1747g.m3043b(m1465h)) != null) {
                        long longValue = b.longValue();
                        C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts deleting from numbersIndex number=" + longValue, (String) null, 2, (Object) null);
                        f6893i.m6848b(longValue);
                        C1775o c1775o4 = C1775o.f4450a;
                    }
                    z5 = true;
                }
            } else {
                z2 = false;
                str5 = str3;
            }
            C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts readed in " + C3131u.f9265a.m39b(m41a) + " ms newItems=" + String.valueOf(c3101h.m6850b()), (String) null, 2, (Object) null);
            if (c3101h.m6850b() > 0) {
                Uri uri2 = ContactsContract.Data.CONTENT_URI;
                String str9 = z ? null : "contact_last_updated_timestamp DESC";
                C3104j.m157a(C3104j.f9124a, "PhoneContacts.readContacts contentResolver.query structuredNames", (String) null, 2, (Object) null);
                Cursor query3 = f6886b.query(uri2, new String[]{"contact_id", str4, "data3", "data2", str2}, z ? "mimetype = ?" : "mimetype = ? and contact_last_updated_timestamp > ?", z ? new String[]{"vnd.android.cursor.item/name"} : new String[]{"vnd.android.cursor.item/name", String.valueOf(f6894j)}, str9);
                if (query3 != null) {
                    Cursor cursor6 = query3;
                    Throwable th8 = null;
                    Cursor cursor7 = cursor6;
                    C3104j c3104j2 = C3104j.f9124a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("PhoneContacts.readContacts contentResolver.query structuredNames returned ");
                    C1694h.m3122a((Object) cursor7, str5);
                    sb2.append(String.valueOf(cursor7.getCount()));
                    sb2.append(str);
                    C3104j.m157a(c3104j2, sb2.toString(), (String) null, 2, (Object) null);
                    int m174a10 = C3100g.f9119a.m174a(cursor7, "contact_id");
                    int m174a11 = C3100g.f9119a.m174a(cursor7, "data3");
                    int m174a12 = C3100g.f9119a.m174a(cursor7, "data2");
                    int i2 = 0;
                    while (true) {
                        i = i2;
                        if (!cursor7.moveToNext()) {
                            break;
                        }
                        C2385ac c2385ac4 = (C2385ac) c3101h.m6852a(C3100g.f9119a.m170c(cursor7, m174a10));
                        int i3 = i;
                        if (c2385ac4 != null) {
                            c2385ac4.m1357b(C3100g.f9119a.m175a(cursor7, m174a11));
                            c2385ac4.m1354c(C3100g.f9119a.m175a(cursor7, m174a12));
                            i3 = i + 1;
                        }
                        i2 = i3;
                    }
                    C1775o c1775o5 = C1775o.f4450a;
                    C1763a.m2995a(cursor6, th8);
                } else {
                    i = 0;
                }
                C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts readed structuredNames in " + C3131u.f9265a.m39b(m41a) + " ms readed items " + String.valueOf(i), (String) null, 2, (Object) null);
                for (C2385ac c2385ac5 : c3101h) {
                    C2385ac a = z ? null : f6896l.m6852a(c2385ac5.m1368a());
                    if (a == null || !c2385ac5.m1362a(a)) {
                        if (!z) {
                            C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts updating contact #" + c2385ac5.m1368a(), (String) null, 2, (Object) null);
                        }
                        f6896l.m6847b(c2385ac5.m1368a(), c2385ac5);
                        if (c2385ac5.m1351e() > f6894j) {
                            if (!z) {
                                C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts updating change detected!", (String) null, 2, (Object) null);
                            }
                            f6894j = c2385ac5.m1351e();
                            z2 = true;
                        }
                    }
                }
            }
            boolean z6 = true;
            if (f6896l.m6850b() <= 0) {
                z6 = false;
            }
            f6887c = Boolean.valueOf(z6);
            C3104j.m157a(C3104j.f9124a, "PhoneContacts.updateContacts updated in " + C3131u.f9265a.m39b(m41a) + " ms items=" + String.valueOf(f6896l.m6850b()), (String) null, 2, (Object) null);
            f6888d = false;
            if (z2) {
                f6897m = new Date().getTime();
            }
            return z2;
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            f6887c = false;
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m1342a() {
        return f6895k;
    }

    @Override // java.util.Observable
    public void addObserver(Observer observer) {
        super.addObserver(observer);
        if (!f6892h) {
            m1330f();
        }
        if (countObservers() != 1 || !f6888d) {
            return;
        }
        m1339a(this, false, 1, null);
    }

    /* renamed from: b */
    public final C3101h<C2385ac> m1337b() {
        return f6896l;
    }

    /* renamed from: c */
    public final long m1334c() {
        return f6897m;
    }

    /* renamed from: d */
    public final void m1332d() {
        if (!f6895k || !m1330f()) {
            return;
        }
        m1339a(this, false, 1, null);
    }

    /* renamed from: e */
    public final List<C2388b> m1331e() {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = MyApp.f5480c.m1801b().query(ContactsContract.Groups.CONTENT_URI, new String[]{"_id", "title", "account_name", "account_type"}, null, null, null);
            if (query != null) {
                if (query.moveToFirst()) {
                    int m174a = C3100g.f9119a.m174a(query, "_id");
                    int m174a2 = C3100g.f9119a.m174a(query, "title");
                    int m174a3 = C3100g.f9119a.m174a(query, "account_name");
                    int m174a4 = C3100g.f9119a.m174a(query, "account_type");
                    do {
                        C2388b c2388b = new C2388b(0L, null, null, null, 15, null);
                        c2388b.m1327a(query.getLong(m174a));
                        c2388b.m1326a(query.getString(m174a2));
                        c2388b.m1325b(query.getString(m174a3));
                        c2388b.m1324c(query.getString(m174a4));
                        arrayList.add(c2388b);
                    } while (query.moveToNext());
                    query.close();
                } else {
                    query.close();
                }
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        return arrayList;
    }
}
