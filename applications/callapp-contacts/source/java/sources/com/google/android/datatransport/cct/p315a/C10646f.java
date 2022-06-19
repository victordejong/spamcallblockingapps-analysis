package com.google.android.datatransport.cct.p315a;

import com.google.android.datatransport.cct.p315a.AbstractC10660l;
import java.util.Arrays;
/* renamed from: com.google.android.datatransport.cct.a.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/f.class */
final class C10646f extends AbstractC10660l {

    /* renamed from: a */
    private final long f34469a;

    /* renamed from: b */
    private final Integer f34470b;

    /* renamed from: c */
    private final long f34471c;

    /* renamed from: d */
    private final byte[] f34472d;

    /* renamed from: e */
    private final String f34473e;

    /* renamed from: f */
    private final long f34474f;

    /* renamed from: g */
    private final AbstractC10665o f34475g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.a.f$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/f$a.class */
    public static final class C10648a extends AbstractC10660l.AbstractC10661a {

        /* renamed from: a */
        private Long f34476a;

        /* renamed from: b */
        private Integer f34477b;

        /* renamed from: c */
        private Long f34478c;

        /* renamed from: d */
        private byte[] f34479d;

        /* renamed from: e */
        private String f34480e;

        /* renamed from: f */
        private Long f34481f;

        /* renamed from: g */
        private AbstractC10665o f34482g;

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: a */
        public final AbstractC10660l.AbstractC10661a mo22560a(long j) {
            this.f34476a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: a */
        public final AbstractC10660l.AbstractC10661a mo22559a(AbstractC10665o abstractC10665o) {
            this.f34482g = abstractC10665o;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: a */
        public final AbstractC10660l.AbstractC10661a mo22558a(Integer num) {
            this.f34477b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: a */
        final AbstractC10660l.AbstractC10661a mo22557a(String str) {
            this.f34480e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: a */
        final AbstractC10660l.AbstractC10661a mo22556a(byte[] bArr) {
            this.f34479d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: a */
        public final AbstractC10660l mo22561a() {
            String str = "";
            if (this.f34476a == null) {
                str = " eventTimeMs";
            }
            String str2 = str;
            if (this.f34478c == null) {
                str2 = str + " eventUptimeMs";
            }
            String str3 = str2;
            if (this.f34481f == null) {
                str3 = str2 + " timezoneOffsetSeconds";
            }
            if (str3.isEmpty()) {
                return new C10646f(this.f34476a.longValue(), this.f34477b, this.f34478c.longValue(), this.f34479d, this.f34480e, this.f34481f.longValue(), this.f34482g);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: b */
        public final AbstractC10660l.AbstractC10661a mo22555b(long j) {
            this.f34478c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l.AbstractC10661a
        /* renamed from: c */
        public final AbstractC10660l.AbstractC10661a mo22554c(long j) {
            this.f34481f = Long.valueOf(j);
            return this;
        }
    }

    private C10646f(long j, Integer num, long j2, byte[] bArr, String str, long j3, AbstractC10665o abstractC10665o) {
        this.f34469a = j;
        this.f34470b = num;
        this.f34471c = j2;
        this.f34472d = bArr;
        this.f34473e = str;
        this.f34474f = j3;
        this.f34475g = abstractC10665o;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l
    /* renamed from: a */
    public final long mo22570a() {
        return this.f34469a;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l
    /* renamed from: b */
    public final Integer mo22567b() {
        return this.f34470b;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l
    /* renamed from: c */
    public final long mo22566c() {
        return this.f34471c;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l
    /* renamed from: d */
    public final byte[] mo22565d() {
        return this.f34472d;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l
    /* renamed from: e */
    public final String mo22564e() {
        return this.f34473e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10660l)) {
            return false;
        }
        AbstractC10660l abstractC10660l = (AbstractC10660l) obj;
        if (this.f34469a != abstractC10660l.mo22570a()) {
            return false;
        }
        Integer num = this.f34470b;
        if (num == null) {
            if (abstractC10660l.mo22567b() != null) {
                return false;
            }
        } else if (!num.equals(abstractC10660l.mo22567b())) {
            return false;
        }
        if (this.f34471c != abstractC10660l.mo22566c()) {
            return false;
        }
        if (!Arrays.equals(this.f34472d, abstractC10660l instanceof C10646f ? ((C10646f) abstractC10660l).f34472d : abstractC10660l.mo22565d())) {
            return false;
        }
        String str = this.f34473e;
        if (str == null) {
            if (abstractC10660l.mo22564e() != null) {
                return false;
            }
        } else if (!str.equals(abstractC10660l.mo22564e())) {
            return false;
        }
        if (this.f34474f != abstractC10660l.mo22563f()) {
            return false;
        }
        AbstractC10665o abstractC10665o = this.f34475g;
        return abstractC10665o == null ? abstractC10660l.mo22562g() == null : abstractC10665o.equals(abstractC10660l.mo22562g());
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l
    /* renamed from: f */
    public final long mo22563f() {
        return this.f34474f;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10660l
    /* renamed from: g */
    public final AbstractC10665o mo22562g() {
        return this.f34475g;
    }

    public final int hashCode() {
        long j = this.f34469a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f34470b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f34471c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f34472d);
        String str = this.f34473e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f34474f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        AbstractC10665o abstractC10665o = this.f34475g;
        if (abstractC10665o != null) {
            i2 = abstractC10665o.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f34469a + ", eventCode=" + this.f34470b + ", eventUptimeMs=" + this.f34471c + ", sourceExtension=" + Arrays.toString(this.f34472d) + ", sourceExtensionJsonProto3=" + this.f34473e + ", timezoneOffsetSeconds=" + this.f34474f + ", networkConnectionInfo=" + this.f34475g + "}";
    }
}
