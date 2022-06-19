package com.appnext.base.p006a.p009c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import com.appnext.base.C0472a;
import com.appnext.base.p006a.p007a.C0474a;
import com.appnext.base.p006a.p008b.C0477a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.appnext.base.a.c.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/a/c/a.class */
public abstract class AbstractC0478a<MODEL extends C0477a> {

    /* renamed from: com.appnext.base.a.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/base/a/c/a$a.class */
    public enum EnumC0479a {
        Equals(" = ? "),
        GreaterThan(" >= ? "),
        LessThan(" <= ? ");
        
        private String mOperator;

        EnumC0479a(String str) {
            this.mOperator = str;
        }

        /* renamed from: P */
        public final String m42561P() {
            return this.mOperator;
        }
    }

    /* renamed from: a */
    public static long m42570a(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues) {
        try {
            return sQLiteDatabase.insertWithOnConflict(str, null, contentValues, 5);
        } catch (SQLiteFullException e) {
            C0474a.m42575L();
            C0474a.m42572a(C0474a.EnumC0476a.DatabaseOrDiskFull, new Exception(e));
            C0472a.m42577a("DatabaseRepo$upsert", e);
            return -1L;
        } catch (Throwable th) {
            C0474a.m42575L();
            C0474a.m42572a(C0474a.EnumC0476a.Global, th);
            C0472a.m42577a("DatabaseRepo$upsert", th);
            return -1L;
        }
    }

    /* renamed from: a */
    public static long m42569a(String str, ContentValues contentValues) {
        try {
            long insert = C0474a.m42575L().m42574M().insert(str, null, contentValues);
            C0474a.m42575L().m42573N();
            return insert;
        } catch (SQLiteFullException e) {
            C0474a.m42575L();
            C0474a.m42572a(C0474a.EnumC0476a.DatabaseOrDiskFull, new Exception(e));
            return -1L;
        } catch (Throwable th) {
            C0474a.m42575L();
            C0474a.m42572a(C0474a.EnumC0476a.Global, th);
            return -1L;
        }
    }

    /* renamed from: a */
    private static ContentValues m42565a(JSONObject jSONObject) {
        try {
            ContentValues contentValues = new ContentValues();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                contentValues.put(next, jSONObject.getString(next));
            }
            return contentValues;
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseRepo$covertJsonModelToContentValue", th);
            return null;
        }
    }

    /* renamed from: a */
    private static String m42564a(String[] strArr, List<EnumC0479a> list) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    sb.append(" AND ");
                }
                sb.append(strArr[i]);
                sb.append(list.get(i).m42561P());
            }
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseRepo$createQuerySelection", th);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private List<MODEL> m42571a(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        try {
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                arrayList.add(mo42528b(cursor));
                cursor.moveToNext();
            }
            cursor.close();
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseRepo$completeFetch", th);
        }
        return arrayList;
    }

    /* renamed from: O */
    public abstract String[] mo42531O();

    /* renamed from: a */
    public final int m42566a(String str, String[] strArr, String[] strArr2, List<EnumC0479a> list) {
        int i = 0;
        int i2 = 0;
        try {
            SQLiteDatabase m42574M = C0474a.m42575L().m42574M();
            String str2 = null;
            if (strArr != null) {
                str2 = m42564a(strArr, list);
            }
            int delete = m42574M.delete(str, str2, strArr2);
            i = delete;
            i2 = delete;
            C0474a.m42575L().m42573N();
            i2 = delete;
        } catch (SQLiteFullException e) {
            C0474a.m42575L();
            C0474a.m42572a(C0474a.EnumC0476a.DatabaseOrDiskFull, new Exception(e));
            C0472a.m42577a("DatabaseRepo$delete", e);
        } catch (Throwable th) {
            C0474a.m42575L();
            C0474a.m42572a(C0474a.EnumC0476a.Global, new Exception(th));
            i2 = i;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0096, code lost:
        if (r15 == null) goto L29;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m42568a(java.lang.String r6, org.json.JSONArray r7) {
        /*
            r5 = this;
            r0 = -1
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r7
            if (r0 == 0) goto Laf
            r0 = 0
            r12 = r0
            r0 = r8
            r13 = r0
            r0 = r12
            r15 = r0
            r0 = r7
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L89
            r16 = r0
            r0 = r8
            r13 = r0
            r0 = r12
            r15 = r0
            com.appnext.base.a.a.a r0 = com.appnext.base.p006a.p007a.C0474a.m42575L()     // Catch: java.lang.Throwable -> L89
            android.database.sqlite.SQLiteDatabase r0 = r0.m42574M()     // Catch: java.lang.Throwable -> L89
            r12 = r0
            r0 = r8
            r13 = r0
            r0 = r12
            r15 = r0
            r0 = r12
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L89
            r0 = 0
            r17 = r0
            r0 = r8
            r10 = r0
        L3c:
            r0 = r17
            r1 = r16
            if (r0 >= r1) goto L62
            r0 = r10
            r13 = r0
            r0 = r12
            r15 = r0
            r0 = r12
            r1 = r6
            r2 = r7
            r3 = r17
            org.json.JSONObject r2 = r2.getJSONObject(r3)     // Catch: java.lang.Throwable -> L89
            android.content.ContentValues r2 = m42565a(r2)     // Catch: java.lang.Throwable -> L89
            long r0 = m42570a(r0, r1, r2)     // Catch: java.lang.Throwable -> L89
            r10 = r0
            int r17 = r17 + 1
            goto L3c
        L62:
            r0 = r10
            r13 = r0
            r0 = r12
            r15 = r0
            r0 = r12
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L89
            r0 = r12
            r15 = r0
            r0 = r10
            r13 = r0
        L77:
            r0 = r15
            r0.endTransaction()
            com.appnext.base.a.a.a r0 = com.appnext.base.p006a.p007a.C0474a.m42575L()
            r0.m42573N()
            r0 = r13
            r10 = r0
            goto Laf
        L89:
            r6 = move-exception
            java.lang.String r0 = "DatabaseRepo$upsert"
            r1 = r6
            com.appnext.base.C0472a.m42577a(r0, r1)     // Catch: java.lang.Throwable -> L9c
            r0 = r13
            r10 = r0
            r0 = r15
            if (r0 == 0) goto Laf
            goto L77
        L9c:
            r6 = move-exception
            r0 = r15
            if (r0 == 0) goto Lad
            r0 = r15
            r0.endTransaction()
            com.appnext.base.a.a.a r0 = com.appnext.base.p006a.p007a.C0474a.m42575L()
            r0.m42573N()
        Lad:
            r0 = r6
            throw r0
        Laf:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.base.p006a.p009c.AbstractC0478a.m42568a(java.lang.String, org.json.JSONArray):long");
    }

    /* renamed from: a */
    public final List<MODEL> m42567a(String str, String[] strArr, String[] strArr2, String str2, List<EnumC0479a> list) {
        try {
            List<MODEL> m42571a = m42571a(C0474a.m42575L().m42574M().query(str, mo42531O(), m42564a(strArr, list), strArr2, null, null, str2));
            C0474a.m42575L().m42573N();
            return m42571a;
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseRepo$fetch", th);
            return null;
        }
    }

    /* renamed from: b */
    public abstract MODEL mo42528b(Cursor cursor);

    /* renamed from: i */
    public final void m42563i(String str) {
        m42566a(str, null, null, null);
    }

    /* renamed from: j */
    public final List<MODEL> m42562j(String str) {
        try {
            List<MODEL> m42571a = m42571a(C0474a.m42575L().m42574M().query(str, mo42531O(), null, null, null, null, null));
            C0474a.m42575L().m42573N();
            return m42571a;
        } catch (Throwable th) {
            C0472a.m42577a("DatabaseRepo$fetch", th);
            return null;
        }
    }
}
