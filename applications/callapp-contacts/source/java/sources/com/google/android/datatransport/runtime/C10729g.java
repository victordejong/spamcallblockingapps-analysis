package com.google.android.datatransport.runtime;

import com.google.android.datatransport.C10627b;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/g.class */
public final class C10729g {

    /* renamed from: a */
    public final C10627b f34592a;

    /* renamed from: b */
    public final byte[] f34593b;

    public C10729g(C10627b c10627b, byte[] bArr) {
        Objects.requireNonNull(c10627b, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f34592a = c10627b;
        this.f34593b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10729g)) {
            return false;
        }
        C10729g c10729g = (C10729g) obj;
        if (this.f34592a.equals(c10729g.f34592a)) {
            return Arrays.equals(this.f34593b, c10729g.f34593b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f34592a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f34593b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f34592a + ", bytes=[...]}";
    }
}
