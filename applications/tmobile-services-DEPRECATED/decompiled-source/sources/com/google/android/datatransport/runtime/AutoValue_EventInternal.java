package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_EventInternal.class */
final class AutoValue_EventInternal extends EventInternal {

    /* renamed from: a */
    private final String f6596a;

    /* renamed from: b */
    private final Integer f6597b;

    /* renamed from: c */
    private final EncodedPayload f6598c;

    /* renamed from: d */
    private final long f6599d;

    /* renamed from: e */
    private final long f6600e;

    /* renamed from: f */
    private final Map<String, String> f6601f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_EventInternal$Builder.class */
    public static final class Builder extends EventInternal.Builder {

        /* renamed from: a */
        private String f6602a;

        /* renamed from: b */
        private Integer f6603b;

        /* renamed from: c */
        private EncodedPayload f6604c;

        /* renamed from: d */
        private Long f6605d;

        /* renamed from: e */
        private Long f6606e;

        /* renamed from: f */
        private Map<String, String> f6607f;

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: d */
        public EventInternal mo15452d() {
            String str = "";
            if (this.f6602a == null) {
                str = " transportName";
            }
            String str2 = str;
            if (this.f6604c == null) {
                str2 = str + " encodedPayload";
            }
            String str3 = str2;
            if (this.f6605d == null) {
                str3 = str2 + " eventMillis";
            }
            String str4 = str3;
            if (this.f6606e == null) {
                str4 = str3 + " uptimeMillis";
            }
            String str5 = str4;
            if (this.f6607f == null) {
                str5 = str4 + " autoMetadata";
            }
            if (str5.isEmpty()) {
                return new AutoValue_EventInternal(this.f6602a, this.f6603b, this.f6604c, this.f6605d.longValue(), this.f6606e.longValue(), this.f6607f);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: e */
        protected Map<String, String> mo15451e() {
            Map<String, String> map = this.f6607f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: f */
        public EventInternal.Builder mo15450f(Map<String, String> map) {
            if (map != null) {
                this.f6607f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: g */
        public EventInternal.Builder mo15449g(Integer num) {
            this.f6603b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: h */
        public EventInternal.Builder mo15448h(EncodedPayload encodedPayload) {
            if (encodedPayload != null) {
                this.f6604c = encodedPayload;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: i */
        public EventInternal.Builder mo15447i(long j) {
            this.f6605d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: j */
        public EventInternal.Builder mo15446j(String str) {
            if (str != null) {
                this.f6602a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        /* renamed from: k */
        public EventInternal.Builder mo15445k(long j) {
            this.f6606e = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_EventInternal(String str, @Nullable Integer num, EncodedPayload encodedPayload, long j, long j2, Map<String, String> map) {
        this.f6596a = str;
        this.f6597b = num;
        this.f6598c = encodedPayload;
        this.f6599d = j;
        this.f6600e = j2;
        this.f6601f = map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.datatransport.runtime.EventInternal
    /* renamed from: c */
    public Map<String, String> mo15465c() {
        return this.f6601f;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    @Nullable
    /* renamed from: d */
    public Integer mo15464d() {
        return this.f6597b;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    /* renamed from: e */
    public EncodedPayload mo15463e() {
        return this.f6598c;
    }

    public boolean equals(Object obj) {
        Integer num;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventInternal)) {
            return false;
        }
        EventInternal eventInternal = (EventInternal) obj;
        if (!this.f6596a.equals(eventInternal.mo15458j()) || ((num = this.f6597b) != null ? !num.equals(eventInternal.mo15464d()) : eventInternal.mo15464d() != null) || !this.f6598c.equals(eventInternal.mo15463e()) || this.f6599d != eventInternal.mo15462f() || this.f6600e != eventInternal.mo15457k() || !this.f6601f.equals(eventInternal.mo15465c())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    /* renamed from: f */
    public long mo15462f() {
        return this.f6599d;
    }

    public int hashCode() {
        int hashCode = this.f6596a.hashCode();
        Integer num = this.f6597b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f6598c.hashCode();
        long j = this.f6599d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f6600e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f6601f.hashCode();
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    /* renamed from: j */
    public String mo15458j() {
        return this.f6596a;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    /* renamed from: k */
    public long mo15457k() {
        return this.f6600e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f6596a + ", code=" + this.f6597b + ", encodedPayload=" + this.f6598c + ", eventMillis=" + this.f6599d + ", uptimeMillis=" + this.f6600e + ", autoMetadata=" + this.f6601f + "}";
    }
}
