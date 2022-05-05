package com.google.android.datatransport;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/Encoding.class */
public final class Encoding {

    /* renamed from: a */
    private final String f6513a;

    private Encoding(@NonNull String str) {
        if (str != null) {
            this.f6513a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    /* renamed from: b */
    public static Encoding m15560b(@NonNull String str) {
        return new Encoding(str);
    }

    /* renamed from: a */
    public String m15561a() {
        return this.f6513a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Encoding)) {
            return false;
        }
        return this.f6513a.equals(((Encoding) obj).f6513a);
    }

    public int hashCode() {
        return this.f6513a.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.f6513a + "\"}";
    }
}
