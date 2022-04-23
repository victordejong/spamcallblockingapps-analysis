package androidx.room.b;

import android.database.Cursor;
import android.os.Build;
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
/* loaded from: classes-dex2jar.jar:androidx/room/b/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final String f5521a;

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, a> f5522b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<b> f5523c;

    /* renamed from: d  reason: collision with root package name */
    public final Set<d> f5524d;

    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f5525a;

        /* renamed from: b  reason: collision with root package name */
        public final String f5526b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5527c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f5528d;
        public final int e;
        public final String f;
        private final int g;

        @Deprecated
        public a(String str, String str2, boolean z, int i) {
            this(str, str2, z, i, null, 0);
        }

        public a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f5525a = str;
            this.f5526b = str2;
            this.f5528d = z;
            this.e = i;
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
            this.f5527c = i3;
            this.f = str3;
            this.g = i2;
        }

        private boolean a() {
            return this.e > 0;
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
            a aVar = (a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.e != aVar.e) {
                    return false;
                }
            } else if (a() != aVar.a()) {
                return false;
            }
            if (!this.f5525a.equals(aVar.f5525a) || this.f5528d != aVar.f5528d) {
                return false;
            }
            if (this.g == 1 && aVar.g == 2 && (str2 = this.f) != null && !str2.equals(aVar.f)) {
                return false;
            }
            if (this.g == 2 && aVar.g == 1 && (str = aVar.f) != null && !str.equals(this.f)) {
                return false;
            }
            int i = this.g;
            if (i != 0 && i == aVar.g) {
                String str3 = this.f;
                if (str3 != null) {
                    if (!str3.equals(aVar.f)) {
                        return false;
                    }
                } else if (aVar.f != null) {
                    return false;
                }
            }
            return this.f5527c == aVar.f5527c;
        }

        public final int hashCode() {
            int hashCode = this.f5525a.hashCode();
            return (((((hashCode * 31) + this.f5527c) * 31) + (this.f5528d ? 1231 : 1237)) * 31) + this.e;
        }

        public final String toString() {
            return "Column{name='" + this.f5525a + "', type='" + this.f5526b + "', affinity='" + this.f5527c + "', notNull=" + this.f5528d + ", primaryKeyPosition=" + this.e + ", defaultValue='" + this.f + "'}";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f5529a;

        /* renamed from: b  reason: collision with root package name */
        public final String f5530b;

        /* renamed from: c  reason: collision with root package name */
        public final String f5531c;

        /* renamed from: d  reason: collision with root package name */
        public final List<String> f5532d;
        public final List<String> e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f5529a = str;
            this.f5530b = str2;
            this.f5531c = str3;
            this.f5532d = Collections.unmodifiableList(list);
            this.e = Collections.unmodifiableList(list2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f5529a.equals(bVar.f5529a) && this.f5530b.equals(bVar.f5530b) && this.f5531c.equals(bVar.f5531c) && this.f5532d.equals(bVar.f5532d)) {
                return this.e.equals(bVar.e);
            }
            return false;
        }

        public final int hashCode() {
            return (((((((this.f5529a.hashCode() * 31) + this.f5530b.hashCode()) * 31) + this.f5531c.hashCode()) * 31) + this.f5532d.hashCode()) * 31) + this.e.hashCode();
        }

        public final String toString() {
            return "ForeignKey{referenceTable='" + this.f5529a + "', onDelete='" + this.f5530b + "', onUpdate='" + this.f5531c + "', columnNames=" + this.f5532d + ", referenceColumnNames=" + this.e + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$c.class */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        final int f5533a;

        /* renamed from: b  reason: collision with root package name */
        final int f5534b;

        /* renamed from: c  reason: collision with root package name */
        final String f5535c;

        /* renamed from: d  reason: collision with root package name */
        final String f5536d;

        c(int i, int i2, String str, String str2) {
            this.f5533a = i;
            this.f5534b = i2;
            this.f5535c = str;
            this.f5536d = str2;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(c cVar) {
            c cVar2 = cVar;
            int i = this.f5533a - cVar2.f5533a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f5534b - cVar2.f5534b;
            }
            return i2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/b/f$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final String f5537a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f5538b;

        /* renamed from: c  reason: collision with root package name */
        public final List<String> f5539c;

        public d(String str, boolean z, List<String> list) {
            this.f5537a = str;
            this.f5538b = z;
            this.f5539c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f5538b == dVar.f5538b && this.f5539c.equals(dVar.f5539c)) {
                return this.f5537a.startsWith("index_") ? dVar.f5537a.startsWith("index_") : this.f5537a.equals(dVar.f5537a);
            }
            return false;
        }

        public final int hashCode() {
            return ((((this.f5537a.startsWith("index_") ? -1184239155 : this.f5537a.hashCode()) * 31) + (this.f5538b ? 1 : 0)) * 31) + this.f5539c.hashCode();
        }

        public final String toString() {
            return "Index{name='" + this.f5537a + "', unique=" + this.f5538b + ", columns=" + this.f5539c + '}';
        }
    }

    public f(String str, Map<String, a> map, Set<b> set) {
        this(str, map, set, Collections.emptySet());
    }

    public f(String str, Map<String, a> map, Set<b> set, Set<d> set2) {
        this.f5521a = str;
        this.f5522b = Collections.unmodifiableMap(map);
        this.f5523c = Collections.unmodifiableSet(set);
        this.f5524d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    private static d a(androidx.sqlite.db.b bVar, String str, boolean z) {
        Cursor b2 = bVar.b("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = b2.getColumnIndex("seqno");
            int columnIndex2 = b2.getColumnIndex("cid");
            int columnIndex3 = b2.getColumnIndex("name");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                b2.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (b2.moveToNext()) {
                if (b2.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(b2.getInt(columnIndex)), b2.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            return new d(str, z, arrayList);
        } finally {
            b2.close();
        }
    }

    public static f a(androidx.sqlite.db.b bVar, String str) {
        return new f(str, c(bVar, str), b(bVar, str), d(bVar, str));
    }

    private static List<c> a(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static Set<b> b(androidx.sqlite.db.b bVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor b2 = bVar.b("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = b2.getColumnIndex("id");
            int columnIndex2 = b2.getColumnIndex("seq");
            int columnIndex3 = b2.getColumnIndex("table");
            int columnIndex4 = b2.getColumnIndex("on_delete");
            int columnIndex5 = b2.getColumnIndex("on_update");
            List<c> a2 = a(b2);
            int count = b2.getCount();
            for (int i = 0; i < count; i++) {
                b2.moveToPosition(i);
                if (b2.getInt(columnIndex2) == 0) {
                    int i2 = b2.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (c cVar : a2) {
                        if (cVar.f5533a == i2) {
                            arrayList.add(cVar.f5535c);
                            arrayList2.add(cVar.f5536d);
                        }
                    }
                    hashSet.add(new b(b2.getString(columnIndex3), b2.getString(columnIndex4), b2.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            b2.close();
        }
    }

    private static Map<String, a> c(androidx.sqlite.db.b bVar, String str) {
        Cursor b2 = bVar.b("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (b2.getColumnCount() > 0) {
                int columnIndex = b2.getColumnIndex("name");
                int columnIndex2 = b2.getColumnIndex("type");
                int columnIndex3 = b2.getColumnIndex("notnull");
                int columnIndex4 = b2.getColumnIndex("pk");
                int columnIndex5 = b2.getColumnIndex("dflt_value");
                while (b2.moveToNext()) {
                    String string = b2.getString(columnIndex);
                    hashMap.put(string, new a(string, b2.getString(columnIndex2), b2.getInt(columnIndex3) != 0, b2.getInt(columnIndex4), b2.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            b2.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    private static Set<d> d(androidx.sqlite.db.b bVar, String str) {
        Cursor b2 = bVar.b("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = b2.getColumnIndex("name");
            int columnIndex2 = b2.getColumnIndex("origin");
            int columnIndex3 = b2.getColumnIndex("unique");
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                b2.close();
                return null;
            }
            HashSet hashSet = new HashSet();
            while (b2.moveToNext()) {
                if (Constants.URL_CAMPAIGN.equals(b2.getString(columnIndex2))) {
                    String string = b2.getString(columnIndex);
                    boolean z = true;
                    if (b2.getInt(columnIndex3) != 1) {
                        z = false;
                    }
                    d a2 = a(bVar, string, z);
                    if (a2 == null) {
                        b2.close();
                        return null;
                    }
                    hashSet.add(a2);
                }
            }
            b2.close();
            return hashSet;
        } catch (Throwable th) {
            b2.close();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.f5521a;
        if (str != null) {
            if (!str.equals(fVar.f5521a)) {
                return false;
            }
        } else if (fVar.f5521a != null) {
            return false;
        }
        Map<String, a> map = this.f5522b;
        if (map != null) {
            if (!map.equals(fVar.f5522b)) {
                return false;
            }
        } else if (fVar.f5522b != null) {
            return false;
        }
        Set<b> set2 = this.f5523c;
        if (set2 != null) {
            if (!set2.equals(fVar.f5523c)) {
                return false;
            }
        } else if (fVar.f5523c != null) {
            return false;
        }
        Set<d> set3 = this.f5524d;
        if (set3 == null || (set = fVar.f5524d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public final int hashCode() {
        String str = this.f5521a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, a> map = this.f5522b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<b> set = this.f5523c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "TableInfo{name='" + this.f5521a + "', columns=" + this.f5522b + ", foreignKeys=" + this.f5523c + ", indices=" + this.f5524d + '}';
    }
}
