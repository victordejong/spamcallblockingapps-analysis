package com.google.android.datatransport.runtime;

import androidx.annotation.NonNull;
import com.google.android.datatransport.Encoding;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/EncodedPayload.class */
public final class EncodedPayload {

    /* renamed from: a */
    private final Encoding f6637a;

    /* renamed from: b */
    private final byte[] f6638b;

    public EncodedPayload(@NonNull Encoding encoding, @NonNull byte[] bArr) {
        if (encoding == null) {
            throw new NullPointerException("encoding is null");
        } else if (bArr != null) {
            this.f6637a = encoding;
            this.f6638b = bArr;
        } else {
            throw new NullPointerException("bytes is null");
        }
    }

    /* renamed from: a */
    public byte[] m15469a() {
        return this.f6638b;
    }

    /* renamed from: b */
    public Encoding m15468b() {
        return this.f6637a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncodedPayload)) {
            return false;
        }
        EncodedPayload encodedPayload = (EncodedPayload) obj;
        if (!this.f6637a.equals(encodedPayload.f6637a)) {
            return false;
        }
        return Arrays.equals(this.f6638b, encodedPayload.f6638b);
    }

    public int hashCode() {
        return ((this.f6637a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f6638b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f6637a + ", bytes=[...]}";
    }
}
