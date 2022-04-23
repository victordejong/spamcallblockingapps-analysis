package com.google.android.datatransport.runtime;

import com.google.android.datatransport.b;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final b f20445a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f20446b;

    public g(b bVar, byte[] bArr) {
        Objects.requireNonNull(bVar, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f20445a = bVar;
        this.f20446b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (!this.f20445a.equals(gVar.f20445a)) {
            return false;
        }
        return Arrays.equals(this.f20446b, gVar.f20446b);
    }

    public final int hashCode() {
        return ((this.f20445a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f20446b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f20445a + ", bytes=[...]}";
    }
}
