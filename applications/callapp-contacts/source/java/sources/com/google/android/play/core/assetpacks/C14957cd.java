package com.google.android.play.core.assetpacks;

import java.util.Arrays;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.google.android.play.core.assetpacks.cd */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cd.class */
final class C14957cd {

    /* renamed from: a */
    final String f54600a;

    /* renamed from: b */
    final long f54601b;

    /* renamed from: c */
    final int f54602c;

    /* renamed from: d */
    final boolean f54603d;

    /* renamed from: e */
    final boolean f54604e;

    /* renamed from: f */
    final byte[] f54605f;

    C14957cd() {
    }

    public C14957cd(String str, long j, int i, boolean z, boolean z2, byte[] bArr) {
        this();
        this.f54600a = str;
        this.f54601b = j;
        this.f54602c = i;
        this.f54603d = z;
        this.f54604e = z2;
        this.f54605f = bArr;
    }

    /* renamed from: a */
    public static C14957cd m9710a(String str, long j, int i, boolean z, byte[] bArr, boolean z2) {
        return new C14957cd(str, j, i, z, z2, bArr);
    }

    /* renamed from: a */
    public final boolean m9711a() {
        String str = this.f54600a;
        if (str == null) {
            return false;
        }
        return str.endsWith("/");
    }

    /* renamed from: b */
    public final boolean m9709b() {
        return this.f54602c == 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C14957cd)) {
            return false;
        }
        C14957cd c14957cd = (C14957cd) obj;
        String str = this.f54600a;
        if (str == null) {
            if (c14957cd.f54600a != null) {
                return false;
            }
        } else if (!str.equals(c14957cd.f54600a)) {
            return false;
        }
        if (this.f54601b != c14957cd.f54601b || this.f54602c != c14957cd.f54602c || this.f54603d != c14957cd.f54603d || this.f54604e != c14957cd.f54604e) {
            return false;
        }
        return Arrays.equals(this.f54605f, c14957cd instanceof C14957cd ? c14957cd.f54605f : c14957cd.f54605f);
    }

    public final int hashCode() {
        String str = this.f54600a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f54601b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f54602c;
        int i3 = 1237;
        int i4 = true != this.f54603d ? 1237 : 1231;
        if (true == this.f54604e) {
            i3 = 1231;
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i4) * 1000003) ^ i3) * 1000003) ^ Arrays.hashCode(this.f54605f);
    }

    public final String toString() {
        String str = this.f54600a;
        long j = this.f54601b;
        int i = this.f54602c;
        boolean z = this.f54603d;
        boolean z2 = this.f54604e;
        String arrays = Arrays.toString(this.f54605f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + WebSocketProtocol.PAYLOAD_SHORT + String.valueOf(arrays).length());
        sb.append("ZipEntry{name=");
        sb.append(str);
        sb.append(", size=");
        sb.append(j);
        sb.append(", compressionMethod=");
        sb.append(i);
        sb.append(", isPartial=");
        sb.append(z);
        sb.append(", isEndOfArchive=");
        sb.append(z2);
        sb.append(", headerBytes=");
        sb.append(arrays);
        sb.append("}");
        return sb.toString();
    }
}
