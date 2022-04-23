package com.google.android.play.core.assetpacks;

import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/aa.class */
final class aa extends b {

    /* renamed from: a  reason: collision with root package name */
    private final String f31083a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31084b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31085c;

    /* renamed from: d  reason: collision with root package name */
    private final long f31086d;
    private final long e;
    private final int f;
    private final int g;
    private final String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(String str, int i, int i2, long j, long j2, int i3, int i4, String str2) {
        Objects.requireNonNull(str, "Null name");
        this.f31083a = str;
        this.f31084b = i;
        this.f31085c = i2;
        this.f31086d = j;
        this.e = j2;
        this.f = i3;
        this.g = i4;
        Objects.requireNonNull(str2, "Null versionTag");
        this.h = str2;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final String a() {
        return this.f31083a;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final int b() {
        return this.f31084b;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final int c() {
        return this.f31085c;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final long d() {
        return this.f31086d;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final long e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f31083a.equals(bVar.a()) && this.f31084b == bVar.b() && this.f31085c == bVar.c() && this.f31086d == bVar.d() && this.e == bVar.e() && this.f == bVar.f() && this.g == bVar.g() && this.h.equals(bVar.h());
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final int f() {
        return this.f;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final int g() {
        return this.g;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final String h() {
        return this.h;
    }

    public final int hashCode() {
        int hashCode = this.f31083a.hashCode();
        int i = this.f31084b;
        int i2 = this.f31085c;
        long j = this.f31086d;
        long j2 = this.e;
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f) * 1000003) ^ this.g) * 1000003) ^ this.h.hashCode();
    }

    public final String toString() {
        String str = this.f31083a;
        int i = this.f31084b;
        int i2 = this.f31085c;
        long j = this.f31086d;
        long j2 = this.e;
        int i3 = this.f;
        int i4 = this.g;
        String str2 = this.h;
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
