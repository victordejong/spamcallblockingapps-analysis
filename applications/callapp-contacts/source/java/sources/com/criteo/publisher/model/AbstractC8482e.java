package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.google.gson.annotations.AbstractC15952b;
/* renamed from: com.criteo.publisher.model.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/e.class */
public abstract class AbstractC8482e extends AbstractC8515y {

    /* renamed from: a */
    private final Boolean f30281a;

    /* renamed from: b */
    private final String f30282b;

    /* renamed from: c */
    private final String f30283c;

    /* renamed from: d */
    private final String f30284d;

    /* renamed from: e */
    private final String f30285e;

    /* renamed from: f */
    private final Boolean f30286f;

    /* renamed from: g */
    private final Boolean f30287g;

    /* renamed from: h */
    private final Integer f30288h;

    /* renamed from: i */
    private final Boolean f30289i;

    /* renamed from: j */
    private final RemoteLogRecords.RemoteLogLevel f30290j;

    public AbstractC8482e(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        this.f30281a = bool;
        this.f30282b = str;
        this.f30283c = str2;
        this.f30284d = str3;
        this.f30285e = str4;
        this.f30286f = bool2;
        this.f30287g = bool3;
        this.f30288h = num;
        this.f30289i = bool4;
        this.f30290j = remoteLogLevel;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    @AbstractC15952b(m7988a = "AndroidAdTagDataMacro")
    /* renamed from: b */
    public String mo25495b() {
        return this.f30284d;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    @AbstractC15952b(m7988a = "AndroidAdTagDataMode")
    /* renamed from: c */
    public String mo25494c() {
        return this.f30285e;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    @AbstractC15952b(m7988a = "AndroidAdTagUrlMode")
    /* renamed from: d */
    public String mo25493d() {
        return this.f30283c;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    @AbstractC15952b(m7988a = "AndroidDisplayUrlMacro")
    /* renamed from: e */
    public String mo25492e() {
        return this.f30282b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8515y)) {
            return false;
        }
        AbstractC8515y abstractC8515y = (AbstractC8515y) obj;
        Boolean bool = this.f30281a;
        if (bool != null ? bool.equals(abstractC8515y.mo25490g()) : abstractC8515y.mo25490g() == null) {
            String str = this.f30282b;
            if (str != null ? str.equals(abstractC8515y.mo25492e()) : abstractC8515y.mo25492e() == null) {
                String str2 = this.f30283c;
                if (str2 != null ? str2.equals(abstractC8515y.mo25493d()) : abstractC8515y.mo25493d() == null) {
                    String str3 = this.f30284d;
                    if (str3 != null ? str3.equals(abstractC8515y.mo25495b()) : abstractC8515y.mo25495b() == null) {
                        String str4 = this.f30285e;
                        if (str4 != null ? str4.equals(abstractC8515y.mo25494c()) : abstractC8515y.mo25494c() == null) {
                            Boolean bool2 = this.f30286f;
                            if (bool2 != null ? bool2.equals(abstractC8515y.mo25491f()) : abstractC8515y.mo25491f() == null) {
                                Boolean bool3 = this.f30287g;
                                if (bool3 != null ? bool3.equals(abstractC8515y.mo25489h()) : abstractC8515y.mo25489h() == null) {
                                    Integer num = this.f30288h;
                                    if (num != null ? num.equals(abstractC8515y.mo25488i()) : abstractC8515y.mo25488i() == null) {
                                        Boolean bool4 = this.f30289i;
                                        if (bool4 != null ? bool4.equals(abstractC8515y.mo25487j()) : abstractC8515y.mo25487j() == null) {
                                            RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.f30290j;
                                            if (remoteLogLevel != null) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    /* renamed from: f */
    public Boolean mo25491f() {
        return this.f30286f;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    /* renamed from: g */
    public Boolean mo25490g() {
        return this.f30281a;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    /* renamed from: h */
    public Boolean mo25489h() {
        return this.f30287g;
    }

    public int hashCode() {
        Boolean bool = this.f30281a;
        int i = 0;
        int hashCode = bool == null ? 0 : bool.hashCode();
        String str = this.f30282b;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f30283c;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f30284d;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f30285e;
        int hashCode5 = str4 == null ? 0 : str4.hashCode();
        Boolean bool2 = this.f30286f;
        int hashCode6 = bool2 == null ? 0 : bool2.hashCode();
        Boolean bool3 = this.f30287g;
        int hashCode7 = bool3 == null ? 0 : bool3.hashCode();
        Integer num = this.f30288h;
        int hashCode8 = num == null ? 0 : num.hashCode();
        Boolean bool4 = this.f30289i;
        int hashCode9 = bool4 == null ? 0 : bool4.hashCode();
        RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.f30290j;
        if (remoteLogLevel != null) {
            i = remoteLogLevel.hashCode();
        }
        return ((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ hashCode7) * 1000003) ^ hashCode8) * 1000003) ^ hashCode9) * 1000003) ^ i;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    /* renamed from: i */
    public Integer mo25488i() {
        return this.f30288h;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    /* renamed from: j */
    public Boolean mo25487j() {
        return this.f30289i;
    }

    @Override // com.criteo.publisher.model.AbstractC8515y
    /* renamed from: k */
    public RemoteLogRecords.RemoteLogLevel mo25486k() {
        return this.f30290j;
    }

    public String toString() {
        return "RemoteConfigResponse{killSwitch=" + this.f30281a + ", androidDisplayUrlMacro=" + this.f30282b + ", androidAdTagUrlMode=" + this.f30283c + ", androidAdTagDataMacro=" + this.f30284d + ", androidAdTagDataMode=" + this.f30285e + ", csmEnabled=" + this.f30286f + ", liveBiddingEnabled=" + this.f30287g + ", liveBiddingTimeBudgetInMillis=" + this.f30288h + ", prefetchOnInitEnabled=" + this.f30289i + ", remoteLogLevel=" + this.f30290j + "}";
    }
}
