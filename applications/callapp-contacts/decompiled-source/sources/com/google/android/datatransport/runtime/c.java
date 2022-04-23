package com.google.android.datatransport.runtime;

import com.google.android.datatransport.d;
import com.google.android.datatransport.runtime.l;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/c.class */
final class c extends l {

    /* renamed from: a  reason: collision with root package name */
    private final String f20430a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f20431b;

    /* renamed from: c  reason: collision with root package name */
    private final d f20432c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/c$a.class */
    static final class a extends l.a {

        /* renamed from: a  reason: collision with root package name */
        private String f20433a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f20434b;

        /* renamed from: c  reason: collision with root package name */
        private d f20435c;

        @Override // com.google.android.datatransport.runtime.l.a
        public final l.a a(d dVar) {
            Objects.requireNonNull(dVar, "Null priority");
            this.f20435c = dVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.l.a
        public final l.a a(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f20433a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.l.a
        public final l.a a(byte[] bArr) {
            this.f20434b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.l.a
        public final l a() {
            String str = "";
            if (this.f20433a == null) {
                str = " backendName";
            }
            String str2 = str;
            if (this.f20435c == null) {
                str2 = str + " priority";
            }
            if (str2.isEmpty()) {
                return new c(this.f20433a, this.f20434b, this.f20435c);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str2)));
        }
    }

    private c(String str, byte[] bArr, d dVar) {
        this.f20430a = str;
        this.f20431b = bArr;
        this.f20432c = dVar;
    }

    @Override // com.google.android.datatransport.runtime.l
    public final String a() {
        return this.f20430a;
    }

    @Override // com.google.android.datatransport.runtime.l
    public final byte[] b() {
        return this.f20431b;
    }

    @Override // com.google.android.datatransport.runtime.l
    public final d c() {
        return this.f20432c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (!this.f20430a.equals(lVar.a())) {
            return false;
        }
        return Arrays.equals(this.f20431b, lVar instanceof c ? ((c) lVar).f20431b : lVar.b()) && this.f20432c.equals(lVar.c());
    }

    public final int hashCode() {
        return ((((this.f20430a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f20431b)) * 1000003) ^ this.f20432c.hashCode();
    }
}
