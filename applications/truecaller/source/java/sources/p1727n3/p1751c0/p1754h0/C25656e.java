package p1727n3.p1751c0.p1754h0;

import android.database.Cursor;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
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
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c0.h0.e */
/* loaded from: classes-dex2jar.jar:n3/c0/h0/e.class */
public final class C25656e {

    /* renamed from: a */
    public final String f71866a;

    /* renamed from: b */
    public final Map<String, C25657a> f71867b;

    /* renamed from: c */
    public final Set<C25658b> f71868c;

    /* renamed from: d */
    public final Set<C25660d> f71869d;

    /* renamed from: n3.c0.h0.e$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/h0/e$a.class */
    public static final class C25657a {

        /* renamed from: a */
        public final String f71870a;

        /* renamed from: b */
        public final String f71871b;

        /* renamed from: c */
        public final int f71872c;

        /* renamed from: d */
        public final boolean f71873d;

        /* renamed from: e */
        public final int f71874e;

        /* renamed from: f */
        public final String f71875f;

        /* renamed from: g */
        public final int f71876g;

        public C25657a(String str, String str2, boolean z, int i, String str3, int i2) {
            this.f71870a = str;
            this.f71871b = str2;
            this.f71873d = z;
            this.f71874e = i;
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
            this.f71872c = i3;
            this.f71875f = str3;
            this.f71876g = i2;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C25657a)) {
                return false;
            }
            C25657a c25657a = (C25657a) obj;
            if (this.f71874e != c25657a.f71874e || !this.f71870a.equals(c25657a.f71870a) || this.f71873d != c25657a.f71873d) {
                return false;
            }
            if (this.f71876g == 1 && c25657a.f71876g == 2 && (str2 = this.f71875f) != null && !str2.equals(c25657a.f71875f)) {
                return false;
            }
            if (this.f71876g == 2 && c25657a.f71876g == 1 && (str = c25657a.f71875f) != null && !str.equals(this.f71875f)) {
                return false;
            }
            int i = this.f71876g;
            if (i != 0 && i == c25657a.f71876g) {
                String str3 = this.f71875f;
                if (str3 != null) {
                    if (!str3.equals(c25657a.f71875f)) {
                        return false;
                    }
                } else if (c25657a.f71875f != null) {
                    return false;
                }
            }
            if (this.f71872c != c25657a.f71872c) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.f71870a.hashCode();
            return (((((hashCode * 31) + this.f71872c) * 31) + (this.f71873d ? 1231 : 1237)) * 31) + this.f71874e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Column{name='");
            C22128a.m8678P0(m8728C, this.f71870a, '\'', ", type='");
            C22128a.m8678P0(m8728C, this.f71871b, '\'', ", affinity='");
            m8728C.append(this.f71872c);
            m8728C.append('\'');
            m8728C.append(", notNull=");
            m8728C.append(this.f71873d);
            m8728C.append(", primaryKeyPosition=");
            m8728C.append(this.f71874e);
            m8728C.append(", defaultValue='");
            return C22128a.m8626f(m8728C, this.f71875f, '\'', '}');
        }
    }

    /* renamed from: n3.c0.h0.e$b */
    /* loaded from: classes-dex2jar.jar:n3/c0/h0/e$b.class */
    public static final class C25658b {

        /* renamed from: a */
        public final String f71877a;

        /* renamed from: b */
        public final String f71878b;

        /* renamed from: c */
        public final String f71879c;

        /* renamed from: d */
        public final List<String> f71880d;

        /* renamed from: e */
        public final List<String> f71881e;

        public C25658b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f71877a = str;
            this.f71878b = str2;
            this.f71879c = str3;
            this.f71880d = Collections.unmodifiableList(list);
            this.f71881e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C25658b)) {
                return false;
            }
            C25658b c25658b = (C25658b) obj;
            if (!this.f71877a.equals(c25658b.f71877a) || !this.f71878b.equals(c25658b.f71878b) || !this.f71879c.equals(c25658b.f71879c) || !this.f71880d.equals(c25658b.f71880d)) {
                return false;
            }
            return this.f71881e.equals(c25658b.f71881e);
        }

        public int hashCode() {
            int m8579q2 = C22128a.m8579q2(this.f71879c, C22128a.m8579q2(this.f71878b, this.f71877a.hashCode() * 31, 31), 31);
            return this.f71881e.hashCode() + ((this.f71880d.hashCode() + m8579q2) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ForeignKey{referenceTable='");
            C22128a.m8678P0(m8728C, this.f71877a, '\'', ", onDelete='");
            C22128a.m8678P0(m8728C, this.f71878b, '\'', ", onUpdate='");
            C22128a.m8678P0(m8728C, this.f71879c, '\'', ", columnNames=");
            m8728C.append(this.f71880d);
            m8728C.append(", referenceColumnNames=");
            m8728C.append(this.f71881e);
            m8728C.append('}');
            return m8728C.toString();
        }
    }

    /* renamed from: n3.c0.h0.e$c */
    /* loaded from: classes-dex2jar.jar:n3/c0/h0/e$c.class */
    public static class C25659c implements Comparable<C25659c> {

        /* renamed from: a */
        public final int f71882a;

        /* renamed from: b */
        public final int f71883b;

        /* renamed from: c */
        public final String f71884c;

        /* renamed from: d */
        public final String f71885d;

        public C25659c(int i, int i2, String str, String str2) {
            this.f71882a = i;
            this.f71883b = i2;
            this.f71884c = str;
            this.f71885d = str2;
        }

        @Override // java.lang.Comparable
        public int compareTo(C25659c c25659c) {
            C25659c c25659c2 = c25659c;
            int i = this.f71882a - c25659c2.f71882a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f71883b - c25659c2.f71883b;
            }
            return i2;
        }
    }

    /* renamed from: n3.c0.h0.e$d */
    /* loaded from: classes-dex2jar.jar:n3/c0/h0/e$d.class */
    public static final class C25660d {

        /* renamed from: a */
        public final String f71886a;

        /* renamed from: b */
        public final boolean f71887b;

        /* renamed from: c */
        public final List<String> f71888c;

        public C25660d(String str, boolean z, List<String> list) {
            this.f71886a = str;
            this.f71887b = z;
            this.f71888c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C25660d)) {
                return false;
            }
            C25660d c25660d = (C25660d) obj;
            if (this.f71887b != c25660d.f71887b || !this.f71888c.equals(c25660d.f71888c)) {
                return false;
            }
            return this.f71886a.startsWith("index_") ? c25660d.f71886a.startsWith("index_") : this.f71886a.equals(c25660d.f71886a);
        }

        public int hashCode() {
            return this.f71888c.hashCode() + ((((this.f71886a.startsWith("index_") ? -1184239155 : this.f71886a.hashCode()) * 31) + (this.f71887b ? 1 : 0)) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Index{name='");
            C22128a.m8678P0(m8728C, this.f71886a, '\'', ", unique=");
            m8728C.append(this.f71887b);
            m8728C.append(", columns=");
            m8728C.append(this.f71888c);
            m8728C.append('}');
            return m8728C.toString();
        }
    }

    public C25656e(String str, Map<String, C25657a> map, Set<C25658b> set, Set<C25660d> set2) {
        this.f71866a = str;
        this.f71867b = Collections.unmodifiableMap(map);
        this.f71868c = Collections.unmodifiableSet(set);
        this.f71869d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static C25656e m3085a(AbstractC26147b abstractC26147b, String str) {
        HashSet hashSet;
        Cursor mo2667U1 = abstractC26147b.mo2667U1("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (mo2667U1.getColumnCount() > 0) {
                int columnIndex = mo2667U1.getColumnIndex(AnalyticsConstants.NAME);
                int columnIndex2 = mo2667U1.getColumnIndex("type");
                int columnIndex3 = mo2667U1.getColumnIndex("notnull");
                int columnIndex4 = mo2667U1.getColumnIndex("pk");
                int columnIndex5 = mo2667U1.getColumnIndex("dflt_value");
                while (mo2667U1.moveToNext()) {
                    String string = mo2667U1.getString(columnIndex);
                    hashMap.put(string, new C25657a(string, mo2667U1.getString(columnIndex2), mo2667U1.getInt(columnIndex3) != 0, mo2667U1.getInt(columnIndex4), mo2667U1.getString(columnIndex5), 2));
                }
            }
            mo2667U1.close();
            HashSet hashSet2 = new HashSet();
            Cursor mo2667U12 = abstractC26147b.mo2667U1("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = mo2667U12.getColumnIndex("id");
                int columnIndex7 = mo2667U12.getColumnIndex("seq");
                int columnIndex8 = mo2667U12.getColumnIndex("table");
                int columnIndex9 = mo2667U12.getColumnIndex("on_delete");
                int columnIndex10 = mo2667U12.getColumnIndex("on_update");
                List<C25659c> m3084b = m3084b(mo2667U12);
                int count = mo2667U12.getCount();
                for (int i = 0; i < count; i++) {
                    mo2667U12.moveToPosition(i);
                    if (mo2667U12.getInt(columnIndex7) == 0) {
                        int i2 = mo2667U12.getInt(columnIndex6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = ((ArrayList) m3084b).iterator();
                        while (it.hasNext()) {
                            C25659c c25659c = (C25659c) it.next();
                            if (c25659c.f71882a == i2) {
                                arrayList.add(c25659c.f71884c);
                                arrayList2.add(c25659c.f71885d);
                            }
                        }
                        hashSet2.add(new C25658b(mo2667U12.getString(columnIndex8), mo2667U12.getString(columnIndex9), mo2667U12.getString(columnIndex10), arrayList, arrayList2));
                    }
                }
                mo2667U12.close();
                Cursor mo2667U13 = abstractC26147b.mo2667U1("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = mo2667U13.getColumnIndex(AnalyticsConstants.NAME);
                    int columnIndex12 = mo2667U13.getColumnIndex("origin");
                    int columnIndex13 = mo2667U13.getColumnIndex("unique");
                    if (columnIndex11 != -1 && columnIndex12 != -1 && columnIndex13 != -1) {
                        HashSet hashSet3 = new HashSet();
                        while (mo2667U13.moveToNext()) {
                            if (AbstractC2405c.f7629a.equals(mo2667U13.getString(columnIndex12))) {
                                C25660d m3083c = m3083c(abstractC26147b, mo2667U13.getString(columnIndex11), mo2667U13.getInt(columnIndex13) == 1);
                                if (m3083c != null) {
                                    hashSet3.add(m3083c);
                                }
                            }
                        }
                        mo2667U13.close();
                        hashSet = hashSet3;
                        return new C25656e(str, hashMap, hashSet2, hashSet);
                    }
                    mo2667U13.close();
                    hashSet = null;
                    return new C25656e(str, hashMap, hashSet2, hashSet);
                } catch (Throwable th) {
                    mo2667U13.close();
                    throw th;
                }
            } catch (Throwable th2) {
                mo2667U12.close();
                throw th2;
            }
        } catch (Throwable th3) {
            mo2667U1.close();
            throw th3;
        }
    }

    /* renamed from: b */
    public static List<C25659c> m3084b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex(RemoteMessageConst.FROM);
        int columnIndex4 = cursor.getColumnIndex(RemoteMessageConst.f7718TO);
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new C25659c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: c */
    public static C25660d m3083c(AbstractC26147b abstractC26147b, String str, boolean z) {
        Cursor mo2667U1 = abstractC26147b.mo2667U1("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = mo2667U1.getColumnIndex("seqno");
            int columnIndex2 = mo2667U1.getColumnIndex("cid");
            int columnIndex3 = mo2667U1.getColumnIndex(AnalyticsConstants.NAME);
            if (columnIndex == -1 || columnIndex2 == -1 || columnIndex3 == -1) {
                mo2667U1.close();
                return null;
            }
            TreeMap treeMap = new TreeMap();
            while (mo2667U1.moveToNext()) {
                if (mo2667U1.getInt(columnIndex2) >= 0) {
                    treeMap.put(Integer.valueOf(mo2667U1.getInt(columnIndex)), mo2667U1.getString(columnIndex3));
                }
            }
            ArrayList arrayList = new ArrayList(treeMap.size());
            arrayList.addAll(treeMap.values());
            return new C25660d(str, z, arrayList);
        } finally {
            mo2667U1.close();
        }
    }

    public boolean equals(Object obj) {
        Set<C25660d> set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C25656e)) {
            return false;
        }
        C25656e c25656e = (C25656e) obj;
        String str = this.f71866a;
        if (str != null) {
            if (!str.equals(c25656e.f71866a)) {
                return false;
            }
        } else if (c25656e.f71866a != null) {
            return false;
        }
        Map<String, C25657a> map = this.f71867b;
        if (map != null) {
            if (!map.equals(c25656e.f71867b)) {
                return false;
            }
        } else if (c25656e.f71867b != null) {
            return false;
        }
        Set<C25658b> set2 = this.f71868c;
        if (set2 != null) {
            if (!set2.equals(c25656e.f71868c)) {
                return false;
            }
        } else if (c25656e.f71868c != null) {
            return false;
        }
        Set<C25660d> set3 = this.f71869d;
        if (set3 != null && (set = c25656e.f71869d) != null) {
            return set3.equals(set);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f71866a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, C25657a> map = this.f71867b;
        int hashCode2 = map != null ? map.hashCode() : 0;
        Set<C25658b> set = this.f71868c;
        if (set != null) {
            i = set.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TableInfo{name='");
        C22128a.m8678P0(m8728C, this.f71866a, '\'', ", columns=");
        m8728C.append(this.f71867b);
        m8728C.append(", foreignKeys=");
        m8728C.append(this.f71868c);
        m8728C.append(", indices=");
        m8728C.append(this.f71869d);
        m8728C.append('}');
        return m8728C.toString();
    }
}
