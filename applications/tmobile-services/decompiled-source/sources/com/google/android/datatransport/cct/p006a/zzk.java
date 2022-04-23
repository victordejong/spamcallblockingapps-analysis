package com.google.android.datatransport.cct.p006a;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.p006a.zzr;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;
/* renamed from: com.google.android.datatransport.cct.a.zzk */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzk.class */
final class zzk extends zzr {

    /* renamed from: a */
    private final long f6563a;

    /* renamed from: b */
    private final long f6564b;

    /* renamed from: c */
    private final zzp f6565c;

    /* renamed from: d */
    private final Integer f6566d;

    /* renamed from: e */
    private final String f6567e;

    /* renamed from: f */
    private final List<zzq> f6568f;

    /* renamed from: g */
    private final zzu f6569g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.a.zzk$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzk$zza.class */
    public static final class zza extends zzr.zza {

        /* renamed from: a */
        private Long f6570a;

        /* renamed from: b */
        private Long f6571b;

        /* renamed from: c */
        private zzp f6572c;

        /* renamed from: d */
        private Integer f6573d;

        /* renamed from: e */
        private String f6574e;

        /* renamed from: f */
        private List<zzq> f6575f;

        /* renamed from: g */
        private zzu f6576g;

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: b */
        public zzr.zza mo15498b(long j) {
            this.f6570a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: c */
        public zzr.zza mo15497c(@Nullable zzp zzpVar) {
            this.f6572c = zzpVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: d */
        public zzr.zza mo15496d(@Nullable zzu zzuVar) {
            this.f6576g = zzuVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: e */
        zzr.zza mo15495e(@Nullable Integer num) {
            this.f6573d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: f */
        zzr.zza mo15494f(@Nullable String str) {
            this.f6574e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: g */
        public zzr.zza mo15493g(@Nullable List<zzq> list) {
            this.f6575f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: h */
        public zzr mo15492h() {
            String str = "";
            if (this.f6570a == null) {
                str = " requestTimeMs";
            }
            String str2 = str;
            if (this.f6571b == null) {
                str2 = str + " requestUptimeMs";
            }
            if (str2.isEmpty()) {
                return new zzk(this.f6570a.longValue(), this.f6571b.longValue(), this.f6572c, this.f6573d, this.f6574e, this.f6575f, this.f6576g, null);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.android.datatransport.cct.p006a.zzr.zza
        /* renamed from: i */
        public zzr.zza mo15491i(long j) {
            this.f6571b = Long.valueOf(j);
            return this;
        }
    }

    /* synthetic */ zzk(long j, long j2, zzp zzpVar, Integer num, String str, List list, zzu zzuVar, zzj zzjVar) {
        this.f6563a = j;
        this.f6564b = j2;
        this.f6565c = zzpVar;
        this.f6566d = num;
        this.f6567e = str;
        this.f6568f = list;
        this.f6569g = zzuVar;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzr
    @Nullable
    /* renamed from: b */
    public zzp mo15506b() {
        return this.f6565c;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzr
    @Nullable
    @Encodable.Field(name = "logEvent")
    /* renamed from: c */
    public List<zzq> mo15505c() {
        return this.f6568f;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzr
    @Nullable
    /* renamed from: d */
    public Integer mo15504d() {
        return this.f6566d;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzr
    @Nullable
    /* renamed from: e */
    public String mo15503e() {
        return this.f6567e;
    }

    public boolean equals(Object obj) {
        zzp zzpVar;
        Integer num;
        String str;
        List<zzq> list;
        zzu zzuVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzr)) {
            return false;
        }
        zzr zzrVar = (zzr) obj;
        if (this.f6563a != zzrVar.mo15501g() || this.f6564b != zzrVar.mo15500h() || ((zzpVar = this.f6565c) != null ? !zzpVar.equals(((zzk) zzrVar).f6565c) : ((zzk) zzrVar).f6565c != null) || ((num = this.f6566d) != null ? !num.equals(((zzk) zzrVar).f6566d) : ((zzk) zzrVar).f6566d != null) || ((str = this.f6567e) != null ? !str.equals(((zzk) zzrVar).f6567e) : ((zzk) zzrVar).f6567e != null) || ((list = this.f6568f) != null ? !list.equals(((zzk) zzrVar).f6568f) : ((zzk) zzrVar).f6568f != null) || ((zzuVar = this.f6569g) != null ? !zzuVar.equals(((zzk) zzrVar).f6569g) : ((zzk) zzrVar).f6569g != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzr
    @Nullable
    /* renamed from: f */
    public zzu mo15502f() {
        return this.f6569g;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzr
    /* renamed from: g */
    public long mo15501g() {
        return this.f6563a;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzr
    /* renamed from: h */
    public long mo15500h() {
        return this.f6564b;
    }

    public int hashCode() {
        long j = this.f6563a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f6564b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        zzp zzpVar = this.f6565c;
        int i3 = 0;
        int hashCode = zzpVar == null ? 0 : zzpVar.hashCode();
        Integer num = this.f6566d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f6567e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<zzq> list = this.f6568f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        zzu zzuVar = this.f6569g;
        if (zzuVar != null) {
            i3 = zzuVar.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f6563a + ", requestUptimeMs=" + this.f6564b + ", clientInfo=" + this.f6565c + ", logSource=" + this.f6566d + ", logSourceName=" + this.f6567e + ", logEvents=" + this.f6568f + ", qosTier=" + this.f6569g + "}";
    }
}
