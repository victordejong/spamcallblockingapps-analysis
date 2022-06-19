package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecy.class */
public final class ecy {

    /* renamed from: a */
    public byte[] f48724a;

    /* renamed from: b */
    int f48725b;

    /* renamed from: c */
    int f48726c;

    public ecy() {
    }

    public ecy(int i) {
        this.f48724a = new byte[i];
        this.f48726c = i;
    }

    public ecy(byte[] bArr) {
        this.f48724a = bArr;
        this.f48726c = bArr.length;
    }

    /* renamed from: a */
    public final void m15233a() {
        this.f48725b = 0;
        this.f48726c = 0;
    }

    /* renamed from: a */
    public final void m15232a(int i) {
        m15231a(m15227c() < i ? new byte[i] : this.f48724a, i);
    }

    /* renamed from: a */
    public final void m15231a(byte[] bArr, int i) {
        this.f48724a = bArr;
        this.f48726c = i;
        this.f48725b = 0;
    }

    /* renamed from: a */
    public final void m15230a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f48724a, this.f48725b, bArr, i, i2);
        this.f48725b += i2;
    }

    /* renamed from: b */
    public final int m15229b() {
        return this.f48726c - this.f48725b;
    }

    /* renamed from: b */
    public final void m15228b(int i) {
        ecr.m15249a(i >= 0 && i <= this.f48724a.length);
        this.f48726c = i;
    }

    /* renamed from: c */
    public final int m15227c() {
        byte[] bArr = this.f48724a;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    /* renamed from: c */
    public final void m15226c(int i) {
        ecr.m15249a(i >= 0 && i <= this.f48726c);
        this.f48725b = i;
    }

    /* renamed from: d */
    public final int m15225d() {
        byte[] bArr = this.f48724a;
        int i = this.f48725b;
        this.f48725b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: d */
    public final void m15224d(int i) {
        m15226c(this.f48725b + i);
    }

    /* renamed from: e */
    public final int m15223e() {
        byte[] bArr = this.f48724a;
        int i = this.f48725b;
        int i2 = i + 1;
        this.f48725b = i2;
        byte b = bArr[i];
        this.f48725b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: e */
    public final String m15222e(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.f48725b + i) - 1;
        String str = new String(this.f48724a, this.f48725b, (i2 >= this.f48726c || this.f48724a[i2] != 0) ? i : i - 1);
        this.f48725b += i;
        return str;
    }

    /* renamed from: f */
    public final long m15221f() {
        byte[] bArr = this.f48724a;
        int i = this.f48725b;
        int i2 = i + 1;
        this.f48725b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f48725b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f48725b = i4;
        long j3 = bArr[i3];
        this.f48725b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: g */
    public final int m15220g() {
        byte[] bArr = this.f48724a;
        int i = this.f48725b;
        int i2 = i + 1;
        this.f48725b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f48725b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f48725b = i4;
        byte b3 = bArr[i3];
        this.f48725b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: h */
    public final long m15219h() {
        byte[] bArr = this.f48724a;
        int i = this.f48725b;
        int i2 = i + 1;
        this.f48725b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f48725b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f48725b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f48725b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f48725b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f48725b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f48725b = i8;
        long j7 = bArr[i7];
        this.f48725b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: i */
    public final int m15218i() {
        int m15220g = m15220g();
        if (m15220g >= 0) {
            return m15220g;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m15220g);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: j */
    public final long m15217j() {
        long m15219h = m15219h();
        if (m15219h >= 0) {
            return m15219h;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(m15219h);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: k */
    public final String m15216k() {
        if (m15229b() == 0) {
            return null;
        }
        int i = this.f48725b;
        while (i < this.f48726c && this.f48724a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f48724a;
        int i2 = this.f48725b;
        String str = new String(bArr, i2, i - i2);
        this.f48725b = i;
        if (i < this.f48726c) {
            this.f48725b = i + 1;
        }
        return str;
    }
}
