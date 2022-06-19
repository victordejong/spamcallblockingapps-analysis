package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.a.b.r */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/r.class */
public final class C4132r {

    /* renamed from: a */
    private final String[] f15112a;

    /* renamed from: com.bytedance.sdk.a.b.r$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/r$a.class */
    public static final class C4133a {

        /* renamed from: a */
        final List<String> f15113a = new ArrayList(20);

        /* renamed from: d */
        private void m36457d(String str, String str2) {
            Objects.requireNonNull(str, "name == null");
            if (!str.isEmpty()) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt <= ' ' || charAt >= 127) {
                        throw new IllegalArgumentException(C4015c.m36903a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                    }
                }
                if (str2 == null) {
                    throw new NullPointerException("value for name " + str + " == null");
                }
                int length2 = str2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    char charAt2 = str2.charAt(i2);
                    if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                        throw new IllegalArgumentException(C4015c.m36903a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty");
        }

        /* renamed from: a */
        public final C4133a m36462a(String str) {
            int indexOf = str.indexOf(":", 1);
            return indexOf != -1 ? m36459b(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? m36459b("", str.substring(1)) : m36459b("", str);
        }

        /* renamed from: a */
        public final C4133a m36461a(String str, String str2) {
            m36457d(str, str2);
            return m36459b(str, str2);
        }

        /* renamed from: a */
        public final C4132r m36463a() {
            return new C4132r(this);
        }

        /* renamed from: b */
        public final C4133a m36460b(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f15113a.size()) {
                    int i3 = i2;
                    if (str.equalsIgnoreCase(this.f15113a.get(i2))) {
                        this.f15113a.remove(i2);
                        this.f15113a.remove(i2);
                        i3 = i2 - 2;
                    }
                    i = i3 + 2;
                } else {
                    return this;
                }
            }
        }

        /* renamed from: b */
        public final C4133a m36459b(String str, String str2) {
            this.f15113a.add(str);
            this.f15113a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public final C4133a m36458c(String str, String str2) {
            m36457d(str, str2);
            m36460b(str);
            m36459b(str, str2);
            return this;
        }
    }

    C4132r(C4133a c4133a) {
        this.f15112a = (String[]) c4133a.f15113a.toArray(new String[c4133a.f15113a.size()]);
    }

    /* renamed from: a */
    private static String m36468a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* renamed from: a */
    public final int m36471a() {
        return this.f15112a.length / 2;
    }

    /* renamed from: a */
    public final String m36470a(int i) {
        return this.f15112a[i * 2];
    }

    /* renamed from: a */
    public final String m36469a(String str) {
        return m36468a(this.f15112a, str);
    }

    /* renamed from: b */
    public final String m36466b(int i) {
        return this.f15112a[(i * 2) + 1];
    }

    /* renamed from: b */
    public final List<String> m36465b(String str) {
        int m36471a = m36471a();
        ArrayList arrayList = null;
        int i = 0;
        while (i < m36471a) {
            ArrayList arrayList2 = arrayList;
            if (str.equalsIgnoreCase(m36470a(i))) {
                arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList(2);
                }
                arrayList2.add(m36466b(i));
            }
            i++;
            arrayList = arrayList2;
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    /* renamed from: b */
    public final Set<String> m36467b() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int m36471a = m36471a();
        for (int i = 0; i < m36471a; i++) {
            treeSet.add(m36470a(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    /* renamed from: c */
    public final C4133a m36464c() {
        C4133a c4133a = new C4133a();
        Collections.addAll(c4133a.f15113a, this.f15112a);
        return c4133a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C4132r) && Arrays.equals(((C4132r) obj).f15112a, this.f15112a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f15112a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int m36471a = m36471a();
        for (int i = 0; i < m36471a; i++) {
            sb.append(m36470a(i));
            sb.append(": ");
            sb.append(m36466b(i));
            sb.append(StringUtils.f67179LF);
        }
        return sb.toString();
    }
}
