package com.google.android.datatransport.runtime.scheduling.p322a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.runtime.AbstractC10730h;
import com.google.android.datatransport.runtime.AbstractC10738l;
import com.google.android.datatransport.runtime.C10729g;
import com.google.android.datatransport.runtime.p318b.C10692a;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.p321e.C10727a;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
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
/* renamed from: com.google.android.datatransport.runtime.scheduling.a.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i.class */
public final class C10772i implements AbstractC10762c, AbstractC10825a {

    /* renamed from: a */
    private static final C10627b f34660a = C10627b.m22610a("proto");

    /* renamed from: b */
    private final C10754ac f34661b;

    /* renamed from: c */
    private final AbstractC10719a f34662c;

    /* renamed from: d */
    private final AbstractC10719a f34663d;

    /* renamed from: e */
    private final AbstractC10763d f34664e;

    /* renamed from: com.google.android.datatransport.runtime.scheduling.a.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i$a.class */
    public interface AbstractC10774a<T, U> {
        /* renamed from: a */
        U mo22358a(T t);
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.a.i$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i$b.class */
    public static final class C10775b {

        /* renamed from: a */
        final String f34665a;

        /* renamed from: b */
        final String f34666b;

        private C10775b(String str, String str2) {
            this.f34665a = str;
            this.f34666b = str2;
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.a.i$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/i$c.class */
    public interface AbstractC10776c<T> {
        /* renamed from: a */
        T mo22365a();
    }

    public C10772i(AbstractC10719a abstractC10719a, AbstractC10719a abstractC10719a2, AbstractC10763d abstractC10763d, C10754ac c10754ac) {
        this.f34661b = c10754ac;
        this.f34662c = abstractC10719a;
        this.f34663d = abstractC10719a2;
        this.f34664e = abstractC10763d;
    }

    /* renamed from: a */
    private static C10627b m22384a(String str) {
        return str == null ? f34660a : C10627b.m22610a(str);
    }

    /* renamed from: a */
    public static Long m22395a(SQLiteDatabase sQLiteDatabase, AbstractC10738l abstractC10738l) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(abstractC10738l.mo22450a(), String.valueOf(C10727a.m22487a(abstractC10738l.mo22448c()))));
        if (abstractC10738l.mo22449b() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(abstractC10738l.mo22449b(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) m22397a(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), C10791x.m22360a());
    }

    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* renamed from: a */
    public static /* synthetic */ Long m22387a(C10772i c10772i, AbstractC10738l abstractC10738l, AbstractC10730h abstractC10730h, SQLiteDatabase sQLiteDatabase) {
        char c;
        if (c10772i.m22372c().compileStatement("PRAGMA page_count").simpleQueryForLong() * c10772i.m22372c().compileStatement("PRAGMA page_size").simpleQueryForLong() >= c10772i.f34664e.mo22419a()) {
            return -1L;
        }
        Long m22395a = m22395a(sQLiteDatabase, abstractC10738l);
        if (m22395a != null) {
            c = m22395a.longValue();
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("backend_name", abstractC10738l.mo22450a());
            contentValues.put("priority", Integer.valueOf(C10727a.m22487a(abstractC10738l.mo22448c())));
            contentValues.put("next_request_ms", (Integer) 0);
            if (abstractC10738l.mo22449b() != null) {
                contentValues.put("extras", Base64.encodeToString(abstractC10738l.mo22449b(), 0));
            }
            c = sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        int mo22415e = c10772i.f34664e.mo22415e();
        byte[] bArr = abstractC10730h.mo22481c().f34593b;
        boolean z = bArr.length <= mo22415e;
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("context_id", Long.valueOf(c));
        contentValues2.put("transport_name", abstractC10730h.mo22485a());
        contentValues2.put("timestamp_ms", Long.valueOf(abstractC10730h.mo22479d()));
        contentValues2.put("uptime_ms", Long.valueOf(abstractC10730h.mo22478e()));
        contentValues2.put("payload_encoding", abstractC10730h.mo22481c().f34592a.f34393a);
        contentValues2.put("code", abstractC10730h.mo22483b());
        contentValues2.put("num_attempts", (Integer) 0);
        contentValues2.put("inline", Boolean.valueOf(z));
        contentValues2.put("payload", z ? bArr : new byte[0]);
        long insert = sQLiteDatabase.insert(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues2);
        if (!z) {
            int ceil = (int) Math.ceil(bArr.length / mo22415e);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, (i - 1) * mo22415e, Math.min(i * mo22415e, bArr.length));
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put("event_id", Long.valueOf(insert));
                contentValues3.put("sequence_num", Integer.valueOf(i));
                contentValues3.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues3);
            }
        }
        for (Map.Entry<String, String> entry : abstractC10730h.m22476g().entrySet()) {
            ContentValues contentValues4 = new ContentValues();
            contentValues4.put("event_id", Long.valueOf(insert));
            contentValues4.put("name", entry.getKey());
            contentValues4.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues4);
        }
        return Long.valueOf(insert);
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22399a(long j, AbstractC10738l abstractC10738l, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{abstractC10738l.mo22450a(), String.valueOf(C10727a.m22487a(abstractC10738l.mo22448c()))}) <= 0) {
            contentValues.put("backend_name", abstractC10738l.mo22450a());
            contentValues.put("priority", Integer.valueOf(C10727a.m22487a(abstractC10738l.mo22448c())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
            return null;
        }
        return null;
    }

    /* renamed from: a */
    private static <T> T m22397a(Cursor cursor, AbstractC10774a<Cursor, T> abstractC10774a) {
        try {
            return abstractC10774a.mo22358a(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: a */
    private <T> T m22390a(AbstractC10774a<SQLiteDatabase, T> abstractC10774a) {
        SQLiteDatabase m22372c = m22372c();
        m22372c.beginTransaction();
        try {
            T mo22358a = abstractC10774a.mo22358a(m22372c);
            m22372c.setTransactionSuccessful();
            return mo22358a;
        } finally {
            m22372c.endTransaction();
        }
    }

    /* renamed from: a */
    private <T> T m22389a(AbstractC10776c<T> abstractC10776c, AbstractC10774a<Throwable, T> abstractC10774a) {
        long mo22491a = this.f34663d.mo22491a();
        while (true) {
            try {
                return abstractC10776c.mo22365a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f34663d.mo22491a() >= this.f34664e.mo22417c() + mo22491a) {
                    return abstractC10774a.mo22358a(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22386a(C10772i c10772i, List list, AbstractC10738l abstractC10738l, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            AbstractC10730h.AbstractC10731a mo22463b = AbstractC10730h.m22474i().mo22469a(cursor.getString(1)).mo22472a(cursor.getLong(2)).mo22463b(cursor.getLong(3));
            if (z) {
                mo22463b.mo22471a(new C10729g(m22384a(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                mo22463b.mo22471a(new C10729g(m22384a(cursor.getString(4)), (byte[]) m22397a(c10772i.m22372c().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), C10783p.m22366a())));
            }
            if (!cursor.isNull(6)) {
                mo22463b.mo22470a(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(AbstractC10771h.m22404a(j, abstractC10738l, mo22463b.mo22464b()));
        }
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22383a(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22382a(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22380a(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            HashSet hashSet = set;
            if (set == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j), hashSet);
            }
            hashSet.add(new C10775b(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ List m22388a(C10772i c10772i, AbstractC10738l abstractC10738l, SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        Long m22395a = m22395a(sQLiteDatabase, abstractC10738l);
        if (m22395a != null) {
            m22397a(sQLiteDatabase.query(Constants.VIDEO_TRACKING_EVENTS_KEY, new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{m22395a.toString()}, null, null, null, String.valueOf(c10772i.f34664e.mo22418b())), new AbstractC10774a(c10772i, arrayList, abstractC10738l) { // from class: com.google.android.datatransport.runtime.scheduling.a.o

                /* renamed from: a */
                private final C10772i f34674a;

                /* renamed from: b */
                private final List f34675b;

                /* renamed from: c */
                private final AbstractC10738l f34676c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f34674a = c10772i;
                    this.f34675b = arrayList;
                    this.f34676c = abstractC10738l;
                }

                @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
                /* renamed from: a */
                public final Object mo22358a(Object obj) {
                    return C10772i.m22386a(this.f34674a, this.f34675b, this.f34676c, (Cursor) obj);
                }
            });
        }
        return m22381a(arrayList, m22394a(sQLiteDatabase, arrayList));
    }

    /* renamed from: a */
    private static List<AbstractC10771h> m22381a(List<AbstractC10771h> list, Map<Long, Set<C10775b>> map) {
        ListIterator<AbstractC10771h> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            AbstractC10771h next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.mo22405a()))) {
                AbstractC10730h.AbstractC10731a m22475h = next.mo22402c().m22475h();
                for (C10775b c10775b : map.get(Long.valueOf(next.mo22405a()))) {
                    m22475h.m22466a(c10775b.f34665a, c10775b.f34666b);
                }
                listIterator.set(AbstractC10771h.m22404a(next.mo22405a(), next.mo22403b(), m22475h.mo22464b()));
            }
        }
        return list;
    }

    /* renamed from: a */
    private static Map<Long, Set<C10775b>> m22394a(SQLiteDatabase sQLiteDatabase, List<AbstractC10771h> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).mo22405a());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m22397a(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new AbstractC10774a(hashMap) { // from class: com.google.android.datatransport.runtime.scheduling.a.q

            /* renamed from: a */
            private final Map f34678a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34678a = hashMap;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
            /* renamed from: a */
            public final Object mo22358a(Object obj) {
                return C10772i.m22380a(this.f34678a, (Cursor) obj);
            }
        });
        return hashMap;
    }

    /* renamed from: a */
    public static /* synthetic */ byte[] m22398a(Cursor cursor) {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            i = i2;
            if (!cursor.moveToNext()) {
                break;
            }
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i2 = i + blob.length;
        }
        byte[] bArr = new byte[i];
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            byte[] bArr2 = (byte[]) arrayList.get(i4);
            System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
            i3 += bArr2.length;
        }
        return bArr;
    }

    /* renamed from: b */
    public static /* synthetic */ SQLiteDatabase m22373b(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    /* renamed from: b */
    public static /* synthetic */ List m22378b(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            AbstractC10738l.AbstractC10739a mo22445a = AbstractC10738l.m22447d().mo22444a(cursor.getString(1)).mo22445a(C10727a.m22488a(cursor.getInt(2)));
            String string = cursor.getString(3);
            arrayList.add(mo22445a.mo22443a(string == null ? null : Base64.decode(string, 0)).mo22446a());
        }
        return arrayList;
    }

    /* renamed from: b */
    public static /* synthetic */ List m22377b(SQLiteDatabase sQLiteDatabase) {
        return (List) m22397a(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), C10787t.m22363a());
    }

    /* renamed from: c */
    private SQLiteDatabase m22372c() {
        C10754ac c10754ac = this.f34661b;
        c10754ac.getClass();
        return (SQLiteDatabase) m22389a(new AbstractC10776c(c10754ac) { // from class: com.google.android.datatransport.runtime.scheduling.a.j

            /* renamed from: a */
            private final C10754ac f34667a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34667a = c10754ac;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10776c
            /* renamed from: a */
            public final Object mo22365a() {
                return this.f34667a.getWritableDatabase();
            }
        }, C10789v.m22361a());
    }

    /* renamed from: c */
    public static /* synthetic */ Long m22371c(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* renamed from: c */
    private static String m22369c(Iterable<AbstractC10771h> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<AbstractC10771h> it2 = iterable.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().mo22405a());
            if (it2.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: d */
    public static /* synthetic */ Long m22368d(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: a */
    public final long mo22393a(AbstractC10738l abstractC10738l) {
        return ((Long) m22397a(m22372c().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{abstractC10738l.mo22450a(), String.valueOf(C10727a.m22487a(abstractC10738l.mo22448c()))}), C10793z.m22359a())).longValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: a */
    public final AbstractC10771h mo22391a(AbstractC10738l abstractC10738l, AbstractC10730h abstractC10730h) {
        C10692a.m22515a("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", abstractC10738l.mo22448c(), abstractC10730h.mo22485a(), abstractC10738l.mo22450a());
        long longValue = ((Long) m22390a(new AbstractC10774a(this, abstractC10738l, abstractC10730h) { // from class: com.google.android.datatransport.runtime.scheduling.a.w

            /* renamed from: a */
            private final C10772i f34684a;

            /* renamed from: b */
            private final AbstractC10738l f34685b;

            /* renamed from: c */
            private final AbstractC10730h f34686c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34684a = this;
                this.f34685b = abstractC10738l;
                this.f34686c = abstractC10730h;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
            /* renamed from: a */
            public final Object mo22358a(Object obj) {
                return C10772i.m22387a(this.f34684a, this.f34685b, this.f34686c, (SQLiteDatabase) obj);
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return AbstractC10771h.m22404a(longValue, abstractC10738l, abstractC10730h);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: a */
    public final Iterable<AbstractC10738l> mo22401a() {
        return (Iterable) m22390a(C10780m.m22367a());
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC10825a
    /* renamed from: a */
    public final <T> T mo22328a(AbstractC10825a.AbstractC10826a<T> abstractC10826a) {
        SQLiteDatabase m22372c = m22372c();
        m22389a(new AbstractC10776c(m22372c) { // from class: com.google.android.datatransport.runtime.scheduling.a.r

            /* renamed from: a */
            private final SQLiteDatabase f34679a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34679a = m22372c;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10776c
            /* renamed from: a */
            public final Object mo22365a() {
                return this.f34679a.beginTransaction();
            }
        }, C10786s.m22364a());
        try {
            T mo22327a = abstractC10826a.mo22327a();
            m22372c.setTransactionSuccessful();
            return mo22327a;
        } finally {
            m22372c.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: a */
    public final void mo22392a(AbstractC10738l abstractC10738l, long j) {
        m22390a(new AbstractC10774a(j, abstractC10738l) { // from class: com.google.android.datatransport.runtime.scheduling.a.k

            /* renamed from: a */
            private final long f34668a;

            /* renamed from: b */
            private final AbstractC10738l f34669b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34668a = j;
                this.f34669b = abstractC10738l;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
            /* renamed from: a */
            public final Object mo22358a(Object obj) {
                return C10772i.m22399a(this.f34668a, this.f34669b, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: a */
    public final void mo22385a(Iterable<AbstractC10771h> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        m22390a(new AbstractC10774a("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m22369c(iterable)) { // from class: com.google.android.datatransport.runtime.scheduling.a.y

            /* renamed from: a */
            private final String f34688a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34688a = str;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
            /* renamed from: a */
            public final Object mo22358a(Object obj) {
                return C10772i.m22383a(this.f34688a, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: b */
    public final int mo22379b() {
        return ((Integer) m22390a(new AbstractC10774a(this.f34662c.mo22491a() - this.f34664e.mo22416d()) { // from class: com.google.android.datatransport.runtime.scheduling.a.n

            /* renamed from: a */
            private final long f34673a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34673a = mo22491a;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
            /* renamed from: a */
            public final Object mo22358a(Object obj) {
                Integer valueOf;
                valueOf = Integer.valueOf(((SQLiteDatabase) obj).delete(Constants.VIDEO_TRACKING_EVENTS_KEY, "timestamp_ms < ?", new String[]{String.valueOf(this.f34673a)}));
                return valueOf;
            }
        })).intValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: b */
    public final void mo22374b(Iterable<AbstractC10771h> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        m22372c().compileStatement("DELETE FROM events WHERE _id in " + m22369c(iterable)).execute();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: b */
    public final boolean mo22376b(AbstractC10738l abstractC10738l) {
        return ((Boolean) m22390a(new AbstractC10774a(this, abstractC10738l) { // from class: com.google.android.datatransport.runtime.scheduling.a.aa

            /* renamed from: a */
            private final C10772i f34632a;

            /* renamed from: b */
            private final AbstractC10738l f34633b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34632a = this;
                this.f34633b = abstractC10738l;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
            /* renamed from: a */
            public final Object mo22358a(Object obj) {
                C10772i c10772i = this.f34632a;
                return C10772i.m22395a((SQLiteDatabase) obj, this.f34633b);
            }
        })).booleanValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c
    /* renamed from: c */
    public final Iterable<AbstractC10771h> mo22370c(AbstractC10738l abstractC10738l) {
        return (Iterable) m22390a(new AbstractC10774a(this, abstractC10738l) { // from class: com.google.android.datatransport.runtime.scheduling.a.l

            /* renamed from: a */
            private final C10772i f34670a;

            /* renamed from: b */
            private final AbstractC10738l f34671b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f34670a = this;
                this.f34671b = abstractC10738l;
            }

            @Override // com.google.android.datatransport.runtime.scheduling.p322a.C10772i.AbstractC10774a
            /* renamed from: a */
            public final Object mo22358a(Object obj) {
                return C10772i.m22388a(this.f34670a, this.f34671b, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f34661b.close();
    }
}
