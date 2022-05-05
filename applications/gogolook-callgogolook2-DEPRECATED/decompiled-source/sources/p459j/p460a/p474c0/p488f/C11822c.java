package p459j.p460a.p474c0.p488f;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.SparseArray;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import p065f.p066a.p068b.p069a.AbstractC4242b;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.f.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/c.class */
public class C11822c implements AbstractC4242b {

    /* renamed from: c */
    public static final String[] f26505c = {"type", "mmsc", "mmsproxy", "mmsport"};

    /* renamed from: d */
    public static final String[] f26506d = {"type", "mmsc", "mmsproxy", "mmsport", "current", "_id"};

    /* renamed from: a */
    public final Context f26507a;

    /* renamed from: b */
    public final SparseArray<List<AbstractC4242b.AbstractC4243a>> f26508b = new SparseArray<>();

    /* renamed from: j.a.c0.f.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/c$a.class */
    public static class C11823a implements AbstractC4242b.AbstractC4243a {

        /* renamed from: a */
        public final String f26509a;

        /* renamed from: b */
        public final String f26510b;

        /* renamed from: c */
        public final int f26511c;

        public C11823a(String str, String str2, int i) {
            this.f26509a = str;
            this.f26510b = str2;
            this.f26511c = i;
        }

        /* renamed from: a */
        public static C11823a m8214a(String str, String str2, String str3, String str4) {
            if (!C11822c.m8222a(C11822c.m8216d(str), "mms")) {
                return null;
            }
            String d = C11822c.m8216d(str2);
            if (TextUtils.isEmpty(d)) {
                return null;
            }
            String c = C11822c.m8217c(d);
            try {
                new URI(c);
                String d2 = C11822c.m8216d(str3);
                String str5 = d2;
                int i = 80;
                if (!TextUtils.isEmpty(d2)) {
                    String c2 = C11822c.m8217c(d2);
                    String d3 = C11822c.m8216d(str4);
                    str5 = c2;
                    i = 80;
                    if (d3 != null) {
                        try {
                            i = Integer.parseInt(d3);
                            str5 = c2;
                        } catch (NumberFormatException e) {
                            str5 = c2;
                            i = 80;
                        }
                    }
                }
                return new C11823a(c, str5, i);
            } catch (URISyntaxException e2) {
                return null;
            }
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: a */
        public String mo8213a() {
            return this.f26509a;
        }

        /* renamed from: a */
        public boolean m8215a(C11823a aVar) {
            return TextUtils.equals(this.f26509a, aVar.mo8213a()) && TextUtils.equals(this.f26510b, aVar.mo8208d()) && this.f26511c == aVar.mo8209c();
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: b */
        public void mo8210b() {
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: c */
        public int mo8209c() {
            return this.f26511c;
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: d */
        public String mo8208d() {
            return this.f26510b;
        }
    }

    /* renamed from: j.a.c0.f.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/c$b.class */
    public static class C11824b implements AbstractC4242b.AbstractC4243a {

        /* renamed from: e */
        public static final ContentValues f26512e = new ContentValues(1);

        /* renamed from: f */
        public static final ContentValues f26513f = new ContentValues(1);

        /* renamed from: g */
        public static final String[] f26514g = {"1"};

        /* renamed from: a */
        public final List<AbstractC4242b.AbstractC4243a> f26515a;

        /* renamed from: b */
        public final C11823a f26516b;

        /* renamed from: c */
        public final long f26517c;

        /* renamed from: d */
        public int f26518d;

        static {
            f26512e.putNull("current");
            f26513f.put("current", "1");
        }

        public C11824b(List<AbstractC4242b.AbstractC4243a> list, C11823a aVar, long j, int i) {
            this.f26515a = list;
            this.f26516b = aVar;
            this.f26517c = j;
            this.f26518d = i;
        }

        /* renamed from: a */
        public static C11824b m8211a(List<AbstractC4242b.AbstractC4243a> list, String str, String str2, String str3, String str4, long j, int i) {
            C11823a a;
            if (list == null || (a = C11823a.m8214a(str, str2, str3, str4)) == null) {
                return null;
            }
            for (AbstractC4242b.AbstractC4243a aVar : list) {
                if ((aVar instanceof C11824b) && ((C11824b) aVar).m8212a(a)) {
                    return null;
                }
            }
            return new C11824b(list, a, j, i);
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: a */
        public String mo8213a() {
            return this.f26516b.mo8213a();
        }

        /* renamed from: a */
        public boolean m8212a(C11823a aVar) {
            if (aVar == null) {
                return false;
            }
            return this.f26516b.m8215a(aVar);
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: b */
        public void mo8210b() {
            m8207e();
            m8206f();
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: c */
        public int mo8209c() {
            return this.f26516b.mo8209c();
        }

        @Override // p065f.p066a.p068b.p069a.AbstractC4242b.AbstractC4243a
        /* renamed from: d */
        public String mo8208d() {
            return this.f26516b.mo8208d();
        }

        /* renamed from: e */
        public final void m8207e() {
            boolean z;
            synchronized (this.f26515a) {
                z = false;
                if (this.f26515a.get(0) != this) {
                    this.f26515a.remove(this);
                    this.f26515a.add(0, this);
                    z = true;
                }
            }
            if (z) {
                C12153d0.m6991a("MessagingApp", "Set APN [MMSC=" + mo8213a() + ", PROXY=" + mo8208d() + ", PORT=" + mo8209c() + "] to be first");
            }
        }

        /* renamed from: f */
        public final void m8206f() {
            synchronized (this) {
                if (this.f26518d <= 0) {
                    this.f26518d = 1;
                    C12153d0.m6991a("MessagingApp", "Set APN @" + this.f26517c + " to be CURRENT in local db");
                    SQLiteDatabase writableDatabase = C11817a.m8241b().getWritableDatabase();
                    writableDatabase.beginTransaction();
                    try {
                        writableDatabase.update("apn", f26512e, "current =?", f26514g);
                        writableDatabase.update("apn", f26513f, "_id =?", new String[]{Long.toString(this.f26517c)});
                        writableDatabase.setTransactionSuccessful();
                    } finally {
                        writableDatabase.endTransaction();
                    }
                }
            }
        }
    }

    public C11822c(Context context) {
        this.f26507a = context;
    }

    /* renamed from: a */
    public static Cursor m8225a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        String[] strArr;
        String str3;
        Cursor cursor;
        if (TextUtils.isEmpty(str2)) {
            strArr = new String[]{str};
            str3 = "numeric=?";
        } else {
            strArr = new String[]{str, str2};
            str3 = "numeric=? AND apn=?";
        }
        try {
            cursor = sQLiteDatabase.query("apn", f26506d, str3, strArr, null, null, "current DESC", null);
        } catch (SQLiteException e) {
            C12153d0.m6982d("MessagingApp", "Local APN table does not exist. Try rebuilding.", e);
            C11817a.m8244a();
            cursor = sQLiteDatabase.query("apn", f26506d, str3, strArr, null, null, "current DESC", null);
        }
        if (cursor != null && cursor.getCount() >= 1) {
            return cursor;
        }
        if (cursor != null) {
            cursor.close();
        }
        C12153d0.m6981e("MessagingApp", "Query local APNs with apn " + str2 + " returned empty");
        return null;
    }

    /* renamed from: a */
    public static boolean m8222a(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        for (String str3 : str.split(",")) {
            if (str3.equals(str2) || str3.equals("*")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static String m8217c(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return str;
        }
        StringBuilder sb = new StringBuilder(16);
        for (int i = 0; i < 4; i++) {
            try {
                if (split[i].length() > 3) {
                    return str;
                }
                sb.append(Integer.parseInt(split[i]));
                if (i < 3) {
                    sb.append('.');
                }
            } catch (NumberFormatException e) {
                return str;
            }
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static String m8216d(String str) {
        return str != null ? str.trim() : null;
    }

    /* renamed from: a */
    public final Cursor m8224a(Uri uri, boolean z, String str) {
        String[] strArr;
        C12153d0.m6985c("MessagingApp", "Loading APNs from system, checkCurrent=" + z + " apnName=" + str);
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("current IS NOT NULL");
        }
        String d = m8216d(str);
        if (!TextUtils.isEmpty(d)) {
            if (sb.length() > 0) {
                sb.append(" AND ");
            }
            sb.append("apn=?");
            strArr = new String[]{d};
        } else {
            strArr = null;
        }
        try {
            Cursor a = C11689c.m8598a(this.f26507a, this.f26507a.getContentResolver(), uri, f26505c, sb.toString(), strArr, null);
            if (a != null && a.getCount() >= 1) {
                return a;
            }
            if (a != null) {
                a.close();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Query ");
            sb2.append(uri);
            sb2.append(" with apn ");
            sb2.append(d);
            sb2.append(" and ");
            sb2.append(z ? "checking CURRENT" : "not checking CURRENT");
            sb2.append(" returned empty");
            C12153d0.m6981e("MessagingApp", sb2.toString());
            return null;
        } catch (SQLiteException e) {
            C12153d0.m6981e("MessagingApp", "APN table query exception: " + e);
            return null;
        } catch (SecurityException e2) {
            C12153d0.m6981e("MessagingApp", "Platform restricts APN table access: " + e2);
            throw e2;
        }
    }

    /* renamed from: a */
    public final void m8226a(int i, String str, List<AbstractC4242b.AbstractC4243a> list) {
        Uri uri;
        Cursor cursor;
        C11823a a;
        if (!C14017g4.m2804t() || i == -1) {
            uri = Telephony.Carriers.CONTENT_URI;
        } else {
            Uri uri2 = Telephony.Carriers.CONTENT_URI;
            uri = Uri.withAppendedPath(uri2, "/subId/" + i);
        }
        try {
            Cursor a2 = m8224a(uri, true, str);
            if (a2 != null) {
                cursor = a2;
            } else {
                cursor = m8224a(uri, false, str);
                if (cursor == null) {
                    cursor = m8224a(uri, true, (String) null);
                    if (cursor == null) {
                        cursor = m8224a(uri, false, (String) null);
                    }
                }
            }
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst() && (a = C11823a.m8214a(cursor.getString(0), cursor.getString(1), cursor.getString(2), cursor.getString(3))) != null) {
                        list.add(a);
                    }
                } finally {
                    cursor.close();
                }
            }
        } catch (SecurityException e) {
        }
    }

    /* renamed from: a */
    public final void m8221a(String str, List<AbstractC4242b.AbstractC4243a> list) {
        C12153d0.m6985c("MessagingApp", "Loading APNs from local APN table");
        SQLiteDatabase writableDatabase = C11817a.m8241b().getWritableDatabase();
        String a = AbstractC12181l0.m6896a(AbstractC12181l0.m6886t().mo6873h());
        Cursor a2 = m8225a(writableDatabase, a, str);
        Cursor cursor = a2;
        if (a2 == null) {
            cursor = m8225a(writableDatabase, a, (String) null);
        }
        if (cursor == null) {
            C12153d0.m6981e("MessagingApp", "Could not find any APN in local table");
            return;
        }
        while (cursor.moveToNext()) {
            try {
                C11824b a3 = C11824b.m8211a(list, cursor.getString(0), cursor.getString(1), cursor.getString(2), cursor.getString(3), cursor.getLong(5), cursor.getInt(4));
                if (a3 != null) {
                    list.add(a3);
                }
            } finally {
                cursor.close();
            }
        }
    }

    /* renamed from: a */
    public final void m8220a(List<AbstractC4242b.AbstractC4243a> list) {
        AbstractC12170i a = AbstractC12170i.m6941a();
        a.mo6917a("bugle_mms_mmsc", (String) null);
        if (!TextUtils.isEmpty(null)) {
            C12153d0.m6985c("MessagingApp", "Loading APNs from gservices");
            a.mo6917a("bugle_mms_proxy_address", (String) null);
            a.mo6919a("bugle_mms_proxy_port", -1);
            C11823a a2 = C11823a.m8214a("mms", null, null, Integer.toString(-1));
            if (a2 != null) {
                list.add(a2);
            }
        }
    }

    /* renamed from: b */
    public final void m8219b(int i, String str, List<AbstractC4242b.AbstractC4243a> list) {
        m8220a(list);
        if (list.size() <= 0) {
            m8226a(i, str, list);
            if (list.size() <= 0) {
                m8221a(str, list);
                if (list.size() <= 0) {
                    C12153d0.m6981e("MessagingApp", "Failed to load any APN");
                }
            }
        }
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4242b
    public List<AbstractC4242b.AbstractC4243a> get(String str) {
        boolean z;
        ArrayList arrayList;
        int a = AbstractC12181l0.m6886t().mo6881a(-1);
        synchronized (this) {
            List<AbstractC4242b.AbstractC4243a> list = this.f26508b.get(a);
            if (list == null) {
                ArrayList arrayList2 = new ArrayList();
                this.f26508b.put(a, arrayList2);
                m8219b(a, str, arrayList2);
                z = true;
                arrayList = arrayList2;
            } else {
                z = false;
                arrayList = list;
            }
        }
        if (z) {
            C12153d0.m6985c("MessagingApp", "Loaded " + arrayList.size() + " APNs");
        }
        return arrayList;
    }
}
