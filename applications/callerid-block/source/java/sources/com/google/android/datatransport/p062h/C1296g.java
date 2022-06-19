package com.google.android.datatransport.p062h;

import com.google.android.datatransport.C1278b;
import java.util.Arrays;
/* renamed from: com.google.android.datatransport.h.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/g.class */
public final class C1296g {

    /* renamed from: a */
    private final C1278b f5370a;

    /* renamed from: b */
    private final byte[] f5371b;

    public C1296g(C1278b c1278b, byte[] bArr) {
        if (c1278b != null) {
            if (bArr == null) {
                throw new NullPointerException("bytes is null");
            }
            this.f5370a = c1278b;
            this.f5371b = bArr;
            return;
        }
        throw new NullPointerException("encoding is null");
    }

    /* renamed from: a */
    public byte[] m9249a() {
        return this.f5371b;
    }

    /* renamed from: b */
    public C1278b m9248b() {
        return this.f5370a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1296g)) {
            return false;
        }
        C1296g c1296g = (C1296g) obj;
        if (this.f5370a.equals(c1296g.f5370a)) {
            return Arrays.equals(this.f5371b, c1296g.f5371b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f5370a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f5371b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f5370a + ", bytes=[...]}";
    }
}
