package org.apache.commons.lang3.b;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/b/a.class */
public final class a extends Number implements Comparable<a> {

    /* renamed from: a  reason: collision with root package name */
    private int f39137a;

    public a() {
    }

    public a(int i) {
        this.f39137a = i;
    }

    public a(Number number) {
        this.f39137a = number.intValue();
    }

    public a(String str) {
        this.f39137a = Integer.parseInt(str);
    }

    public final void a() {
        this.f39137a++;
    }

    public final int b() {
        int i = this.f39137a - 1;
        this.f39137a = i;
        return i;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(a aVar) {
        return org.apache.commons.lang3.a.a.a(this.f39137a, aVar.f39137a);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f39137a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && this.f39137a == ((a) obj).intValue();
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return this.f39137a;
    }

    public final int hashCode() {
        return this.f39137a;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return this.f39137a;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f39137a;
    }

    public final String toString() {
        return String.valueOf(this.f39137a);
    }
}
