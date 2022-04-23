package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.C2926f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
/* renamed from: com.squareup.okhttp.k */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/k.class */
public final class C2943k {

    /* renamed from: a */
    private final String[] f12408a;

    /* renamed from: com.squareup.okhttp.k$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/k$b.class */
    public static final class C2945b {

        /* renamed from: a */
        private final List<String> f12409a = new ArrayList(20);

        /* renamed from: f */
        private void m890f(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            } else if (!str.isEmpty()) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (charAt <= 31 || charAt >= 127) {
                        throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                    }
                }
                if (str2 != null) {
                    int length2 = str2.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        char charAt2 = str2.charAt(i2);
                        if (charAt2 <= 31 || charAt2 >= 127) {
                            throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str2));
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("value == null");
            } else {
                throw new IllegalArgumentException("name is empty");
            }
        }

        /* renamed from: b */
        public C2945b m894b(String str, String str2) {
            m890f(str, str2);
            m892d(str, str2);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public C2945b m893c(String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                m892d(str.substring(0, indexOf), str.substring(indexOf + 1));
                return this;
            } else if (str.startsWith(":")) {
                m892d("", str.substring(1));
                return this;
            } else {
                m892d("", str);
                return this;
            }
        }

        /* renamed from: d */
        C2945b m892d(String str, String str2) {
            this.f12409a.add(str);
            this.f12409a.add(str2.trim());
            return this;
        }

        /* renamed from: e */
        public C2943k m891e() {
            return new C2943k(this);
        }

        /* renamed from: g */
        public String m889g(String str) {
            for (int size = this.f12409a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f12409a.get(size))) {
                    return this.f12409a.get(size + 1);
                }
            }
            return null;
        }

        /* renamed from: h */
        public C2945b m888h(String str) {
            int i = 0;
            while (i < this.f12409a.size()) {
                int i2 = i;
                if (str.equalsIgnoreCase(this.f12409a.get(i))) {
                    this.f12409a.remove(i);
                    this.f12409a.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        /* renamed from: i */
        public C2945b m887i(String str, String str2) {
            m890f(str, str2);
            m888h(str);
            m892d(str, str2);
            return this;
        }
    }

    private C2943k(C2945b bVar) {
        this.f12408a = (String[]) bVar.f12409a.toArray(new String[bVar.f12409a.size()]);
    }

    /* renamed from: b */
    private static String m901b(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* renamed from: a */
    public String m902a(String str) {
        return m901b(this.f12408a, str);
    }

    /* renamed from: c */
    public Date m900c(String str) {
        String a = m902a(str);
        return a != null ? C2926f.m994c(a) : null;
    }

    /* renamed from: d */
    public String m899d(int i) {
        int i2 = i * 2;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f12408a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    /* renamed from: e */
    public C2945b m898e() {
        C2945b bVar = new C2945b();
        Collections.addAll(bVar.f12409a, this.f12408a);
        return bVar;
    }

    /* renamed from: f */
    public int m897f() {
        return this.f12408a.length / 2;
    }

    /* renamed from: g */
    public String m896g(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f12408a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int f = m897f();
        for (int i = 0; i < f; i++) {
            sb.append(m899d(i));
            sb.append(": ");
            sb.append(m896g(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
