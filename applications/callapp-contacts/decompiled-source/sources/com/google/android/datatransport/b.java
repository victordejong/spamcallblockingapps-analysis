package com.google.android.datatransport;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f20313a;

    private b(String str) {
        Objects.requireNonNull(str, "name is null");
        this.f20313a = str;
    }

    public static b a(String str) {
        return new b(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f20313a.equals(((b) obj).f20313a);
    }

    public final int hashCode() {
        return this.f20313a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Encoding{name=\"" + this.f20313a + "\"}";
    }
}
