package p193e.p1545k.p1546a.p1548b.p1552w;

import p193e.p1545k.p1546a.p1548b.EnumC23368d;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
/* renamed from: e.k.a.b.w.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/b.class */
public class C23396b {

    /* renamed from: a */
    public final Object f64778a;

    /* renamed from: b */
    public EnumC23368d f64779b;

    /* renamed from: c */
    public final boolean f64780c;

    /* renamed from: d */
    public final C23346a f64781d;

    /* renamed from: e */
    public byte[] f64782e;

    /* renamed from: f */
    public byte[] f64783f;

    /* renamed from: g */
    public byte[] f64784g;

    /* renamed from: h */
    public char[] f64785h;

    /* renamed from: i */
    public char[] f64786i;

    /* renamed from: j */
    public char[] f64787j;

    public C23396b(C23346a c23346a, Object obj, boolean z) {
        this.f64781d = c23346a;
        this.f64778a = obj;
        this.f64780c = z;
    }

    /* renamed from: a */
    public final void m7134a(Object obj) {
        if (obj == null) {
            return;
        }
        throw new IllegalStateException("Trying to call same allocXxx() method second time");
    }

    /* renamed from: b */
    public final void m7133b(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2 || bArr.length >= bArr2.length) {
            return;
        }
        throw new IllegalArgumentException("Trying to release buffer smaller than original");
    }

    /* renamed from: c */
    public final void m7132c(char[] cArr, char[] cArr2) {
        if (cArr == cArr2 || cArr.length >= cArr2.length) {
            return;
        }
        throw new IllegalArgumentException("Trying to release buffer smaller than original");
    }

    /* renamed from: d */
    public byte[] m7131d() {
        m7134a(this.f64784g);
        byte[] m7254a = this.f64781d.m7254a(3);
        this.f64784g = m7254a;
        return m7254a;
    }

    /* renamed from: e */
    public void m7130e(byte[] bArr) {
        m7133b(bArr, this.f64784g);
        this.f64784g = null;
        this.f64781d.f64563a.set(3, bArr);
    }

    /* renamed from: f */
    public void m7129f(byte[] bArr) {
        m7133b(bArr, this.f64782e);
        this.f64782e = null;
        this.f64781d.f64563a.set(0, bArr);
    }
}
