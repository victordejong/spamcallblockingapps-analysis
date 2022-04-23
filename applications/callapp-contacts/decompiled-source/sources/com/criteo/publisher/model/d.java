package com.criteo.publisher.model;

import com.google.gson.annotations.b;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/d.class */
public abstract class d extends w {

    /* renamed from: a  reason: collision with root package name */
    private final String f17582a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17583b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17584c;

    /* renamed from: d  reason: collision with root package name */
    private final int f17585d;
    private final String e;
    private final String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, String str3, int i, String str4, String str5) {
        Objects.requireNonNull(str, "Null criteoPublisherId");
        this.f17582a = str;
        Objects.requireNonNull(str2, "Null bundleId");
        this.f17583b = str2;
        Objects.requireNonNull(str3, "Null sdkVersion");
        this.f17584c = str3;
        this.f17585d = i;
        this.e = str4;
        Objects.requireNonNull(str5, "Null deviceOs");
        this.f = str5;
    }

    @Override // com.criteo.publisher.model.w
    public String a() {
        return this.f17583b;
    }

    @Override // com.criteo.publisher.model.w
    @b(a = "cpId")
    public String b() {
        return this.f17582a;
    }

    @Override // com.criteo.publisher.model.w
    public String c() {
        return this.e;
    }

    @Override // com.criteo.publisher.model.w
    public String d() {
        return this.f;
    }

    @Override // com.criteo.publisher.model.w
    @b(a = "rtbProfileId")
    public int e() {
        return this.f17585d;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        if (!this.f17582a.equals(wVar.b()) || !this.f17583b.equals(wVar.a()) || !this.f17584c.equals(wVar.f()) || this.f17585d != wVar.e() || ((str = this.e) != null ? !str.equals(wVar.c()) : wVar.c() != null) || !this.f.equals(wVar.d())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.w
    public String f() {
        return this.f17584c;
    }

    public int hashCode() {
        int hashCode = this.f17582a.hashCode();
        int hashCode2 = this.f17583b.hashCode();
        int hashCode3 = this.f17584c.hashCode();
        int i = this.f17585d;
        String str = this.e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f.hashCode();
    }

    public String toString() {
        return "RemoteConfigRequest{criteoPublisherId=" + this.f17582a + ", bundleId=" + this.f17583b + ", sdkVersion=" + this.f17584c + ", profileId=" + this.f17585d + ", deviceId=" + this.e + ", deviceOs=" + this.f + "}";
    }
}
