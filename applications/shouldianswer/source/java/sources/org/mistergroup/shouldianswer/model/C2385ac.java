package org.mistergroup.shouldianswer.model;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1705p;
import kotlin.p087i.C1747g;
import kotlin.p088io.C1763a;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2386ad;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3100g;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.model.ac */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ac.class */
public final class C2385ac {

    /* renamed from: a */
    private long f6874a;

    /* renamed from: b */
    private Boolean f6875b;

    /* renamed from: c */
    private String f6876c;

    /* renamed from: d */
    private boolean f6877d;

    /* renamed from: e */
    private long f6878e;

    /* renamed from: f */
    private final ArrayList<NumberInfo> f6879f = new ArrayList<>();

    /* renamed from: g */
    private long f6880g;

    /* renamed from: h */
    private long f6881h;

    /* renamed from: i */
    private NumberInfo f6882i;

    /* renamed from: j */
    private String f6883j;

    /* renamed from: k */
    private String f6884k;

    /* renamed from: a */
    public final long m1368a() {
        return this.f6874a;
    }

    /* renamed from: a */
    public final void m1367a(long j) {
        this.f6874a = j;
    }

    /* renamed from: a */
    public final void m1366a(Context context) {
        C1694h.m3117b(context, "context");
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(this.f6874a)));
            context.startActivity(intent);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m1365a(Boolean bool) {
        this.f6875b = bool;
    }

    /* renamed from: a */
    public final void m1364a(String str) {
        this.f6876c = str;
    }

    /* renamed from: a */
    public final void m1363a(String str, String str2, boolean z) {
        C1694h.m3117b(str, "phoneNumber");
        C1694h.m3117b(str2, "country");
        this.f6875b = true;
        NumberInfo numberInfo = new NumberInfo(str, str2, EnumC2436k.INCOMING, false);
        if (this.f6879f.size() == 0 || z) {
            this.f6882i = numberInfo;
        }
        this.f6879f.add(numberInfo);
    }

    /* renamed from: a */
    public final void m1361a(boolean z) {
        this.f6877d = z;
    }

    /* renamed from: a */
    public final boolean m1362a(C2385ac c2385ac) {
        C1694h.m3117b(c2385ac, "phoneContact");
        if (C1747g.m3035a(this.f6876c, c2385ac.f6876c, false, 2, (Object) null) && this.f6877d == c2385ac.f6877d && !(!C1694h.m3123a(this.f6875b, c2385ac.f6875b)) && this.f6878e == c2385ac.f6878e && this.f6879f.size() == c2385ac.f6879f.size()) {
            int size = this.f6879f.size();
            for (int i = 0; i < size; i++) {
                if ((!C1694h.m3123a((Object) this.f6879f.get(i).m1485a(), (Object) c2385ac.f6879f.get(i).m1485a())) || (!C1694h.m3123a((Object) this.f6879f.get(i).m1475c(), (Object) c2385ac.f6879f.get(i).m1475c()))) {
                    return false;
                }
            }
            NumberInfo numberInfo = this.f6882i;
            String m1485a = numberInfo != null ? numberInfo.m1485a() : null;
            NumberInfo numberInfo2 = c2385ac.f6882i;
            return C1747g.m3035a(m1485a, numberInfo2 != null ? numberInfo2.m1485a() : null, false, 2, (Object) null) && C1747g.m3035a(this.f6883j, c2385ac.f6883j, false, 2, (Object) null) && C1747g.m3035a(this.f6884k, c2385ac.f6884k, false, 2, (Object) null);
        }
        return false;
    }

    /* renamed from: b */
    public final String m1360b() {
        return this.f6876c;
    }

    /* renamed from: b */
    public final void m1359b(long j) {
        this.f6878e = j;
    }

    /* renamed from: b */
    public final void m1358b(Context context) {
        C1694h.m3117b(context, "context");
        try {
            NumberInfo numberInfo = this.f6882i;
            if (numberInfo == null) {
                return;
            }
            C3086e.f9028a.m187a(context, numberInfo.m1479b(), (AbstractC1663b<? super Boolean, C1775o>) null);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: b */
    public final void m1357b(String str) {
        this.f6883j = str;
    }

    /* renamed from: c */
    public final void m1355c(long j) {
        this.f6880g = j;
    }

    /* renamed from: c */
    public final void m1354c(String str) {
        this.f6884k = str;
    }

    /* renamed from: c */
    public final boolean m1356c() {
        return this.f6877d;
    }

    /* renamed from: d */
    public final long m1353d() {
        return this.f6878e;
    }

    /* renamed from: d */
    public final void m1352d(long j) {
        this.f6881h = j;
    }

    /* renamed from: e */
    public final long m1351e() {
        return this.f6880g;
    }

    /* renamed from: f */
    public final NumberInfo m1350f() {
        return this.f6882i;
    }

    /* renamed from: g */
    public final String m1349g() {
        return this.f6883j;
    }

    /* renamed from: h */
    public final String m1348h() {
        return this.f6884k;
    }

    /* renamed from: i */
    public final String m1347i() {
        String str = this.f6883j;
        if (str == null) {
            str = this.f6876c;
        }
        if (str == null) {
            str = "Unknown";
        }
        return str;
    }

    /* renamed from: j */
    public final NumberInfo m1346j() {
        NumberInfo numberInfo = this.f6882i;
        if (numberInfo == null) {
            numberInfo = null;
        }
        return numberInfo;
    }

    /* renamed from: k */
    public final C2386ad.C2388b m1345k() {
        Exception e;
        Uri uri;
        String format;
        try {
            uri = ContactsContract.Data.CONTENT_URI;
            C1705p c1705p = C1705p.f4394a;
            Object[] objArr = new Object[2];
            objArr[0] = "contact_id";
            objArr[1] = "mimetype";
            format = String.format("%s=? AND %s=?", Arrays.copyOf(objArr, objArr.length));
            C1694h.m3122a((Object) format, "java.lang.String.format(format, *args)");
        } catch (Exception e2) {
            e = e2;
        }
        try {
            Cursor query = MyApp.f5480c.m1801b().query(uri, new String[]{"data1"}, format, new String[]{Long.toString(this.f6874a), "vnd.android.cursor.item/group_membership"}, null);
            if (query != null) {
                Cursor cursor = query;
                th = null;
                Cursor cursor2 = cursor;
                if (cursor2.moveToFirst()) {
                    long j = cursor2.getLong(0);
                    if (j > 0) {
                        Uri uri2 = ContactsContract.Groups.CONTENT_URI;
                        ContentResolver m1801b = MyApp.f5480c.m1801b();
                        C1705p c1705p2 = C1705p.f4394a;
                        Object[] objArr2 = new Object[1];
                        objArr2[0] = "_id";
                        String format2 = String.format("%s=?", Arrays.copyOf(objArr2, objArr2.length));
                        C1694h.m3122a((Object) format2, "java.lang.String.format(format, *args)");
                        Cursor query2 = m1801b.query(uri2, new String[]{"_id", "title", "account_name", "account_type"}, format2, new String[]{Long.toString(j)}, null);
                        if (query2 != null) {
                            cursor = query2;
                            Throwable th = null;
                            try {
                                Cursor cursor3 = cursor;
                                if (cursor3.moveToFirst()) {
                                    C2386ad.C2388b c2388b = new C2386ad.C2388b(0L, null, null, null, 15, null);
                                    C3100g c3100g = C3100g.f9119a;
                                    C1694h.m3122a((Object) cursor3, "cursor2");
                                    c2388b.m1327a(c3100g.m168d(cursor3, "_id"));
                                    c2388b.m1326a(C3100g.f9119a.m171b(cursor3, "title"));
                                    c2388b.m1325b(C3100g.f9119a.m171b(cursor3, "account_name"));
                                    c2388b.m1324c(C3100g.f9119a.m171b(cursor3, "account_type"));
                                    C1763a.m2995a(cursor, th);
                                    return c2388b;
                                }
                                C1775o c1775o = C1775o.f4450a;
                                C1763a.m2995a(cursor, th);
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } finally {
                                    C1763a.m2995a(cursor, th2);
                                }
                            }
                        }
                    }
                }
                C1775o c1775o2 = C1775o.f4450a;
                C1763a.m2995a(cursor, th2);
            }
            return null;
        } catch (Exception e3) {
            e = e3;
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: l */
    public final Uri m1344l() {
        Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(this.f6874a));
        C1694h.m3122a((Object) withAppendedPath, "Uri.withAppendedPath(Con…TENT_URI, tid.toString())");
        return withAppendedPath;
    }

    /* renamed from: m */
    public final Uri m1343m() {
        Uri withAppendedPath = Uri.withAppendedPath(m1344l(), "display_photo");
        C1694h.m3122a((Object) withAppendedPath, "Uri.withAppendedPath(con…acts.Photo.DISPLAY_PHOTO)");
        return withAppendedPath;
    }
}
