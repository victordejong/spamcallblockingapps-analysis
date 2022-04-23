package com.b.a;

import com.b.a.a.a.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final String[] f3336a;

    /* loaded from: classes-dex2jar.jar:com/b/a/p$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<String> f3337a = new ArrayList(20);

        public final a a(String str) {
            int i = 0;
            while (i < this.f3337a.size()) {
                int i2 = i;
                if (str.equalsIgnoreCase(this.f3337a.get(i))) {
                    this.f3337a.remove(i);
                    this.f3337a.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        public final a a(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            } else if (str2 == null) {
                throw new IllegalArgumentException("value == null");
            } else if (str.length() != 0 && str.indexOf(0) == -1 && str2.indexOf(0) == -1) {
                return b(str, str2);
            } else {
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }

        public final p a() {
            return new p(this, (byte) 0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a b(String str, String str2) {
            this.f3337a.add(str);
            this.f3337a.add(str2.trim());
            return this;
        }

        public final a c(String str, String str2) {
            a(str);
            a(str, str2);
            return this;
        }
    }

    private p(a aVar) {
        this.f3336a = (String[]) aVar.f3337a.toArray(new String[aVar.f3337a.size()]);
    }

    /* synthetic */ p(a aVar, byte b2) {
        this(aVar);
    }

    public final a a() {
        a aVar = new a();
        Collections.addAll(aVar.f3337a, this.f3336a);
        return aVar;
    }

    public final String a(int i) {
        int i2 = i * 2;
        return (i2 < 0 || i2 >= this.f3336a.length) ? null : this.f3336a[i2];
    }

    public final String a(String str) {
        String str2;
        String[] strArr = this.f3336a;
        int length = strArr.length - 2;
        while (true) {
            if (length < 0) {
                str2 = null;
                break;
            } else if (str.equalsIgnoreCase(strArr[length])) {
                str2 = strArr[length + 1];
                break;
            } else {
                length -= 2;
            }
        }
        return str2;
    }

    public final String b(int i) {
        int i2 = (i * 2) + 1;
        return (i2 < 0 || i2 >= this.f3336a.length) ? null : this.f3336a[i2];
    }

    public final Date b(String str) {
        String a2 = a(str);
        return a2 != null ? f.a(a2) : null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.f3336a.length / 2;
        for (int i = 0; i < length; i++) {
            sb.append(a(i)).append(": ").append(b(i)).append("\n");
        }
        return sb.toString();
    }
}
