package com.p051a.p052a.p053a.p054a.p058c;
/* renamed from: com.a.a.a.a.c.j */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/j.class */
public class C1141j {

    /* renamed from: a */
    private final int f3604a;

    /* renamed from: b */
    private final int f3605b;

    public C1141j(int i, int i2) {
        if (i <= i2) {
            this.f3604a = i;
            this.f3605b = i2;
            return;
        }
        throw new IllegalArgumentException("end position (= " + i2 + ") is smaller than start position (=" + i + ")");
    }

    /* renamed from: a */
    public int m4065a() {
        return this.f3604a;
    }

    /* renamed from: a */
    public boolean m4064a(int i) {
        return i >= this.f3604a && i <= this.f3605b;
    }

    /* renamed from: b */
    public int m4063b() {
        return this.f3605b;
    }

    /* renamed from: c */
    protected String m4062c() {
        return "ItemDraggableRange";
    }

    public String toString() {
        return m4062c() + "{mStart=" + this.f3604a + ", mEnd=" + this.f3605b + '}';
    }
}
