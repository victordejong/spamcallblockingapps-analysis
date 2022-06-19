package com.google.android.datatransport;

import java.util.Objects;
/* renamed from: com.google.android.datatransport.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/b.class */
public final class C10627b {

    /* renamed from: a */
    public final String f34393a;

    private C10627b(String str) {
        Objects.requireNonNull(str, "name is null");
        this.f34393a = str;
    }

    /* renamed from: a */
    public static C10627b m22610a(String str) {
        return new C10627b(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C10627b) {
            return this.f34393a.equals(((C10627b) obj).f34393a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f34393a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Encoding{name=\"" + this.f34393a + "\"}";
    }
}
