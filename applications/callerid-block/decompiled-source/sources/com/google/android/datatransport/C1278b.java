package com.google.android.datatransport;
/* renamed from: com.google.android.datatransport.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/b.class */
public final class C1278b {

    /* renamed from: a */
    private final String f5308a;

    private C1278b(String str) {
        if (str != null) {
            this.f5308a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    /* renamed from: b */
    public static C1278b m9343b(String str) {
        return new C1278b(str);
    }

    /* renamed from: a */
    public String m9344a() {
        return this.f5308a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1278b)) {
            return false;
        }
        return this.f5308a.equals(((C1278b) obj).f5308a);
    }

    public int hashCode() {
        return this.f5308a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f5308a + "\"}";
    }
}
