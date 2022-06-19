package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.AbstractC4642l;
import java.util.List;
/* renamed from: com.google.android.datatransport.cct.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/g.class */
final class C4632g extends AbstractC4642l {

    /* renamed from: a */
    private final long f14171a;

    /* renamed from: b */
    private final long f14172b;

    /* renamed from: c */
    private final ClientInfo f14173c;

    /* renamed from: d */
    private final Integer f14174d;

    /* renamed from: e */
    private final String f14175e;

    /* renamed from: f */
    private final List<AbstractC4640k> f14176f;

    /* renamed from: g */
    private final QosTier f14177g;

    /* renamed from: com.google.android.datatransport.cct.internal.g$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/g$b.class */
    public static final class C4634b extends AbstractC4642l.AbstractC4643a {

        /* renamed from: a */
        private Long f14178a;

        /* renamed from: b */
        private Long f14179b;

        /* renamed from: c */
        private ClientInfo f14180c;

        /* renamed from: d */
        private Integer f14181d;

        /* renamed from: e */
        private String f14182e;

        /* renamed from: f */
        private List<AbstractC4640k> f14183f;

        /* renamed from: g */
        private QosTier f14184g;

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: a */
        public AbstractC4642l mo22085a() {
            String str = "";
            if (this.f14178a == null) {
                str = " requestTimeMs";
            }
            String str2 = str;
            if (this.f14179b == null) {
                str2 = str + " requestUptimeMs";
            }
            if (str2.isEmpty()) {
                return new C4632g(this.f14178a.longValue(), this.f14179b.longValue(), this.f14180c, this.f14181d, this.f14182e, this.f14183f, this.f14184g);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: b */
        public AbstractC4642l.AbstractC4643a mo22084b(ClientInfo clientInfo) {
            this.f14180c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: c */
        public AbstractC4642l.AbstractC4643a mo22083c(List<AbstractC4640k> list) {
            this.f14183f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: d */
        AbstractC4642l.AbstractC4643a mo22082d(Integer num) {
            this.f14181d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: e */
        AbstractC4642l.AbstractC4643a mo22081e(String str) {
            this.f14182e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: f */
        public AbstractC4642l.AbstractC4643a mo22080f(QosTier qosTier) {
            this.f14184g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: g */
        public AbstractC4642l.AbstractC4643a mo22079g(long j) {
            this.f14178a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AbstractC4642l.AbstractC4643a
        /* renamed from: h */
        public AbstractC4642l.AbstractC4643a mo22078h(long j) {
            this.f14179b = Long.valueOf(j);
            return this;
        }
    }

    private C4632g(long j, long j2, ClientInfo clientInfo, Integer num, String str, List<AbstractC4640k> list, QosTier qosTier) {
        this.f14171a = j;
        this.f14172b = j2;
        this.f14173c = clientInfo;
        this.f14174d = num;
        this.f14175e = str;
        this.f14176f = list;
        this.f14177g = qosTier;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4642l
    /* renamed from: b */
    public ClientInfo mo22092b() {
        return this.f14173c;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4642l
    /* renamed from: c */
    public List<AbstractC4640k> mo22091c() {
        return this.f14176f;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4642l
    /* renamed from: d */
    public Integer mo22090d() {
        return this.f14174d;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4642l
    /* renamed from: e */
    public String mo22089e() {
        return this.f14175e;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<AbstractC4640k> list;
        QosTier qosTier;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4642l)) {
            return false;
        }
        AbstractC4642l abstractC4642l = (AbstractC4642l) obj;
        if (this.f14171a != abstractC4642l.mo22087g() || this.f14172b != abstractC4642l.mo22086h() || ((clientInfo = this.f14173c) != null ? !clientInfo.equals(abstractC4642l.mo22092b()) : abstractC4642l.mo22092b() != null) || ((num = this.f14174d) != null ? !num.equals(abstractC4642l.mo22090d()) : abstractC4642l.mo22090d() != null) || ((str = this.f14175e) != null ? !str.equals(abstractC4642l.mo22089e()) : abstractC4642l.mo22089e() != null) || ((list = this.f14176f) != null ? !list.equals(abstractC4642l.mo22091c()) : abstractC4642l.mo22091c() != null) || ((qosTier = this.f14177g) != null ? !qosTier.equals(abstractC4642l.mo22088f()) : abstractC4642l.mo22088f() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4642l
    /* renamed from: f */
    public QosTier mo22088f() {
        return this.f14177g;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4642l
    /* renamed from: g */
    public long mo22087g() {
        return this.f14171a;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4642l
    /* renamed from: h */
    public long mo22086h() {
        return this.f14172b;
    }

    public int hashCode() {
        long j = this.f14171a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f14172b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        ClientInfo clientInfo = this.f14173c;
        int i3 = 0;
        int hashCode = clientInfo == null ? 0 : clientInfo.hashCode();
        Integer num = this.f14174d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f14175e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<AbstractC4640k> list = this.f14176f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        QosTier qosTier = this.f14177g;
        if (qosTier != null) {
            i3 = qosTier.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f14171a + ", requestUptimeMs=" + this.f14172b + ", clientInfo=" + this.f14173c + ", logSource=" + this.f14174d + ", logSourceName=" + this.f14175e + ", logEvents=" + this.f14176f + ", qosTier=" + this.f14177g + "}";
    }
}
