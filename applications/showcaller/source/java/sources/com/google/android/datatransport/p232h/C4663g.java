package com.google.android.datatransport.p232h;

import com.google.android.datatransport.C4602b;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.h.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/g.class */
public final class C4663g {

    /* renamed from: a */
    private final C4602b f14231a;

    /* renamed from: b */
    private final byte[] f14232b;

    public C4663g(C4602b c4602b, byte[] bArr) {
        Objects.requireNonNull(c4602b, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f14231a = c4602b;
        this.f14232b = bArr;
    }

    /* renamed from: a */
    public byte[] m22067a() {
        return this.f14232b;
    }

    /* renamed from: b */
    public C4602b m22066b() {
        return this.f14231a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4663g)) {
            return false;
        }
        C4663g c4663g = (C4663g) obj;
        if (this.f14231a.equals(c4663g.f14231a)) {
            return Arrays.equals(this.f14232b, c4663g.f14232b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f14231a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f14232b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f14231a + ", bytes=[...]}";
    }
}
