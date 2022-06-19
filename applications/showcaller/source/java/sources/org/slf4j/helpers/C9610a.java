package org.slf4j.helpers;
/* renamed from: org.slf4j.helpers.a */
/* loaded from: classes2-dex2jar.jar:org/slf4j/helpers/a.class */
public class C9610a {

    /* renamed from: a */
    public static C9610a f40513a = new C9610a(null);

    /* renamed from: b */
    private String f40514b;

    /* renamed from: c */
    private Throwable f40515c;

    /* renamed from: d */
    private Object[] f40516d;

    public C9610a(String str) {
        this(str, null, null);
    }

    public C9610a(String str, Object[] objArr, Throwable th) {
        this.f40514b = str;
        this.f40515c = th;
        this.f40516d = objArr;
    }

    /* renamed from: a */
    public String m331a() {
        return this.f40514b;
    }

    /* renamed from: b */
    public Throwable m330b() {
        return this.f40515c;
    }
}
