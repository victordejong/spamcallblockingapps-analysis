package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.h;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a.class */
final class a extends h {

    /* renamed from: a  reason: collision with root package name */
    private final String f20385a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f20386b;

    /* renamed from: c  reason: collision with root package name */
    private final g f20387c;

    /* renamed from: d  reason: collision with root package name */
    private final long f20388d;
    private final long e;
    private final Map<String, String> f;

    /* renamed from: com.google.android.datatransport.runtime.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a$a.class */
    static final class C0415a extends h.a {

        /* renamed from: a  reason: collision with root package name */
        Map<String, String> f20389a;

        /* renamed from: b  reason: collision with root package name */
        private String f20390b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f20391c;

        /* renamed from: d  reason: collision with root package name */
        private g f20392d;
        private Long e;
        private Long f;

        @Override // com.google.android.datatransport.runtime.h.a
        public final h.a a(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.h.a
        public final h.a a(g gVar) {
            Objects.requireNonNull(gVar, "Null encodedPayload");
            this.f20392d = gVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.h.a
        public final h.a a(Integer num) {
            this.f20391c = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.h.a
        public final h.a a(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f20390b = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.h.a
        protected final h.a a(Map<String, String> map) {
            this.f20389a = map;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.h.a
        protected final Map<String, String> a() {
            Map<String, String> map = this.f20389a;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.runtime.h.a
        public final h.a b(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.h.a
        public final h b() {
            String str = "";
            if (this.f20390b == null) {
                str = " transportName";
            }
            String str2 = str;
            if (this.f20392d == null) {
                str2 = str + " encodedPayload";
            }
            String str3 = str2;
            if (this.e == null) {
                str3 = str2 + " eventMillis";
            }
            String str4 = str3;
            if (this.f == null) {
                str4 = str3 + " uptimeMillis";
            }
            String str5 = str4;
            if (this.f20389a == null) {
                str5 = str4 + " autoMetadata";
            }
            if (str5.isEmpty()) {
                return new a(this.f20390b, this.f20391c, this.f20392d, this.e.longValue(), this.f.longValue(), this.f20389a);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str5)));
        }
    }

    private a(String str, Integer num, g gVar, long j, long j2, Map<String, String> map) {
        this.f20385a = str;
        this.f20386b = num;
        this.f20387c = gVar;
        this.f20388d = j;
        this.e = j2;
        this.f = map;
    }

    @Override // com.google.android.datatransport.runtime.h
    public final String a() {
        return this.f20385a;
    }

    @Override // com.google.android.datatransport.runtime.h
    public final Integer b() {
        return this.f20386b;
    }

    @Override // com.google.android.datatransport.runtime.h
    public final g c() {
        return this.f20387c;
    }

    @Override // com.google.android.datatransport.runtime.h
    public final long d() {
        return this.f20388d;
    }

    @Override // com.google.android.datatransport.runtime.h
    public final long e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (!this.f20385a.equals(hVar.a())) {
            return false;
        }
        Integer num = this.f20386b;
        if (num == null) {
            if (hVar.b() != null) {
                return false;
            }
        } else if (!num.equals(hVar.b())) {
            return false;
        }
        return this.f20387c.equals(hVar.c()) && this.f20388d == hVar.d() && this.e == hVar.e() && this.f.equals(hVar.f());
    }

    @Override // com.google.android.datatransport.runtime.h
    protected final Map<String, String> f() {
        return this.f;
    }

    public final int hashCode() {
        int hashCode = this.f20385a.hashCode();
        Integer num = this.f20386b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f20387c.hashCode();
        long j = this.f20388d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f20385a + ", code=" + this.f20386b + ", encodedPayload=" + this.f20387c + ", eventMillis=" + this.f20388d + ", uptimeMillis=" + this.e + ", autoMetadata=" + this.f + "}";
    }
}
