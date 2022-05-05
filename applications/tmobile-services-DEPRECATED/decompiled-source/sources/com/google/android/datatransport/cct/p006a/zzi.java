package com.google.android.datatransport.cct.p006a;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.p006a.zzq;
import java.util.Arrays;
/* renamed from: com.google.android.datatransport.cct.a.zzi */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzi.class */
final class zzi extends zzq {

    /* renamed from: a */
    private final long f6549a;

    /* renamed from: b */
    private final Integer f6550b;

    /* renamed from: c */
    private final long f6551c;

    /* renamed from: d */
    private final byte[] f6552d;

    /* renamed from: e */
    private final String f6553e;

    /* renamed from: f */
    private final long f6554f;

    /* renamed from: g */
    private final zzt f6555g;

    /* renamed from: com.google.android.datatransport.cct.a.zzi$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzi$zza.class */
    static final class zza extends zzq.zza {

        /* renamed from: a */
        private Long f6556a;

        /* renamed from: b */
        private Integer f6557b;

        /* renamed from: c */
        private Long f6558c;

        /* renamed from: d */
        private byte[] f6559d;

        /* renamed from: e */
        private String f6560e;

        /* renamed from: f */
        private Long f6561f;

        /* renamed from: g */
        private zzt f6562g;

        @Override // com.google.android.datatransport.cct.p006a.zzq.zza
        /* renamed from: a */
        public zzq.zza mo15513a(long j) {
            this.f6556a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzq.zza
        /* renamed from: b */
        public zzq.zza mo15512b(@Nullable zzt zztVar) {
            this.f6562g = zztVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzq.zza
        /* renamed from: c */
        public zzq.zza mo15511c(@Nullable Integer num) {
            this.f6557b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzq.zza
        /* renamed from: d */
        public zzq mo15510d() {
            String str = "";
            if (this.f6556a == null) {
                str = " eventTimeMs";
            }
            String str2 = str;
            if (this.f6558c == null) {
                str2 = str + " eventUptimeMs";
            }
            String str3 = str2;
            if (this.f6561f == null) {
                str3 = str2 + " timezoneOffsetSeconds";
            }
            if (str3.isEmpty()) {
                return new zzi(this.f6556a.longValue(), this.f6557b, this.f6558c.longValue(), this.f6559d, this.f6560e, this.f6561f.longValue(), this.f6562g, null);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.android.datatransport.cct.p006a.zzq.zza
        /* renamed from: e */
        public zzq.zza mo15509e(long j) {
            this.f6558c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzq.zza
        /* renamed from: f */
        public zzq.zza mo15508f(long j) {
            this.f6561f = Long.valueOf(j);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: g */
        public zzq.zza m15532g(@Nullable String str) {
            this.f6560e = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: h */
        public zzq.zza m15531h(@Nullable byte[] bArr) {
            this.f6559d = bArr;
            return this;
        }
    }

    /* synthetic */ zzi(long j, Integer num, long j2, byte[] bArr, String str, long j3, zzt zztVar, zzh zzhVar) {
        this.f6549a = j;
        this.f6550b = num;
        this.f6551c = j2;
        this.f6552d = bArr;
        this.f6553e = str;
        this.f6554f = j3;
        this.f6555g = zztVar;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzq
    @Nullable
    /* renamed from: c */
    public Integer mo15520c() {
        return this.f6550b;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzq
    /* renamed from: d */
    public long mo15519d() {
        return this.f6549a;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzq
    /* renamed from: e */
    public long mo15518e() {
        return this.f6551c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a4, code lost:
        if (r5.f6554f != r0.mo15514i()) goto L_0x00ce;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ad, code lost:
        if ((r0 = r5.f6555g) != null) goto L_0x00bd;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.cct.p006a.zzi.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.datatransport.cct.p006a.zzq
    @Nullable
    /* renamed from: f */
    public zzt mo15517f() {
        return this.f6555g;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzq
    @Nullable
    /* renamed from: g */
    public byte[] mo15516g() {
        return this.f6552d;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzq
    @Nullable
    /* renamed from: h */
    public String mo15515h() {
        return this.f6553e;
    }

    public int hashCode() {
        long j = this.f6549a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f6550b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f6551c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f6552d);
        String str = this.f6553e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f6554f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        zzt zztVar = this.f6555g;
        if (zztVar != null) {
            i2 = zztVar.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzq
    /* renamed from: i */
    public long mo15514i() {
        return this.f6554f;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f6549a + ", eventCode=" + this.f6550b + ", eventUptimeMs=" + this.f6551c + ", sourceExtension=" + Arrays.toString(this.f6552d) + ", sourceExtensionJsonProto3=" + this.f6553e + ", timezoneOffsetSeconds=" + this.f6554f + ", networkConnectionInfo=" + this.f6555g + "}";
    }
}
