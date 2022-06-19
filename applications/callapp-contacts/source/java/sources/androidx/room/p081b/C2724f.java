package androidx.room.p081b;

import android.database.Cursor;
import android.os.Build;
import androidx.sqlite.p082db.AbstractC2792b;
import com.appsflyer.share.Constants;
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
public final class C2724f {

    /* renamed from: a */
    public final String f10342a;

    /* renamed from: b */
    public final Map<String, C2725a> f10343b;

    /* renamed from: c */
    public final Set<C2726b> f10344c;

    /* renamed from: d */
    public final Set<C2728d> f10345d;

    /* renamed from: androidx.room.b.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$a.class */
    public static final class C2725a {

        /* renamed from: a */
        public final String f10346a;

        /* renamed from: b */
        public final String f10347b;

        /* renamed from: c */
        public final int f10348c;

        /* renamed from: d */
        public final boolean f10349d;

        /* renamed from: e */
        public final int f10350e;

        /* renamed from: f */
        public final String f10351f;

        /* renamed from: g */
        private final int f10352g;

        @Deprecated
        public C2725a(String str, String str2, boolean z, int i) {
            this(str, str2, z, i, null, 0);
        }

        public C2725a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f10346a = str;
            this.f10347b = str2;
            this.f10349d = z;
            this.f10350e = i;
            int i3 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i3 = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i3 = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i3 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            this.f10348c = i3;
            this.f10351f = str3;
            this.f10352g = i2;
        }

        /* renamed from: a */
        private boolean m39986a() {
            return this.f10350e > 0;
        }

        public final boolean equals(Object obj) {
            String str;
            String str2;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C2725a c2725a = (C2725a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f10350e != c2725a.f10350e) {
                    return false;
                }
            } else if (m39986a() != c2725a.m39986a()) {
                return false;
            }
            if (!this.f10346a.equals(c2725a.f10346a) || this.f10349d != c2725a.f10349d) {
                return false;
            }
            if (this.f10352g == 1 && c2725a.f10352g == 2 && (str2 = this.f10351f) != null && !str2.equals(c2725a.f10351f)) {
                return false;
            }
            if (this.f10352g == 2 && c2725a.f10352g == 1 && (str = c2725a.f10351f) != null && !str.equals(this.f10351f)) {
                return false;
            }
            int i = this.f10352g;
            if (i != 0 && i == c2725a.f10352g) {
                String str3 = this.f10351f;
                if (str3 != null) {
                    if (!str3.equals(c2725a.f10351f)) {
                        return false;
                    }
                } else if (c2725a.f10351f != null) {
                    return false;
                }
            }
            return this.f10348c == c2725a.f10348c;
        }

        public final int hashCode() {
            int hashCode = this.f10346a.hashCode();
            return (((((hashCode * 31) + this.f10348c) * 31) + (this.f10349d ? 1231 : 1237)) * 31) + this.f10350e;
        }

        public final String toString() {
            return "Column{name='" + this.f10346a + "', type='" + this.f10347b + "', affinity='" + this.f10348c + "', notNull=" + this.f10349d + ", primaryKeyPosition=" + this.f10350e + ", defaultValue='" + this.f10351f + "'}";
        }
    }

    /* renamed from: androidx.room.b.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$b.class */
    public static final class C2726b {

        /* renamed from: a */
        public final String f10353a;

        /* renamed from: b */
        public final String f10354b;

        /* renamed from: c */
        public final String f10355c;

        /* renamed from: d */
        public final List<String> f10356d;

        /* renamed from: e */
        public final List<String> f10357e;

        public C2726b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f10353a = str;
            this.f10354b = str2;
            this.f10355c = str3;
            this.f10356d = Collections.unmodifiableList(list);
            this.f10357e = Collections.unmodifiableList(list2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C2726b c2726b = (C2726b) obj;
            if (!this.f10353a.equals(c2726b.f10353a) || !this.f10354b.equals(c2726b.f10354b) || !this.f10355c.equals(c2726b.f10355c) || !this.f10356d.equals(c2726b.f10356d)) {
                return false;
            }
            return this.f10357e.equals(c2726b.f10357e);
        }

        public final int hashCode() {
            return (((((((this.f10353a.hashCode() * 31) + this.f10354b.hashCode()) * 31) + this.f10355c.hashCode()) * 31) + this.f10356d.hashCode()) * 31) + this.f10357e.hashCode();
        }

        public final String toString() {
            return "ForeignKey{referenceTable='" + this.f10353a + "', onDelete='" + this.f10354b + "', onUpdate='" + this.f10355c + "', columnNames=" + this.f10356d + ", referenceColumnNames=" + this.f10357e + '}';
        }
    }

    /* renamed from: androidx.room.b.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$c.class */
    public static final class C2727c implements Comparable<C2727c> {

        /* renamed from: a */
        final int f10358a;

        /* renamed from: b */
        final int f10359b;

        /* renamed from: c */
        final String f10360c;

        /* renamed from: d */
        final String f10361d;

        C2727c(int i, int i2, String str, String str2) {
            this.f10358a = i;
            this.f10359b = i2;
            this.f10360c = str;
            this.f10361d = str2;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(C2727c c2727c) {
            C2727c c2727c2 = c2727c;
            int i = this.f10358a - c2727c2.f10358a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f10359b - c2727c2.f10359b;
            }
            return i2;
        }
    }

    /* renamed from: androidx.room.b.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$d.class */
    public static final class C2728d {

        /* renamed from: a */
        public final String f10362a;

        /* renamed from: b */
        public final boolean f10363b;

        /* renamed from: c */
        public final List<String> f10364c;

        public C2728d(String str, boolean z, List<String> list) {
            this.f10362a = str;
            this.f10363b = z;
            this.f10364c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C2728d c2728d = (C2728d) obj;
            if (this.f10363b != c2728d.f10363b || !this.f10364c.equals(c2728d.f10364c)) {
                return false;
            }
            return this.f10362a.startsWith("index_") ? c2728d.f10362a.startsWith("index_") : this.f10362a.equals(c2728d.f10362a);
        }

        public final int hashCode() {
            return ((((this.f10362a.startsWith("index_") ? -1184239155 : this.f10362a.hashCode()) * 31) + (this.f10363b ? 1 : 0)) * 31) + this.f10364c.hashCode();
        }

        public final String toString() {
            return "Index{name='" + this.f10362a + "', unique=" + this.f10363b + ", columns=" + this.f10364c + '}';
        }
    }

    public C2724f(String str, Map<String, C2725a> map, Set<C2726b> set) {
        this(str, map, set, Collections.emptySet());
    }

    public C2724f(String str, Map<String, C2725a> map, Set<C2726b> set, Set<C2728d> set2) {
        this.f10342a = str;
        this.f10343b = Collections.unmodifiableMap(map);
        this.f10344c = Collections.unmodifiableSet(set);
        this.f10345d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* renamed from: a */
    private static C2728d m39990a(AbstractC2792b abstractC2792b, String str, boolean z) {
        Cursor mo39896b = abstractC2792b.mo39896b("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = mo39896b.getColumnIndex("seqno");
            int columnIndex2 = mo39896b.getColumnIndex("cid");
            int columnIndex3 = mo39896b.getColumnIndex("name");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                mo39896b.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (mo39896b.moveToNext()) {
                if (mo39896b.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(mo39896b.getInt(columnIndex)), mo39896b.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            return new C2728d(str, z, arrayList);
        } finally {
            mo39896b.close();
        }
    }

    /* renamed from: a */
    public static C2724f m39991a(AbstractC2792b abstractC2792b, String str) {
        return new C2724f(str, m39988c(abstractC2792b, str), m39989b(abstractC2792b, str), m39987d(abstractC2792b, str));
    }

    /* renamed from: a */
    private static List<C2727c> m39992a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C2727c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: b */
    private static Set<C2726b> m39989b(AbstractC2792b abstractC2792b, String str) {
        HashSet hashSet = new HashSet();
        Cursor mo39896b = abstractC2792b.mo39896b("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = mo39896b.getColumnIndex("id");
            int columnIndex2 = mo39896b.getColumnIndex("seq");
            int columnIndex3 = mo39896b.getColumnIndex("table");
            int columnIndex4 = mo39896b.getColumnIndex("on_delete");
            int columnIndex5 = mo39896b.getColumnIndex("on_update");
            List<C2727c> m39992a = m39992a(mo39896b);
            int count = mo39896b.getCount();
            for (int i = 0; i < count; i++) {
                mo39896b.moveToPosition(i);
                if (mo39896b.getInt(columnIndex2) == 0) {
                    int i2 = mo39896b.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (C2727c c2727c : m39992a) {
                        if (c2727c.f10358a == i2) {
                            arrayList.add(c2727c.f10360c);
                            arrayList2.add(c2727c.f10361d);
                        }
                    }
                    hashSet.add(new C2726b(mo39896b.getString(columnIndex3), mo39896b.getString(columnIndex4), mo39896b.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            mo39896b.close();
        }
    }

    /* renamed from: c */
    private static Map<String, C2725a> m39988c(AbstractC2792b abstractC2792b, String str) {
        Cursor mo39896b = abstractC2792b.mo39896b("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (mo39896b.getColumnCount() > 0) {
                int columnIndex = mo39896b.getColumnIndex("name");
                int columnIndex2 = mo39896b.getColumnIndex("type");
                int columnIndex3 = mo39896b.getColumnIndex("notnull");
                int columnIndex4 = mo39896b.getColumnIndex("pk");
                int columnIndex5 = mo39896b.getColumnIndex("dflt_value");
                while (mo39896b.moveToNext()) {
                    String string = mo39896b.getString(columnIndex);
                    hashMap.put(string, new C2725a(string, mo39896b.getString(columnIndex2), mo39896b.getInt(columnIndex3) != 0, mo39896b.getInt(columnIndex4), mo39896b.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            mo39896b.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    private static Set<C2728d> m39987d(AbstractC2792b abstractC2792b, String str) {
        Cursor mo39896b = abstractC2792b.mo39896b("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = mo39896b.getColumnIndex("name");
            int columnIndex2 = mo39896b.getColumnIndex("origin");
            int columnIndex3 = mo39896b.getColumnIndex("unique");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                mo39896b.close();
                return null;
            }
            HashSet hashSet = new HashSet();
            while (mo39896b.moveToNext()) {
                if (Constants.URL_CAMPAIGN.equals(mo39896b.getString(columnIndex2))) {
                    String string = mo39896b.getString(columnIndex);
                    boolean z = true;
                    if (mo39896b.getInt(columnIndex3) != 1) {
                        z = false;
                    }
                    C2728d m39990a = m39990a(abstractC2792b, string, z);
                    if (m39990a == null) {
                        mo39896b.close();
                        return null;
                    }
                    hashSet.add(m39990a);
                }
            }
            mo39896b.close();
            return hashSet;
        } catch (Throwable th) {
            mo39896b.close();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        Set<C2728d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2724f c2724f = (C2724f) obj;
        String str = this.f10342a;
        if (str != null) {
            if (!str.equals(c2724f.f10342a)) {
                return false;
            }
        } else if (c2724f.f10342a != null) {
            return false;
        }
        Map<String, C2725a> map = this.f10343b;
        if (map != null) {
            if (!map.equals(c2724f.f10343b)) {
                return false;
            }
        } else if (c2724f.f10343b != null) {
            return false;
        }
        Set<C2726b> set2 = this.f10344c;
        if (set2 != null) {
            if (!set2.equals(c2724f.f10344c)) {
                return false;
            }
        } else if (c2724f.f10344c != null) {
            return false;
        }
        Set<C2728d> set3 = this.f10345d;
        if (set3 != null && (set = c2724f.f10345d) != null) {
            return set3.equals(set);
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f10342a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, C2725a> map = this.f10343b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<C2726b> set = this.f10344c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "TableInfo{name='" + this.f10342a + "', columns=" + this.f10343b + ", foreignKeys=" + this.f10344c + ", indices=" + this.f10345d + '}';
    }
}
