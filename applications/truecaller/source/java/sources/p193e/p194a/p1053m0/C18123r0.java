package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import com.truecaller.content.TruecallerContentProvider;
import com.truecaller.messaging.data.types.Mention;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.TreeSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17356k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.r0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/r0.class */
public class C18123r0 implements C8456a.AbstractC8461e, C8456a.AbstractC8462f, C8456a.AbstractC8458b {

    /* renamed from: d */
    public static final String f51041d;

    /* renamed from: a */
    public final Comparator<ContentValues> f51042a = new C18124a(this);

    /* renamed from: b */
    public C18129u f51043b;

    /* renamed from: c */
    public AbstractC17356k f51044c;

    /* renamed from: e.a.m0.r0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/r0$a.class */
    public class C18124a implements Comparator<ContentValues> {

        /* renamed from: a */
        public final int[] f51045a = {2, 16, 32, 1, 64, 128};

        public C18124a(C18123r0 c18123r0) {
        }

        @Override // java.util.Comparator
        public int compare(ContentValues contentValues, ContentValues contentValues2) {
            int i;
            ContentValues contentValues3 = contentValues;
            ContentValues contentValues4 = contentValues2;
            int m15477e = C18123r0.m15477e(contentValues3.getAsInteger("contact_source"), 0);
            int m15477e2 = C18123r0.m15477e(contentValues4.getAsInteger("contact_source"), 0);
            int[] iArr = this.f51045a;
            int length = iArr.length;
            int i2 = 0;
            while (true) {
                i = 0;
                if (i2 >= length) {
                    break;
                }
                int i3 = iArr[i2];
                if ((m15477e & i3) != 0) {
                    if ((m15477e2 & i3) != 0) {
                        i = Long.compare(C18123r0.m15476f(contentValues4.getAsLong("contact_search_time"), 0L), C18123r0.m15476f(contentValues3.getAsLong("contact_search_time"), 0L));
                    } else {
                        i = -1;
                    }
                } else if ((i3 & m15477e2) != 0) {
                    i = 1;
                    break;
                } else {
                    i2++;
                }
            }
            return i;
        }
    }

    static {
        StringBuilder m8728C = C22128a.m8728C("INSERT OR REPLACE INTO aggregated_contact (tc_id, tc_flag, aggregated_update_timestamp, cache_control, ");
        String[] strArr = C17891a1.AbstractC17895d.f50890b;
        C22128a.m8666T0(m8728C, TextUtils.join(",", strArr), ") SELECT ", "tc_id", ", ");
        C22128a.m8666T0(m8728C, "tc_flag", ", ", "insert_timestamp", ", ");
        m8728C.append("cache_control");
        m8728C.append(", ");
        C22128a.m8666T0(m8728C, TextUtils.join(",", strArr), " FROM ", "raw_contact", " WHERE ");
        f51041d = C22128a.m8618h(m8728C, "_id", "=?");
    }

    /* renamed from: e */
    public static int m15477e(Integer num, int i) {
        if (num != null) {
            i = num.intValue();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* renamed from: f */
    public static long m15476f(Long l, long j) {
        ?? r4 = j;
        if (l != null) {
            r4 = l.longValue();
        }
        return r4;
    }

    /* renamed from: g */
    public static void m15475g(SQLiteDatabase sQLiteDatabase, long j) {
        SQLiteStatement compileStatement = sQLiteDatabase.compileStatement(f51041d);
        try {
            compileStatement.bindLong(1, j);
            long executeInsert = compileStatement.executeInsert();
            if (executeInsert <= 0) {
                throw new SQLiteException("Could not create one-to-one aggregate for " + j);
            }
            SQLiteStatement compileStatement2 = sQLiteDatabase.compileStatement("UPDATE raw_contact SET aggregated_contact_id=? WHERE _id=?");
            compileStatement2.bindLong(1, executeInsert);
            compileStatement2.bindLong(2, j);
            compileStatement2.executeUpdateDelete();
            compileStatement2.close();
        } finally {
            compileStatement.close();
        }
    }

    /* renamed from: h */
    public static void m15474h(ContentValues contentValues, String str, ContentValues contentValues2, ContentValues contentValues3) {
        Object obj;
        Object obj2 = contentValues2.get(str);
        if (obj2 == null) {
            obj = contentValues3.get(str);
        } else {
            obj = obj2;
            if (obj2 instanceof String) {
                String str2 = (String) obj2;
                Object obj3 = contentValues3.get(str);
                obj = obj2;
                if (TextUtils.isEmpty(str2)) {
                    obj = obj2;
                    if (obj3 != null) {
                        obj = obj3;
                    }
                }
            }
        }
        if (obj == null) {
            contentValues.putNull(str);
        } else if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Integer) {
            contentValues.put(str, (Integer) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Boolean) {
            contentValues.put(str, (Boolean) obj);
        } else if (obj instanceof Float) {
            contentValues.put(str, (Float) obj);
        } else if (obj instanceof Double) {
            contentValues.put(str, (Double) obj);
        } else if (obj instanceof byte[]) {
            contentValues.put(str, (byte[]) obj);
        } else if (obj instanceof Short) {
            contentValues.put(str, (Short) obj);
        } else {
            StringBuilder m8728C = C22128a.m8728C("Unknown value type, ");
            m8728C.append(obj.getClass());
            throw new IllegalArgumentException(m8728C.toString());
        }
    }

    /* renamed from: i */
    public static void m15473i(SQLiteDatabase sQLiteDatabase, long j, ContentValues contentValues, long j2) {
        if (sQLiteDatabase.update("aggregated_contact", contentValues, "_id=?", new String[]{String.valueOf(j)}) == 1) {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("aggregated_contact_id", Long.valueOf(j));
            if (sQLiteDatabase.update("raw_contact", contentValues2, "_id=?", new String[]{String.valueOf(j2)}) == 1) {
                return;
            }
            StringBuilder m8712G = C22128a.m8712G("Could not update raw contact (_id=", j2, ") with id of aggregated contact, _id=");
            m8712G.append(j);
            throw new SQLiteException(m8712G.toString());
        }
        throw new SQLiteException(C22128a.m8583p2("Could not update aggregated contact with new values, _id=", j));
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8458b
    /* renamed from: a */
    public Uri mo15466a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, Uri uri2) {
        String asString;
        if (contentValues.getAsLong("aggregated_contact_id") == null) {
            ((TruecallerContentProvider) abstractC8448a).m35593w(TruecallerContentProvider.AggregationState.IMMEDIATE);
        }
        if (this.f51044c != null && (asString = contentValues.getAsString("tc_id")) != null) {
            this.f51044c.mo16191a(asString);
        }
        return uri2;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8461e
    /* renamed from: b */
    public int mo15465b(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr) {
        int i;
        SQLiteStatement compileStatement;
        String str2;
        String[] strArr2;
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        if (str != null || c8456a.f26170f) {
            if (c8456a.f26170f) {
                str2 = DatabaseUtils.concatenateWhere(str, "_id=?");
                strArr2 = DatabaseUtils.appendSelectionArgs(strArr, new String[]{uri.getLastPathSegment()});
            } else {
                str2 = str;
                strArr2 = strArr;
            }
            compileStatement = m28528m.compileStatement("UPDATE history SET tc_id = NULL WHERE tc_id IN (SELECT tc_id FROM raw_contact WHERE " + str2 + ")");
            try {
                compileStatement.bindAllArgsAsStrings(strArr2);
                compileStatement.executeUpdateDelete();
            } finally {
            }
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.putNull("tc_id");
            m28528m.update("history", contentValues, null, null);
        }
        SQLiteDatabase m28528m2 = abstractC8448a.m28528m();
        if (str != null || c8456a.f26170f) {
            String str3 = str;
            String[] strArr3 = strArr;
            if (c8456a.f26170f) {
                str3 = MediaSessionCompat.m43307F(str, "_id=?");
                strArr3 = MediaSessionCompat.m43250c(strArr, new String[]{uri.getLastPathSegment()});
            }
            compileStatement = m28528m2.compileStatement("DELETE FROM aggregated_contact WHERE _id IN (SELECT raw_contact.aggregated_contact_id FROM raw_contact WHERE " + str3 + ")");
            try {
                compileStatement.bindAllArgsAsStrings(strArr3);
                i = compileStatement.executeUpdateDelete();
            } finally {
            }
        } else {
            i = m28528m2.delete("aggregated_contact", "1", null);
        }
        if (i > 0) {
            ((TruecallerContentProvider) abstractC8448a).m35593w(TruecallerContentProvider.AggregationState.IMMEDIATE);
        }
        AbstractC17356k abstractC17356k = this.f51044c;
        if (abstractC17356k != null) {
            abstractC17356k.mo16190b();
            return -1;
        }
        return -1;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    public Uri mo15464c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues) {
        if (!"false".equals(uri.getQueryParameter("aggregation")) || contentValues.getAsLong("aggregated_contact_id") != null) {
            return null;
        }
        ContentValues contentValues2 = new ContentValues(contentValues);
        contentValues2.remove("aggregated_contact_id");
        long insert = abstractC8448a.m28528m().insert("aggregated_contact", "_id", contentValues2);
        if (insert <= 0) {
            return null;
        }
        contentValues.put("aggregated_contact_id", Long.valueOf(insert));
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0080, code lost:
        if ((r0 & 64) != 0) goto L15;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15478d(android.content.ContentValues r9, android.content.ContentValues r10, android.content.ContentValues r11) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C18123r0.m15478d(android.content.ContentValues, android.content.ContentValues, android.content.ContentValues):void");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j */
    public boolean m15472j(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery;
        List<Mention> m15468a;
        Object obj;
        HashSet<Number> hashSet = new HashSet();
        String[] strArr = new String[2];
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (!z2) {
            strArr[0] = "100";
            strArr[1] = String.valueOf(i);
            Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT * FROM raw_contact WHERE aggregated_contact_id IS NULL ORDER BY _id LIMIT ? OFFSET ?", strArr);
            if (rawQuery2 != null) {
                z2 = true;
                while (rawQuery2.moveToNext()) {
                    try {
                        try {
                            m15471k(sQLiteDatabase, rawQuery2);
                            hashSet.add(Long.valueOf(rawQuery2.getLong(rawQuery2.getColumnIndexOrThrow("_id"))));
                            z2 = false;
                            z = true;
                        } catch (RuntimeException e) {
                            throw e;
                        }
                    } catch (Throwable th) {
                        rawQuery2.close();
                        throw th;
                    }
                }
                i += 100;
                rawQuery2.close();
            }
        }
        if (z) {
            SQLiteStatement compileStatement = sQLiteDatabase.compileStatement("DELETE FROM aggregated_contact WHERE _id IN (SELECT aggregated_contact._id FROM aggregated_contact LEFT JOIN raw_contact ON aggregated_contact._id=raw_contact.aggregated_contact_id WHERE raw_contact._id IS NULL)");
            try {
                compileStatement.executeUpdateDelete();
                compileStatement.close();
                l.e(sQLiteDatabase, "db");
                l.e(hashSet, "rawContactIds");
                sQLiteDatabase.execSQL("\n    UPDATE msg_participants\n    SET aggregated_contact_id = COALESCE(\n        (SELECT r.aggregated_contact_id\n        FROM data d\n        LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n        WHERE d.data1 = msg_participants.normalized_destination \n            AND d.data_type = 4\n        LIMIT 1),\n        (SELECT aggregated_contact_id\n        FROM raw_contact\n        WHERE contact_im_id IN (msg_participants.tc_im_peer_id,\n            msg_participants.normalized_destination)\n        LIMIT 1),\n        -1)\n");
                if (!hashSet.isEmpty()) {
                    l.e(sQLiteDatabase, "db");
                    l.e(hashSet, "rawContactIds");
                    ArrayList arrayList = new ArrayList();
                    for (Number number : hashSet) {
                        long longValue = number.longValue();
                        rawQuery = sQLiteDatabase.rawQuery("\n    SELECT COALESCE(\n        (SELECT r.aggregated_contact_id\n            FROM data d\n            LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n            WHERE r._id=? AND d.data_type = 4\n            LIMIT 1\n        ),\n        (SELECT aggregated_contact_id\n            FROM raw_contact\n            WHERE _id=?\n            LIMIT 1\n        ),\n        -1\n   )\n", new String[]{String.valueOf(longValue), String.valueOf(longValue)});
                        if (rawQuery != null) {
                            while (rawQuery.moveToNext()) {
                                try {
                                    long j = rawQuery.getLong(0);
                                    if (j != -1) {
                                        arrayList.add(String.valueOf(j));
                                    }
                                } finally {
                                    try {
                                        throw th;
                                    } finally {
                                    }
                                }
                            }
                            th = null;
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        sQLiteDatabase.execSQL("\n    UPDATE msg_participants\n    SET pb_numbers_count=(SELECT COUNT(DISTINCT d.data1)\n        FROM data d \n        LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n             WHERE r.aggregated_contact_id=? AND d.data_type=4 AND d.data_phonebook_id NOT NULL) \n        WHERE aggregated_contact_id=?\n", new String[]{str, str});
                        sQLiteDatabase.execSQL("\n    UPDATE msg_participants\n    SET is_spam = (SELECT COUNT(data11) > 0\n        FROM data\n        WHERE data_type = 4 AND data1 = \n    (SELECT normalized_destination FROM msg_participants WHERE aggregated_contact_id=?)\n)\n    WHERE aggregated_contact_id=?\n", new String[]{str, str});
                    }
                }
                C18129u c18129u = this.f51043b;
                if (c18129u != null) {
                    Objects.requireNonNull(c18129u);
                    l.e(sQLiteDatabase, "db");
                    l.e(hashSet, "rawContactIds");
                    String mo31078f = c18129u.f51046a.mo31078f();
                    if (mo31078f != null && !hashSet.isEmpty()) {
                        l.e(sQLiteDatabase, "db");
                        l.e(hashSet, "rawContactIds");
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            long longValue2 = ((Number) it2.next()).longValue();
                            rawQuery = sQLiteDatabase.rawQuery("\n    SELECT COALESCE(\n        (SELECT r.aggregated_contact_id\n            FROM data d\n            LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n            WHERE r._id=? AND d.data_type = 4\n            LIMIT 1\n        ),\n        (SELECT aggregated_contact_id\n            FROM raw_contact\n            WHERE _id=?\n            LIMIT 1\n        ),\n        -1\n   )\n", new String[]{String.valueOf(longValue2), String.valueOf(longValue2)});
                            if (rawQuery != null) {
                                while (rawQuery.moveToNext()) {
                                    try {
                                        long j2 = rawQuery.getLong(0);
                                        if (j2 != -1) {
                                            arrayList2.add(String.valueOf(j2));
                                        }
                                    } finally {
                                        try {
                                            throw th;
                                        } finally {
                                        }
                                    }
                                }
                                th = null;
                            }
                        }
                        if (!arrayList2.isEmpty() && (rawQuery = sQLiteDatabase.rawQuery("\n    SELECT\n        im.message_id as mention_message_id,\n        im._id as mention_id,\n        im.im_id as mention_im_id,\n        im.m_offset as mention_offset,\n        im.m_length as mention_length,\n        im.private_name as mention_private_name,\n        im.public_name as mention_public_name,\n        IFNULL(ac.contact_name, iu.fallback_name) as contact_private_name\n    FROM msg_im_mentions im\n        INNER JOIN msg_im_users iu ON im.im_id = iu.im_peer_id\n        LEFT JOIN raw_contact rc on iu.tc_id = rc.tc_id\n        LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n    WHERE mention_private_name != contact_private_name AND mention_im_id != ? AND ac._id IN (?)\n", new String[]{mo31078f, i.O(arrayList2, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62)})) != null) {
                            try {
                                ArrayList arrayList3 = new ArrayList();
                                while (rawQuery.moveToNext()) {
                                    int i2 = rawQuery.getInt(0);
                                    long j3 = rawQuery.getLong(1);
                                    String string = rawQuery.getString(2);
                                    l.d(string, "getString(2)");
                                    int i3 = rawQuery.getInt(3);
                                    int i4 = rawQuery.getInt(4);
                                    String string2 = rawQuery.getString(5);
                                    l.d(string2, "getString(5)");
                                    String string3 = rawQuery.getString(6);
                                    l.d(string3, "getString(6)");
                                    Mention mention = new Mention(j3, string, i3, i4, string2, string3);
                                    String string4 = rawQuery.getString(7);
                                    l.d(string4, "getString(7)");
                                    arrayList3.add(new C18089d(i2, mention, string4));
                                }
                                C25225a.m4016G(rawQuery, null);
                                LinkedHashMap linkedHashMap = new LinkedHashMap();
                                Iterator it3 = arrayList3.iterator();
                                while (it3.hasNext()) {
                                    Object next = it3.next();
                                    Integer valueOf = Integer.valueOf(((C18089d) next).f51011a);
                                    Object obj2 = linkedHashMap.get(valueOf);
                                    ArrayList arrayList4 = obj2;
                                    if (obj2 == null) {
                                        arrayList4 = new ArrayList();
                                        linkedHashMap.put(valueOf, arrayList4);
                                    }
                                    ((List) arrayList4).add(next);
                                }
                                int i5 = 1;
                                int i6 = 0;
                                for (Map.Entry entry : linkedHashMap.entrySet()) {
                                    int intValue = ((Number) entry.getKey()).intValue();
                                    List<C18089d> list = (List) entry.getValue();
                                    String[] strArr2 = new String[i5];
                                    strArr2[i6] = String.valueOf(intValue);
                                    String m13575X0 = C19291g.m13575X0(sQLiteDatabase, "msg_entities", "entity_info1", "message_id = ?", strArr2);
                                    if (m13575X0 != null && (m15468a = c18129u.m15468a(sQLiteDatabase, intValue)) != null) {
                                        ArrayList arrayList5 = new ArrayList(C25225a.m4004J(list, 10));
                                        for (C18089d c18089d : list) {
                                            arrayList5.add(new Mention(c18089d.f51012b.getId(), c18089d.f51012b.getImId(), c18089d.f51012b.getOffset(), c18089d.f51012b.getLength(), c18089d.f51013c, c18089d.f51012b.getPublicName()));
                                            i6 = 0;
                                        }
                                        Object[] array = arrayList5.toArray(new Mention[i6]);
                                        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                                        k<String, List<Mention>> m25897s3 = C10480a.m25897s3((Mention[]) array, m13575X0, i6);
                                        Object obj3 = m25897s3.a;
                                        List list2 = (List) m25897s3.b;
                                        ArrayList arrayList6 = new ArrayList();
                                        ArrayList arrayList7 = new ArrayList();
                                        int i7 = 0;
                                        for (Mention mention2 : m15468a) {
                                            Iterator it4 = list2.iterator();
                                            while (true) {
                                                if (!it4.hasNext()) {
                                                    obj = null;
                                                    break;
                                                }
                                                obj = it4.next();
                                                if (((Mention) obj).getId() == mention2.getId()) {
                                                    break;
                                                }
                                            }
                                            Mention mention3 = (Mention) obj;
                                            if (mention3 != null) {
                                                int offset = mention2.getOffset();
                                                int offset2 = mention3.getOffset();
                                                int length = mention2.getLength();
                                                int length2 = mention3.getLength();
                                                arrayList6.add(mention3);
                                                i7 = (length + (offset - offset2)) - length2;
                                            } else if (i7 != 0) {
                                                Mention mention4 = new Mention(mention2.getId(), mention2.getImId(), mention2.getOffset() - i7, mention2.getLength(), mention2.getPrivateName(), mention2.getPublicName());
                                                arrayList7.add(mention4);
                                                arrayList6.add(mention4);
                                            } else {
                                                arrayList6.add(mention2);
                                            }
                                        }
                                        String valueOf2 = String.valueOf(intValue);
                                        String str2 = (String) obj3;
                                        sQLiteDatabase.beginTransaction();
                                        try {
                                            ContentValues contentValues = new ContentValues();
                                            contentValues.put("entity_info1", str2);
                                            sQLiteDatabase.update("msg_entities", contentValues, "message_id = ?", new String[]{valueOf2});
                                            Iterator it5 = arrayList6.iterator();
                                            while (it5.hasNext()) {
                                                Mention mention5 = (Mention) it5.next();
                                                ContentValues contentValues2 = new ContentValues();
                                                contentValues2.put("private_name", mention5.getPrivateName());
                                                contentValues2.put("m_offset", Integer.valueOf(mention5.getOffset()));
                                                contentValues2.put("m_length", Integer.valueOf(mention5.getLength()));
                                                sQLiteDatabase.update("msg_im_mentions", contentValues2, "_id = ?", new String[]{String.valueOf(mention5.getId())});
                                            }
                                            Iterator it6 = arrayList7.iterator();
                                            while (it6.hasNext()) {
                                                Mention mention6 = (Mention) it6.next();
                                                ContentValues contentValues3 = new ContentValues();
                                                contentValues3.put("m_offset", Integer.valueOf(mention6.getOffset()));
                                                sQLiteDatabase.update("msg_im_mentions", contentValues3, "_id = ?", new String[]{String.valueOf(mention6.getId())});
                                            }
                                            ContentValues contentValues4 = new ContentValues();
                                            Object[] array2 = arrayList6.toArray(new Mention[0]);
                                            if (array2 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                                            }
                                            Mention[] mentionArr = (Mention[]) array2;
                                            l.e(mentionArr, "$this$mentionsToJson");
                                            String n = new e.m.e.k().n(mentionArr, Mention[].class);
                                            l.d(n, "Gson().toJson(this, Array<Mention>::class.java)");
                                            contentValues4.put("info11", n);
                                            i5 = 1;
                                            i6 = 0;
                                            sQLiteDatabase.update("msg_messages", contentValues4, "_id = ?", new String[]{valueOf2});
                                            sQLiteDatabase.setTransactionSuccessful();
                                        } finally {
                                            sQLiteDatabase.endTransaction();
                                        }
                                    }
                                }
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                compileStatement.close();
                throw th2;
            }
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* renamed from: k */
    public final void m15471k(SQLiteDatabase sQLiteDatabase, Cursor cursor) {
        long j = cursor.getLong(cursor.getColumnIndexOrThrow("_id"));
        String valueOf = String.valueOf(j);
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT DISTINCT aggregated_contact_id FROM raw_contact_data WHERE _id!=? AND aggregated_contact_id IS NOT NULL AND data_type=4 AND data1 IN (SELECT data1 FROM data WHERE data_type=4 AND data_raw_contact_id=?)", new String[]{valueOf, valueOf});
        try {
            int columnIndexOrThrow = rawQuery.getColumnIndexOrThrow("aggregated_contact_id");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (rawQuery.moveToNext()) {
                long j2 = rawQuery.getLong(columnIndexOrThrow);
                Queue queue = (Queue) linkedHashMap.get(Long.valueOf(j2));
                Queue queue2 = queue;
                if (queue == null) {
                    queue2 = new LinkedList();
                    linkedHashMap.put(Long.valueOf(j2), queue2);
                }
                Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT * FROM raw_contact WHERE aggregated_contact_id=" + j2, null);
                while (rawQuery2.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(rawQuery2, contentValues);
                    queue2.add(contentValues);
                }
                rawQuery2.close();
            }
            if (!linkedHashMap.isEmpty()) {
                ContentValues contentValues2 = new ContentValues();
                DatabaseUtils.cursorRowToContentValues(cursor, contentValues2);
                char c = 65535;
                ContentValues contentValues3 = null;
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    if (m15469m((Collection) entry.getValue(), contentValues2) && (contentValues3 == null || m15469m((Collection) entry.getValue(), contentValues3))) {
                        TreeSet treeSet = new TreeSet(this.f51042a);
                        treeSet.add(contentValues2);
                        treeSet.addAll((Collection) entry.getValue());
                        ContentValues contentValues4 = (ContentValues) treeSet.pollFirst();
                        Iterator it = treeSet.iterator();
                        while (it.hasNext()) {
                            ContentValues contentValues5 = (ContentValues) it.next();
                            ContentValues contentValues6 = new ContentValues();
                            m15478d(contentValues4, contentValues5, contentValues6);
                            contentValues3 = contentValues6;
                            contentValues4 = contentValues6;
                        }
                        if (c < 0) {
                            c = ((Long) entry.getKey()).longValue();
                        } else {
                            String[] strArr = {String.valueOf(entry.getKey())};
                            ContentValues contentValues7 = new ContentValues();
                            contentValues7.put("aggregated_contact_id", Long.valueOf(c));
                            sQLiteDatabase.update("raw_contact", contentValues7, "aggregated_contact_id=?", strArr);
                            sQLiteDatabase.delete("aggregated_contact", "_id=?", strArr);
                        }
                    }
                }
                if (contentValues3 != null) {
                    m15473i(sQLiteDatabase, c, contentValues3, j);
                    return;
                }
            }
            m15475g(sQLiteDatabase, j);
        } finally {
            rawQuery.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: l */
    public boolean m15470l(SQLiteDatabase sQLiteDatabase) {
        System.currentTimeMillis();
        SQLiteStatement compileStatement = sQLiteDatabase.compileStatement("UPDATE history SET tc_id=NULL WHERE _id IN (SELECT history._id FROM history LEFT JOIN raw_contact ON history.tc_id=raw_contact.tc_id WHERE raw_contact._id IS NULL)");
        try {
            int executeUpdateDelete = compileStatement.executeUpdateDelete();
            boolean z = false;
            compileStatement.close();
            SQLiteStatement compileStatement2 = sQLiteDatabase.compileStatement("UPDATE history SET tc_id=(SELECT tc_id FROM data WHERE data.data1=history.normalized_number AND data.data_type=4) WHERE EXISTS (SELECT * FROM data WHERE data.data1=history.normalized_number AND data.data_type=4)");
            try {
                int executeUpdateDelete2 = compileStatement2.executeUpdateDelete();
                compileStatement2.close();
                System.currentTimeMillis();
                if (executeUpdateDelete + 0 + executeUpdateDelete2 > 0) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                compileStatement2.close();
                throw th;
            }
        } catch (Throwable th2) {
            compileStatement.close();
            throw th2;
        }
    }

    /* renamed from: m */
    public final boolean m15469m(Collection<ContentValues> collection, ContentValues contentValues) {
        if (contentValues.getAsLong("contact_phonebook_id") != null) {
            for (ContentValues contentValues2 : collection) {
                if (contentValues2.getAsLong("contact_phonebook_id") != null) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }
}
