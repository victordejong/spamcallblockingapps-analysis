package com.google.android.play.core.splitcompat;

import java.io.File;
import java.util.Objects;
/* renamed from: com.google.android.play.core.splitcompat.r */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/r.class */
public final class C15122r {

    /* renamed from: a */
    final File f54867a;

    /* renamed from: b */
    final String f54868b;

    C15122r() {
    }

    public C15122r(File file, String str) {
        this();
        Objects.requireNonNull(file, "Null splitFile");
        this.f54867a = file;
        Objects.requireNonNull(str, "Null splitId");
        this.f54868b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C15122r)) {
            return false;
        }
        C15122r c15122r = (C15122r) obj;
        return this.f54867a.equals(c15122r.f54867a) && this.f54868b.equals(c15122r.f54868b);
    }

    public final int hashCode() {
        return ((this.f54867a.hashCode() ^ 1000003) * 1000003) ^ this.f54868b.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f54867a);
        String str = this.f54868b;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35 + str.length());
        sb.append("SplitFileInfo{splitFile=");
        sb.append(valueOf);
        sb.append(", splitId=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
