package com.google.android.play.core.install;

import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/install/c.class */
public final class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private final int f31334a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31335b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31336c;

    /* renamed from: d  reason: collision with root package name */
    private final int f31337d;
    private final String e;

    public c(int i, long j, long j2, int i2, String str) {
        this.f31334a = i;
        this.f31335b = j;
        this.f31336c = j2;
        this.f31337d = i2;
        Objects.requireNonNull(str, "Null packageName");
        this.e = str;
    }

    @Override // com.google.android.play.core.install.a
    public final int a() {
        return this.f31334a;
    }

    @Override // com.google.android.play.core.install.a
    public final long b() {
        return this.f31335b;
    }

    @Override // com.google.android.play.core.install.a
    public final long c() {
        return this.f31336c;
    }

    @Override // com.google.android.play.core.install.a
    public final int d() {
        return this.f31337d;
    }

    @Override // com.google.android.play.core.install.a
    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f31334a == aVar.a() && this.f31335b == aVar.b() && this.f31336c == aVar.c() && this.f31337d == aVar.d() && this.e.equals(aVar.e());
    }

    public final int hashCode() {
        int i = this.f31334a;
        long j = this.f31335b;
        long j2 = this.f31336c;
        return ((((((((i ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f31337d) * 1000003) ^ this.e.hashCode();
    }

    public final String toString() {
        int i = this.f31334a;
        long j = this.f31335b;
        long j2 = this.f31336c;
        int i2 = this.f31337d;
        String str = this.e;
        StringBuilder sb = new StringBuilder(str.length() + 164);
        sb.append("InstallState{installStatus=");
        sb.append(i);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", installErrorCode=");
        sb.append(i2);
        sb.append(", packageName=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
