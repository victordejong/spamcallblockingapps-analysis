package com.google.android.play.core.assetpacks;

import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cd.class */
final class cd {

    /* renamed from: a  reason: collision with root package name */
    final String f31229a;

    /* renamed from: b  reason: collision with root package name */
    final long f31230b;

    /* renamed from: c  reason: collision with root package name */
    final int f31231c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f31232d;
    final boolean e;
    final byte[] f;

    cd() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cd(String str, long j, int i, boolean z, boolean z2, byte[] bArr) {
        this();
        this.f31229a = str;
        this.f31230b = j;
        this.f31231c = i;
        this.f31232d = z;
        this.e = z2;
        this.f = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cd a(String str, long j, int i, boolean z, byte[] bArr, boolean z2) {
        return new cd(str, j, i, z, z2, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        String str = this.f31229a;
        if (str == null) {
            return false;
        }
        return str.endsWith("/");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.f31231c == 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cd)) {
            return false;
        }
        cd cdVar = (cd) obj;
        String str = this.f31229a;
        if (str == null) {
            if (cdVar.f31229a != null) {
                return false;
            }
        } else if (!str.equals(cdVar.f31229a)) {
            return false;
        }
        if (this.f31230b != cdVar.f31230b || this.f31231c != cdVar.f31231c || this.f31232d != cdVar.f31232d || this.e != cdVar.e) {
            return false;
        }
        return Arrays.equals(this.f, cdVar instanceof cd ? cdVar.f : cdVar.f);
    }

    public final int hashCode() {
        String str = this.f31229a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f31230b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f31231c;
        int i3 = 1237;
        int i4 = true != this.f31232d ? 1237 : 1231;
        if (true == this.e) {
            i3 = 1231;
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i4) * 1000003) ^ i3) * 1000003) ^ Arrays.hashCode(this.f);
    }

    public final String toString() {
        String str = this.f31229a;
        long j = this.f31230b;
        int i = this.f31231c;
        boolean z = this.f31232d;
        boolean z2 = this.e;
        String arrays = Arrays.toString(this.f);
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
