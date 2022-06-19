package org.jsoup.p592c;
/* renamed from: org.jsoup.c.d */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/d.class */
public final class C20811d {

    /* renamed from: a */
    private int f67369a;

    /* renamed from: b */
    private String f67370b;

    public C20811d(int i, String str) {
        this.f67369a = i;
        this.f67370b = str;
    }

    public C20811d(int i, String str, Object... objArr) {
        this.f67370b = String.format(str, objArr);
        this.f67369a = i;
    }

    public final String toString() {
        return this.f67369a + ": " + this.f67370b;
    }
}
