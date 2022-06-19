package androidx.room.p012q;

import android.database.Cursor;
import android.os.Build;
import com.allinone.callerid.bean.ShortCut;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p020b.p070r.p071a.AbstractC1772b;
/* renamed from: androidx.room.q.f */
/* loaded from: classes-dex2jar.jar:androidx/room/q/f.class */
public class C1036f {

    /* renamed from: a */
    public final String f4543a;

    /* renamed from: b */
    public final Map<String, C1037a> f4544b;

    /* renamed from: c */
    public final Set<C1038b> f4545c;

    /* renamed from: d */
    public final Set<C1040d> f4546d;

    /* renamed from: androidx.room.q.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/q/f$a.class */
    public static class C1037a {

        /* renamed from: a */
        public final String f4547a;

        /* renamed from: b */
        public final String f4548b;

        /* renamed from: c */
        public final int f4549c;

        /* renamed from: d */
        public final boolean f4550d;

        /* renamed from: e */
        public final int f4551e;

        /* renamed from: f */
        public final String f4552f;

        /* renamed from: g */
        private final int f4553g;

        public C1037a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f4547a = str;
            this.f4548b = str2;
            this.f4550d = z;
            this.f4551e = i;
            this.f4549c = m31196a(str2);
            this.f4552f = str3;
            this.f4553g = i2;
        }

        /* renamed from: a */
        private static int m31196a(String str) {
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
        public boolean m31195b() {
            return this.f4551e > 0;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1037a.class != obj.getClass()) {
                return false;
            }
            C1037a c1037a = (C1037a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f4551e != c1037a.f4551e) {
                    return false;
                }
            } else if (m31195b() != c1037a.m31195b()) {
                return false;
            }
            if (!this.f4547a.equals(c1037a.f4547a) || this.f4550d != c1037a.f4550d) {
                return false;
            }
            if (this.f4553g == 1 && c1037a.f4553g == 2 && (str2 = this.f4552f) != null && !str2.equals(c1037a.f4552f)) {
                return false;
            }
            if (this.f4553g == 2 && c1037a.f4553g == 1 && (str = c1037a.f4552f) != null && !str.equals(this.f4552f)) {
                return false;
            }
            int i = this.f4553g;
            if (i != 0 && i == c1037a.f4553g) {
                String str3 = this.f4552f;
                if (str3 != null) {
                    if (!str3.equals(c1037a.f4552f)) {
                        return false;
                    }
                } else if (c1037a.f4552f != null) {
                    return false;
                }
            }
            if (this.f4549c != c1037a.f4549c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f4547a.hashCode();
            return (((((hashCode * 31) + this.f4549c) * 31) + (this.f4550d ? 1231 : 1237)) * 31) + this.f4551e;
        }

        public String toString() {
            return "Column{name='" + this.f4547a + "', type='" + this.f4548b + "', affinity='" + this.f4549c + "', notNull=" + this.f4550d + ", primaryKeyPosition=" + this.f4551e + ", defaultValue='" + this.f4552f + "'}";
        }
    }

    /* renamed from: androidx.room.q.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/q/f$b.class */
    public static class C1038b {

        /* renamed from: a */
        public final String f4554a;

        /* renamed from: b */
        public final String f4555b;

        /* renamed from: c */
        public final String f4556c;

        /* renamed from: d */
        public final List<String> f4557d;

        /* renamed from: e */
        public final List<String> f4558e;

        public C1038b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f4554a = str;
            this.f4555b = str2;
            this.f4556c = str3;
            this.f4557d = Collections.unmodifiableList(list);
            this.f4558e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C1038b.class != obj.getClass()) {
                return false;
            }
            C1038b c1038b = (C1038b) obj;
            if (!this.f4554a.equals(c1038b.f4554a) || !this.f4555b.equals(c1038b.f4555b) || !this.f4556c.equals(c1038b.f4556c) || !this.f4557d.equals(c1038b.f4557d)) {
                return false;
            }
            return this.f4558e.equals(c1038b.f4558e);
        }

        public int hashCode() {
            return (((((((this.f4554a.hashCode() * 31) + this.f4555b.hashCode()) * 31) + this.f4556c.hashCode()) * 31) + this.f4557d.hashCode()) * 31) + this.f4558e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f4554a + "', onDelete='" + this.f4555b + "', onUpdate='" + this.f4556c + "', columnNames=" + this.f4557d + ", referenceColumnNames=" + this.f4558e + '}';
        }
    }

    /* renamed from: androidx.room.q.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/q/f$c.class */
    public static class C1039c implements Comparable<C1039c> {

        /* renamed from: d */
        final int f4559d;

        /* renamed from: e */
        final int f4560e;

        /* renamed from: f */
        final String f4561f;

        /* renamed from: g */
        final String f4562g;

        C1039c(int i, int i2, String str, String str2) {
            this.f4559d = i;
            this.f4560e = i2;
            this.f4561f = str;
            this.f4562g = str2;
        }

        /* renamed from: a */
        public int compareTo(C1039c c1039c) {
            int i = this.f4559d - c1039c.f4559d;
            int i2 = i;
            if (i == 0) {
                i2 = this.f4560e - c1039c.f4560e;
            }
            return i2;
        }
    }

    /* renamed from: androidx.room.q.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/q/f$d.class */
    public static class C1040d {

        /* renamed from: a */
        public final String f4563a;

        /* renamed from: b */
        public final boolean f4564b;

        /* renamed from: c */
        public final List<String> f4565c;

        public C1040d(String str, boolean z, List<String> list) {
            this.f4563a = str;
            this.f4564b = z;
            this.f4565c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C1040d.class != obj.getClass()) {
                return false;
            }
            C1040d c1040d = (C1040d) obj;
            if (this.f4564b != c1040d.f4564b || !this.f4565c.equals(c1040d.f4565c)) {
                return false;
            }
            return this.f4563a.startsWith("index_") ? c1040d.f4563a.startsWith("index_") : this.f4563a.equals(c1040d.f4563a);
        }

        public int hashCode() {
            return ((((this.f4563a.startsWith("index_") ? -1184239155 : this.f4563a.hashCode()) * 31) + (this.f4564b ? 1 : 0)) * 31) + this.f4565c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f4563a + "', unique=" + this.f4564b + ", columns=" + this.f4565c + '}';
        }
    }

    public C1036f(String str, Map<String, C1037a> map, Set<C1038b> set, Set<C1040d> set2) {
        this.f4543a = str;
        this.f4544b = Collections.unmodifiableMap(map);
        this.f4545c = Collections.unmodifiableSet(set);
        this.f4546d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* renamed from: a */
    public static C1036f m31202a(AbstractC1772b abstractC1772b, String str) {
        return new C1036f(str, m31201b(abstractC1772b, str), m31199d(abstractC1772b, str), m31197f(abstractC1772b, str));
    }

    /* renamed from: b */
    private static Map<String, C1037a> m31201b(AbstractC1772b abstractC1772b, String str) {
        Cursor mo28917M = abstractC1772b.mo28917M("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (mo28917M.getColumnCount() > 0) {
                int columnIndex = mo28917M.getColumnIndex(ShortCut.NAME);
                int columnIndex2 = mo28917M.getColumnIndex("type");
                int columnIndex3 = mo28917M.getColumnIndex("notnull");
                int columnIndex4 = mo28917M.getColumnIndex("pk");
                int columnIndex5 = mo28917M.getColumnIndex("dflt_value");
                while (mo28917M.moveToNext()) {
                    String string = mo28917M.getString(columnIndex);
                    hashMap.put(string, new C1037a(string, mo28917M.getString(columnIndex2), mo28917M.getInt(columnIndex3) != 0, mo28917M.getInt(columnIndex4), mo28917M.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            mo28917M.close();
        }
    }

    /* renamed from: c */
    private static List<C1039c> m31200c(Cursor cursor) {
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

    /* renamed from: d */
    private static Set<C1038b> m31199d(AbstractC1772b abstractC1772b, String str) {
        HashSet hashSet = new HashSet();
        Cursor mo28917M = abstractC1772b.mo28917M("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = mo28917M.getColumnIndex("id");
            int columnIndex2 = mo28917M.getColumnIndex("seq");
            int columnIndex3 = mo28917M.getColumnIndex("table");
            int columnIndex4 = mo28917M.getColumnIndex("on_delete");
            int columnIndex5 = mo28917M.getColumnIndex("on_update");
            List<C1039c> m31200c = m31200c(mo28917M);
            int count = mo28917M.getCount();
            for (int i = 0; i < count; i++) {
                mo28917M.moveToPosition(i);
                if (mo28917M.getInt(columnIndex2) == 0) {
                    int i2 = mo28917M.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (C1039c c1039c : m31200c) {
                        if (c1039c.f4559d == i2) {
                            arrayList.add(c1039c.f4561f);
                            arrayList2.add(c1039c.f4562g);
                        }
                    }
                    hashSet.add(new C1038b(mo28917M.getString(columnIndex3), mo28917M.getString(columnIndex4), mo28917M.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            mo28917M.close();
        }
    }

    /* renamed from: e */
    private static C1040d m31198e(AbstractC1772b abstractC1772b, String str, boolean z) {
        Cursor mo28917M = abstractC1772b.mo28917M("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = mo28917M.getColumnIndex("seqno");
            int columnIndex2 = mo28917M.getColumnIndex("cid");
            int columnIndex3 = mo28917M.getColumnIndex(ShortCut.NAME);
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                mo28917M.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (mo28917M.moveToNext()) {
                if (mo28917M.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(mo28917M.getInt(columnIndex)), mo28917M.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            return new C1040d(str, z, arrayList);
        } finally {
            mo28917M.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    private static Set<C1040d> m31197f(AbstractC1772b abstractC1772b, String str) {
        Cursor mo28917M = abstractC1772b.mo28917M("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = mo28917M.getColumnIndex(ShortCut.NAME);
            int columnIndex2 = mo28917M.getColumnIndex("origin");
            int columnIndex3 = mo28917M.getColumnIndex("unique");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                mo28917M.close();
                return null;
            }
            HashSet hashSet = new HashSet();
            while (mo28917M.moveToNext()) {
                if ("c".equals(mo28917M.getString(columnIndex2))) {
                    String string = mo28917M.getString(columnIndex);
                    boolean z = true;
                    if (mo28917M.getInt(columnIndex3) != 1) {
                        z = false;
                    }
                    C1040d m31198e = m31198e(abstractC1772b, string, z);
                    if (m31198e == null) {
                        mo28917M.close();
                        return null;
                    }
                    hashSet.add(m31198e);
                }
            }
            mo28917M.close();
            return hashSet;
        } catch (Throwable th) {
            mo28917M.close();
            throw th;
        }
    }

    public boolean equals(Object obj) {
        Set<C1040d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1036f.class != obj.getClass()) {
            return false;
        }
        C1036f c1036f = (C1036f) obj;
        String str = this.f4543a;
        if (str != null) {
            if (!str.equals(c1036f.f4543a)) {
                return false;
            }
        } else if (c1036f.f4543a != null) {
            return false;
        }
        Map<String, C1037a> map = this.f4544b;
        if (map != null) {
            if (!map.equals(c1036f.f4544b)) {
                return false;
            }
        } else if (c1036f.f4544b != null) {
            return false;
        }
        Set<C1038b> set2 = this.f4545c;
        if (set2 != null) {
            if (!set2.equals(c1036f.f4545c)) {
                return false;
            }
        } else if (c1036f.f4545c != null) {
            return false;
        }
        Set<C1040d> set3 = this.f4546d;
        if (set3 != null && (set = c1036f.f4546d) != null) {
            return set3.equals(set);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f4543a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, C1037a> map = this.f4544b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<C1038b> set = this.f4545c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "TableInfo{name='" + this.f4543a + "', columns=" + this.f4544b + ", foreignKeys=" + this.f4545c + ", indices=" + this.f4546d + '}';
    }
}
