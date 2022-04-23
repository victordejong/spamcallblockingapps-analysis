package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mk2.class */
public final class mk2 {
    /* renamed from: a */
    public static X509Certificate[][] m6556a(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> a = jl2.m6966a(randomAccessFile);
            if (a != null) {
                ByteBuffer byteBuffer = (ByteBuffer) a.first;
                long longValue = ((Long) a.second).longValue();
                long j = (-20) + longValue;
                if (j >= 0) {
                    randomAccessFile.seek(j);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new zzf("ZIP64 APK not supported");
                    }
                }
                long b = jl2.m6965b(byteBuffer);
                if (b >= longValue) {
                    StringBuilder sb = new StringBuilder(122);
                    sb.append("ZIP Central Directory offset out of range: ");
                    sb.append(b);
                    sb.append(". ZIP End of Central Directory offset: ");
                    sb.append(longValue);
                    throw new zzf(sb.toString());
                } else if (jl2.m6963d(byteBuffer) + b != longValue) {
                    throw new zzf("ZIP Central Directory is not immediately followed by End of Central Directory");
                } else if (b >= 32) {
                    ByteBuffer allocate = ByteBuffer.allocate(24);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    allocate.order(byteOrder);
                    randomAccessFile.seek(b - allocate.capacity());
                    randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                    if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                        int i = 0;
                        long j2 = allocate.getLong(0);
                        if (j2 < allocate.capacity() || j2 > 2147483639) {
                            StringBuilder sb2 = new StringBuilder(57);
                            sb2.append("APK Signing Block size out of range: ");
                            sb2.append(j2);
                            throw new zzf(sb2.toString());
                        }
                        int i2 = (int) (8 + j2);
                        long j3 = b - i2;
                        if (j3 >= 0) {
                            ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                            allocate2.order(byteOrder);
                            randomAccessFile.seek(j3);
                            randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                            long j4 = allocate2.getLong(0);
                            if (j4 == j2) {
                                Pair create = Pair.create(allocate2, Long.valueOf(j3));
                                ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                long longValue2 = ((Long) create.second).longValue();
                                if (byteBuffer2.order() == byteOrder) {
                                    int capacity = byteBuffer2.capacity() - 24;
                                    if (capacity >= 8) {
                                        int capacity2 = byteBuffer2.capacity();
                                        if (capacity <= byteBuffer2.capacity()) {
                                            int limit = byteBuffer2.limit();
                                            int position = byteBuffer2.position();
                                            byteBuffer2.position(0);
                                            byteBuffer2.limit(capacity);
                                            byteBuffer2.position(8);
                                            ByteBuffer slice = byteBuffer2.slice();
                                            slice.order(byteBuffer2.order());
                                            byteBuffer2.position(0);
                                            byteBuffer2.limit(limit);
                                            byteBuffer2.position(position);
                                            while (slice.hasRemaining()) {
                                                i++;
                                                if (slice.remaining() >= 8) {
                                                    long j5 = slice.getLong();
                                                    if (j5 < 4 || j5 > 2147483647L) {
                                                        StringBuilder sb3 = new StringBuilder(76);
                                                        sb3.append("APK Signing Block entry #");
                                                        sb3.append(i);
                                                        sb3.append(" size out of range: ");
                                                        sb3.append(j5);
                                                        throw new zzf(sb3.toString());
                                                    }
                                                    int i3 = (int) j5;
                                                    int position2 = slice.position();
                                                    if (i3 > slice.remaining()) {
                                                        int remaining = slice.remaining();
                                                        StringBuilder sb4 = new StringBuilder(91);
                                                        sb4.append("APK Signing Block entry #");
                                                        sb4.append(i);
                                                        sb4.append(" size out of range: ");
                                                        sb4.append(i3);
                                                        sb4.append(", available: ");
                                                        sb4.append(remaining);
                                                        throw new zzf(sb4.toString());
                                                    } else if (slice.getInt() == 1896449818) {
                                                        X509Certificate[][] b2 = m6555b(randomAccessFile.getChannel(), new hu1(m6548i(slice, i3 - 4), longValue2, b, longValue, byteBuffer, null));
                                                        randomAccessFile.close();
                                                        try {
                                                            randomAccessFile.close();
                                                        } catch (IOException e) {
                                                        }
                                                        return b2;
                                                    } else {
                                                        slice.position(position2 + i3);
                                                    }
                                                } else {
                                                    StringBuilder sb5 = new StringBuilder(70);
                                                    sb5.append("Insufficient data to read size of APK Signing Block entry #");
                                                    sb5.append(i);
                                                    throw new zzf(sb5.toString());
                                                }
                                            }
                                            throw new zzf("No APK Signature Scheme v2 block in APK Signing Block");
                                        }
                                        StringBuilder sb6 = new StringBuilder(41);
                                        sb6.append("end > capacity: ");
                                        sb6.append(capacity);
                                        sb6.append(" > ");
                                        sb6.append(capacity2);
                                        throw new IllegalArgumentException(sb6.toString());
                                    }
                                    StringBuilder sb7 = new StringBuilder(38);
                                    sb7.append("end < start: ");
                                    sb7.append(capacity);
                                    sb7.append(" < ");
                                    sb7.append(8);
                                    throw new IllegalArgumentException(sb7.toString());
                                }
                                throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                            }
                            StringBuilder sb8 = new StringBuilder(103);
                            sb8.append("APK Signing Block sizes in header and footer do not match: ");
                            sb8.append(j4);
                            sb8.append(" vs ");
                            sb8.append(j2);
                            throw new zzf(sb8.toString());
                        }
                        StringBuilder sb9 = new StringBuilder(59);
                        sb9.append("APK Signing Block offset out of range: ");
                        sb9.append(j3);
                        throw new zzf(sb9.toString());
                    }
                    throw new zzf("No APK Signing Block before ZIP Central Directory");
                } else {
                    StringBuilder sb10 = new StringBuilder(87);
                    sb10.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                    sb10.append(b);
                    throw new zzf(sb10.toString());
                }
            } else {
                long length = randomAccessFile.length();
                StringBuilder sb11 = new StringBuilder(102);
                sb11.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb11.append(length);
                sb11.append(" bytes");
                throw new zzf(sb11.toString());
            }
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (IOException e2) {
            }
            throw th;
        }
    }

    /* renamed from: b */
    private static X509Certificate[][] m6555b(FileChannel fileChannel, hu1 hu1Var) {
        ByteBuffer byteBuffer;
        long j;
        long j2;
        long j3;
        ByteBuffer byteBuffer2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            try {
                byteBuffer = hu1Var.f6783a;
                ByteBuffer j4 = m6547j(byteBuffer);
                int i = 0;
                while (j4.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m6554c(m6547j(j4), hashMap, instance));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Failed to parse/verify signer #");
                        sb.append(i);
                        sb.append(" block");
                        throw new SecurityException(sb.toString(), e);
                    }
                }
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                } else if (!hashMap.isEmpty()) {
                    j = hu1Var.f6784b;
                    j2 = hu1Var.f6785c;
                    j3 = hu1Var.f6786d;
                    byteBuffer2 = hu1Var.f6787e;
                    m6553d(hashMap, fileChannel, j, j2, j3, byteBuffer2);
                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                } else {
                    throw new SecurityException("No content digests found");
                }
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b7 A[Catch: SignatureException -> 0x0493, InvalidAlgorithmParameterException -> 0x0497, InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x049b, InvalidKeySpecException -> 0x049f, NoSuchAlgorithmException -> 0x04a3, TRY_ENTER, TryCatch #5 {InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x049b, blocks: (B:82:0x0289, B:84:0x02b7, B:86:0x02bf), top: B:145:0x0289 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02d1  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v13, types: [byte[], java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.security.spec.KeySpec, java.security.spec.X509EncodedKeySpec, java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.security.PublicKey, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.security.Signature, java.security.PublicKey, java.security.spec.AlgorithmParameterSpec, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v17, types: [java.lang.Object, java.nio.ByteBuffer, boolean] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.util.List, java.lang.Object, boolean] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.util.List, java.nio.ByteBuffer, boolean] */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.util.List, byte[], boolean] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.util.List, boolean] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.security.cert.X509Certificate, java.util.List, byte[]] */
    /* JADX WARN: Type inference failed for: r0v45, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v47, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v48, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v51, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v53, types: [java.util.List, int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v69, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v70, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v73, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v75, types: [java.util.List, int] */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r0v77, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v79, types: [int] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v81 */
    /* JADX WARN: Type inference failed for: r0v82 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.security.spec.AlgorithmParameterSpec] */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.util.Pair] */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object, byte[]] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.Map<java.lang.Integer, byte[]>, java.util.Map] */
    /* JADX WARN: Unknown variable types count: 19 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] m6554c(java.nio.ByteBuffer r8, java.util.Map<java.lang.Integer, byte[]> r9, java.security.cert.CertificateFactory r10) {
        /*
            Method dump skipped, instructions count: 1251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mk2.m6554c(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* renamed from: d */
    private static void m6553d(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) {
        if (!map.isEmpty()) {
            rd0 a41Var = new a41(fileChannel, 0L, j);
            rd0 a41Var2 = new a41(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            jl2.m6964c(duplicate, j);
            rd0 dnVar = new dn(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] e = m6552e(iArr, new rd0[]{a41Var, a41Var2, dnVar});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), e[i2])) {
                        throw new SecurityException(m6550g(i3).concat(" digest of contents did not verify"));
                    }
                }
            } catch (DigestException e2) {
                throw new SecurityException("Failed to compute digest(s) of contents", e2);
            }
        } else {
            throw new SecurityException("No digests provided");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] m6552e(int[] r7, com.google.android.gms.internal.ads.rd0[] r8) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mk2.m6552e(int[], com.google.android.gms.internal.ads.rd0[]):byte[][]");
    }

    /* renamed from: f */
    private static int m6551f(int i) {
        if (i == 513) {
            return 1;
        }
        if (i == 514) {
            return 2;
        }
        if (i == 769) {
            return 1;
        }
        switch (i) {
            case 257:
            case 259:
                return 1;
            case 258:
            case 260:
                return 2;
            default:
                String valueOf = String.valueOf(Long.toHexString(i));
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
        }
    }

    /* renamed from: g */
    private static String m6550g(int i) {
        if (i == 1) {
            return "SHA-256";
        }
        if (i == 2) {
            return "SHA-512";
        }
        StringBuilder sb = new StringBuilder(44);
        sb.append("Unknown content digest algorthm: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: h */
    private static int m6549h(int i) {
        if (i == 1) {
            return 32;
        }
        if (i == 2) {
            return 64;
        }
        StringBuilder sb = new StringBuilder(44);
        sb.append("Unknown content digest algorthm: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: i */
    private static ByteBuffer m6548i(ByteBuffer byteBuffer, int i) {
        if (i >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i2 = i + position;
            if (i2 < position || i2 > limit) {
                throw new BufferUnderflowException();
            }
            byteBuffer.limit(i2);
            try {
                ByteBuffer slice = byteBuffer.slice();
                slice.order(byteBuffer.order());
                byteBuffer.position(i2);
                return slice;
            } finally {
                byteBuffer.limit(limit);
            }
        } else {
            StringBuilder sb = new StringBuilder(17);
            sb.append("size: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: j */
    private static ByteBuffer m6547j(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i < 0) {
                throw new IllegalArgumentException("Negative length");
            } else if (i <= byteBuffer.remaining()) {
                return m6548i(byteBuffer, i);
            } else {
                int remaining = byteBuffer.remaining();
                StringBuilder sb = new StringBuilder(101);
                sb.append("Length-prefixed field longer than remaining buffer. Field length: ");
                sb.append(i);
                sb.append(", remaining: ");
                sb.append(remaining);
                throw new IOException(sb.toString());
            }
        } else {
            int remaining2 = byteBuffer.remaining();
            StringBuilder sb2 = new StringBuilder(93);
            sb2.append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ");
            sb2.append(remaining2);
            throw new IOException(sb2.toString());
        }
    }

    /* renamed from: k */
    private static byte[] m6546k(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IOException("Negative length");
        } else if (i <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr);
            return bArr;
        } else {
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder(90);
            sb.append("Underflow while reading length-prefixed value. Length: ");
            sb.append(i);
            sb.append(", available: ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        }
    }

    /* renamed from: l */
    private static void m6545l(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }
}
