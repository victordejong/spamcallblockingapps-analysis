package p167m4;

import com.google.android.play.core.install.InstallState;
import java.util.Objects;
import p007a6.C0028d;
/* renamed from: m4.a */
/* loaded from: classes-dex2jar.jar:m4/a.class */
public final class C3640a extends InstallState {

    /* renamed from: a */
    public final int f11920a;

    /* renamed from: b */
    public final long f11921b;

    /* renamed from: c */
    public final long f11922c;

    /* renamed from: d */
    public final int f11923d;

    /* renamed from: e */
    public final String f11924e;

    public C3640a(int i, long j, long j2, int i2, String str) {
        this.f11920a = i;
        this.f11921b = j;
        this.f11922c = j2;
        this.f11923d = i2;
        Objects.requireNonNull(str, "Null packageName");
        this.f11924e = str;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: a */
    public final long mo1943a() {
        return this.f11921b;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: b */
    public final int mo1942b() {
        return this.f11923d;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: c */
    public final int mo1941c() {
        return this.f11920a;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: d */
    public final String mo1940d() {
        return this.f11924e;
    }

    @Override // com.google.android.play.core.install.InstallState
    /* renamed from: e */
    public final long mo1939e() {
        return this.f11922c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallState)) {
            return false;
        }
        InstallState installState = (InstallState) obj;
        return this.f11920a == installState.mo1941c() && this.f11921b == installState.mo1943a() && this.f11922c == installState.mo1939e() && this.f11923d == installState.mo1942b() && this.f11924e.equals(installState.mo1940d());
    }

    public final int hashCode() {
        int i = this.f11920a;
        long j = this.f11921b;
        long j2 = this.f11922c;
        return ((((((((i ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f11923d) * 1000003) ^ this.f11924e.hashCode();
    }

    public final String toString() {
        int i = this.f11920a;
        long j = this.f11921b;
        long j2 = this.f11922c;
        int i2 = this.f11923d;
        String str = this.f11924e;
        StringBuilder sb = new StringBuilder(str.length() + 164);
        sb.append("InstallState{installStatus=");
        sb.append(i);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        C0028d.m8911i(sb, ", totalBytesToDownload=", j2, ", installErrorCode=");
        sb.append(i2);
        sb.append(", packageName=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
