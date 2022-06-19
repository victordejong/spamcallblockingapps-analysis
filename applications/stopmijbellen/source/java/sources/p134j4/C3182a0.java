package p134j4;

import com.google.android.gms.internal.ads.C1676a;
import com.google.android.play.core.assetpacks.AssetPackState;
import java.util.Objects;
import p007a6.C0028d;
/* renamed from: j4.a0 */
/* loaded from: classes-dex2jar.jar:j4/a0.class */
public final class C3182a0 extends AssetPackState {

    /* renamed from: a */
    public final String f10711a;

    /* renamed from: b */
    public final int f10712b;

    /* renamed from: c */
    public final int f10713c;

    /* renamed from: d */
    public final long f10714d;

    /* renamed from: e */
    public final long f10715e;

    /* renamed from: f */
    public final int f10716f;

    /* renamed from: g */
    public final int f10717g;

    /* renamed from: h */
    public final String f10718h;

    /* renamed from: i */
    public final String f10719i;

    public C3182a0(String str, int i, int i2, long j, long j2, int i3, int i4, String str2, String str3) {
        Objects.requireNonNull(str, "Null name");
        this.f10711a = str;
        this.f10712b = i;
        this.f10713c = i2;
        this.f10714d = j;
        this.f10715e = j2;
        this.f10716f = i3;
        this.f10717g = i4;
        Objects.requireNonNull(str2, "Null availableVersionTag");
        this.f10718h = str2;
        Objects.requireNonNull(str3, "Null installedVersionTag");
        this.f10719i = str3;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: a */
    public final long mo2572a() {
        return this.f10714d;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: b */
    public final int mo2571b() {
        return this.f10713c;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: c */
    public final String mo2570c() {
        return this.f10711a;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: d */
    public final int mo2569d() {
        return this.f10712b;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: e */
    public final long mo2568e() {
        return this.f10715e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AssetPackState)) {
            return false;
        }
        AssetPackState assetPackState = (AssetPackState) obj;
        return this.f10711a.equals(assetPackState.mo2570c()) && this.f10712b == assetPackState.mo2569d() && this.f10713c == assetPackState.mo2571b() && this.f10714d == assetPackState.mo2572a() && this.f10715e == assetPackState.mo2568e() && this.f10716f == assetPackState.mo2567f() && this.f10717g == assetPackState.mo2566g() && this.f10718h.equals(assetPackState.mo2565j()) && this.f10719i.equals(assetPackState.mo2564k());
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: f */
    public final int mo2567f() {
        return this.f10716f;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: g */
    public final int mo2566g() {
        return this.f10717g;
    }

    public final int hashCode() {
        int hashCode = this.f10711a.hashCode();
        int i = this.f10712b;
        int i2 = this.f10713c;
        long j = this.f10714d;
        long j2 = this.f10715e;
        return ((((((((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f10716f) * 1000003) ^ this.f10717g) * 1000003) ^ this.f10718h.hashCode()) * 1000003) ^ this.f10719i.hashCode();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: j */
    public final String mo2565j() {
        return this.f10718h;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    /* renamed from: k */
    public final String mo2564k() {
        return this.f10719i;
    }

    public final String toString() {
        String str = this.f10711a;
        int i = this.f10712b;
        int i2 = this.f10713c;
        long j = this.f10714d;
        long j2 = this.f10715e;
        int i3 = this.f10716f;
        int i4 = this.f10717g;
        String str2 = this.f10718h;
        String str3 = this.f10719i;
        int length = str.length();
        StringBuilder sb = new StringBuilder(str3.length() + str2.length() + length + 261);
        sb.append("AssetPackState{name=");
        sb.append(str);
        sb.append(", status=");
        sb.append(i);
        sb.append(", errorCode=");
        sb.append(i2);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        C0028d.m8911i(sb, ", totalBytesToDownload=", j2, ", transferProgressPercentage=");
        sb.append(i3);
        sb.append(", updateAvailability=");
        sb.append(i4);
        sb.append(", availableVersionTag=");
        return C1676a.m4788i(sb, str2, ", installedVersionTag=", str3, "}");
    }
}
