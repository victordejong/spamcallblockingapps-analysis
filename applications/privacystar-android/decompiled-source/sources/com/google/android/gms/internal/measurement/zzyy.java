package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import org.mozilla.javascript.typedarrays.Conversions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyy.class */
public final class zzyy {
    private final ByteBuffer zzbva;
    private zzut zzcfa;
    private int zzcfb;

    private zzyy(ByteBuffer byteBuffer) {
        this.zzbva = byteBuffer;
        this.zzbva.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzyy(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int zza(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i4);
                                throw new IllegalArgumentException(sb.toString());
                            } else {
                                i2 = i4 + 1;
                                i3 = i6;
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(i + Conversions.THIRTYTWO_BIT);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int zzb(int i, zzzg zzzgVar) {
        int zzbb = zzbb(i);
        int zzvu = zzzgVar.zzvu();
        return zzbb + zzbj(zzvu) + zzvu;
    }

    public static int zzbb(int i) {
        return zzbj(i << 3);
    }

    public static int zzbc(int i) {
        if (i >= 0) {
            return zzbj(i);
        }
        return 10;
    }

    private final void zzbh(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzbz((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzbz((int) j);
    }

    public static int zzbi(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int zzbj(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    private final void zzbz(int i) throws IOException {
        byte b = (byte) i;
        if (!this.zzbva.hasRemaining()) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.put(b);
    }

    public static int zzc(int i, String str) {
        return zzbb(i) + zzfx(str);
    }

    public static int zzd(int i, long j) {
        return zzbb(i) + zzbi(j);
    }

    private static void zzd(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i3 = 0;
        int i4 = 0;
        if (byteBuffer.hasArray()) {
            try {
                byte[] array = byteBuffer.array();
                int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                int remaining = byteBuffer.remaining();
                int length = charSequence.length();
                int i5 = remaining + arrayOffset;
                while (i4 < length && (i2 = i4 + arrayOffset) < i5) {
                    char charAt = charSequence.charAt(i4);
                    if (charAt >= 128) {
                        break;
                    }
                    array[i2] = (byte) charAt;
                    i4++;
                }
                if (i4 == length) {
                    i = arrayOffset + length;
                } else {
                    int i6 = arrayOffset + i4;
                    while (true) {
                        i = i6;
                        if (i4 >= length) {
                            break;
                        }
                        char charAt2 = charSequence.charAt(i4);
                        if (charAt2 < 128 && i6 < i5) {
                            i6++;
                            array[i6] = (byte) charAt2;
                        } else if (charAt2 < 2048 && i6 <= i5 - 2) {
                            int i7 = i6 + 1;
                            array[i6] = (byte) ((charAt2 >>> 6) | 960);
                            i6 = i7 + 1;
                            array[i7] = (byte) ((charAt2 & '?') | 128);
                        } else if ((charAt2 < 55296 || 57343 < charAt2) && i6 <= i5 - 3) {
                            int i8 = i6 + 1;
                            array[i6] = (byte) ((charAt2 >>> '\f') | 480);
                            int i9 = i8 + 1;
                            array[i8] = (byte) (((charAt2 >>> 6) & 63) | 128);
                            i6 = i9 + 1;
                            array[i9] = (byte) ((charAt2 & '?') | 128);
                        } else if (i6 <= i5 - 4) {
                            int i10 = i4 + 1;
                            if (i10 == charSequence.length()) {
                                break;
                            }
                            char charAt3 = charSequence.charAt(i10);
                            if (!Character.isSurrogatePair(charAt2, charAt3)) {
                                i4 = i10;
                                break;
                            }
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i11 = i6 + 1;
                            array[i6] = (byte) ((codePoint >>> 18) | 240);
                            int i12 = i11 + 1;
                            array[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i13 = i12 + 1;
                            array[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i6 = i13 + 1;
                            array[i13] = (byte) ((codePoint & 63) | 128);
                            i4 = i10;
                        } else {
                            StringBuilder sb = new StringBuilder(37);
                            sb.append("Failed writing ");
                            sb.append(charAt2);
                            sb.append(" at index ");
                            sb.append(i6);
                            throw new ArrayIndexOutOfBoundsException(sb.toString());
                        }
                        i4++;
                    }
                    StringBuilder sb2 = new StringBuilder(39);
                    sb2.append("Unpaired surrogate at index ");
                    sb2.append(i4 - 1);
                    throw new IllegalArgumentException(sb2.toString());
                }
                byteBuffer.position(i - byteBuffer.arrayOffset());
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            int length2 = charSequence.length();
            while (i3 < length2) {
                char charAt4 = charSequence.charAt(i3);
                if (charAt4 < 128) {
                    byteBuffer.put((byte) charAt4);
                } else if (charAt4 < 2048) {
                    byteBuffer.put((byte) ((charAt4 >>> 6) | 960));
                    byteBuffer.put((byte) ((charAt4 & '?') | 128));
                } else if (charAt4 < 55296 || 57343 < charAt4) {
                    byteBuffer.put((byte) ((charAt4 >>> '\f') | 480));
                    byteBuffer.put((byte) (((charAt4 >>> 6) & 63) | 128));
                    byteBuffer.put((byte) ((charAt4 & '?') | 128));
                } else {
                    int i14 = i3 + 1;
                    if (i14 != charSequence.length()) {
                        char charAt5 = charSequence.charAt(i14);
                        if (!Character.isSurrogatePair(charAt4, charAt5)) {
                            i3 = i14;
                        } else {
                            int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                            byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                            byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                            i3 = i14;
                        }
                    }
                    StringBuilder sb3 = new StringBuilder(39);
                    sb3.append("Unpaired surrogate at index ");
                    sb3.append(i3 - 1);
                    throw new IllegalArgumentException(sb3.toString());
                }
                i3++;
            }
        }
    }

    public static int zzfx(String str) {
        int zza = zza(str);
        return zzbj(zza) + zza;
    }

    public static int zzh(int i, int i2) {
        return zzbb(i) + zzbc(i2);
    }

    public static zzyy zzk(byte[] bArr, int i, int i2) {
        return new zzyy(bArr, 0, i2);
    }

    public static zzyy zzo(byte[] bArr) {
        return zzk(bArr, 0, bArr.length);
    }

    private final zzut zzys() throws IOException {
        if (this.zzcfa == null) {
            this.zzcfa = zzut.zza(this.zzbva);
            this.zzcfb = this.zzbva.position();
        } else if (this.zzcfb != this.zzbva.position()) {
            this.zzcfa.write(this.zzbva.array(), this.zzcfb, this.zzbva.position() - this.zzcfb);
            this.zzcfb = this.zzbva.position();
        }
        return this.zzcfa;
    }

    public final void zza(int i, double d) throws IOException {
        zzc(i, 1);
        long doubleToLongBits = Double.doubleToLongBits(d);
        if (this.zzbva.remaining() < 8) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.putLong(doubleToLongBits);
    }

    public final void zza(int i, float f) throws IOException {
        zzc(i, 5);
        int floatToIntBits = Float.floatToIntBits(f);
        if (this.zzbva.remaining() < 4) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.putInt(floatToIntBits);
    }

    public final void zza(int i, long j) throws IOException {
        zzc(i, 0);
        zzbh(j);
    }

    public final void zza(int i, zzzg zzzgVar) throws IOException {
        zzc(i, 2);
        zzb(zzzgVar);
    }

    public final void zzb(int i, String str) throws IOException {
        zzc(i, 2);
        try {
            int zzbj = zzbj(str.length());
            if (zzbj == zzbj(str.length() * 3)) {
                int position = this.zzbva.position();
                if (this.zzbva.remaining() < zzbj) {
                    throw new zzyz(position + zzbj, this.zzbva.limit());
                }
                this.zzbva.position(position + zzbj);
                zzd(str, this.zzbva);
                int position2 = this.zzbva.position();
                this.zzbva.position(position);
                zzca((position2 - position) - zzbj);
                this.zzbva.position(position2);
                return;
            }
            zzca(zza(str));
            zzd(str, this.zzbva);
        } catch (BufferOverflowException e) {
            zzyz zzyzVar = new zzyz(this.zzbva.position(), this.zzbva.limit());
            zzyzVar.initCause(e);
            throw zzyzVar;
        }
    }

    public final void zzb(int i, boolean z) throws IOException {
        zzc(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (!this.zzbva.hasRemaining()) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.put(b);
    }

    public final void zzb(zzzg zzzgVar) throws IOException {
        zzca(zzzgVar.zzza());
        zzzgVar.zza(this);
    }

    public final void zzc(int i, int i2) throws IOException {
        zzca((i << 3) | i2);
    }

    public final void zzca(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzbz((i & 127) | 128);
            i >>>= 7;
        }
        zzbz(i);
    }

    public final void zzd(int i, int i2) throws IOException {
        zzc(i, 0);
        if (i2 >= 0) {
            zzca(i2);
        } else {
            zzbh(i2);
        }
    }

    public final void zze(int i, zzwt zzwtVar) throws IOException {
        zzut zzys = zzys();
        zzys.zza(i, zzwtVar);
        zzys.flush();
        this.zzcfb = this.zzbva.position();
    }

    public final void zzi(int i, long j) throws IOException {
        zzc(i, 0);
        zzbh(j);
    }

    public final void zzp(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.zzbva.remaining() >= length) {
            this.zzbva.put(bArr, 0, length);
            return;
        }
        throw new zzyz(this.zzbva.position(), this.zzbva.limit());
    }

    public final void zzyt() {
        if (this.zzbva.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zzbva.remaining())));
        }
    }
}
