package p222r6;

import p211q6.AbstractC4161d;
/* renamed from: r6.j */
/* loaded from: classes-dex2jar.jar:r6/j.class */
public class C4226j implements AbstractC4161d {

    /* renamed from: a */
    public final String f13238a;

    /* renamed from: b */
    public final int f13239b;

    public C4226j(String str, int i) {
        this.f13238a = str;
        this.f13239b = i;
    }

    @Override // p211q6.AbstractC4161d
    /* renamed from: a */
    public int mo1275a() {
        return this.f13239b;
    }

    @Override // p211q6.AbstractC4161d
    /* renamed from: b */
    public double mo1274b() {
        if (this.f13239b == 0) {
            return 0.0d;
        }
        String m1270f = m1270f();
        try {
            return Double.valueOf(m1270f).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m1270f, "double"), e);
        }
    }

    @Override // p211q6.AbstractC4161d
    /* renamed from: c */
    public String mo1273c() {
        if (this.f13239b == 0) {
            return "";
        }
        String str = this.f13238a;
        if (str == null) {
            throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
        }
        return str;
    }

    @Override // p211q6.AbstractC4161d
    /* renamed from: d */
    public long mo1272d() {
        if (this.f13239b == 0) {
            return 0L;
        }
        String m1270f = m1270f();
        try {
            return Long.valueOf(m1270f).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m1270f, "long"), e);
        }
    }

    @Override // p211q6.AbstractC4161d
    /* renamed from: e */
    public boolean mo1271e() throws IllegalArgumentException {
        if (this.f13239b == 0) {
            return false;
        }
        String m1270f = m1270f();
        if (C4224h.f13229e.matcher(m1270f).matches()) {
            return true;
        }
        if (!C4224h.f13230f.matcher(m1270f).matches()) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m1270f, "boolean"));
        }
        return false;
    }

    /* renamed from: f */
    public final String m1270f() {
        return mo1273c().trim();
    }
}
