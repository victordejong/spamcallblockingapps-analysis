package com.google.android.play.core.splitcompat;

import java.io.File;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    final File f31452a;

    /* renamed from: b  reason: collision with root package name */
    final String f31453b;

    r() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(File file, String str) {
        this();
        Objects.requireNonNull(file, "Null splitFile");
        this.f31452a = file;
        Objects.requireNonNull(str, "Null splitId");
        this.f31453b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f31452a.equals(rVar.f31452a) && this.f31453b.equals(rVar.f31453b);
    }

    public final int hashCode() {
        return ((this.f31452a.hashCode() ^ 1000003) * 1000003) ^ this.f31453b.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f31452a);
        String str = this.f31453b;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35 + str.length());
        sb.append("SplitFileInfo{splitFile=");
        sb.append(valueOf);
        sb.append(", splitId=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
