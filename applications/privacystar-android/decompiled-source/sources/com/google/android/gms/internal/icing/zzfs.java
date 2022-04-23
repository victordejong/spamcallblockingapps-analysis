package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import org.mozilla.javascript.typedarrays.Conversions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfs.class */
public final class zzfs {
    private final ByteBuffer zznu;

    private zzfs(ByteBuffer byteBuffer) {
        this.zznu = byteBuffer;
        this.zznu.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzfs(byte[] bArr, int i, int i2) {
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

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        int i3;
        int i4;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i5 = 0;
        int i6 = 0;
        if (byteBuffer.hasArray()) {
            try {
                byte[] array = byteBuffer.array();
                int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                int remaining = byteBuffer.remaining();
                int length = charSequence.length();
                int i7 = remaining + arrayOffset;
                while (i6 < length && (i2 = i6 + arrayOffset) < i7) {
                    char charAt = charSequence.charAt(i6);
                    if (charAt >= 128) {
                        break;
                    }
                    array[i2] = (byte) charAt;
                    i6++;
                }
                if (i6 == length) {
                    i = arrayOffset + length;
                } else {
                    int i8 = arrayOffset + i6;
                    while (true) {
                        i = i8;
                        if (i6 >= length) {
                            break;
                        }
                        char charAt2 = charSequence.charAt(i6);
                        if (charAt2 < 128 && i8 < i7) {
                            i8++;
                            array[i8] = (byte) charAt2;
                        } else if (charAt2 < 2048 && i8 <= i7 - 2) {
                            int i9 = i8 + 1;
                            array[i8] = (byte) ((charAt2 >>> 6) | 960);
                            i8 = i9 + 1;
                            array[i9] = (byte) ((charAt2 & '?') | 128);
                        } else if ((charAt2 < 55296 || 57343 < charAt2) && i8 <= i7 - 3) {
                            int i10 = i8 + 1;
                            array[i8] = (byte) ((charAt2 >>> '\f') | 480);
                            int i11 = i10 + 1;
                            array[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                            i8 = i11 + 1;
                            array[i11] = (byte) ((charAt2 & '?') | 128);
                        } else if (i8 <= i7 - 4) {
                            int i12 = i6 + 1;
                            if (i12 == charSequence.length()) {
                                break;
                            }
                            char charAt3 = charSequence.charAt(i12);
                            if (!Character.isSurrogatePair(charAt2, charAt3)) {
                                i6 = i12;
                                break;
                            }
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i13 = i8 + 1;
                            array[i8] = (byte) ((codePoint >>> 18) | 240);
                            int i14 = i13 + 1;
                            array[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i15 = i14 + 1;
                            array[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i8 = i15 + 1;
                            array[i15] = (byte) ((codePoint & 63) | 128);
                            i6 = i12;
                        } else {
                            StringBuilder sb = new StringBuilder(37);
                            sb.append("Failed writing ");
                            sb.append(charAt2);
                            sb.append(" at index ");
                            sb.append(i8);
                            throw new ArrayIndexOutOfBoundsException(sb.toString());
                        }
                        i6++;
                    }
                    StringBuilder sb2 = new StringBuilder(39);
                    sb2.append("Unpaired surrogate at index ");
                    sb2.append(i6 - 1);
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
            while (i5 < length2) {
                char charAt4 = charSequence.charAt(i5);
                if (charAt4 < 128) {
                    i4 = charAt4;
                } else {
                    if (charAt4 < 2048) {
                        i3 = (charAt4 >>> 6) | 960;
                    } else if (charAt4 < 55296 || 57343 < charAt4) {
                        byteBuffer.put((byte) ((charAt4 >>> '\f') | 480));
                        i3 = ((charAt4 >>> 6) & 63) | 128;
                    } else {
                        int i16 = i5 + 1;
                        if (i16 != charSequence.length()) {
                            char charAt5 = charSequence.charAt(i16);
                            if (!Character.isSurrogatePair(charAt4, charAt5)) {
                                i5 = i16;
                            } else {
                                int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                                byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                                i5 = i16;
                                i5++;
                            }
                        }
                        StringBuilder sb3 = new StringBuilder(39);
                        sb3.append("Unpaired surrogate at index ");
                        sb3.append(i5 - 1);
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    byteBuffer.put((byte) i3);
                    i4 = (charAt4 & '?') | 128;
                }
                byteBuffer.put((byte) i4);
                i5++;
            }
        }
    }

    private final void zzaj(int i) throws IOException {
        byte b = (byte) i;
        if (!this.zznu.hasRemaining()) {
            throw new zzft(this.zznu.position(), this.zznu.limit());
        }
        this.zznu.put(b);
    }

    public static int zzb(int i, zzfz zzfzVar) {
        int zzp = zzp(i);
        int zzan = zzfzVar.zzan();
        return zzp + zzx(zzan) + zzan;
    }

    public static int zzb(int i, String str) {
        int zzp = zzp(i);
        int zza = zza(str);
        return zzp + zzx(zza) + zza;
    }

    public static zzfs zzf(byte[] bArr) {
        return zzf(bArr, 0, bArr.length);
    }

    public static zzfs zzf(byte[] bArr, int i, int i2) {
        return new zzfs(bArr, 0, i2);
    }

    public static int zzp(int i) {
        return zzx(i << 3);
    }

    public static int zzx(int i) {
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

    public final void zza(int i, zzfz zzfzVar) throws IOException {
        zzb(i, 2);
        if (zzfzVar.zzoe < 0) {
            zzfzVar.zzan();
        }
        zzak(zzfzVar.zzoe);
        zzfzVar.zza(this);
    }

    public final void zza(int i, String str) throws IOException {
        zzb(i, 2);
        try {
            int zzx = zzx(str.length());
            if (zzx == zzx(str.length() * 3)) {
                int position = this.zznu.position();
                if (this.zznu.remaining() < zzx) {
                    throw new zzft(position + zzx, this.zznu.limit());
                }
                this.zznu.position(position + zzx);
                zza(str, this.zznu);
                int position2 = this.zznu.position();
                this.zznu.position(position);
                zzak((position2 - position) - zzx);
                this.zznu.position(position2);
                return;
            }
            zzak(zza(str));
            zza(str, this.zznu);
        } catch (BufferOverflowException e) {
            zzft zzftVar = new zzft(this.zznu.position(), this.zznu.limit());
            zzftVar.initCause(e);
            throw zzftVar;
        }
    }

    public final void zzak(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzaj((i & 127) | 128);
            i >>>= 7;
        }
        zzaj(i);
    }

    public final void zzb(byte b) throws IOException {
        if (!this.zznu.hasRemaining()) {
            throw new zzft(this.zznu.position(), this.zznu.limit());
        }
        this.zznu.put(b);
    }

    public final void zzb(int i, int i2) throws IOException {
        zzak((i << 3) | i2);
    }

    public final void zzda() {
        if (this.zznu.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zznu.remaining())));
        }
    }

    public final void zzl(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzaj((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzaj((int) j);
    }

    public final void zzm(long j) throws IOException {
        if (this.zznu.remaining() < 8) {
            throw new zzft(this.zznu.position(), this.zznu.limit());
        }
        this.zznu.putLong(j);
    }
}
