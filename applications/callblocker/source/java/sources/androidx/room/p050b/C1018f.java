package androidx.room.p050b;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0749b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: androidx.room.b.f */
/* loaded from: classes-dex2jar.jar:androidx/room/b/f.class */
public class C1018f {

    /* renamed from: a */
    public final String f3459a;

    /* renamed from: b */
    public final Map<String, C1019a> f3460b;

    /* renamed from: c */
    public final Set<C1020b> f3461c;

    /* renamed from: d */
    public final Set<C1022d> f3462d;

    /* renamed from: androidx.room.b.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$a.class */
    public static class C1019a {

        /* renamed from: a */
        public final String f3463a;

        /* renamed from: b */
        public final String f3464b;

        /* renamed from: c */
        public final int f3465c;

        /* renamed from: d */
        public final boolean f3466d;

        /* renamed from: e */
        public final int f3467e;

        /* renamed from: f */
        public final String f3468f;

        /* renamed from: g */
        private final int f3469g;

        public C1019a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f3463a = str;
            this.f3464b = str2;
            this.f3466d = z;
            this.f3467e = i;
            this.f3465c = m18334a(str2);
            this.f3468f = str3;
            this.f3469g = i2;
        }

        /* renamed from: a */
        private static int m18334a(String str) {
            int i = 5;
            if (str != null) {
                String upperCase = str.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            return i;
        }

        /* renamed from: a */
        public boolean m18335a() {
            return this.f3467e > 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
            if (r3.f3467e == r0.f3467e) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
            if (r3.f3468f.equals(r0.f3468f) != false) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00ab, code lost:
            if (r0.f3468f.equals(r3.f3468f) != false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00d5, code lost:
            if (r3.f3468f.equals(r0.f3468f) != false) goto L43;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                Method dump skipped, instructions count: 269
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.p050b.C1018f.C1019a.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            int hashCode = this.f3463a.hashCode();
            return (((this.f3466d ? 1231 : 1237) + (((hashCode * 31) + this.f3465c) * 31)) * 31) + this.f3467e;
        }

        public String toString() {
            return "Column{name='" + this.f3463a + "', type='" + this.f3464b + "', affinity='" + this.f3465c + "', notNull=" + this.f3466d + ", primaryKeyPosition=" + this.f3467e + ", defaultValue='" + this.f3468f + "'}";
        }
    }

    /* renamed from: androidx.room.b.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$b.class */
    public static class C1020b {

        /* renamed from: a */
        public final String f3470a;

        /* renamed from: b */
        public final String f3471b;

        /* renamed from: c */
        public final String f3472c;

        /* renamed from: d */
        public final List<String> f3473d;

        /* renamed from: e */
        public final List<String> f3474e;

        public C1020b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f3470a = str;
            this.f3471b = str2;
            this.f3472c = str3;
            this.f3473d = Collections.unmodifiableList(list);
            this.f3474e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            boolean z;
            if (this == obj) {
                z = true;
            } else {
                z = false;
                if (obj != null) {
                    z = false;
                    if (getClass() == obj.getClass()) {
                        C1020b c1020b = (C1020b) obj;
                        z = false;
                        if (this.f3470a.equals(c1020b.f3470a)) {
                            z = false;
                            if (this.f3471b.equals(c1020b.f3471b)) {
                                z = false;
                                if (this.f3472c.equals(c1020b.f3472c)) {
                                    z = false;
                                    if (this.f3473d.equals(c1020b.f3473d)) {
                                        z = this.f3474e.equals(c1020b.f3474e);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (((((((this.f3470a.hashCode() * 31) + this.f3471b.hashCode()) * 31) + this.f3472c.hashCode()) * 31) + this.f3473d.hashCode()) * 31) + this.f3474e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f3470a + "', onDelete='" + this.f3471b + "', onUpdate='" + this.f3472c + "', columnNames=" + this.f3473d + ", referenceColumnNames=" + this.f3474e + '}';
        }
    }

    /* renamed from: androidx.room.b.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$c.class */
    public static class C1021c implements Comparable<C1021c> {

        /* renamed from: a */
        final int f3475a;

        /* renamed from: b */
        final int f3476b;

        /* renamed from: c */
        final String f3477c;

        /* renamed from: d */
        final String f3478d;

        C1021c(int i, int i2, String str, String str2) {
            this.f3475a = i;
            this.f3476b = i2;
            this.f3477c = str;
            this.f3478d = str2;
        }

        /* renamed from: a */
        public int compareTo(C1021c c1021c) {
            int i = this.f3475a - c1021c.f3475a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f3476b - c1021c.f3476b;
            }
            return i2;
        }
    }

    /* renamed from: androidx.room.b.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$d.class */
    public static class C1022d {

        /* renamed from: a */
        public final String f3479a;

        /* renamed from: b */
        public final boolean f3480b;

        /* renamed from: c */
        public final List<String> f3481c;

        public C1022d(String str, boolean z, List<String> list) {
            this.f3479a = str;
            this.f3480b = z;
            this.f3481c = list;
        }

        public boolean equals(Object obj) {
            boolean z;
            if (this == obj) {
                z = true;
            } else {
                z = false;
                if (obj != null) {
                    z = false;
                    if (getClass() == obj.getClass()) {
                        C1022d c1022d = (C1022d) obj;
                        z = false;
                        if (this.f3480b == c1022d.f3480b) {
                            z = false;
                            if (this.f3481c.equals(c1022d.f3481c)) {
                                z = this.f3479a.startsWith("index_") ? c1022d.f3479a.startsWith("index_") : this.f3479a.equals(c1022d.f3479a);
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (((this.f3480b ? 1 : 0) + ((this.f3479a.startsWith("index_") ? "index_".hashCode() : this.f3479a.hashCode()) * 31)) * 31) + this.f3481c.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f3479a + "', unique=" + this.f3480b + ", columns=" + this.f3481c + '}';
        }
    }

    public C1018f(String str, Map<String, C1019a> map, Set<C1020b> set, Set<C1022d> set2) {
        this.f3459a = str;
        this.f3460b = Collections.unmodifiableMap(map);
        this.f3461c = Collections.unmodifiableSet(set);
        this.f3462d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* renamed from: a */
    private static C1022d m18339a(AbstractC0749b abstractC0749b, String str, boolean z) {
        C1022d c1022d;
        Cursor mo19519b = abstractC0749b.mo19519b("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = mo19519b.getColumnIndex("seqno");
            int columnIndex2 = mo19519b.getColumnIndex("cid");
            int columnIndex3 = mo19519b.getColumnIndex("name");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                c1022d = null;
            } else {
                TreeMap treeMap = new TreeMap();
                while (mo19519b.moveToNext()) {
                    if (mo19519b.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(mo19519b.getInt(columnIndex)), mo19519b.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                c1022d = new C1022d(str, z, arrayList);
                mo19519b.close();
            }
            return c1022d;
        } finally {
            mo19519b.close();
        }
    }

    /* renamed from: a */
    public static C1018f m18340a(AbstractC0749b abstractC0749b, String str) {
        return new C1018f(str, m18337c(abstractC0749b, str), m18338b(abstractC0749b, str), m18336d(abstractC0749b, str));
    }

    /* renamed from: a */
    private static List<C1021c> m18341a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C1021c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: b */
    private static Set<C1020b> m18338b(AbstractC0749b abstractC0749b, String str) {
        HashSet hashSet = new HashSet();
        Cursor mo19519b = abstractC0749b.mo19519b("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = mo19519b.getColumnIndex("id");
            int columnIndex2 = mo19519b.getColumnIndex("seq");
            int columnIndex3 = mo19519b.getColumnIndex("table");
            int columnIndex4 = mo19519b.getColumnIndex("on_delete");
            int columnIndex5 = mo19519b.getColumnIndex("on_update");
            List<C1021c> m18341a = m18341a(mo19519b);
            int count = mo19519b.getCount();
            for (int i = 0; i < count; i++) {
                mo19519b.moveToPosition(i);
                if (mo19519b.getInt(columnIndex2) == 0) {
                    int i2 = mo19519b.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (C1021c c1021c : m18341a) {
                        if (c1021c.f3475a == i2) {
                            arrayList.add(c1021c.f3477c);
                            arrayList2.add(c1021c.f3478d);
                        }
                    }
                    hashSet.add(new C1020b(mo19519b.getString(columnIndex3), mo19519b.getString(columnIndex4), mo19519b.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            mo19519b.close();
        }
    }

    /* renamed from: c */
    private static Map<String, C1019a> m18337c(AbstractC0749b abstractC0749b, String str) {
        Cursor mo19519b = abstractC0749b.mo19519b("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (mo19519b.getColumnCount() > 0) {
                int columnIndex = mo19519b.getColumnIndex("name");
                int columnIndex2 = mo19519b.getColumnIndex("type");
                int columnIndex3 = mo19519b.getColumnIndex("notnull");
                int columnIndex4 = mo19519b.getColumnIndex("pk");
                int columnIndex5 = mo19519b.getColumnIndex("dflt_value");
                while (mo19519b.moveToNext()) {
                    String string = mo19519b.getString(columnIndex);
                    hashMap.put(string, new C1019a(string, mo19519b.getString(columnIndex2), mo19519b.getInt(columnIndex3) != 0, mo19519b.getInt(columnIndex4), mo19519b.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            mo19519b.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    private static Set<C1022d> m18336d(AbstractC0749b abstractC0749b, String str) {
        HashSet hashSet;
        Cursor mo19519b = abstractC0749b.mo19519b("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = mo19519b.getColumnIndex("name");
            int columnIndex2 = mo19519b.getColumnIndex("origin");
            int columnIndex3 = mo19519b.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet2 = new HashSet();
                while (true) {
                    if (!mo19519b.moveToNext()) {
                        mo19519b.close();
                        hashSet = hashSet2;
                        break;
                    } else if ("c".equals(mo19519b.getString(columnIndex2))) {
                        C1022d m18339a = m18339a(abstractC0749b, mo19519b.getString(columnIndex), mo19519b.getInt(columnIndex3) == 1);
                        if (m18339a == null) {
                            mo19519b.close();
                            hashSet = null;
                            break;
                        }
                        hashSet2.add(m18339a);
                    }
                }
            } else {
                mo19519b.close();
                hashSet = null;
            }
            return hashSet;
        } catch (Throwable th) {
            mo19519b.close();
            throw th;
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (obj == null || getClass() != obj.getClass()) {
            z = false;
        } else {
            C1018f c1018f = (C1018f) obj;
            if (this.f3459a == null ? c1018f.f3459a != null : !this.f3459a.equals(c1018f.f3459a)) {
                z = false;
            } else if (this.f3460b == null ? c1018f.f3460b != null : !this.f3460b.equals(c1018f.f3460b)) {
                z = false;
            } else if (this.f3461c == null ? c1018f.f3461c != null : !this.f3461c.equals(c1018f.f3461c)) {
                z = false;
            } else {
                z = true;
                if (this.f3462d != null) {
                    z = true;
                    if (c1018f.f3462d != null) {
                        z = this.f3462d.equals(c1018f.f3462d);
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f3459a != null ? this.f3459a.hashCode() : 0;
        int hashCode2 = this.f3460b != null ? this.f3460b.hashCode() : 0;
        if (this.f3461c != null) {
            i = this.f3461c.hashCode();
        }
        return ((hashCode2 + (hashCode * 31)) * 31) + i;
    }

    public String toString() {
        return "TableInfo{name='" + this.f3459a + "', columns=" + this.f3460b + ", foreignKeys=" + this.f3461c + ", indices=" + this.f3462d + '}';
    }
}
