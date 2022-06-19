package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.bx */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bx.class */
final class C14950bx {

    /* renamed from: a */
    final int f54579a;

    /* renamed from: b */
    final String f54580b;

    /* renamed from: c */
    final long f54581c;

    /* renamed from: d */
    final long f54582d;

    /* renamed from: e */
    final int f54583e;

    C14950bx() {
    }

    public C14950bx(int i, String str, long j, long j2, int i2) {
        this();
        this.f54579a = i;
        this.f54580b = str;
        this.f54581c = j;
        this.f54582d = j2;
        this.f54583e = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C14950bx)) {
            return false;
        }
        C14950bx c14950bx = (C14950bx) obj;
        if (this.f54579a != c14950bx.f54579a) {
            return false;
        }
        String str = this.f54580b;
        if (str == null) {
            if (c14950bx.f54580b != null) {
                return false;
            }
        } else if (!str.equals(c14950bx.f54580b)) {
            return false;
        }
        return this.f54581c == c14950bx.f54581c && this.f54582d == c14950bx.f54582d && this.f54583e == c14950bx.f54583e;
    }

    public final int hashCode() {
        int i = this.f54579a;
        String str = this.f54580b;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f54581c;
        long j2 = this.f54582d;
        return ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f54583e;
    }

    public final String toString() {
        int i = this.f54579a;
        String str = this.f54580b;
        long j = this.f54581c;
        long j2 = this.f54582d;
        int i2 = this.f54583e;
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
