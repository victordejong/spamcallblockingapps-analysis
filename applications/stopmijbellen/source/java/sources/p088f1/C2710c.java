package p088f1;

import android.database.Cursor;
import android.support.p012v4.media.C0082b;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p007a6.C0033h;
import p099g1.AbstractC2795a;
import p110h1.C2993a;
/* renamed from: f1.c */
/* loaded from: classes-dex2jar.jar:f1/c.class */
public class C2710c {

    /* renamed from: a */
    public final String f9304a;

    /* renamed from: b */
    public final Map<String, C2711a> f9305b;

    /* renamed from: c */
    public final Set<C2712b> f9306c;

    /* renamed from: d */
    public final Set<C2714d> f9307d;

    /* renamed from: f1.c$a */
    /* loaded from: classes-dex2jar.jar:f1/c$a.class */
    public static class C2711a {

        /* renamed from: a */
        public final String f9308a;

        /* renamed from: b */
        public final String f9309b;

        /* renamed from: c */
        public final int f9310c;

        /* renamed from: d */
        public final boolean f9311d;

        /* renamed from: e */
        public final int f9312e;

        /* renamed from: f */
        public final String f9313f;

        /* renamed from: g */
        public final int f9314g;

        public C2711a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f9308a = str;
            this.f9309b = str2;
            this.f9311d = z;
            this.f9312e = i;
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
            this.f9310c = i3;
            this.f9313f = str3;
            this.f9314g = i2;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C2711a.class != obj.getClass()) {
                return false;
            }
            C2711a c2711a = (C2711a) obj;
            if (this.f9312e != c2711a.f9312e || !this.f9308a.equals(c2711a.f9308a) || this.f9311d != c2711a.f9311d) {
                return false;
            }
            if (this.f9314g == 1 && c2711a.f9314g == 2 && (str2 = this.f9313f) != null && !str2.equals(c2711a.f9313f)) {
                return false;
            }
            if (this.f9314g == 2 && c2711a.f9314g == 1 && (str = c2711a.f9313f) != null && !str.equals(this.f9313f)) {
                return false;
            }
            int i = this.f9314g;
            if (i != 0 && i == c2711a.f9314g) {
                String str3 = this.f9313f;
                if (str3 != null) {
                    if (!str3.equals(c2711a.f9313f)) {
                        return false;
                    }
                } else if (c2711a.f9313f != null) {
                    return false;
                }
            }
            if (this.f9310c != c2711a.f9310c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f9308a.hashCode();
            return (((((hashCode * 31) + this.f9310c) * 31) + (this.f9311d ? 1231 : 1237)) * 31) + this.f9312e;
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("Column{name='");
            C0033h.m8882o(m8752j, this.f9308a, '\'', ", type='");
            C0033h.m8882o(m8752j, this.f9309b, '\'', ", affinity='");
            m8752j.append(this.f9310c);
            m8752j.append('\'');
            m8752j.append(", notNull=");
            m8752j.append(this.f9311d);
            m8752j.append(", primaryKeyPosition=");
            m8752j.append(this.f9312e);
            m8752j.append(", defaultValue='");
            m8752j.append(this.f9313f);
            m8752j.append('\'');
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    /* renamed from: f1.c$b */
    /* loaded from: classes-dex2jar.jar:f1/c$b.class */
    public static class C2712b {

        /* renamed from: a */
        public final String f9315a;

        /* renamed from: b */
        public final String f9316b;

        /* renamed from: c */
        public final String f9317c;

        /* renamed from: d */
        public final List<String> f9318d;

        /* renamed from: e */
        public final List<String> f9319e;

        public C2712b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f9315a = str;
            this.f9316b = str2;
            this.f9317c = str3;
            this.f9318d = Collections.unmodifiableList(list);
            this.f9319e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C2712b.class != obj.getClass()) {
                return false;
            }
            C2712b c2712b = (C2712b) obj;
            if (!this.f9315a.equals(c2712b.f9315a) || !this.f9316b.equals(c2712b.f9316b) || !this.f9317c.equals(c2712b.f9317c) || !this.f9318d.equals(c2712b.f9318d)) {
                return false;
            }
            return this.f9319e.equals(c2712b.f9319e);
        }

        public int hashCode() {
            int m4793d = C1676a.m4793d(this.f9317c, C1676a.m4793d(this.f9316b, this.f9315a.hashCode() * 31, 31), 31);
            return this.f9319e.hashCode() + ((this.f9318d.hashCode() + m4793d) * 31);
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("ForeignKey{referenceTable='");
            C0033h.m8882o(m8752j, this.f9315a, '\'', ", onDelete='");
            C0033h.m8882o(m8752j, this.f9316b, '\'', ", onUpdate='");
            C0033h.m8882o(m8752j, this.f9317c, '\'', ", columnNames=");
            m8752j.append(this.f9318d);
            m8752j.append(", referenceColumnNames=");
            m8752j.append(this.f9319e);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    /* renamed from: f1.c$c */
    /* loaded from: classes-dex2jar.jar:f1/c$c.class */
    public static class C2713c implements Comparable<C2713c> {

        /* renamed from: a */
        public final int f9320a;

        /* renamed from: b */
        public final int f9321b;

        /* renamed from: c */
        public final String f9322c;

        /* renamed from: d */
        public final String f9323d;

        public C2713c(int i, int i2, String str, String str2) {
            this.f9320a = i;
            this.f9321b = i2;
            this.f9322c = str;
            this.f9323d = str2;
        }

        @Override // java.lang.Comparable
        public int compareTo(C2713c c2713c) {
            C2713c c2713c2 = c2713c;
            int i = this.f9320a - c2713c2.f9320a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f9321b - c2713c2.f9321b;
            }
            return i2;
        }
    }

    /* renamed from: f1.c$d */
    /* loaded from: classes-dex2jar.jar:f1/c$d.class */
    public static class C2714d {

        /* renamed from: a */
        public final String f9324a;

        /* renamed from: b */
        public final boolean f9325b;

        /* renamed from: c */
        public final List<String> f9326c;

        public C2714d(String str, boolean z, List<String> list) {
            this.f9324a = str;
            this.f9325b = z;
            this.f9326c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C2714d.class != obj.getClass()) {
                return false;
            }
            C2714d c2714d = (C2714d) obj;
            if (this.f9325b != c2714d.f9325b || !this.f9326c.equals(c2714d.f9326c)) {
                return false;
            }
            return this.f9324a.startsWith("index_") ? c2714d.f9324a.startsWith("index_") : this.f9324a.equals(c2714d.f9324a);
        }

        public int hashCode() {
            return this.f9326c.hashCode() + ((((this.f9324a.startsWith("index_") ? -1184239155 : this.f9324a.hashCode()) * 31) + (this.f9325b ? 1 : 0)) * 31);
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("Index{name='");
            C0033h.m8882o(m8752j, this.f9324a, '\'', ", unique=");
            m8752j.append(this.f9325b);
            m8752j.append(", columns=");
            m8752j.append(this.f9326c);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    public C2710c(String str, Map<String, C2711a> map, Set<C2712b> set, Set<C2714d> set2) {
        this.f9304a = str;
        this.f9305b = Collections.unmodifiableMap(map);
        this.f9306c = Collections.unmodifiableSet(set);
        this.f9307d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static C2710c m3215a(AbstractC2795a abstractC2795a, String str) {
        HashSet hashSet;
        C2993a c2993a = (C2993a) abstractC2795a;
        Cursor m2774l = c2993a.m2774l(C0082b.m8755g("PRAGMA table_info(`", str, "`)"));
        HashMap hashMap = new HashMap();
        try {
            if (m2774l.getColumnCount() > 0) {
                int columnIndex = m2774l.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
                int columnIndex2 = m2774l.getColumnIndex("type");
                int columnIndex3 = m2774l.getColumnIndex("notnull");
                int columnIndex4 = m2774l.getColumnIndex("pk");
                int columnIndex5 = m2774l.getColumnIndex("dflt_value");
                while (m2774l.moveToNext()) {
                    String string = m2774l.getString(columnIndex);
                    hashMap.put(string, new C2711a(string, m2774l.getString(columnIndex2), m2774l.getInt(columnIndex3) != 0, m2774l.getInt(columnIndex4), m2774l.getString(columnIndex5), 2));
                }
            }
            m2774l.close();
            HashSet hashSet2 = new HashSet();
            Cursor m2774l2 = c2993a.m2774l("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = m2774l2.getColumnIndex(FacebookAdapter.KEY_ID);
                int columnIndex7 = m2774l2.getColumnIndex("seq");
                int columnIndex8 = m2774l2.getColumnIndex("table");
                int columnIndex9 = m2774l2.getColumnIndex("on_delete");
                int columnIndex10 = m2774l2.getColumnIndex("on_update");
                List<C2713c> m3214b = m3214b(m2774l2);
                int count = m2774l2.getCount();
                for (int i = 0; i < count; i++) {
                    m2774l2.moveToPosition(i);
                    if (m2774l2.getInt(columnIndex7) == 0) {
                        int i2 = m2774l2.getInt(columnIndex6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = ((ArrayList) m3214b).iterator();
                        while (it2.hasNext()) {
                            C2713c c2713c = (C2713c) it2.next();
                            if (c2713c.f9320a == i2) {
                                arrayList.add(c2713c.f9322c);
                                arrayList2.add(c2713c.f9323d);
                            }
                        }
                        hashSet2.add(new C2712b(m2774l2.getString(columnIndex8), m2774l2.getString(columnIndex9), m2774l2.getString(columnIndex10), arrayList, arrayList2));
                    }
                }
                m2774l2.close();
                Cursor m2774l3 = c2993a.m2774l("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = m2774l3.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
                    int columnIndex12 = m2774l3.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.ORIGIN);
                    int columnIndex13 = m2774l3.getColumnIndex("unique");
                    if (columnIndex11 != -1 && columnIndex12 != -1 && columnIndex13 != -1) {
                        hashSet = new HashSet();
                        while (m2774l3.moveToNext()) {
                            if ("c".equals(m2774l3.getString(columnIndex12))) {
                                C2714d m3213c = m3213c(c2993a, m2774l3.getString(columnIndex11), m2774l3.getInt(columnIndex13) == 1);
                                if (m3213c != null) {
                                    hashSet.add(m3213c);
                                }
                            }
                        }
                        m2774l3.close();
                        return new C2710c(str, hashMap, hashSet2, hashSet);
                    }
                    m2774l3.close();
                    hashSet = null;
                    return new C2710c(str, hashMap, hashSet2, hashSet);
                } catch (Throwable th) {
                    m2774l3.close();
                    throw th;
                }
            } catch (Throwable th2) {
                m2774l2.close();
                throw th2;
            }
        } catch (Throwable th3) {
            m2774l.close();
            throw th3;
        }
    }

    /* renamed from: b */
    public static List<C2713c> m3214b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(FacebookAdapter.KEY_ID);
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C2713c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: c */
    public static C2714d m3213c(AbstractC2795a abstractC2795a, String str, boolean z) {
        Cursor m2774l = ((C2993a) abstractC2795a).m2774l(C0082b.m8755g("PRAGMA index_xinfo(`", str, "`)"));
        try {
            int columnIndex = m2774l.getColumnIndex("seqno");
            int columnIndex2 = m2774l.getColumnIndex("cid");
            int columnIndex3 = m2774l.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                m2774l.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (m2774l.moveToNext()) {
                if (m2774l.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(m2774l.getInt(columnIndex)), m2774l.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            return new C2714d(str, z, arrayList);
        } finally {
            m2774l.close();
        }
    }

    public boolean equals(Object obj) {
        Set<C2714d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2710c.class != obj.getClass()) {
            return false;
        }
        C2710c c2710c = (C2710c) obj;
        String str = this.f9304a;
        if (str != null) {
            if (!str.equals(c2710c.f9304a)) {
                return false;
            }
        } else if (c2710c.f9304a != null) {
            return false;
        }
        Map<String, C2711a> map = this.f9305b;
        if (map != null) {
            if (!map.equals(c2710c.f9305b)) {
                return false;
            }
        } else if (c2710c.f9305b != null) {
            return false;
        }
        Set<C2712b> set2 = this.f9306c;
        if (set2 != null) {
            if (!set2.equals(c2710c.f9306c)) {
                return false;
            }
        } else if (c2710c.f9306c != null) {
            return false;
        }
        Set<C2714d> set3 = this.f9307d;
        if (set3 != null && (set = c2710c.f9307d) != null) {
            return set3.equals(set);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f9304a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, C2711a> map = this.f9305b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<C2712b> set = this.f9306c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("TableInfo{name='");
        C0033h.m8882o(m8752j, this.f9304a, '\'', ", columns=");
        m8752j.append(this.f9305b);
        m8752j.append(", foreignKeys=");
        m8752j.append(this.f9306c);
        m8752j.append(", indices=");
        m8752j.append(this.f9307d);
        m8752j.append('}');
        return m8752j.toString();
    }
}
