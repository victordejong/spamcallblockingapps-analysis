package p193e.p194a.p1114o5;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Link;
import com.truecaller.data.entity.Number;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
import p193e.p194a.p997k3.p1000l.C16496d;
/* renamed from: e.a.o5.t */
/* loaded from: classes15-dex2jar.jar:e/a/o5/t.class */
public final class C19103t {

    /* renamed from: a */
    public static final String[] f53318a = {"_id", "data3", "mimetype"};

    /* renamed from: e.a.o5.t$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/t$a.class */
    public static class AsyncTaskC19104a extends AbstractAsyncTaskC15557a {

        /* renamed from: d */
        public final Contact f53319d;

        /* renamed from: e */
        public final Uri f53320e;

        public AsyncTaskC19104a(Contact contact, Uri uri) {
            this.f53319d = contact;
            this.f53320e = uri;
        }

        /* JADX WARN: Type inference failed for: r0v41, types: [long] */
        /* renamed from: b */
        public static long m14102b(Context context, Uri uri) {
            char c = 0;
            if (uri != null) {
                char c2 = 0;
                try {
                    Uri lookupContact = ContactsContract.Contacts.lookupContact(context.getContentResolver(), uri);
                    c = 0;
                    if (lookupContact != null) {
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri uri2 = ContactsContract.RawContacts.CONTENT_URI;
                        StringBuilder sb = new StringBuilder();
                        sb.append("contact_id=");
                        sb.append(ContentUris.parseId(lookupContact));
                        Cursor query = contentResolver.query(uri2, new String[]{"_id"}, sb.toString(), null, null);
                        c = 0;
                        if (query != null) {
                            c = 0;
                            if (query.moveToNext()) {
                                c = query.getLong(0);
                            }
                            c2 = c;
                            query.close();
                        }
                    }
                } catch (SQLiteException e) {
                    C10480a.m26061I1(e);
                    c = c2;
                }
            }
            return c;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00da A[Catch: SQLiteException -> 0x017f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x017f, blocks: (B:3:0x0008, B:6:0x001a, B:8:0x003f, B:10:0x004b, B:12:0x0054, B:14:0x005f, B:16:0x006b, B:24:0x00b2, B:26:0x00be, B:31:0x00da, B:34:0x00f6, B:43:0x010e, B:45:0x0118, B:46:0x0135, B:47:0x0138, B:52:0x015f, B:55:0x016b, B:18:0x008d, B:20:0x0096, B:22:0x00a0), top: B:60:0x0008 }] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object doInBackground(java.lang.Object... r8) {
            /*
                Method dump skipped, instructions count: 390
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19103t.AsyncTaskC19104a.doInBackground(java.lang.Object[]):java.lang.Object");
        }
    }

    /* renamed from: a */
    public static Number m14112a(Contact contact, boolean z) {
        String m35498s = contact.m35498s();
        if (m35498s == null || !C8574c0.m28351h(m35498s) || (z && contact.m35520e1(m35498s))) {
            for (Number number : contact.m35557M()) {
                String m35479e = number.m35479e();
                if (!TextUtils.isEmpty(m35479e) && !m35479e.equals(m35498s) && C8574c0.m28351h(m35479e) && (!z || !contact.m35520e1(m35479e))) {
                    return number;
                }
            }
            return null;
        }
        return contact.m35493v();
    }

    /* renamed from: b */
    public static List<String> m14111b(Contact contact) {
        ArrayList arrayList = new ArrayList();
        if (contact != null) {
            for (Link link : contact.m35567F()) {
                if (AnalyticsConstants.EMAIL.equals(link.getService())) {
                    String info = link.getInfo();
                    if (!TextUtils.isEmpty(info)) {
                        arrayList.add(info);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static List<C16496d> m14110c(Context context, Long l, List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (l != null && l.longValue() != 0) {
            String l2 = l.toString();
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                Cursor query = context.getContentResolver().query(ContactsContract.Data.CONTENT_URI, f53318a, "contact_id = ?", new String[]{l2}, null);
                if (query == null) {
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
                PackageManager packageManager = context.getPackageManager();
                while (true) {
                    cursor2 = query;
                    cursor = query;
                    if (!query.moveToNext()) {
                        query.close();
                        return arrayList;
                    }
                    String string = query.getString(query.getColumnIndexOrThrow("data3"));
                    String string2 = query.getString(query.getColumnIndexOrThrow("mimetype"));
                    long j = query.getLong(query.getColumnIndexOrThrow("_id"));
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setDataAndType(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, j), string2);
                        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                        if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                            ResolveInfo resolveInfo = queryIntentActivities.get(0);
                            Drawable loadIcon = resolveInfo.loadIcon(packageManager);
                            ActivityInfo activityInfo = resolveInfo.activityInfo;
                            String str = activityInfo.packageName;
                            String valueOf = String.valueOf(packageManager.getApplicationLabel(activityInfo.applicationInfo));
                            if (!context.getPackageName().equals(str) && (list == null || list.contains(str))) {
                                arrayList.add(new C16496d(string, loadIcon, intent, str, valueOf));
                            }
                        }
                    }
                }
            } catch (Exception e) {
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (android.text.TextUtils.isEmpty(r0.m35473l()) != false) goto L10;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.truecaller.data.entity.Number m14109d(com.truecaller.data.entity.Contact r3) {
        /*
            r0 = r3
            if (r0 == 0) goto L2e
            r0 = r3
            r1 = 1
            com.truecaller.data.entity.Number r0 = m14112a(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L26
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.String r0 = r0.m35479e()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L2c
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.String r0 = r0.m35473l()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L2c
        L26:
            r0 = r3
            r1 = 0
            com.truecaller.data.entity.Number r0 = m14112a(r0, r1)
            r5 = r0
        L2c:
            r0 = r5
            return r0
        L2e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19103t.m14109d(com.truecaller.data.entity.Contact):com.truecaller.data.entity.Number");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.truecaller.data.entity.Number m14108e(com.truecaller.data.entity.Contact r3, java.lang.String r4) {
        /*
            r0 = r3
            if (r0 == 0) goto L40
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L40
            r0 = r3
            java.util.List r0 = r0.m35557M()
            java.util.Iterator r0 = r0.iterator()
            r3 = r0
        L15:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L40
            r0 = r3
            java.lang.Object r0 = r0.next()
            com.truecaller.data.entity.Number r0 = (com.truecaller.data.entity.Number) r0
            r5 = r0
            r0 = r5
            java.lang.String r0 = r0.m35479e()
            r1 = r4
            boolean r0 = p193e.p194a.p372b0.p430q.C8574c0.m28358a(r0, r1)
            if (r0 != 0) goto L3e
            r0 = r5
            java.lang.String r0 = r0.m35473l()
            r1 = r4
            boolean r0 = p193e.p194a.p372b0.p430q.C8574c0.m28358a(r0, r1)
            if (r0 == 0) goto L15
        L3e:
            r0 = r5
            return r0
        L40:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19103t.m14108e(com.truecaller.data.entity.Contact, java.lang.String):com.truecaller.data.entity.Number");
    }

    /* renamed from: f */
    public static int m14107f(int i, Contact.PremiumLevel premiumLevel) {
        if (C17891a1.C17902k.m15588o(i, 256)) {
            return 256;
        }
        int i2 = 32;
        if (premiumLevel != Contact.PremiumLevel.GOLD) {
            if (C17891a1.C17902k.m15588o(i, 32)) {
                i2 = 32;
            } else if (C17891a1.C17902k.m15588o(i, 16)) {
                return 16;
            } else {
                if (C17891a1.C17902k.m15588o(i, 128)) {
                    return 128;
                }
                i2 = 4;
                if (premiumLevel != Contact.PremiumLevel.REGULAR) {
                    if (!C17891a1.C17902k.m15588o(i, 4)) {
                        if (C17891a1.C17902k.m15588o(i, 64)) {
                            return 64;
                        }
                        if (C17891a1.C17902k.m15588o(i, 8)) {
                            return 8;
                        }
                        return C17891a1.C17902k.m15588o(i, 1) ? 1 : 0;
                    }
                    i2 = 4;
                }
            }
        }
        return i2;
    }

    /* renamed from: g */
    public static int m14106g(Contact contact) {
        return m14107f(contact.f11523r, contact.f11530y);
    }

    /* renamed from: h */
    public static List<Link> m14105h(Contact contact) {
        ArrayList arrayList = new ArrayList();
        if (contact != null) {
            for (Link link : contact.m35567F()) {
                if (!AnalyticsConstants.EMAIL.equals(link.getService()) && !"link".equals(link.getService())) {
                    arrayList.add(link);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    public static String m14104i(Contact contact) {
        if (contact != null) {
            for (Link link : contact.m35567F()) {
                if ("link".equals(link.getService())) {
                    return link.getInfo();
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: j */
    public static boolean m14103j(Contact contact, FilterMatch filterMatch) {
        return !filterMatch.m35811c() && ((contact != null && contact.m35574A0()) || filterMatch.m35813a() || filterMatch.m35812b());
    }
}
