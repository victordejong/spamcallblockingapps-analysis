package com.google.android.play.core.splitcompat;

import java.io.File;
import java.util.Objects;
/* renamed from: com.google.android.play.core.splitcompat.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/r.class */
public final class C8553r {

    /* renamed from: a */
    private final File f38135a;

    /* renamed from: b */
    private final String f38136b;

    C8553r() {
    }

    public C8553r(File file, String str) {
        this();
        Objects.requireNonNull(file, "Null splitFile");
        this.f38135a = file;
        Objects.requireNonNull(str, "Null splitId");
        this.f38136b = str;
    }

    /* renamed from: a */
    public File m3354a() {
        return this.f38135a;
    }

    /* renamed from: b */
    public String m3353b() {
        return this.f38136b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8553r)) {
            return false;
        }
        C8553r c8553r = (C8553r) obj;
        return this.f38135a.equals(c8553r.m3354a()) && this.f38136b.equals(c8553r.m3353b());
    }

    public int hashCode() {
        return ((this.f38135a.hashCode() ^ 1000003) * 1000003) ^ this.f38136b.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f38135a);
        String str = this.f38136b;
        StringBuilder sb = new StringBuilder(valueOf.length() + 35 + str.length());
        sb.append("SplitFileInfo{splitFile=");
        sb.append(valueOf);
        sb.append(", splitId=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
