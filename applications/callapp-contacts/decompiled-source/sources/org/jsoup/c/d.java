package org.jsoup.c;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private int f39221a;

    /* renamed from: b  reason: collision with root package name */
    private String f39222b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i, String str) {
        this.f39221a = i;
        this.f39222b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i, String str, Object... objArr) {
        this.f39222b = String.format(str, objArr);
        this.f39221a = i;
    }

    public final String toString() {
        return this.f39221a + ": " + this.f39222b;
    }
}
