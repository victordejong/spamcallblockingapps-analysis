package org.apache.commons.lang3.p584b;

import org.apache.commons.lang3.p583a.C20723a;
/* renamed from: org.apache.commons.lang3.b.a */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/b/a.class */
public final class C20725a extends Number implements Comparable<C20725a> {

    /* renamed from: a */
    private int f67201a;

    public C20725a() {
    }

    public C20725a(int i) {
        this.f67201a = i;
    }

    public C20725a(Number number) {
        this.f67201a = number.intValue();
    }

    public C20725a(String str) {
        this.f67201a = Integer.parseInt(str);
    }

    /* renamed from: a */
    public final void m593a() {
        this.f67201a++;
    }

    /* renamed from: b */
    public final int m592b() {
        int i = this.f67201a - 1;
        this.f67201a = i;
        return i;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C20725a c20725a) {
        return C20723a.m598a(this.f67201a, c20725a.f67201a);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f67201a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C20725a) && this.f67201a == ((C20725a) obj).intValue();
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return this.f67201a;
    }

    public final int hashCode() {
        return this.f67201a;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return this.f67201a;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f67201a;
    }

    public final String toString() {
        return String.valueOf(this.f67201a);
    }
}
