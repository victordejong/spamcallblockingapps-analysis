package com.google.android.gms.internal.clearcut;

import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfs.class */
public final class zzfs {
    private final ByteBuffer zzgd;
    private zzbn zzrh;
    private int zzri;

    private zzfs(ByteBuffer byteBuffer) {
        this.zzgd = byteBuffer;
        this.zzgd.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzfs(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int zza(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                int i5 = 0;
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i5 += (127 - charAt2) >>> 31;
                        i2 = i3;
                    } else {
                        int i6 = i5 + 2;
                        i5 = i6;
                        i2 = i3;
                        if (55296 <= charAt2) {
                            i5 = i6;
                            i2 = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i3);
                                throw new IllegalArgumentException(sb.toString());
                            } else {
                                i2 = i3 + 1;
                                i5 = i6;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i2 + 1;
                }
                i = i4 + i5;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(i + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    private final void zzao(int i) {
        byte b = (byte) i;
        if (this.zzgd.hasRemaining()) {
            this.zzgd.put(b);
            return;
        }
        throw new zzft(this.zzgd.position(), this.zzgd.limit());
    }

    private final void zzap(int i) {
        while ((i & (-128)) != 0) {
            zzao((i & 127) | 128);
            i >>>= 7;
        }
        zzao(i);
    }

    public static int zzb(int i, zzfz zzfzVar) {
        int zzr = zzr(i);
        int zzas = zzfzVar.zzas();
        return zzr + zzz(zzas) + zzas;
    }

    public static int zzb(int i, String str) {
        return zzr(i) + zzh(str);
    }

    public static int zzb(int i, byte[] bArr) {
        return zzr(i) + zzh(bArr);
    }

    public static int zzd(int i, long j) {
        return zzr(i) + zzo(j);
    }

    private static void zzd(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        char charAt;
        int i3;
        char c;
        if (!byteBuffer.isReadOnly()) {
            int i4 = 0;
            if (!byteBuffer.hasArray()) {
                int length = charSequence.length();
                int i5 = 0;
                while (i5 < length) {
                    char charAt2 = charSequence.charAt(i5);
                    if (charAt2 < 128) {
                        c = charAt2;
                    } else {
                        if (charAt2 < 2048) {
                            i3 = (charAt2 >>> 6) | 960;
                        } else if (charAt2 >= 55296 && 57343 >= charAt2) {
                            int i6 = i5 + 1;
                            if (i6 != charSequence.length()) {
                                char charAt3 = charSequence.charAt(i6);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                    byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint & 63) | 128));
                                    i5 = i6;
                                    i5++;
                                } else {
                                    i5 = i6;
                                }
                            }
                            StringBuilder sb = new StringBuilder(39);
                            sb.append("Unpaired surrogate at index ");
                            sb.append(i5 - 1);
                            throw new IllegalArgumentException(sb.toString());
                        } else {
                            byteBuffer.put((byte) ((charAt2 >>> '\f') | 480));
                            i3 = ((charAt2 >>> 6) & 63) | 128;
                        }
                        byteBuffer.put((byte) i3);
                        c = (charAt2 & '?') | 128;
                    }
                    byteBuffer.put((byte) c);
                    i5++;
                }
                return;
            }
            try {
                byte[] array = byteBuffer.array();
                int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                int remaining = byteBuffer.remaining();
                int length2 = charSequence.length();
                int i7 = remaining + arrayOffset;
                while (i4 < length2 && (i2 = i4 + arrayOffset) < i7) {
                    if (charSequence.charAt(i4) >= 128) {
                        break;
                    }
                    array[i2] = (byte) charAt;
                    i4++;
                }
                if (i4 != length2) {
                    int i8 = arrayOffset + i4;
                    while (true) {
                        i = i8;
                        if (i4 >= length2) {
                            break;
                        }
                        char charAt4 = charSequence.charAt(i4);
                        if (charAt4 < 128 && i8 < i7) {
                            array[i8] = (byte) charAt4;
                            i8++;
                        } else if (charAt4 < 2048 && i8 <= i7 - 2) {
                            int i9 = i8 + 1;
                            array[i8] = (byte) ((charAt4 >>> 6) | 960);
                            i8 = i9 + 1;
                            array[i9] = (byte) ((charAt4 & '?') | 128);
                        } else if ((charAt4 < 55296 || 57343 < charAt4) && i8 <= i7 - 3) {
                            int i10 = i8 + 1;
                            array[i8] = (byte) ((charAt4 >>> '\f') | 480);
                            int i11 = i10 + 1;
                            array[i10] = (byte) (((charAt4 >>> 6) & 63) | 128);
                            i8 = i11 + 1;
                            array[i11] = (byte) ((charAt4 & '?') | 128);
                        } else if (i8 > i7 - 4) {
                            StringBuilder sb2 = new StringBuilder(37);
                            sb2.append("Failed writing ");
                            sb2.append(charAt4);
                            sb2.append(" at index ");
                            sb2.append(i8);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        } else {
                            int i12 = i4 + 1;
                            if (i12 == charSequence.length()) {
                                break;
                            }
                            char charAt5 = charSequence.charAt(i12);
                            if (!Character.isSurrogatePair(charAt4, charAt5)) {
                                i4 = i12;
                                break;
                            }
                            int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                            int i13 = i8 + 1;
                            array[i8] = (byte) ((codePoint2 >>> 18) | 240);
                            int i14 = i13 + 1;
                            array[i13] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                            int i15 = i14 + 1;
                            array[i14] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                            i8 = i15 + 1;
                            array[i15] = (byte) ((codePoint2 & 63) | 128);
                            i4 = i12;
                        }
                        i4++;
                    }
                    StringBuilder sb3 = new StringBuilder(39);
                    sb3.append("Unpaired surrogate at index ");
                    sb3.append(i4 - 1);
                    throw new IllegalArgumentException(sb3.toString());
                }
                i = arrayOffset + length2;
                byteBuffer.position(i - byteBuffer.arrayOffset());
                return;
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        }
        throw new ReadOnlyBufferException();
    }

    public static zzfs zzg(byte[] bArr) {
        return zzh(bArr, 0, bArr.length);
    }

    public static int zzh(String str) {
        int zza = zza(str);
        return zzz(zza) + zza;
    }

    public static int zzh(byte[] bArr) {
        return zzz(bArr.length) + bArr.length;
    }

    public static zzfs zzh(byte[] bArr, int i, int i2) {
        return new zzfs(bArr, 0, i2);
    }

    public static long zzj(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzo(long j) {
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

    public static int zzr(int i) {
        return zzz(i << 3);
    }

    public static int zzs(int i) {
        if (i >= 0) {
            return zzz(i);
        }
        return 10;
    }

    private static int zzz(int i) {
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

    public final void zza(int i, zzfz zzfzVar) {
        zzb(i, 2);
        if (zzfzVar.zzrs < 0) {
            zzfzVar.zzas();
        }
        zzap(zzfzVar.zzrs);
        zzfzVar.zza(this);
    }

    public final void zza(int i, String str) {
        zzb(i, 2);
        try {
            int zzz = zzz(str.length());
            if (zzz != zzz(str.length() * 3)) {
                zzap(zza(str));
                zzd(str, this.zzgd);
                return;
            }
            int position = this.zzgd.position();
            if (this.zzgd.remaining() < zzz) {
                throw new zzft(position + zzz, this.zzgd.limit());
            }
            this.zzgd.position(position + zzz);
            zzd(str, this.zzgd);
            int position2 = this.zzgd.position();
            this.zzgd.position(position);
            zzap((position2 - position) - zzz);
            this.zzgd.position(position2);
        } catch (BufferOverflowException e) {
            zzft zzftVar = new zzft(this.zzgd.position(), this.zzgd.limit());
            zzftVar.initCause(e);
            throw zzftVar;
        }
    }

    public final void zza(int i, byte[] bArr) {
        zzb(i, 2);
        zzap(bArr.length);
        int length = bArr.length;
        if (this.zzgd.remaining() >= length) {
            this.zzgd.put(bArr, 0, length);
            return;
        }
        throw new zzft(this.zzgd.position(), this.zzgd.limit());
    }

    public final void zzb(int i, int i2) {
        zzap((i << 3) | i2);
    }

    public final void zzb(int i, boolean z) {
        zzb(25, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (this.zzgd.hasRemaining()) {
            this.zzgd.put(b);
            return;
        }
        throw new zzft(this.zzgd.position(), this.zzgd.limit());
    }

    public final void zzc(int i, int i2) {
        zzb(i, 0);
        if (i2 >= 0) {
            zzap(i2);
        } else {
            zzn(i2);
        }
    }

    public final void zze(int i, zzdo zzdoVar) {
        if (this.zzrh != null) {
            if (this.zzri != this.zzgd.position()) {
                this.zzrh.write(this.zzgd.array(), this.zzri, this.zzgd.position() - this.zzri);
            }
            zzbn zzbnVar = this.zzrh;
            zzbnVar.zza(i, zzdoVar);
            zzbnVar.flush();
            this.zzri = this.zzgd.position();
        }
        this.zzrh = zzbn.zza(this.zzgd);
        this.zzri = this.zzgd.position();
        zzbn zzbnVar2 = this.zzrh;
        zzbnVar2.zza(i, zzdoVar);
        zzbnVar2.flush();
        this.zzri = this.zzgd.position();
    }

    public final void zzem() {
        if (this.zzgd.remaining() == 0) {
            return;
        }
        throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zzgd.remaining())));
    }

    public final void zzi(int i, long j) {
        zzb(i, 0);
        zzn(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r6 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzn(long r6) {
        /*
            r5 = this;
        L0:
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r6
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L11
            r0 = r5
            r1 = r6
            int r1 = (int) r1
            r0.zzao(r1)
            return
        L11:
            r0 = r5
            r1 = r6
            int r1 = (int) r1
            r2 = 127(0x7f, float:1.78E-43)
            r1 = r1 & r2
            r2 = 128(0x80, float:1.794E-43)
            r1 = r1 | r2
            r0.zzao(r1)
            r0 = r6
            r1 = 7
            long r0 = r0 >>> r1
            r6 = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzfs.zzn(long):void");
    }
}
