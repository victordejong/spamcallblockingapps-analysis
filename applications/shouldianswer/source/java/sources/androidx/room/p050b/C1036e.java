package androidx.room.p050b;

import android.database.Cursor;
import android.os.Build;
import androidx.p042i.p043a.AbstractC0778b;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: androidx.room.b.e */
/* loaded from: classes-dex2jar.jar:androidx/room/b/e.class */
public class C1036e {

    /* renamed from: a */
    public final String f3249a;

    /* renamed from: b */
    public final Map<String, C1037a> f3250b;

    /* renamed from: c */
    public final Set<C1038b> f3251c;

    /* renamed from: d */
    public final Set<C1040d> f3252d;

    /* renamed from: androidx.room.b.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/e$a.class */
    public static class C1037a {

        /* renamed from: a */
        public final String f3253a;

        /* renamed from: b */
        public final String f3254b;

        /* renamed from: c */
        public final int f3255c;

        /* renamed from: d */
        public final boolean f3256d;

        /* renamed from: e */
        public final int f3257e;

        /* renamed from: f */
        public final String f3258f;

        /* renamed from: g */
        private final int f3259g;

        public C1037a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f3253a = str;
            this.f3254b = str2;
            this.f3256d = z;
            this.f3257e = i;
            this.f3255c = m4484a(str2);
            this.f3258f = str3;
            this.f3259g = i2;
        }

        /* renamed from: a */
        private static int m4484a(String str) {
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

        /* renamed from: a */
        public boolean m4485a() {
            return this.f3257e > 0;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1037a c1037a = (C1037a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f3257e != c1037a.f3257e) {
                    return false;
                }
            } else if (m4485a() != c1037a.m4485a()) {
                return false;
            }
            if (!this.f3253a.equals(c1037a.f3253a) || this.f3256d != c1037a.f3256d) {
                return false;
            }
            if (this.f3259g == 1 && c1037a.f3259g == 2 && (str2 = this.f3258f) != null && !str2.equals(c1037a.f3258f)) {
                return false;
            }
            if (this.f3259g == 2 && c1037a.f3259g == 1 && (str = c1037a.f3258f) != null && !str.equals(this.f3258f)) {
                return false;
            }
            int i = this.f3259g;
            if (i != 0 && i == c1037a.f3259g) {
                String str3 = this.f3258f;
                if (str3 != null) {
                    if (!str3.equals(c1037a.f3258f)) {
                        return false;
                    }
                } else if (c1037a.f3258f != null) {
                    return false;
                }
            }
            if (this.f3255c != c1037a.f3255c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f3253a.hashCode();
            return (((((hashCode * 31) + this.f3255c) * 31) + (this.f3256d ? 1231 : 1237)) * 31) + this.f3257e;
        }

        public String toString() {
            return "Column{name='" + this.f3253a + "', type='" + this.f3254b + "', affinity='" + this.f3255c + "', notNull=" + this.f3256d + ", primaryKeyPosition=" + this.f3257e + ", defaultValue='" + this.f3258f + "'}";
        }
    }

    /* renamed from: androidx.room.b.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/e$b.class */
    public static class C1038b {

        /* renamed from: a */
        public final String f3260a;

        /* renamed from: b */
        public final String f3261b;

        /* renamed from: c */
        public final String f3262c;

        /* renamed from: d */
        public final List<String> f3263d;

        /* renamed from: e */
        public final List<String> f3264e;

        public C1038b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f3260a = str;
            this.f3261b = str2;
            this.f3262c = str3;
            this.f3263d = Collections.unmodifiableList(list);
            this.f3264e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1038b c1038b = (C1038b) obj;
            if (!this.f3260a.equals(c1038b.f3260a) || !this.f3261b.equals(c1038b.f3261b) || !this.f3262c.equals(c1038b.f3262c) || !this.f3263d.equals(c1038b.f3263d)) {
                return false;
            }
            return this.f3264e.equals(c1038b.f3264e);
        }

        public int hashCode() {
            return (((((((this.f3260a.hashCode() * 31) + this.f3261b.hashCode()) * 31) + this.f3262c.hashCode()) * 31) + this.f3263d.hashCode()) * 31) + this.f3264e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f3260a + "', onDelete='" + this.f3261b + "', onUpdate='" + this.f3262c + "', columnNames=" + this.f3263d + ", referenceColumnNames=" + this.f3264e + '}';
        }
    }

    /* renamed from: androidx.room.b.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/e$c.class */
    public static class C1039c implements Comparable<C1039c> {

        /* renamed from: a */
        final int f3265a;

        /* renamed from: b */
        final int f3266b;

        /* renamed from: c */
        final String f3267c;

        /* renamed from: d */
        final String f3268d;

        C1039c(int i, int i2, String str, String str2) {
            this.f3265a = i;
            this.f3266b = i2;
            this.f3267c = str;
            this.f3268d = str2;
        }

        /* renamed from: a */
        public int compareTo(C1039c c1039c) {
            int i = this.f3265a - c1039c.f3265a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f3266b - c1039c.f3266b;
            }
            return i2;
        }
    }

    /* renamed from: androidx.room.b.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/e$d.class */
    public static class C1040d {

        /* renamed from: a */
        public final String f3269a;

        /* renamed from: b */
        public final boolean f3270b;

        /* renamed from: c */
        public final List<String> f3271c;

        public C1040d(String str, boolean z, List<String> list) {
            this.f3269a = str;
            this.f3270b = z;
            this.f3271c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1040d c1040d = (C1040d) obj;
            if (this.f3270b != c1040d.f3270b || !this.f3271c.equals(c1040d.f3271c)) {
                return false;
            }
            return this.f3269a.startsWith("index_") ? c1040d.f3269a.startsWith("index_") : this.f3269a.equals(c1040d.f3269a);
        }

        public int hashCode() {
            return ((((this.f3269a.startsWith("index_") ? "index_".hashCode() : this.f3269a.hashCode()) * 31) + (this.f3270b ? 1 : 0)) * 31) + this.f3271c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f3269a + "', unique=" + this.f3270b + ", columns=" + this.f3271c + '}';
        }
    }

    public C1036e(String str, Map<String, C1037a> map, Set<C1038b> set, Set<C1040d> set2) {
        this.f3249a = str;
        this.f3250b = Collections.unmodifiableMap(map);
        this.f3251c = Collections.unmodifiableSet(set);
        this.f3252d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* renamed from: a */
    private static C1040d m4489a(AbstractC0778b abstractC0778b, String str, boolean z) {
        Cursor mo5367b = abstractC0778b.mo5367b("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = mo5367b.getColumnIndex("seqno");
            int columnIndex2 = mo5367b.getColumnIndex("cid");
            int columnIndex3 = mo5367b.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                mo5367b.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (mo5367b.moveToNext()) {
                if (mo5367b.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(mo5367b.getInt(columnIndex)), mo5367b.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            return new C1040d(str, z, arrayList);
        } finally {
            mo5367b.close();
        }
    }

    /* renamed from: a */
    public static C1036e m4490a(AbstractC0778b abstractC0778b, String str) {
        return new C1036e(str, m4487c(abstractC0778b, str), m4488b(abstractC0778b, str), m4486d(abstractC0778b, str));
    }

    /* renamed from: a */
    private static List<C1039c> m4491a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C1039c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: b */
    private static Set<C1038b> m4488b(AbstractC0778b abstractC0778b, String str) {
        HashSet hashSet = new HashSet();
        Cursor mo5367b = abstractC0778b.mo5367b("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = mo5367b.getColumnIndex("id");
            int columnIndex2 = mo5367b.getColumnIndex("seq");
            int columnIndex3 = mo5367b.getColumnIndex("table");
            int columnIndex4 = mo5367b.getColumnIndex("on_delete");
            int columnIndex5 = mo5367b.getColumnIndex("on_update");
            List<C1039c> m4491a = m4491a(mo5367b);
            int count = mo5367b.getCount();
            for (int i = 0; i < count; i++) {
                mo5367b.moveToPosition(i);
                if (mo5367b.getInt(columnIndex2) == 0) {
                    int i2 = mo5367b.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (C1039c c1039c : m4491a) {
                        if (c1039c.f3265a == i2) {
                            arrayList.add(c1039c.f3267c);
                            arrayList2.add(c1039c.f3268d);
                        }
                    }
                    hashSet.add(new C1038b(mo5367b.getString(columnIndex3), mo5367b.getString(columnIndex4), mo5367b.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            mo5367b.close();
        }
    }

    /* renamed from: c */
    private static Map<String, C1037a> m4487c(AbstractC0778b abstractC0778b, String str) {
        Cursor mo5367b = abstractC0778b.mo5367b("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (mo5367b.getColumnCount() > 0) {
                int columnIndex = mo5367b.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
                int columnIndex2 = mo5367b.getColumnIndex("type");
                int columnIndex3 = mo5367b.getColumnIndex("notnull");
                int columnIndex4 = mo5367b.getColumnIndex("pk");
                int columnIndex5 = mo5367b.getColumnIndex("dflt_value");
                while (mo5367b.moveToNext()) {
                    String string = mo5367b.getString(columnIndex);
                    hashMap.put(string, new C1037a(string, mo5367b.getString(columnIndex2), mo5367b.getInt(columnIndex3) != 0, mo5367b.getInt(columnIndex4), mo5367b.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            mo5367b.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    private static Set<C1040d> m4486d(AbstractC0778b abstractC0778b, String str) {
        Cursor mo5367b = abstractC0778b.mo5367b("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = mo5367b.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
            int columnIndex2 = mo5367b.getColumnIndex("origin");
            int columnIndex3 = mo5367b.getColumnIndex("unique");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                mo5367b.close();
                return null;
            }
            HashSet hashSet = new HashSet();
            while (mo5367b.moveToNext()) {
                if ("c".equals(mo5367b.getString(columnIndex2))) {
                    String string = mo5367b.getString(columnIndex);
                    boolean z = true;
                    if (mo5367b.getInt(columnIndex3) != 1) {
                        z = false;
                    }
                    C1040d m4489a = m4489a(abstractC0778b, string, z);
                    if (m4489a == null) {
                        mo5367b.close();
                        return null;
                    }
                    hashSet.add(m4489a);
                }
            }
            mo5367b.close();
            return hashSet;
        } catch (Throwable th) {
            mo5367b.close();
            throw th;
        }
    }

    public boolean equals(Object obj) {
        Set<C1040d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1036e c1036e = (C1036e) obj;
        String str = this.f3249a;
        if (str != null) {
            if (!str.equals(c1036e.f3249a)) {
                return false;
            }
        } else if (c1036e.f3249a != null) {
            return false;
        }
        Map<String, C1037a> map = this.f3250b;
        if (map != null) {
            if (!map.equals(c1036e.f3250b)) {
                return false;
            }
        } else if (c1036e.f3250b != null) {
            return false;
        }
        Set<C1038b> set2 = this.f3251c;
        if (set2 != null) {
            if (!set2.equals(c1036e.f3251c)) {
                return false;
            }
        } else if (c1036e.f3251c != null) {
            return false;
        }
        Set<C1040d> set3 = this.f3252d;
        if (set3 != null && (set = c1036e.f3252d) != null) {
            return set3.equals(set);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f3249a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, C1037a> map = this.f3250b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<C1038b> set = this.f3251c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "TableInfo{name='" + this.f3249a + "', columns=" + this.f3250b + ", foreignKeys=" + this.f3251c + ", indices=" + this.f3252d + '}';
    }
}
