package com.google.android.play.core.assetpacks;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/z.class */
public final class C8458z extends AssetPackState {

    /* renamed from: a */
    private final String f37992a;

    /* renamed from: b */
    private final int f37993b;

    /* renamed from: c */
    private final int f37994c;

    /* renamed from: d */
    private final long f37995d;

    /* renamed from: e */
    private final long f37996e;

    /* renamed from: f */
    private final int f37997f;

    /* renamed from: g */
    private final int f37998g;

    /* renamed from: h */
    private final String f37999h;

    public C8458z(String str, int i, int i2, long j, long j2, int i3, int i4, String str2) {
        Objects.requireNonNull(str, "Null name");
        this.f37992a = str;
        this.f37993b = i;
        this.f37994c = i2;
        this.f37995d = j;
        this.f37996e = j2;
        this.f37997f = i3;
        this.f37998g = i4;
        Objects.requireNonNull(str2, "Null versionTag");
        this.f37999h = str2;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: a */
    public final int mo3608a() {
        return this.f37998g;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: b */
    public final String mo3607b() {
        return this.f37999h;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: c */
    public final long mo3606c() {
        return this.f37995d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AssetPackState)) {
            return false;
        }
        AssetPackState assetPackState = (AssetPackState) obj;
        return this.f37992a.equals(assetPackState.mo3604g()) && this.f37993b == assetPackState.mo3603h() && this.f37994c == assetPackState.mo3605f() && this.f37995d == assetPackState.mo3606c() && this.f37996e == assetPackState.mo3602i() && this.f37997f == assetPackState.mo3601j() && this.f37998g == assetPackState.mo3608a() && this.f37999h.equals(assetPackState.mo3607b());
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: f */
    public final int mo3605f() {
        return this.f37994c;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: g */
    public final String mo3604g() {
        return this.f37992a;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: h */
    public final int mo3603h() {
        return this.f37993b;
    }

    public final int hashCode() {
        int hashCode = this.f37992a.hashCode();
        int i = this.f37993b;
        int i2 = this.f37994c;
        long j = this.f37995d;
        long j2 = this.f37996e;
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f37997f) * 1000003) ^ this.f37998g) * 1000003) ^ this.f37999h.hashCode();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: i */
    public final long mo3602i() {
        return this.f37996e;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: j */
    public final int mo3601j() {
        return this.f37997f;
    }

    public final String toString() {
        String str = this.f37992a;
        int i = this.f37993b;
        int i2 = this.f37994c;
        long j = this.f37995d;
        long j2 = this.f37996e;
        int i3 = this.f37997f;
        int i4 = this.f37998g;
        String str2 = this.f37999h;
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
