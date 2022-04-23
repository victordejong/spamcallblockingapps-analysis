package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final String[] f8131a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/r$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<String> f8132a = new ArrayList(20);

        private void d(String str, String str2) {
            Objects.requireNonNull(str, "name == null");
            if (!str.isEmpty()) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt <= ' ' || charAt >= 127) {
                        throw new IllegalArgumentException(c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                    }
                }
                if (str2 != null) {
                    int length2 = str2.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        char charAt2 = str2.charAt(i2);
                        if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                            throw new IllegalArgumentException(c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                        }
                    }
                    return;
                }
                throw new NullPointerException("value for name " + str + " == null");
            }
            throw new IllegalArgumentException("name is empty");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a(String str) {
            int indexOf = str.indexOf(":", 1);
            return indexOf != -1 ? b(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? b("", str.substring(1)) : b("", str);
        }

        public final a a(String str, String str2) {
            d(str, str2);
            return b(str, str2);
        }

        public final r a() {
            return new r(this);
        }

        public final a b(String str) {
            int i = 0;
            while (i < this.f8132a.size()) {
                int i2 = i;
                if (str.equalsIgnoreCase(this.f8132a.get(i))) {
                    this.f8132a.remove(i);
                    this.f8132a.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a b(String str, String str2) {
            this.f8132a.add(str);
            this.f8132a.add(str2.trim());
            return this;
        }

        public final a c(String str, String str2) {
            d(str, str2);
            b(str);
            b(str, str2);
            return this;
        }
    }

    r(a aVar) {
        this.f8131a = (String[]) aVar.f8132a.toArray(new String[aVar.f8132a.size()]);
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public final int a() {
        return this.f8131a.length / 2;
    }

    public final String a(int i) {
        return this.f8131a[i * 2];
    }

    public final String a(String str) {
        return a(this.f8131a, str);
    }

    public final String b(int i) {
        return this.f8131a[(i * 2) + 1];
    }

    public final List<String> b(String str) {
        int a2 = a();
        ArrayList arrayList = null;
        for (int i = 0; i < a2; i++) {
            arrayList = arrayList;
            if (str.equalsIgnoreCase(a(i))) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public final Set<String> b() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int a2 = a();
        for (int i = 0; i < a2; i++) {
            treeSet.add(a(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public final a c() {
        a aVar = new a();
        Collections.addAll(aVar.f8132a, this.f8131a);
        return aVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof r) && Arrays.equals(((r) obj).f8131a, this.f8131a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f8131a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int a2 = a();
        for (int i = 0; i < a2; i++) {
            sb.append(a(i));
            sb.append(": ");
            sb.append(b(i));
            sb.append(StringUtils.LF);
        }
        return sb.toString();
    }
}
