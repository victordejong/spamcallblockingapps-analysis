package com.bumptech.glide.p077h;
/* renamed from: com.bumptech.glide.h.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/h.class */
public class C1455h {

    /* renamed from: a */
    private Class<?> f4766a;

    /* renamed from: b */
    private Class<?> f4767b;

    /* renamed from: c */
    private Class<?> f4768c;

    public C1455h() {
    }

    public C1455h(Class<?> cls, Class<?> cls2) {
        m16991a(cls, cls2);
    }

    public C1455h(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        m16990a(cls, cls2, cls3);
    }

    /* renamed from: a */
    public void m16991a(Class<?> cls, Class<?> cls2) {
        m16990a(cls, cls2, null);
    }

    /* renamed from: a */
    public void m16990a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f4766a = cls;
        this.f4767b = cls2;
        this.f4768c = cls3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                C1455h c1455h = (C1455h) obj;
                if (!this.f4766a.equals(c1455h.f4766a)) {
                    z = false;
                } else if (!this.f4767b.equals(c1455h.f4767b)) {
                    z = false;
                } else if (!C1457j.m16975a(this.f4768c, c1455h.f4768c)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f4766a.hashCode();
        return (this.f4768c != null ? this.f4768c.hashCode() : 0) + (((hashCode * 31) + this.f4767b.hashCode()) * 31);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f4766a + ", second=" + this.f4767b + '}';
    }
}
