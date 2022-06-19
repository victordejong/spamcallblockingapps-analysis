package p1727n3.p1751c0.p1754h0;

import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c0.h0.c */
/* loaded from: classes-dex2jar.jar:n3/c0/h0/c.class */
public final class C25654c {

    /* renamed from: d */
    public static final String[] f71862d = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    /* renamed from: a */
    public final String f71863a;

    /* renamed from: b */
    public final Set<String> f71864b;

    /* renamed from: c */
    public final Set<String> f71865c;

    public C25654c(String str, Set<String> set, String str2) {
        this.f71863a = str;
        this.f71864b = set;
        this.f71865c = m3088a(str2);
    }

    public C25654c(String str, Set<String> set, Set<String> set2) {
        this.f71863a = str;
        this.f71864b = set;
        this.f71865c = set2;
    }

    /* renamed from: a */
    public static Set<String> m3088a(String str) {
        int i;
        if (str.isEmpty()) {
            return new HashSet();
        }
        String substring = str.substring(str.indexOf(40) + 1, str.lastIndexOf(41));
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        int i2 = -1;
        int i3 = 0;
        while (i3 < substring.length()) {
            char charAt = substring.charAt(i3);
            if (charAt != '\"' && charAt != '\'') {
                if (charAt == ',') {
                    i = i2;
                    if (arrayDeque.isEmpty()) {
                        arrayList.add(substring.substring(i2 + 1, i3).trim());
                        i = i3;
                    }
                } else if (charAt == '[') {
                    i = i2;
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(charAt));
                        i = i2;
                    }
                } else if (charAt == ']') {
                    i = i2;
                    if (!arrayDeque.isEmpty()) {
                        i = i2;
                        if (((Character) arrayDeque.peek()).charValue() == '[') {
                            arrayDeque.pop();
                            i = i2;
                        }
                    }
                } else if (charAt != '`') {
                    i = i2;
                }
                i3++;
                i2 = i;
            }
            if (arrayDeque.isEmpty()) {
                arrayDeque.push(Character.valueOf(charAt));
                i = i2;
            } else {
                i = i2;
                if (((Character) arrayDeque.peek()).charValue() == charAt) {
                    arrayDeque.pop();
                    i = i2;
                }
            }
            i3++;
            i2 = i;
        }
        arrayList.add(substring.substring(i2 + 1).trim());
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            for (String str3 : f71862d) {
                if (str2.startsWith(str3)) {
                    hashSet.add(str2);
                }
            }
        }
        return hashSet;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public static C25654c m3087b(AbstractC26147b abstractC26147b, String str) {
        Cursor mo2667U1 = abstractC26147b.mo2667U1("PRAGMA table_info(`" + str + "`)");
        HashSet hashSet = new HashSet();
        try {
            if (mo2667U1.getColumnCount() > 0) {
                int columnIndex = mo2667U1.getColumnIndex(AnalyticsConstants.NAME);
                while (mo2667U1.moveToNext()) {
                    hashSet.add(mo2667U1.getString(columnIndex));
                }
            }
            mo2667U1.close();
            Cursor mo2667U12 = abstractC26147b.mo2667U1("SELECT * FROM sqlite_master WHERE `name` = '" + str + "'");
            try {
                String string = mo2667U12.moveToFirst() ? mo2667U12.getString(mo2667U12.getColumnIndexOrThrow("sql")) : "";
                mo2667U12.close();
                return new C25654c(str, hashSet, m3088a(string));
            } catch (Throwable th) {
                mo2667U12.close();
                throw th;
            }
        } catch (Throwable th2) {
            mo2667U1.close();
            throw th2;
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C25654c)) {
            return false;
        }
        C25654c c25654c = (C25654c) obj;
        String str = this.f71863a;
        if (str != null) {
            if (!str.equals(c25654c.f71863a)) {
                return false;
            }
        } else if (c25654c.f71863a != null) {
            return false;
        }
        Set<String> set = this.f71864b;
        if (set != null) {
            if (!set.equals(c25654c.f71864b)) {
                return false;
            }
        } else if (c25654c.f71864b != null) {
            return false;
        }
        Set<String> set2 = this.f71865c;
        Set<String> set3 = c25654c.f71865c;
        if (set2 != null) {
            z = set2.equals(set3);
        } else if (set3 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f71863a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Set<String> set = this.f71864b;
        int hashCode2 = set != null ? set.hashCode() : 0;
        Set<String> set2 = this.f71865c;
        if (set2 != null) {
            i = set2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FtsTableInfo{name='");
        C22128a.m8678P0(m8728C, this.f71863a, '\'', ", columns=");
        m8728C.append(this.f71864b);
        m8728C.append(", options=");
        m8728C.append(this.f71865c);
        m8728C.append('}');
        return m8728C.toString();
    }
}
