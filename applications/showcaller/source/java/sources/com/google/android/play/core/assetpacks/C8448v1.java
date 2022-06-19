package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.v1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/v1.class */
final class C8448v1 {

    /* renamed from: a */
    private final int f37960a;

    /* renamed from: b */
    private final String f37961b;

    /* renamed from: c */
    private final long f37962c;

    /* renamed from: d */
    private final long f37963d;

    /* renamed from: e */
    private final int f37964e;

    C8448v1() {
    }

    public C8448v1(int i, String str, long j, long j2, int i2) {
        this();
        this.f37960a = i;
        this.f37961b = str;
        this.f37962c = j;
        this.f37963d = j2;
        this.f37964e = i2;
    }

    /* renamed from: a */
    public int m3635a() {
        return this.f37960a;
    }

    /* renamed from: b */
    public String m3634b() {
        return this.f37961b;
    }

    /* renamed from: c */
    public long m3633c() {
        return this.f37962c;
    }

    /* renamed from: d */
    public long m3632d() {
        return this.f37963d;
    }

    /* renamed from: e */
    public int m3631e() {
        return this.f37964e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8448v1)) {
            return false;
        }
        C8448v1 c8448v1 = (C8448v1) obj;
        if (this.f37960a != c8448v1.m3635a()) {
            return false;
        }
        String str = this.f37961b;
        if (str == null) {
            if (c8448v1.m3634b() != null) {
                return false;
            }
        } else if (!str.equals(c8448v1.m3634b())) {
            return false;
        }
        return this.f37962c == c8448v1.m3633c() && this.f37963d == c8448v1.m3632d() && this.f37964e == c8448v1.m3631e();
    }

    public int hashCode() {
        int i = this.f37960a;
        String str = this.f37961b;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f37962c;
        long j2 = this.f37963d;
        return ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f37964e;
    }

    public String toString() {
        int i = this.f37960a;
        String str = this.f37961b;
        long j = this.f37962c;
        long j2 = this.f37963d;
        int i2 = this.f37964e;
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
