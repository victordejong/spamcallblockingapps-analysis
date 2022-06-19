package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpn.class */
public final class zzpn {
    public byte[] data;
    private int limit;
    private int position;

    public zzpn() {
    }

    public zzpn(int i) {
        this.data = new byte[i];
        this.limit = i;
    }

    public zzpn(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public final int capacity() {
        byte[] bArr = this.data;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int limit() {
        return this.limit;
    }

    public final int readInt() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.position = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.position = i4;
        byte b3 = bArr[i3];
        this.position = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    public final long readLong() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.position = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.position = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.position = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.position = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.position = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.position = i8;
        long j7 = bArr[i7];
        this.position = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    public final short readShort() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        this.position = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    public final int readUnsignedByte() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        return bArr[i] & 255;
    }

    public final int readUnsignedShort() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        this.position = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    public final void reset() {
        this.position = 0;
        this.limit = 0;
    }

    public final void reset(int i) {
        zzc(capacity() < i ? new byte[i] : this.data, i);
    }

    public final void zzbh(int i) {
        zzpg.checkArgument(i >= 0 && i <= this.data.length);
        this.limit = i;
    }

    public final void zzbi(int i) {
        zzpg.checkArgument(i >= 0 && i <= this.limit);
        this.position = i;
    }

    public final void zzbj(int i) {
        zzbi(this.position + i);
    }

    public final String zzbk(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.position + i) - 1;
        String str = new String(this.data, this.position, (i2 >= this.limit || this.data[i2] != 0) ? i : i - 1);
        this.position += i;
        return str;
    }

    public final void zzc(byte[] bArr, int i) {
        this.data = bArr;
        this.limit = i;
        this.position = 0;
    }

    public final void zze(byte[] bArr, int i, int i2) {
        System.arraycopy(this.data, this.position, bArr, i, i2);
        this.position += i2;
    }

    public final int zziv() {
        return this.limit - this.position;
    }

    public final int zziw() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        this.position = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    public final long zzix() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.position = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.position = i4;
        long j3 = bArr[i3];
        this.position = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    public final long zziy() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.position = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.position = i4;
        long j3 = bArr[i3];
        this.position = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    public final int zziz() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.position = i3;
        byte b2 = bArr[i2];
        this.position = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    public final int zzja() {
        int readInt = readInt();
        if (readInt >= 0) {
            return readInt;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(readInt);
        throw new IllegalStateException(sb.toString());
    }

    public final long zzjb() {
        long readLong = readLong();
        if (readLong >= 0) {
            return readLong;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(readLong);
        throw new IllegalStateException(sb.toString());
    }

    public final String zzjc() {
        if (zziv() == 0) {
            return null;
        }
        int i = this.position;
        while (i < this.limit && this.data[i] != 0) {
            i++;
        }
        byte[] bArr = this.data;
        int i2 = this.position;
        String str = new String(bArr, i2, i - i2);
        this.position = i;
        if (i < this.limit) {
            this.position = i + 1;
        }
        return str;
    }
}
