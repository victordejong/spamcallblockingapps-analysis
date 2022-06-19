package p193e.p1545k.p1546a.p1548b;

import java.io.Serializable;
/* renamed from: e.k.a.b.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/h.class */
public class C23374h implements Serializable {

    /* renamed from: f */
    public static final C23374h f64654f = new C23374h(null, -1, -1, -1, -1);

    /* renamed from: a */
    public final long f64655a;

    /* renamed from: b */
    public final long f64656b;

    /* renamed from: c */
    public final int f64657c;

    /* renamed from: d */
    public final int f64658d;

    /* renamed from: e */
    public final transient Object f64659e;

    public C23374h(Object obj, long j, int i, int i2) {
        this.f64659e = obj;
        this.f64655a = -1L;
        this.f64656b = j;
        this.f64657c = i;
        this.f64658d = i2;
    }

    public C23374h(Object obj, long j, long j2, int i, int i2) {
        this.f64659e = obj;
        this.f64655a = j;
        this.f64656b = j2;
        this.f64657c = i;
        this.f64658d = i2;
    }

    /* renamed from: a */
    public final int m7206a(StringBuilder sb, String str) {
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return str.length();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23374h)) {
            return false;
        }
        C23374h c23374h = (C23374h) obj;
        Object obj2 = this.f64659e;
        if (obj2 == null) {
            if (c23374h.f64659e != null) {
                return false;
            }
        } else if (!obj2.equals(c23374h.f64659e)) {
            return false;
        }
        if (this.f64657c != c23374h.f64657c || this.f64658d != c23374h.f64658d || this.f64656b != c23374h.f64656b || this.f64655a != c23374h.f64655a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Object obj = this.f64659e;
        return ((((obj == null ? 1 : obj.hashCode()) ^ this.f64657c) + this.f64658d) ^ ((int) this.f64656b)) + ((int) this.f64655a);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.C23374h.toString():java.lang.String");
    }
}
