package com.google.android.datatransport.cct.a;

import com.google.android.datatransport.cct.a.l;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/f.class */
final class f extends l {

    /* renamed from: a  reason: collision with root package name */
    private final long f20352a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f20353b;

    /* renamed from: c  reason: collision with root package name */
    private final long f20354c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f20355d;
    private final String e;
    private final long f;
    private final o g;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/f$a.class */
    static final class a extends l.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20356a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f20357b;

        /* renamed from: c  reason: collision with root package name */
        private Long f20358c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f20359d;
        private String e;
        private Long f;
        private o g;

        @Override // com.google.android.datatransport.cct.a.l.a
        public final l.a a(long j) {
            this.f20356a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.l.a
        public final l.a a(o oVar) {
            this.g = oVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.l.a
        public final l.a a(Integer num) {
            this.f20357b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.l.a
        final l.a a(String str) {
            this.e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.l.a
        final l.a a(byte[] bArr) {
            this.f20359d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.l.a
        public final l a() {
            String str = "";
            if (this.f20356a == null) {
                str = " eventTimeMs";
            }
            String str2 = str;
            if (this.f20358c == null) {
                str2 = str + " eventUptimeMs";
            }
            String str3 = str2;
            if (this.f == null) {
                str3 = str2 + " timezoneOffsetSeconds";
            }
            if (str3.isEmpty()) {
                return new f(this.f20356a.longValue(), this.f20357b, this.f20358c.longValue(), this.f20359d, this.e, this.f.longValue(), this.g);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }

        @Override // com.google.android.datatransport.cct.a.l.a
        public final l.a b(long j) {
            this.f20358c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.l.a
        public final l.a c(long j) {
            this.f = Long.valueOf(j);
            return this;
        }
    }

    private f(long j, Integer num, long j2, byte[] bArr, String str, long j3, o oVar) {
        this.f20352a = j;
        this.f20353b = num;
        this.f20354c = j2;
        this.f20355d = bArr;
        this.e = str;
        this.f = j3;
        this.g = oVar;
    }

    @Override // com.google.android.datatransport.cct.a.l
    public final long a() {
        return this.f20352a;
    }

    @Override // com.google.android.datatransport.cct.a.l
    public final Integer b() {
        return this.f20353b;
    }

    @Override // com.google.android.datatransport.cct.a.l
    public final long c() {
        return this.f20354c;
    }

    @Override // com.google.android.datatransport.cct.a.l
    public final byte[] d() {
        return this.f20355d;
    }

    @Override // com.google.android.datatransport.cct.a.l
    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f20352a != lVar.a()) {
            return false;
        }
        Integer num = this.f20353b;
        if (num == null) {
            if (lVar.b() != null) {
                return false;
            }
        } else if (!num.equals(lVar.b())) {
            return false;
        }
        if (this.f20354c != lVar.c()) {
            return false;
        }
        if (!Arrays.equals(this.f20355d, lVar instanceof f ? ((f) lVar).f20355d : lVar.d())) {
            return false;
        }
        String str = this.e;
        if (str == null) {
            if (lVar.e() != null) {
                return false;
            }
        } else if (!str.equals(lVar.e())) {
            return false;
        }
        if (this.f != lVar.f()) {
            return false;
        }
        o oVar = this.g;
        return oVar == null ? lVar.g() == null : oVar.equals(lVar.g());
    }

    @Override // com.google.android.datatransport.cct.a.l
    public final long f() {
        return this.f;
    }

    @Override // com.google.android.datatransport.cct.a.l
    public final o g() {
        return this.g;
    }

    public final int hashCode() {
        long j = this.f20352a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f20353b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f20354c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f20355d);
        String str = this.e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        o oVar = this.g;
        if (oVar != null) {
            i2 = oVar.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f20352a + ", eventCode=" + this.f20353b + ", eventUptimeMs=" + this.f20354c + ", sourceExtension=" + Arrays.toString(this.f20355d) + ", sourceExtensionJsonProto3=" + this.e + ", timezoneOffsetSeconds=" + this.f + ", networkConnectionInfo=" + this.g + "}";
    }
}
