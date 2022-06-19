package com.google.android.play.core.assetpacks;

import java.util.Arrays;
/* renamed from: com.google.android.play.core.assetpacks.b2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/b2.class */
final class C8368b2 {

    /* renamed from: a */
    private final String f37670a;

    /* renamed from: b */
    private final long f37671b;

    /* renamed from: c */
    private final int f37672c;

    /* renamed from: d */
    private final boolean f37673d;

    /* renamed from: e */
    private final boolean f37674e;

    /* renamed from: f */
    private final byte[] f37675f;

    C8368b2() {
    }

    public C8368b2(String str, long j, int i, boolean z, boolean z2, byte[] bArr) {
        this();
        this.f37670a = str;
        this.f37671b = j;
        this.f37672c = i;
        this.f37673d = z;
        this.f37674e = z2;
        this.f37675f = bArr;
    }

    /* renamed from: a */
    public static C8368b2 m3780a(String str, long j, int i, boolean z, byte[] bArr, boolean z2) {
        return new C8368b2(str, j, i, z, z2, bArr);
    }

    /* renamed from: b */
    public final boolean m3779b() {
        if (m3777d() == null) {
            return false;
        }
        return m3777d().endsWith("/");
    }

    /* renamed from: c */
    public final boolean m3778c() {
        return m3775f() == 0;
    }

    /* renamed from: d */
    public String m3777d() {
        return this.f37670a;
    }

    /* renamed from: e */
    public long m3776e() {
        return this.f37671b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8368b2)) {
            return false;
        }
        C8368b2 c8368b2 = (C8368b2) obj;
        String str = this.f37670a;
        if (str == null) {
            if (c8368b2.m3777d() != null) {
                return false;
            }
        } else if (!str.equals(c8368b2.m3777d())) {
            return false;
        }
        return this.f37671b == c8368b2.m3776e() && this.f37672c == c8368b2.m3775f() && this.f37673d == c8368b2.m3774g() && this.f37674e == c8368b2.m3773h() && Arrays.equals(this.f37675f, c8368b2.f37675f);
    }

    /* renamed from: f */
    public int m3775f() {
        return this.f37672c;
    }

    /* renamed from: g */
    public boolean m3774g() {
        return this.f37673d;
    }

    /* renamed from: h */
    public boolean m3773h() {
        return this.f37674e;
    }

    public int hashCode() {
        String str = this.f37670a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f37671b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f37672c;
        int i3 = 1237;
        int i4 = true != this.f37673d ? 1237 : 1231;
        if (true == this.f37674e) {
            i3 = 1231;
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i4) * 1000003) ^ i3) * 1000003) ^ Arrays.hashCode(this.f37675f);
    }

    /* renamed from: i */
    public byte[] m3772i() {
        return this.f37675f;
    }

    public String toString() {
        String str = this.f37670a;
        long j = this.f37671b;
        int i = this.f37672c;
        boolean z = this.f37673d;
        boolean z2 = this.f37674e;
        String arrays = Arrays.toString(this.f37675f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 126 + String.valueOf(arrays).length());
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
