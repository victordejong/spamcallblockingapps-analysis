package com.google.android.datatransport;

import java.util.Objects;
/* renamed from: com.google.android.datatransport.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/b.class */
public final class C4602b {

    /* renamed from: a */
    private final String f14011a;

    private C4602b(String str) {
        Objects.requireNonNull(str, "name is null");
        this.f14011a = str;
    }

    /* renamed from: b */
    public static C4602b m22183b(String str) {
        return new C4602b(str);
    }

    /* renamed from: a */
    public String m22184a() {
        return this.f14011a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4602b) {
            return this.f14011a.equals(((C4602b) obj).f14011a);
        }
        return false;
    }

    public int hashCode() {
        return this.f14011a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f14011a + "\"}";
    }
}
