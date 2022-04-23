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

    public C1296g(C1278b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        } else if (bArr != null) {
            this.f5370a = bVar;
            this.f5371b = bArr;
        } else {
            throw new NullPointerException("bytes is null");
        }
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
        C1296g gVar = (C1296g) obj;
        if (!this.f5370a.equals(gVar.f5370a)) {
            return false;
        }
        return Arrays.equals(this.f5371b, gVar.f5371b);
    }

    public int hashCode() {
        return ((this.f5370a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f5371b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f5370a + ", bytes=[...]}";
    }
}
