package com.google.android.play.core.install;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.install.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/install/a.class */
public final class C8464a extends InstallState {

    /* renamed from: a */
    private final int f38016a;

    /* renamed from: b */
    private final long f38017b;

    /* renamed from: c */
    private final long f38018c;

    /* renamed from: d */
    private final int f38019d;

    /* renamed from: e */
    private final String f38020e;

    public C8464a(int i, long j, long j2, int i2, String str) {
        this.f38016a = i;
        this.f38017b = j;
        this.f38018c = j2;
        this.f38019d = i2;
        Objects.requireNonNull(str, "Null packageName");
        this.f38020e = str;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: b */
    public final long mo3573b() {
        return this.f38017b;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: c */
    public final int mo3572c() {
        return this.f38019d;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: d */
    public final int mo3571d() {
        return this.f38016a;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: e */
    public final String mo3570e() {
        return this.f38020e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallState)) {
            return false;
        }
        InstallState installState = (InstallState) obj;
        return this.f38016a == installState.mo3571d() && this.f38017b == installState.mo3573b() && this.f38018c == installState.mo3569f() && this.f38019d == installState.mo3572c() && this.f38020e.equals(installState.mo3570e());
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: f */
    public final long mo3569f() {
        return this.f38018c;
    }

    public final int hashCode() {
        int i = this.f38016a;
        long j = this.f38017b;
        long j2 = this.f38018c;
        return ((((((((i ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f38019d) * 1000003) ^ this.f38020e.hashCode();
    }

    public final String toString() {
        int i = this.f38016a;
        long j = this.f38017b;
        long j2 = this.f38018c;
        int i2 = this.f38019d;
        String str = this.f38020e;
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
