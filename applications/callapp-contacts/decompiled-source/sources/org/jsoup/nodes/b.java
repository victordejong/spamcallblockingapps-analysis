package org.jsoup.nodes;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import org.jsoup.SerializationException;
import org.jsoup.a.c;
import org.jsoup.c.f;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/b.class */
public final class b implements Cloneable, Iterable<a> {

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f39259d = new String[0];

    /* renamed from: a  reason: collision with root package name */
    public int f39260a = 0;

    /* renamed from: b  reason: collision with root package name */
    public String[] f39261b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f39262c;

    public b() {
        String[] strArr = f39259d;
        this.f39261b = strArr;
        this.f39262c = strArr;
    }

    private void a(int i) {
        c.a(i >= this.f39260a);
        String[] strArr = this.f39261b;
        int length = strArr.length;
        if (length < i) {
            int i2 = 2;
            if (length >= 2) {
                i2 = this.f39260a * 2;
            }
            if (i <= i2) {
                i = i2;
            }
            this.f39261b = a(strArr, i);
            this.f39262c = a(this.f39262c, i);
        }
    }

    private static String[] a(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i));
        return strArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        c.b(i >= this.f39260a);
        int i2 = (this.f39260a - i) - 1;
        if (i2 > 0) {
            String[] strArr = this.f39261b;
            int i3 = i + 1;
            System.arraycopy(strArr, i3, strArr, i, i2);
            String[] strArr2 = this.f39262c;
            System.arraycopy(strArr2, i3, strArr2, i, i2);
        }
        int i4 = this.f39260a - 1;
        this.f39260a = i4;
        this.f39261b[i4] = null;
        this.f39262c[i4] = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    private String e() {
        StringBuilder a2 = org.jsoup.b.c.a();
        try {
            a(a2, new f("").f39265a);
            return org.jsoup.b.c.a(a2);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h(String str) {
        return "/".concat(String.valueOf(str));
    }

    public static boolean i(String str) {
        return str != null && str.length() > 1 && str.charAt(0) == '/';
    }

    public final int a() {
        int i = 0;
        for (int i2 = 0; i2 < this.f39260a; i2++) {
            i = i;
            if (!i(this.f39261b[i2])) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(String str) {
        c.a((Object) str);
        for (int i = 0; i < this.f39260a; i++) {
            if (str.equals(this.f39261b[i])) {
                return i;
            }
        }
        return -1;
    }

    public final int a(f fVar) {
        int i;
        int i2 = 0;
        if (b()) {
            return 0;
        }
        boolean z = fVar.f39227d;
        int i3 = 0;
        while (i2 < this.f39261b.length) {
            int i4 = i2 + 1;
            int i5 = i4;
            while (true) {
                String[] strArr = this.f39261b;
                if (i5 < strArr.length && strArr[i5] != null) {
                    if (!z || !strArr[i2].equals(strArr[i5])) {
                        i3 = i3;
                        i = i5;
                        if (!z) {
                            String[] strArr2 = this.f39261b;
                            i3 = i3;
                            i = i5;
                            if (!strArr2[i2].equalsIgnoreCase(strArr2[i5])) {
                            }
                        }
                        i5 = i + 1;
                    }
                    i3++;
                    b(i5);
                    i = i5 - 1;
                    i5 = i + 1;
                }
            }
            i2 = i4;
        }
        return i3;
    }

    public final b a(String str, String str2) {
        a(this.f39260a + 1);
        String[] strArr = this.f39261b;
        int i = this.f39260a;
        strArr[i] = str;
        this.f39262c[i] = str2;
        this.f39260a = i + 1;
        return this;
    }

    public final b a(a aVar) {
        c.a(aVar);
        b(aVar.f39256a, c(aVar.f39257b));
        aVar.f39258c = this;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Appendable appendable, f.a aVar) throws IOException {
        int i = this.f39260a;
        for (int i2 = 0; i2 < i; i2++) {
            if (!i(this.f39261b[i2])) {
                String str = this.f39261b[i2];
                String str2 = this.f39262c[i2];
                appendable.append(' ').append(str);
                if (!a.a(str, str2, aVar)) {
                    appendable.append("=\"");
                    String str3 = str2;
                    if (str2 == null) {
                        str3 = "";
                    }
                    i.a(appendable, str3, aVar, true, false, false);
                    appendable.append('\"');
                }
            }
        }
    }

    public final void a(b bVar) {
        if (bVar.a() != 0) {
            a(this.f39260a + bVar.f39260a);
            Iterator<a> it2 = bVar.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(String str) {
        c.a((Object) str);
        for (int i = 0; i < this.f39260a; i++) {
            if (str.equalsIgnoreCase(this.f39261b[i])) {
                return i;
            }
        }
        return -1;
    }

    public final b b(String str, String str2) {
        c.a((Object) str);
        int a2 = a(str);
        if (a2 != -1) {
            this.f39262c[a2] = str2;
        } else {
            a(str, str2);
        }
        return this;
    }

    public final boolean b() {
        return this.f39260a == 0;
    }

    /* renamed from: c */
    public final b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.f39260a = this.f39260a;
            this.f39261b = a(this.f39261b, this.f39260a);
            this.f39262c = a(this.f39262c, this.f39260a);
            return bVar;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public final String d(String str) {
        int a2 = a(str);
        return a2 == -1 ? "" : c(this.f39262c[a2]);
    }

    public final void d() {
        for (int i = 0; i < this.f39260a; i++) {
            String[] strArr = this.f39261b;
            strArr[i] = org.jsoup.b.b.a(strArr[i]);
        }
    }

    public final String e(String str) {
        int b2 = b(str);
        return b2 == -1 ? "" : c(this.f39262c[b2]);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f39260a == bVar.f39260a && Arrays.equals(this.f39261b, bVar.f39261b)) {
            return Arrays.equals(this.f39262c, bVar.f39262c);
        }
        return false;
    }

    public final boolean f(String str) {
        return a(str) != -1;
    }

    public final boolean g(String str) {
        return b(str) != -1;
    }

    public final int hashCode() {
        return (((this.f39260a * 31) + Arrays.hashCode(this.f39261b)) * 31) + Arrays.hashCode(this.f39262c);
    }

    @Override // java.lang.Iterable
    public final Iterator<a> iterator() {
        return new Iterator<a>() { // from class: org.jsoup.nodes.b.1

            /* renamed from: a  reason: collision with root package name */
            int f39263a = 0;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                while (this.f39263a < b.this.f39260a && b.i(b.this.f39261b[this.f39263a])) {
                    this.f39263a++;
                }
                return this.f39263a < b.this.f39260a;
            }

            @Override // java.util.Iterator
            public final /* synthetic */ a next() {
                a aVar = new a(b.this.f39261b[this.f39263a], b.this.f39262c[this.f39263a], b.this);
                this.f39263a++;
                return aVar;
            }

            @Override // java.util.Iterator
            public final void remove() {
                b bVar = b.this;
                int i = this.f39263a - 1;
                this.f39263a = i;
                bVar.b(i);
            }
        };
    }

    public final String toString() {
        return e();
    }
}
