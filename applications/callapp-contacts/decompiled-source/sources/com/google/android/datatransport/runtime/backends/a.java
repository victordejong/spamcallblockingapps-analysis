package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.f;
import com.google.android.datatransport.runtime.h;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/a.class */
final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<h> f20407a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f20408b;

    /* renamed from: com.google.android.datatransport.runtime.backends.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/a$a.class */
    public static final class C0416a extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private Iterable<h> f20409a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f20410b;

        @Override // com.google.android.datatransport.runtime.backends.f.a
        public final f.a a(Iterable<h> iterable) {
            this.f20409a = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.f.a
        public final f.a a(byte[] bArr) {
            this.f20410b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.f.a
        public final f a() {
            String str = "";
            if (this.f20409a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f20409a, this.f20410b);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }
    }

    private a(Iterable<h> iterable, byte[] bArr) {
        this.f20407a = iterable;
        this.f20408b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.f
    public final Iterable<h> a() {
        return this.f20407a;
    }

    @Override // com.google.android.datatransport.runtime.backends.f
    public final byte[] b() {
        return this.f20408b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (!this.f20407a.equals(fVar.a())) {
            return false;
        }
        return Arrays.equals(this.f20408b, fVar instanceof a ? ((a) fVar).f20408b : fVar.b());
    }

    public final int hashCode() {
        return ((this.f20407a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f20408b);
    }

    public final String toString() {
        return "BackendRequest{events=" + this.f20407a + ", extras=" + Arrays.toString(this.f20408b) + "}";
    }
}
