package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.UnknownFragment;
import com.freshchat.consumer.sdk.p049c.p050a.C1497i;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/f.class */
public class C1509f extends AbstractC1504b {

    /* renamed from: eh */
    private static final String[] f4114eh = new C1497i().m40807cR();

    /* renamed from: com.freshchat.consumer.sdk.c.f$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/f$a.class */
    public static class C1510a {

        /* renamed from: ei */
        private MessageFragment f4115ei;

        /* renamed from: ej */
        private String f4116ej;
        private int position;

        public C1510a(MessageFragment messageFragment, String str, int i) {
            this.f4115ei = messageFragment;
            this.f4116ej = str;
            this.position = i;
        }
    }

    public C1509f(Context context) {
        super(context);
    }

    /* renamed from: c */
    private ContentValues m40749c(MessageFragment messageFragment, String str, int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", str);
        contentValues.put("position", Integer.valueOf(i));
        contentValues.put("uploaded", Integer.valueOf(i2));
        String m40230aH = C1626as.m40230aH(messageFragment.getContent());
        String m40230aH2 = C1626as.m40230aH(messageFragment.getContentType());
        contentValues.put("content", m40230aH);
        contentValues.put("content_type", m40230aH2);
        contentValues.put("frag_type", Integer.valueOf(messageFragment.getFragmentType()));
        try {
            JSONObject jSONObject = new JSONObject(C1597ab.m40336io().toJson(messageFragment, new C1517m(this).getType()));
            jSONObject.remove("content");
            jSONObject.remove("contentType");
            jSONObject.remove("fragmentType");
            contentValues.put("extras_json", jSONObject.toString());
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        return contentValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0108 A[Catch: Exception -> 0x0160, TRY_ENTER, TryCatch #0 {Exception -> 0x0160, blocks: (B:2:0x0000, B:4:0x0007, B:6:0x0094, B:13:0x00c9, B:14:0x00ed, B:18:0x0108, B:20:0x0112, B:22:0x0118, B:24:0x0123, B:26:0x0147, B:9:0x009d, B:11:0x00b5), top: B:31:0x0000, inners: #1 }] */
    /* JADX WARN: Type inference failed for: r0v58, types: [com.freshchat.consumer.sdk.beans.fragment.MessageFragment] */
    /* JADX WARN: Type inference failed for: r0v61, types: [com.freshchat.consumer.sdk.beans.fragment.MessageFragment] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.freshchat.consumer.sdk.p049c.C1509f.C1510a m40748e(android.database.Cursor r7, java.util.Map<java.lang.String, java.lang.Integer> r8) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p049c.C1509f.m40748e(android.database.Cursor, java.util.Map):com.freshchat.consumer.sdk.c.f$a");
    }

    /* renamed from: W */
    public List<MessageFragment> m40754W(String str) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = m40789cs().query("fragments", f4114eh, "_id = ?", new String[]{str}, null, null, "position");
                cursor = query;
                if (AbstractC1504b.m40792b(query)) {
                    Map<String, Integer> mo40665a = mo40665a(query);
                    do {
                        cursor3 = query;
                        cursor2 = query;
                        C1510a m40748e = m40748e(query, mo40665a);
                        if (m40748e != null) {
                            arrayList.add(m40748e.f4115ei);
                        }
                    } while (query.moveToNext());
                    cursor = query;
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            return arrayList;
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* renamed from: a */
    public List<Boolean> m40751a(SQLiteDatabase sQLiteDatabase, List<MessageFragment> list, String str, int i) {
        ArrayList arrayList = new ArrayList();
        try {
            int m39900b = C1716k.m39900b(list);
            for (int i2 = 0; i2 < m39900b; i2++) {
                try {
                    arrayList.add(Boolean.valueOf(m40752a(sQLiteDatabase, list.get(i2), str, i2, i)));
                } catch (Exception e) {
                    arrayList.add(Boolean.FALSE);
                    C1723q.m39823a(e);
                    throw e;
                }
            }
        } catch (Exception e2) {
            C1723q.m39823a(e2);
        }
        return arrayList;
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("_id", Integer.valueOf(cursor.getColumnIndex("_id")));
            hashMap.put("uploaded", C22128a.m8544z1(hashMap, "extras_json", C22128a.m8544z1(hashMap, "content", C22128a.m8544z1(hashMap, "content_type", C22128a.m8544z1(hashMap, "frag_type", C22128a.m8544z1(hashMap, "position", Integer.valueOf(cursor.getColumnIndex("position")), cursor, "frag_type"), cursor, "content_type"), cursor, "content"), cursor, "extras_json"), cursor, "uploaded"));
        }
        return hashMap;
    }

    /* renamed from: a */
    public void m40753a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor query = sQLiteDatabase.query("fragments", f4114eh, "extras_json LIKE ?", new String[]{"%rawJsonOfUnsupportedType%"}, null, null, null);
                cursor = query;
                if (AbstractC1504b.m40792b(query)) {
                    Map<String, Integer> mo40665a = mo40665a(query);
                    Integer num = mo40665a.get("extras_json");
                    if (num == null) {
                        AbstractC1504b.m40791c(query);
                        return;
                    }
                    Integer num2 = mo40665a.get("uploaded");
                    if (num2 == null) {
                        AbstractC1504b.m40791c(query);
                        return;
                    }
                    do {
                        cursor3 = query;
                        cursor2 = query;
                        String string = query.getString(num.intValue());
                        if (!C1626as.isEmpty(string) && string.contains("rawJsonOfUnsupportedType")) {
                            try {
                                C1510a m40748e = m40748e(query, mo40665a);
                                if (m40748e != null && (m40748e.f4115ei instanceof UnknownFragment)) {
                                    ((UnknownFragment) m40748e.f4115ei).setRawJsonOfUnsupportedType(new JSONObject(((UnknownFragment) m40748e.f4115ei).getRawJsonOfUnsupportedType()).getString("rawJsonOfUnsupportedType"));
                                    m40752a(sQLiteDatabase, m40748e.f4115ei, m40748e.f4116ej, m40748e.position, query.getInt(num2.intValue()));
                                }
                            } catch (Exception e) {
                                C1723q.m39823a(e);
                            }
                        }
                    } while (query.moveToNext());
                    cursor = query;
                }
            } finally {
                AbstractC1504b.m40791c(cursor3);
            }
        } catch (Exception e2) {
            C1723q.m39823a(e2);
            cursor = cursor2;
        }
    }

    /* renamed from: a */
    public boolean m40752a(SQLiteDatabase sQLiteDatabase, MessageFragment messageFragment, String str, int i, int i2) {
        boolean z = false;
        try {
            if (sQLiteDatabase.replace("fragments", null, m40749c(messageFragment, str, i, i2)) != -1) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return false;
        }
    }

    /* renamed from: b */
    public boolean m40750b(MessageFragment messageFragment, String str, int i, int i2) {
        try {
            m40789cs().update("fragments", m40749c(messageFragment, str, i, i2), "_id=? AND position=?", new String[]{str, String.valueOf(i)});
            return true;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return false;
        }
    }

    /* renamed from: h */
    public Map<String, List<MessageFragment>> m40747h(long j) {
        Cursor cursor;
        HashMap hashMap = new HashMap();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor rawQuery = m40789cs().rawQuery("SELECT fragments.* FROM fragments JOIN message ON message._id = fragments._id WHERE display!=-1 AND channel_id=? ORDER BY _id,position", new String[]{Long.toString(j)});
                cursor = rawQuery;
                if (AbstractC1504b.m40792b(rawQuery)) {
                    Map<String, Integer> mo40665a = mo40665a(rawQuery);
                    do {
                        cursor3 = rawQuery;
                        cursor2 = rawQuery;
                        C1510a m40748e = m40748e(rawQuery, mo40665a);
                        if (m40748e != null) {
                            if (!hashMap.containsKey(m40748e.f4116ej)) {
                                hashMap.put(m40748e.f4116ej, new ArrayList());
                            }
                            List list = (List) hashMap.get(m40748e.f4116ej);
                            list.add(m40748e.position, m40748e.f4115ei);
                            hashMap.put(m40748e.f4116ej, list);
                        }
                    } while (rawQuery.moveToNext());
                    cursor = rawQuery;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            return hashMap;
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0162, code lost:
        if (r0 < r20) goto L62;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [java.lang.String] */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m40746z(long r9) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p049c.C1509f.m40746z(long):java.lang.String");
    }
}
