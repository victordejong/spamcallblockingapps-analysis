package p226s;

import com.applovin.impl.sdk.utils.JsonUtils;
import p029c4.C0821e;
/* renamed from: s.h */
/* loaded from: classes-dex2jar.jar:s/h.class */
public class C4264h<E> implements Cloneable {

    /* renamed from: d */
    public static final Object f13366d = new Object();

    /* renamed from: a */
    public int[] f13367a;

    /* renamed from: b */
    public Object[] f13368b;

    /* renamed from: c */
    public int f13369c;

    public C4264h() {
        int m7335j = C0821e.m7335j(10);
        this.f13367a = new int[m7335j];
        this.f13368b = new Object[m7335j];
    }

    /* renamed from: a */
    public void m1191a(int i, E e) {
        int i2 = this.f13369c;
        if (i2 != 0 && i <= this.f13367a[i2 - 1]) {
            m1186f(i, e);
            return;
        }
        if (i2 >= this.f13367a.length) {
            int m7335j = C0821e.m7335j(i2 + 1);
            int[] iArr = new int[m7335j];
            Object[] objArr = new Object[m7335j];
            int[] iArr2 = this.f13367a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f13368b;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f13367a = iArr;
            this.f13368b = objArr;
        }
        this.f13367a[i2] = i;
        this.f13368b[i2] = e;
        this.f13369c = i2 + 1;
    }

    /* renamed from: b */
    public C4264h<E> clone() {
        try {
            C4264h<E> c4264h = (C4264h) super.clone();
            c4264h.f13367a = (int[]) this.f13367a.clone();
            c4264h.f13368b = (Object[]) this.f13368b.clone();
            return c4264h;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: c */
    public E m1189c(int i) {
        return m1188d(i, null);
    }

    /* renamed from: d */
    public E m1188d(int i, E e) {
        int m7343a = C0821e.m7343a(this.f13367a, this.f13369c, i);
        if (m7343a >= 0) {
            Object[] objArr = this.f13368b;
            if (objArr[m7343a] != f13366d) {
                return (E) objArr[m7343a];
            }
        }
        return e;
    }

    /* renamed from: e */
    public int m1187e(int i) {
        return this.f13367a[i];
    }

    /* renamed from: f */
    public void m1186f(int i, E e) {
        int m7343a = C0821e.m7343a(this.f13367a, this.f13369c, i);
        if (m7343a >= 0) {
            this.f13368b[m7343a] = e;
            return;
        }
        int i2 = m7343a ^ (-1);
        int i3 = this.f13369c;
        if (i2 < i3) {
            Object[] objArr = this.f13368b;
            if (objArr[i2] == f13366d) {
                this.f13367a[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        if (i3 >= this.f13367a.length) {
            int m7335j = C0821e.m7335j(i3 + 1);
            int[] iArr = new int[m7335j];
            Object[] objArr2 = new Object[m7335j];
            int[] iArr2 = this.f13367a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f13368b;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f13367a = iArr;
            this.f13368b = objArr2;
        }
        int i4 = this.f13369c - i2;
        if (i4 != 0) {
            int[] iArr3 = this.f13367a;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4);
            Object[] objArr4 = this.f13368b;
            System.arraycopy(objArr4, i2, objArr4, i5, this.f13369c - i2);
        }
        this.f13367a[i2] = i;
        this.f13368b[i2] = e;
        this.f13369c++;
    }

    /* renamed from: g */
    public int m1185g() {
        return this.f13369c;
    }

    /* renamed from: h */
    public E m1184h(int i) {
        return (E) this.f13368b[i];
    }

    public String toString() {
        if (m1185g() <= 0) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb = new StringBuilder(this.f13369c * 28);
        sb.append('{');
        for (int i = 0; i < this.f13369c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m1187e(i));
            sb.append('=');
            E m1184h = m1184h(i);
            if (m1184h != this) {
                sb.append(m1184h);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
