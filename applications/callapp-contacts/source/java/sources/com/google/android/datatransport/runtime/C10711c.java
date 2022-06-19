package com.google.android.datatransport.runtime;

import com.google.android.datatransport.EnumC10676d;
import com.google.android.datatransport.runtime.AbstractC10738l;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/c.class */
final class C10711c extends AbstractC10738l {

    /* renamed from: a */
    private final String f34569a;

    /* renamed from: b */
    private final byte[] f34570b;

    /* renamed from: c */
    private final EnumC10676d f34571c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.runtime.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/c$a.class */
    public static final class C10713a extends AbstractC10738l.AbstractC10739a {

        /* renamed from: a */
        private String f34572a;

        /* renamed from: b */
        private byte[] f34573b;

        /* renamed from: c */
        private EnumC10676d f34574c;

        @Override // com.google.android.datatransport.runtime.AbstractC10738l.AbstractC10739a
        /* renamed from: a */
        public final AbstractC10738l.AbstractC10739a mo22445a(EnumC10676d enumC10676d) {
            Objects.requireNonNull(enumC10676d, "Null priority");
            this.f34574c = enumC10676d;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10738l.AbstractC10739a
        /* renamed from: a */
        public final AbstractC10738l.AbstractC10739a mo22444a(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f34572a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10738l.AbstractC10739a
        /* renamed from: a */
        public final AbstractC10738l.AbstractC10739a mo22443a(byte[] bArr) {
            this.f34573b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10738l.AbstractC10739a
        /* renamed from: a */
        public final AbstractC10738l mo22446a() {
            String str = "";
            if (this.f34572a == null) {
                str = " backendName";
            }
            String str2 = str;
            if (this.f34574c == null) {
                str2 = str + " priority";
            }
            if (str2.isEmpty()) {
                return new C10711c(this.f34572a, this.f34573b, this.f34574c);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str2)));
        }
    }

    private C10711c(String str, byte[] bArr, EnumC10676d enumC10676d) {
        this.f34569a = str;
        this.f34570b = bArr;
        this.f34571c = enumC10676d;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10738l
    /* renamed from: a */
    public final String mo22450a() {
        return this.f34569a;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10738l
    /* renamed from: b */
    public final byte[] mo22449b() {
        return this.f34570b;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10738l
    /* renamed from: c */
    public final EnumC10676d mo22448c() {
        return this.f34571c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10738l)) {
            return false;
        }
        AbstractC10738l abstractC10738l = (AbstractC10738l) obj;
        if (!this.f34569a.equals(abstractC10738l.mo22450a())) {
            return false;
        }
        return Arrays.equals(this.f34570b, abstractC10738l instanceof C10711c ? ((C10711c) abstractC10738l).f34570b : abstractC10738l.mo22449b()) && this.f34571c.equals(abstractC10738l.mo22448c());
    }

    public final int hashCode() {
        return ((((this.f34569a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f34570b)) * 1000003) ^ this.f34571c.hashCode();
    }
}
