package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.google.gson.annotations.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/e.class */
public abstract class e extends y {

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f17586a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17587b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17588c;

    /* renamed from: d  reason: collision with root package name */
    private final String f17589d;
    private final String e;
    private final Boolean f;
    private final Boolean g;
    private final Integer h;
    private final Boolean i;
    private final RemoteLogRecords.RemoteLogLevel j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        this.f17586a = bool;
        this.f17587b = str;
        this.f17588c = str2;
        this.f17589d = str3;
        this.e = str4;
        this.f = bool2;
        this.g = bool3;
        this.h = num;
        this.i = bool4;
        this.j = remoteLogLevel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @b(a = "AndroidAdTagDataMacro")
    public String b() {
        return this.f17589d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @b(a = "AndroidAdTagDataMode")
    public String c() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @b(a = "AndroidAdTagUrlMode")
    public String d() {
        return this.f17588c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @b(a = "AndroidDisplayUrlMacro")
    public String e() {
        return this.f17587b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        Boolean bool = this.f17586a;
        if (bool != null ? bool.equals(yVar.g()) : yVar.g() == null) {
            String str = this.f17587b;
            if (str != null ? str.equals(yVar.e()) : yVar.e() == null) {
                String str2 = this.f17588c;
                if (str2 != null ? str2.equals(yVar.d()) : yVar.d() == null) {
                    String str3 = this.f17589d;
                    if (str3 != null ? str3.equals(yVar.b()) : yVar.b() == null) {
                        String str4 = this.e;
                        if (str4 != null ? str4.equals(yVar.c()) : yVar.c() == null) {
                            Boolean bool2 = this.f;
                            if (bool2 != null ? bool2.equals(yVar.f()) : yVar.f() == null) {
                                Boolean bool3 = this.g;
                                if (bool3 != null ? bool3.equals(yVar.h()) : yVar.h() == null) {
                                    Integer num = this.h;
                                    if (num != null ? num.equals(yVar.i()) : yVar.i() == null) {
                                        Boolean bool4 = this.i;
                                        if (bool4 != null ? bool4.equals(yVar.j()) : yVar.j() == null) {
                                            RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.j;
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

    @Override // com.criteo.publisher.model.y
    public Boolean f() {
        return this.f;
    }

    @Override // com.criteo.publisher.model.y
    public Boolean g() {
        return this.f17586a;
    }

    @Override // com.criteo.publisher.model.y
    public Boolean h() {
        return this.g;
    }

    public int hashCode() {
        Boolean bool = this.f17586a;
        int i = 0;
        int hashCode = bool == null ? 0 : bool.hashCode();
        String str = this.f17587b;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f17588c;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f17589d;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.e;
        int hashCode5 = str4 == null ? 0 : str4.hashCode();
        Boolean bool2 = this.f;
        int hashCode6 = bool2 == null ? 0 : bool2.hashCode();
        Boolean bool3 = this.g;
        int hashCode7 = bool3 == null ? 0 : bool3.hashCode();
        Integer num = this.h;
        int hashCode8 = num == null ? 0 : num.hashCode();
        Boolean bool4 = this.i;
        int hashCode9 = bool4 == null ? 0 : bool4.hashCode();
        RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.j;
        if (remoteLogLevel != null) {
            i = remoteLogLevel.hashCode();
        }
        return ((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ hashCode7) * 1000003) ^ hashCode8) * 1000003) ^ hashCode9) * 1000003) ^ i;
    }

    @Override // com.criteo.publisher.model.y
    public Integer i() {
        return this.h;
    }

    @Override // com.criteo.publisher.model.y
    public Boolean j() {
        return this.i;
    }

    @Override // com.criteo.publisher.model.y
    public RemoteLogRecords.RemoteLogLevel k() {
        return this.j;
    }

    public String toString() {
        return "RemoteConfigResponse{killSwitch=" + this.f17586a + ", androidDisplayUrlMacro=" + this.f17587b + ", androidAdTagUrlMode=" + this.f17588c + ", androidAdTagDataMacro=" + this.f17589d + ", androidAdTagDataMode=" + this.e + ", csmEnabled=" + this.f + ", liveBiddingEnabled=" + this.g + ", liveBiddingTimeBudgetInMillis=" + this.h + ", prefetchOnInitEnabled=" + this.i + ", remoteLogLevel=" + this.j + "}";
    }
}
