package com.google.android.play.core.assetpacks;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bx.class */
final class bx {

    /* renamed from: a  reason: collision with root package name */
    final int f31213a;

    /* renamed from: b  reason: collision with root package name */
    final String f31214b;

    /* renamed from: c  reason: collision with root package name */
    final long f31215c;

    /* renamed from: d  reason: collision with root package name */
    final long f31216d;
    final int e;

    bx() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(int i, String str, long j, long j2, int i2) {
        this();
        this.f31213a = i;
        this.f31214b = str;
        this.f31215c = j;
        this.f31216d = j2;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bx)) {
            return false;
        }
        bx bxVar = (bx) obj;
        if (this.f31213a != bxVar.f31213a) {
            return false;
        }
        String str = this.f31214b;
        if (str == null) {
            if (bxVar.f31214b != null) {
                return false;
            }
        } else if (!str.equals(bxVar.f31214b)) {
            return false;
        }
        return this.f31215c == bxVar.f31215c && this.f31216d == bxVar.f31216d && this.e == bxVar.e;
    }

    public final int hashCode() {
        int i = this.f31213a;
        String str = this.f31214b;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f31215c;
        long j2 = this.f31216d;
        return ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.e;
    }

    public final String toString() {
        int i = this.f31213a;
        String str = this.f31214b;
        long j = this.f31215c;
        long j2 = this.f31216d;
        int i2 = this.e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 157);
        sb.append("SliceCheckpoint{fileExtractionStatus=");
        sb.append(i);
        sb.append(", filePath=");
        sb.append(str);
        sb.append(", fileOffset=");
        sb.append(j);
        sb.append(", remainingBytes=");
        sb.append(j2);
        sb.append(", previousChunk=");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }
}
