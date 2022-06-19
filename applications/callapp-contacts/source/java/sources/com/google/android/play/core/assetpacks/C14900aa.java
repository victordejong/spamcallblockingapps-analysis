package com.google.android.play.core.assetpacks;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.aa */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/aa.class */
public final class C14900aa extends AbstractC14926b {

    /* renamed from: a */
    private final String f54371a;

    /* renamed from: b */
    private final int f54372b;

    /* renamed from: c */
    private final int f54373c;

    /* renamed from: d */
    private final long f54374d;

    /* renamed from: e */
    private final long f54375e;

    /* renamed from: f */
    private final int f54376f;

    /* renamed from: g */
    private final int f54377g;

    /* renamed from: h */
    private final String f54378h;

    public C14900aa(String str, int i, int i2, long j, long j2, int i3, int i4, String str2) {
        Objects.requireNonNull(str, "Null name");
        this.f54371a = str;
        this.f54372b = i;
        this.f54373c = i2;
        this.f54374d = j;
        this.f54375e = j2;
        this.f54376f = i3;
        this.f54377g = i4;
        Objects.requireNonNull(str2, "Null versionTag");
        this.f54378h = str2;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: a */
    public final String mo9774a() {
        return this.f54371a;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: b */
    public final int mo9771b() {
        return this.f54372b;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: c */
    public final int mo9770c() {
        return this.f54373c;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: d */
    public final long mo9769d() {
        return this.f54374d;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: e */
    public final long mo9768e() {
        return this.f54375e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC14926b)) {
            return false;
        }
        AbstractC14926b abstractC14926b = (AbstractC14926b) obj;
        return this.f54371a.equals(abstractC14926b.mo9774a()) && this.f54372b == abstractC14926b.mo9771b() && this.f54373c == abstractC14926b.mo9770c() && this.f54374d == abstractC14926b.mo9769d() && this.f54375e == abstractC14926b.mo9768e() && this.f54376f == abstractC14926b.mo9767f() && this.f54377g == abstractC14926b.mo9766g() && this.f54378h.equals(abstractC14926b.mo9765h());
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: f */
    public final int mo9767f() {
        return this.f54376f;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: g */
    public final int mo9766g() {
        return this.f54377g;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14926b
    /* renamed from: h */
    public final String mo9765h() {
        return this.f54378h;
    }

    public final int hashCode() {
        int hashCode = this.f54371a.hashCode();
        int i = this.f54372b;
        int i2 = this.f54373c;
        long j = this.f54374d;
        long j2 = this.f54375e;
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f54376f) * 1000003) ^ this.f54377g) * 1000003) ^ this.f54378h.hashCode();
    }

    public final String toString() {
        String str = this.f54371a;
        int i = this.f54372b;
        int i2 = this.f54373c;
        long j = this.f54374d;
        long j2 = this.f54375e;
        int i3 = this.f54376f;
        int i4 = this.f54377g;
        String str2 = this.f54378h;
        StringBuilder sb = new StringBuilder(str.length() + 230 + str2.length());
        sb.append("AssetPackState{name=");
        sb.append(str);
        sb.append(", status=");
        sb.append(i);
        sb.append(", errorCode=");
        sb.append(i2);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", transferProgressPercentage=");
        sb.append(i3);
        sb.append(", updateAvailability=");
        sb.append(i4);
        sb.append(", versionTag=");
        sb.append(str2);
        sb.append("}");
        return sb.toString();
    }
}
