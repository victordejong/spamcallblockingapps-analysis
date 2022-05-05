package com.criteo.publisher.model;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/c.class */
public abstract class AbstractC2024c extends AbstractC2051v {

    /* renamed from: a */
    public final Boolean f2204a;

    /* renamed from: b */
    public final String f2205b;

    /* renamed from: c */
    public final String f2206c;

    /* renamed from: d */
    public final String f2207d;

    /* renamed from: e */
    public final String f2208e;

    /* renamed from: f */
    public final Boolean f2209f;

    public AbstractC2024c(@Nullable Boolean bool, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool2) {
        this.f2204a = bool;
        this.f2205b = str;
        this.f2206c = str2;
        this.f2207d = str3;
        this.f2208e = str4;
        this.f2209f = bool2;
    }

    @Override // com.criteo.publisher.model.AbstractC2051v
    @Nullable
    @AbstractC10120c("AndroidAdTagDataMacro")
    /* renamed from: a */
    public String mo35811a() {
        return this.f2207d;
    }

    @Override // com.criteo.publisher.model.AbstractC2051v
    @Nullable
    @AbstractC10120c("AndroidAdTagDataMode")
    /* renamed from: b */
    public String mo35807b() {
        return this.f2208e;
    }

    @Override // com.criteo.publisher.model.AbstractC2051v
    @Nullable
    @AbstractC10120c("AndroidAdTagUrlMode")
    /* renamed from: c */
    public String mo35806c() {
        return this.f2206c;
    }

    @Override // com.criteo.publisher.model.AbstractC2051v
    @Nullable
    @AbstractC10120c("AndroidDisplayUrlMacro")
    /* renamed from: d */
    public String mo35805d() {
        return this.f2205b;
    }

    @Override // com.criteo.publisher.model.AbstractC2051v
    @Nullable
    /* renamed from: e */
    public Boolean mo35804e() {
        return this.f2209f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2051v)) {
            return false;
        }
        AbstractC2051v vVar = (AbstractC2051v) obj;
        Boolean bool = this.f2204a;
        if (bool != null ? bool.equals(vVar.mo35803f()) : vVar.mo35803f() == null) {
            String str = this.f2205b;
            if (str != null ? str.equals(vVar.mo35805d()) : vVar.mo35805d() == null) {
                String str2 = this.f2206c;
                if (str2 != null ? str2.equals(vVar.mo35806c()) : vVar.mo35806c() == null) {
                    String str3 = this.f2207d;
                    if (str3 != null ? str3.equals(vVar.mo35811a()) : vVar.mo35811a() == null) {
                        String str4 = this.f2208e;
                        if (str4 != null ? str4.equals(vVar.mo35807b()) : vVar.mo35807b() == null) {
                            Boolean bool2 = this.f2209f;
                            if (bool2 != null) {
                            }
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    @Override // com.criteo.publisher.model.AbstractC2051v
    @Nullable
    /* renamed from: f */
    public Boolean mo35803f() {
        return this.f2204a;
    }

    public int hashCode() {
        Boolean bool = this.f2204a;
        int i = 0;
        int hashCode = bool == null ? 0 : bool.hashCode();
        String str = this.f2205b;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f2206c;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f2207d;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f2208e;
        int hashCode5 = str4 == null ? 0 : str4.hashCode();
        Boolean bool2 = this.f2209f;
        if (bool2 != null) {
            i = bool2.hashCode();
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ i;
    }

    public String toString() {
        return "RemoteConfigResponse{killSwitch=" + this.f2204a + ", androidDisplayUrlMacro=" + this.f2205b + ", androidAdTagUrlMode=" + this.f2206c + ", androidAdTagDataMacro=" + this.f2207d + ", androidAdTagDataMode=" + this.f2208e + ", csmEnabled=" + this.f2209f + CssParser.BLOCK_END;
    }
}
