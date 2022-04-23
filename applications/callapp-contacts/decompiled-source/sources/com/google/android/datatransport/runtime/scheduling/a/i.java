package com.google.android.datatransport.runtime.scheduling.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.google.android.datatransport.runtime.g;
import com.google.android.datatransport.runtime.h;
import com.google.android.datatransport.runtime.l;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.a;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i.class */
public final class i implements com.google.android.datatransport.runtime.scheduling.a.c, com.google.android.datatransport.runtime.synchronization.a {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.android.datatransport.b f20501a = com.google.android.datatransport.b.a("proto");

    /* renamed from: b  reason: collision with root package name */
    private final ac f20502b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.d.a f20503c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.d.a f20504d;
    private final d e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i$a.class */
    public interface a<T, U> {
        U a(T t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f20505a;

        /* renamed from: b  reason: collision with root package name */
        final String f20506b;

        private b(String str, String str2) {
            this.f20505a = str;
            this.f20506b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i$c.class */
    public interface c<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(com.google.android.datatransport.runtime.d.a aVar, com.google.android.datatransport.runtime.d.a aVar2, d dVar, ac acVar) {
        this.f20502b = acVar;
        this.f20503c = aVar;
        this.f20504d = aVar2;
        this.e = dVar;
    }

    private static com.google.android.datatransport.b a(String str) {
        return str == null ? f20501a : com.google.android.datatransport.b.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Long a(SQLiteDatabase sQLiteDatabase, l lVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(lVar.a(), String.valueOf(com.google.android.datatransport.runtime.e.a.a(lVar.c()))));
        if (lVar.b() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(lVar.b(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) a(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), x.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long a(i iVar, l lVar, h hVar, SQLiteDatabase sQLiteDatabase) {
        long j;
        if (iVar.c().compileStatement("PRAGMA page_count").simpleQueryForLong() * iVar.c().compileStatement("PRAGMA page_size").simpleQueryForLong() >= iVar.e.a()) {
            return -1L;
        }
        Long a2 = a(sQLiteDatabase, lVar);
        if (a2 != null) {
            j = a2.longValue();
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("backend_name", lVar.a());
            contentValues.put("priority", Integer.valueOf(com.google.android.datatransport.runtime.e.a.a(lVar.c())));
            contentValues.put("next_request_ms", (Integer) 0);
            if (lVar.b() != null) {
                contentValues.put("extras", Base64.encodeToString(lVar.b(), 0));
            }
            j = sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        int e = iVar.e.e();
        byte[] bArr = hVar.c().f20446b;
        boolean z = bArr.length <= e;
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("context_id", Long.valueOf(j));
        contentValues2.put("transport_name", hVar.a());
        contentValues2.put("timestamp_ms", Long.valueOf(hVar.d()));
        contentValues2.put("uptime_ms", Long.valueOf(hVar.e()));
        contentValues2.put("payload_encoding", hVar.c().f20445a.f20313a);
        contentValues2.put("code", hVar.b());
        contentValues2.put("num_attempts", (Integer) 0);
        contentValues2.put("inline", Boolean.valueOf(z));
        contentValues2.put("payload", z ? bArr : new byte[0]);
        long insert = sQLiteDatabase.insert(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues2);
        if (!z) {
            int ceil = (int) Math.ceil(bArr.length / e);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, (i - 1) * e, Math.min(i * e, bArr.length));
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put("event_id", Long.valueOf(insert));
                contentValues3.put("sequence_num", Integer.valueOf(i));
                contentValues3.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues3);
            }
        }
        for (Map.Entry<String, String> entry : hVar.g().entrySet()) {
            ContentValues contentValues4 = new ContentValues();
            contentValues4.put("event_id", Long.valueOf(insert));
            contentValues4.put("name", entry.getKey());
            contentValues4.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues4);
        }
        return Long.valueOf(insert);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(long j, l lVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{lVar.a(), String.valueOf(com.google.android.datatransport.runtime.e.a.a(lVar.c()))}) > 0) {
            return null;
        }
        contentValues.put("backend_name", lVar.a());
        contentValues.put("priority", Integer.valueOf(com.google.android.datatransport.runtime.e.a.a(lVar.c())));
        sQLiteDatabase.insert("transport_contexts", null, contentValues);
        return null;
    }

    private static <T> T a(Cursor cursor, a<Cursor, T> aVar) {
        try {
            return aVar.a(cursor);
        } finally {
            cursor.close();
        }
    }

    private <T> T a(a<SQLiteDatabase, T> aVar) {
        SQLiteDatabase c2 = c();
        c2.beginTransaction();
        try {
            T a2 = aVar.a(c2);
            c2.setTransactionSuccessful();
            return a2;
        } finally {
            c2.endTransaction();
        }
    }

    private <T> T a(c<T> cVar, a<Throwable, T> aVar) {
        long a2 = this.f20504d.a();
        while (true) {
            try {
                return cVar.a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f20504d.a() >= this.e.c() + a2) {
                    return aVar.a(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(i iVar, List list, l lVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            h.a b2 = h.i().a(cursor.getString(1)).a(cursor.getLong(2)).b(cursor.getLong(3));
            if (z) {
                b2.a(new g(a(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                b2.a(new g(a(cursor.getString(4)), (byte[]) a(iVar.c().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), p.a())));
            }
            if (!cursor.isNull(6)) {
                b2.a(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(h.a(j, lVar, b2.b()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            Set set2 = set;
            if (set == null) {
                set2 = new HashSet();
                map.put(Long.valueOf(j), set2);
            }
            set2.add(new b(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List a(final i iVar, final l lVar, SQLiteDatabase sQLiteDatabase) {
        final ArrayList arrayList = new ArrayList();
        Long a2 = a(sQLiteDatabase, lVar);
        if (a2 != null) {
            a(sQLiteDatabase.query(Constants.VIDEO_TRACKING_EVENTS_KEY, new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{a2.toString()}, null, null, null, String.valueOf(iVar.e.b())), new a(iVar, arrayList, lVar) { // from class: com.google.android.datatransport.runtime.scheduling.a.o

                /* renamed from: a  reason: collision with root package name */
                private final i f20514a;

                /* renamed from: b  reason: collision with root package name */
                private final List f20515b;

                /* renamed from: c  reason: collision with root package name */
                private final l f20516c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20514a = iVar;
                    this.f20515b = arrayList;
                    this.f20516c = lVar;
                }

                @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
                public final Object a(Object obj) {
                    return i.a(this.f20514a, this.f20515b, this.f20516c, (Cursor) obj);
                }
            });
        }
        return a(arrayList, a(sQLiteDatabase, arrayList));
    }

    private static List<h> a(List<h> list, Map<Long, Set<b>> map) {
        ListIterator<h> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            h next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.a()))) {
                h.a h = next.c().h();
                for (b bVar : map.get(Long.valueOf(next.a()))) {
                    h.a(bVar.f20505a, bVar.f20506b);
                }
                listIterator.set(h.a(next.a(), next.b(), h.b()));
            }
        }
        return list;
    }

    private static Map<Long, Set<b>> a(SQLiteDatabase sQLiteDatabase, List<h> list) {
        final HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).a());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        a(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new a(hashMap) { // from class: com.google.android.datatransport.runtime.scheduling.a.q

            /* renamed from: a  reason: collision with root package name */
            private final Map f20518a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20518a = hashMap;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
            public final Object a(Object obj) {
                return i.a(this.f20518a, (Cursor) obj);
            }
        });
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ byte[] a(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i += blob.length;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            byte[] bArr2 = (byte[]) arrayList.get(i3);
            System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
            i2 += bArr2.length;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ SQLiteDatabase b(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List b(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            l.a a2 = l.d().a(cursor.getString(1)).a(com.google.android.datatransport.runtime.e.a.a(cursor.getInt(2)));
            String string = cursor.getString(3);
            arrayList.add(a2.a(string == null ? null : Base64.decode(string, 0)).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List b(SQLiteDatabase sQLiteDatabase) {
        return (List) a(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), t.a());
    }

    private SQLiteDatabase c() {
        final ac acVar = this.f20502b;
        acVar.getClass();
        return (SQLiteDatabase) a(new c(acVar) { // from class: com.google.android.datatransport.runtime.scheduling.a.j

            /* renamed from: a  reason: collision with root package name */
            private final ac f20507a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20507a = acVar;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.c
            public final Object a() {
                return this.f20507a.getWritableDatabase();
            }
        }, v.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long c(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    private static String c(Iterable<h> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<h> it2 = iterable.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().a());
            if (it2.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long d(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final long a(l lVar) {
        return ((Long) a(c().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{lVar.a(), String.valueOf(com.google.android.datatransport.runtime.e.a.a(lVar.c()))}), z.a())).longValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final h a(final l lVar, final h hVar) {
        com.google.android.datatransport.runtime.b.a.a("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", lVar.c(), hVar.a(), lVar.a());
        long longValue = ((Long) a(new a(this, lVar, hVar) { // from class: com.google.android.datatransport.runtime.scheduling.a.w

            /* renamed from: a  reason: collision with root package name */
            private final i f20524a;

            /* renamed from: b  reason: collision with root package name */
            private final l f20525b;

            /* renamed from: c  reason: collision with root package name */
            private final h f20526c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20524a = this;
                this.f20525b = lVar;
                this.f20526c = hVar;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
            public final Object a(Object obj) {
                return i.a(this.f20524a, this.f20525b, this.f20526c, (SQLiteDatabase) obj);
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return h.a(longValue, lVar, hVar);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final Iterable<l> a() {
        return (Iterable) a(m.a());
    }

    @Override // com.google.android.datatransport.runtime.synchronization.a
    public final <T> T a(a.AbstractC0418a<T> aVar) {
        final SQLiteDatabase c2 = c();
        a(new c(c2) { // from class: com.google.android.datatransport.runtime.scheduling.a.r

            /* renamed from: a  reason: collision with root package name */
            private final SQLiteDatabase f20519a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20519a = c2;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.c
            public final Object a() {
                return this.f20519a.beginTransaction();
            }
        }, s.a());
        try {
            T a2 = aVar.a();
            c2.setTransactionSuccessful();
            return a2;
        } finally {
            c2.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final void a(final l lVar, final long j) {
        a(new a(j, lVar) { // from class: com.google.android.datatransport.runtime.scheduling.a.k

            /* renamed from: a  reason: collision with root package name */
            private final long f20508a;

            /* renamed from: b  reason: collision with root package name */
            private final l f20509b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20508a = j;
                this.f20509b = lVar;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
            public final Object a(Object obj) {
                return i.a(this.f20508a, this.f20509b, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final void a(Iterable<h> iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + c(iterable);
            a(new a(str) { // from class: com.google.android.datatransport.runtime.scheduling.a.y

                /* renamed from: a  reason: collision with root package name */
                private final String f20528a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20528a = str;
                }

                @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
                public final Object a(Object obj) {
                    return i.a(this.f20528a, (SQLiteDatabase) obj);
                }
            });
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final int b() {
        final long a2 = this.f20503c.a() - this.e.d();
        return ((Integer) a(new a(a2) { // from class: com.google.android.datatransport.runtime.scheduling.a.n

            /* renamed from: a  reason: collision with root package name */
            private final long f20513a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20513a = a2;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
            public final Object a(Object obj) {
                Integer valueOf;
                valueOf = Integer.valueOf(((SQLiteDatabase) obj).delete(Constants.VIDEO_TRACKING_EVENTS_KEY, "timestamp_ms < ?", new String[]{String.valueOf(this.f20513a)}));
                return valueOf;
            }
        })).intValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final void b(Iterable<h> iterable) {
        if (iterable.iterator().hasNext()) {
            c().compileStatement("DELETE FROM events WHERE _id in " + c(iterable)).execute();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final boolean b(final l lVar) {
        return ((Boolean) a(new a(this, lVar) { // from class: com.google.android.datatransport.runtime.scheduling.a.aa

            /* renamed from: a  reason: collision with root package name */
            private final i f20477a;

            /* renamed from: b  reason: collision with root package name */
            private final l f20478b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20477a = this;
                this.f20478b = lVar;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
            public final Object a(Object obj) {
                i iVar = this.f20477a;
                return i.a((SQLiteDatabase) obj, this.f20478b);
            }
        })).booleanValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.c
    public final Iterable<h> c(final l lVar) {
        return (Iterable) a(new a(this, lVar) { // from class: com.google.android.datatransport.runtime.scheduling.a.l

            /* renamed from: a  reason: collision with root package name */
            private final i f20510a;

            /* renamed from: b  reason: collision with root package name */
            private final com.google.android.datatransport.runtime.l f20511b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20510a = this;
                this.f20511b = lVar;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.a.i.a
            public final Object a(Object obj) {
                return i.a(this.f20510a, this.f20511b, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f20502b.close();
    }
}
