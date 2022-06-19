package com.google.android.datatransport;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/Encoding.class */
public final class Encoding {
    private final String name;

    private Encoding(String str) {
        Objects.requireNonNull(str, "name is null");
        this.name = str;
    }

    /* renamed from: of */
    public static Encoding m4450of(String str) {
        return new Encoding(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Encoding) {
            return this.name.equals(((Encoding) obj).name);
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return this.name.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.name + "\"}";
    }
}
