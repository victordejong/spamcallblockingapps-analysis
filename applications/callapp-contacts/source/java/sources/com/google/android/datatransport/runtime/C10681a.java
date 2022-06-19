package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.AbstractC10730h;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a.class */
final class C10681a extends AbstractC10730h {

    /* renamed from: a */
    private final String f34517a;

    /* renamed from: b */
    private final Integer f34518b;

    /* renamed from: c */
    private final C10729g f34519c;

    /* renamed from: d */
    private final long f34520d;

    /* renamed from: e */
    private final long f34521e;

    /* renamed from: f */
    private final Map<String, String> f34522f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.runtime.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a$a.class */
    public static final class C10683a extends AbstractC10730h.AbstractC10731a {

        /* renamed from: a */
        Map<String, String> f34523a;

        /* renamed from: b */
        private String f34524b;

        /* renamed from: c */
        private Integer f34525c;

        /* renamed from: d */
        private C10729g f34526d;

        /* renamed from: e */
        private Long f34527e;

        /* renamed from: f */
        private Long f34528f;

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: a */
        public final AbstractC10730h.AbstractC10731a mo22472a(long j) {
            this.f34527e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: a */
        public final AbstractC10730h.AbstractC10731a mo22471a(C10729g c10729g) {
            Objects.requireNonNull(c10729g, "Null encodedPayload");
            this.f34526d = c10729g;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: a */
        public final AbstractC10730h.AbstractC10731a mo22470a(Integer num) {
            this.f34525c = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: a */
        public final AbstractC10730h.AbstractC10731a mo22469a(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f34524b = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: a */
        protected final AbstractC10730h.AbstractC10731a mo22465a(Map<String, String> map) {
            this.f34523a = map;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: a */
        protected final Map<String, String> mo22473a() {
            Map<String, String> map = this.f34523a;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: b */
        public final AbstractC10730h.AbstractC10731a mo22463b(long j) {
            this.f34528f = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10730h.AbstractC10731a
        /* renamed from: b */
        public final AbstractC10730h mo22464b() {
            String str = "";
            if (this.f34524b == null) {
                str = " transportName";
            }
            String str2 = str;
            if (this.f34526d == null) {
                str2 = str + " encodedPayload";
            }
            String str3 = str2;
            if (this.f34527e == null) {
                str3 = str2 + " eventMillis";
            }
            String str4 = str3;
            if (this.f34528f == null) {
                str4 = str3 + " uptimeMillis";
            }
            String str5 = str4;
            if (this.f34523a == null) {
                str5 = str4 + " autoMetadata";
            }
            if (str5.isEmpty()) {
                return new C10681a(this.f34524b, this.f34525c, this.f34526d, this.f34527e.longValue(), this.f34528f.longValue(), this.f34523a);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str5)));
        }
    }

    private C10681a(String str, Integer num, C10729g c10729g, long j, long j2, Map<String, String> map) {
        this.f34517a = str;
        this.f34518b = num;
        this.f34519c = c10729g;
        this.f34520d = j;
        this.f34521e = j2;
        this.f34522f = map;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10730h
    /* renamed from: a */
    public final String mo22485a() {
        return this.f34517a;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10730h
    /* renamed from: b */
    public final Integer mo22483b() {
        return this.f34518b;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10730h
    /* renamed from: c */
    public final C10729g mo22481c() {
        return this.f34519c;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10730h
    /* renamed from: d */
    public final long mo22479d() {
        return this.f34520d;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10730h
    /* renamed from: e */
    public final long mo22478e() {
        return this.f34521e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10730h)) {
            return false;
        }
        AbstractC10730h abstractC10730h = (AbstractC10730h) obj;
        if (!this.f34517a.equals(abstractC10730h.mo22485a())) {
            return false;
        }
        Integer num = this.f34518b;
        if (num == null) {
            if (abstractC10730h.mo22483b() != null) {
                return false;
            }
        } else if (!num.equals(abstractC10730h.mo22483b())) {
            return false;
        }
        return this.f34519c.equals(abstractC10730h.mo22481c()) && this.f34520d == abstractC10730h.mo22479d() && this.f34521e == abstractC10730h.mo22478e() && this.f34522f.equals(abstractC10730h.mo22477f());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.datatransport.runtime.AbstractC10730h
    /* renamed from: f */
    public final Map<String, String> mo22477f() {
        return this.f34522f;
    }

    public final int hashCode() {
        int hashCode = this.f34517a.hashCode();
        Integer num = this.f34518b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f34519c.hashCode();
        long j = this.f34520d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f34521e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f34522f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f34517a + ", code=" + this.f34518b + ", encodedPayload=" + this.f34519c + ", eventMillis=" + this.f34520d + ", uptimeMillis=" + this.f34521e + ", autoMetadata=" + this.f34522f + "}";
    }
}
