package androidx.room.p005o;

import android.database.Cursor;
import android.os.Build;
import com.callerid.block.bean.EZBlackList;
import d.r.a.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: androidx.room.o.d */
/* loaded from: classes-dex2jar.jar:androidx/room/o/d.class */
public class C0464d {

    /* renamed from: a */
    public final String f2515a;

    /* renamed from: b */
    public final Map<String, C0465a> f2516b;

    /* renamed from: c */
    public final Set<C0466b> f2517c;

    /* renamed from: d */
    public final Set<C0468d> f2518d;

    /* renamed from: androidx.room.o.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/o/d$a.class */
    public static class C0465a {

        /* renamed from: a */
        public final String f2519a;

        /* renamed from: b */
        public final String f2520b;

        /* renamed from: c */
        public final int f2521c;

        /* renamed from: d */
        public final boolean f2522d;

        /* renamed from: e */
        public final int f2523e;

        public C0465a(String str, String str2, boolean z, int i) {
            this.f2519a = str;
            this.f2520b = str2;
            this.f2522d = z;
            this.f2523e = i;
            this.f2521c = m12234a(str2);
        }

        /* renamed from: a */
        private static int m12234a(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        /* renamed from: b */
        public boolean m12233b() {
            return this.f2523e > 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0465a.class != obj.getClass()) {
                return false;
            }
            C0465a c0465a = (C0465a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f2523e != c0465a.f2523e) {
                    return false;
                }
            } else if (m12233b() != c0465a.m12233b()) {
                return false;
            }
            if (!this.f2519a.equals(c0465a.f2519a) || this.f2522d != c0465a.f2522d) {
                return false;
            }
            if (this.f2521c != c0465a.f2521c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f2519a.hashCode();
            return (((((hashCode * 31) + this.f2521c) * 31) + (this.f2522d ? 1231 : 1237)) * 31) + this.f2523e;
        }

        public String toString() {
            return "Column{name='" + this.f2519a + "', type='" + this.f2520b + "', affinity='" + this.f2521c + "', notNull=" + this.f2522d + ", primaryKeyPosition=" + this.f2523e + '}';
        }
    }

    /* renamed from: androidx.room.o.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/o/d$b.class */
    public static class C0466b {

        /* renamed from: a */
        public final String f2524a;

        /* renamed from: b */
        public final String f2525b;

        /* renamed from: c */
        public final String f2526c;

        /* renamed from: d */
        public final List<String> f2527d;

        /* renamed from: e */
        public final List<String> f2528e;

        public C0466b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f2524a = str;
            this.f2525b = str2;
            this.f2526c = str3;
            this.f2527d = Collections.unmodifiableList(list);
            this.f2528e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0466b.class != obj.getClass()) {
                return false;
            }
            C0466b c0466b = (C0466b) obj;
            if (!this.f2524a.equals(c0466b.f2524a) || !this.f2525b.equals(c0466b.f2525b) || !this.f2526c.equals(c0466b.f2526c) || !this.f2527d.equals(c0466b.f2527d)) {
                return false;
            }
            return this.f2528e.equals(c0466b.f2528e);
        }

        public int hashCode() {
            return (((((((this.f2524a.hashCode() * 31) + this.f2525b.hashCode()) * 31) + this.f2526c.hashCode()) * 31) + this.f2527d.hashCode()) * 31) + this.f2528e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f2524a + "', onDelete='" + this.f2525b + "', onUpdate='" + this.f2526c + "', columnNames=" + this.f2527d + ", referenceColumnNames=" + this.f2528e + '}';
        }
    }

    /* renamed from: androidx.room.o.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/o/d$c.class */
    public static class C0467c implements Comparable<C0467c> {

        /* renamed from: b */
        final int f2529b;

        /* renamed from: c */
        final int f2530c;

        /* renamed from: d */
        final String f2531d;

        /* renamed from: e */
        final String f2532e;

        C0467c(int i, int i2, String str, String str2) {
            this.f2529b = i;
            this.f2530c = i2;
            this.f2531d = str;
            this.f2532e = str2;
        }

        /* renamed from: a */
        public int compareTo(C0467c c0467c) {
            int i = this.f2529b - c0467c.f2529b;
            int i2 = i;
            if (i == 0) {
                i2 = this.f2530c - c0467c.f2530c;
            }
            return i2;
        }
    }

    /* renamed from: androidx.room.o.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/o/d$d.class */
    public static class C0468d {

        /* renamed from: a */
        public final String f2533a;

        /* renamed from: b */
        public final boolean f2534b;

        /* renamed from: c */
        public final List<String> f2535c;

        public C0468d(String str, boolean z, List<String> list) {
            this.f2533a = str;
            this.f2534b = z;
            this.f2535c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0468d.class != obj.getClass()) {
                return false;
            }
            C0468d c0468d = (C0468d) obj;
            if (this.f2534b != c0468d.f2534b || !this.f2535c.equals(c0468d.f2535c)) {
                return false;
            }
            return this.f2533a.startsWith("index_") ? c0468d.f2533a.startsWith("index_") : this.f2533a.equals(c0468d.f2533a);
        }

        public int hashCode() {
            return ((((this.f2533a.startsWith("index_") ? -1184239155 : this.f2533a.hashCode()) * 31) + (this.f2534b ? 1 : 0)) * 31) + this.f2535c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f2533a + "', unique=" + this.f2534b + ", columns=" + this.f2535c + '}';
        }
    }

    public C0464d(String str, Map<String, C0465a> map, Set<C0466b> set, Set<C0468d> set2) {
        this.f2515a = str;
        this.f2516b = Collections.unmodifiableMap(map);
        this.f2517c = Collections.unmodifiableSet(set);
        this.f2518d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* renamed from: a */
    public static C0464d m12240a(b bVar, String str) {
        return new C0464d(str, m12239b(bVar, str), m12237d(bVar, str), m12235f(bVar, str));
    }

    /* renamed from: b */
    private static Map<String, C0465a> m12239b(b bVar, String str) {
        Cursor T = bVar.T("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (T.getColumnCount() > 0) {
                int columnIndex = T.getColumnIndex(EZBlackList.NAME);
                int columnIndex2 = T.getColumnIndex("type");
                int columnIndex3 = T.getColumnIndex("notnull");
                int columnIndex4 = T.getColumnIndex("pk");
                while (T.moveToNext()) {
                    String string = T.getString(columnIndex);
                    hashMap.put(string, new C0465a(string, T.getString(columnIndex2), T.getInt(columnIndex3) != 0, T.getInt(columnIndex4)));
                }
            }
            T.close();
            return hashMap;
        } catch (Throwable th) {
            T.close();
            throw th;
        }
    }

    /* renamed from: c */
    private static List<C0467c> m12238c(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C0467c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: d */
    private static Set<C0466b> m12237d(b bVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor T = bVar.T("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = T.getColumnIndex("id");
            int columnIndex2 = T.getColumnIndex("seq");
            int columnIndex3 = T.getColumnIndex("table");
            int columnIndex4 = T.getColumnIndex("on_delete");
            int columnIndex5 = T.getColumnIndex("on_update");
            List<C0467c> m12238c = m12238c(T);
            int count = T.getCount();
            for (int i = 0; i < count; i++) {
                T.moveToPosition(i);
                if (T.getInt(columnIndex2) == 0) {
                    int i2 = T.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (C0467c c0467c : m12238c) {
                        if (c0467c.f2529b == i2) {
                            arrayList.add(c0467c.f2531d);
                            arrayList2.add(c0467c.f2532e);
                        }
                    }
                    hashSet.add(new C0466b(T.getString(columnIndex3), T.getString(columnIndex4), T.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            T.close();
            return hashSet;
        } catch (Throwable th) {
            T.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private static C0468d m12236e(b bVar, String str, boolean z) {
        Cursor T = bVar.T("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = T.getColumnIndex("seqno");
            int columnIndex2 = T.getColumnIndex("cid");
            int columnIndex3 = T.getColumnIndex(EZBlackList.NAME);
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                T.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (T.moveToNext()) {
                if (T.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(T.getInt(columnIndex)), T.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            C0468d c0468d = new C0468d(str, z, arrayList);
            T.close();
            return c0468d;
        } catch (Throwable th) {
            T.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    private static Set<C0468d> m12235f(b bVar, String str) {
        Cursor T = bVar.T("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = T.getColumnIndex(EZBlackList.NAME);
            int columnIndex2 = T.getColumnIndex("origin");
            int columnIndex3 = T.getColumnIndex("unique");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                T.close();
                return null;
            }
            HashSet hashSet = new HashSet();
            while (T.moveToNext()) {
                if ("c".equals(T.getString(columnIndex2))) {
                    String string = T.getString(columnIndex);
                    boolean z = true;
                    if (T.getInt(columnIndex3) != 1) {
                        z = false;
                    }
                    C0468d m12236e = m12236e(bVar, string, z);
                    if (m12236e == null) {
                        T.close();
                        return null;
                    }
                    hashSet.add(m12236e);
                }
            }
            T.close();
            return hashSet;
        } catch (Throwable th) {
            T.close();
            throw th;
        }
    }

    public boolean equals(Object obj) {
        Set<C0468d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0464d.class != obj.getClass()) {
            return false;
        }
        C0464d c0464d = (C0464d) obj;
        String str = this.f2515a;
        if (str != null) {
            if (!str.equals(c0464d.f2515a)) {
                return false;
            }
        } else if (c0464d.f2515a != null) {
            return false;
        }
        Map<String, C0465a> map = this.f2516b;
        if (map != null) {
            if (!map.equals(c0464d.f2516b)) {
                return false;
            }
        } else if (c0464d.f2516b != null) {
            return false;
        }
        Set<C0466b> set2 = this.f2517c;
        if (set2 != null) {
            if (!set2.equals(c0464d.f2517c)) {
                return false;
            }
        } else if (c0464d.f2517c != null) {
            return false;
        }
        Set<C0468d> set3 = this.f2518d;
        if (set3 != null && (set = c0464d.f2518d) != null) {
            return set3.equals(set);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f2515a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, C0465a> map = this.f2516b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<C0466b> set = this.f2517c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "TableInfo{name='" + this.f2515a + "', columns=" + this.f2516b + ", foreignKeys=" + this.f2517c + ", indices=" + this.f2518d + '}';
    }
}
