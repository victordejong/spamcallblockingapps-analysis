package kotlin;

import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.d */
/* loaded from: classes-dex2jar.jar:kotlin/d.class */
public final class C1653d implements Comparable<C1653d> {

    /* renamed from: c */
    private final int f4372c;

    /* renamed from: d */
    private final int f4373d;

    /* renamed from: e */
    private final int f4374e;

    /* renamed from: f */
    private final int f4375f;

    /* renamed from: b */
    public static final C1654a f4371b = new C1654a(null);

    /* renamed from: a */
    public static final C1653d f4370a = new C1653d(1, 3, 41);

    /* renamed from: kotlin.d$a */
    /* loaded from: classes-dex2jar.jar:kotlin/d$a.class */
    public static final class C1654a {
        private C1654a() {
        }

        public /* synthetic */ C1654a(C1691e c1691e) {
            this();
        }
    }

    public C1653d(int i, int i2, int i3) {
        this.f4373d = i;
        this.f4374e = i2;
        this.f4375f = i3;
        this.f4372c = m3139a(this.f4373d, this.f4374e, this.f4375f);
    }

    /* renamed from: a */
    private final int m3139a(int i, int i2, int i3) {
        if (i >= 0 && 255 >= i && i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3) {
            return (i << 16) + (i2 << 8) + i3;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    /* renamed from: a */
    public int compareTo(C1653d c1653d) {
        C1694h.m3117b(c1653d, "other");
        return this.f4372c - c1653d.f4372c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        Object obj2 = obj;
        if (!(obj instanceof C1653d)) {
            obj2 = null;
        }
        C1653d c1653d = (C1653d) obj2;
        boolean z = false;
        if (c1653d != null) {
            z = false;
            if (this.f4372c == c1653d.f4372c) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f4372c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4373d);
        sb.append('.');
        sb.append(this.f4374e);
        sb.append('.');
        sb.append(this.f4375f);
        return sb.toString();
    }
}
