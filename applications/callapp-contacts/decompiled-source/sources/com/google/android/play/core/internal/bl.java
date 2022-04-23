package com.google.android.play.core.internal;

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
import okhttp3.internal.http2.Settings;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bl.class */
public final class bl {
    private static int a(int i) {
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

    private static long a(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    private static Pair<ByteBuffer, Long> a(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> a2 = a(randomAccessFile, 0);
        return a2 != null ? a2 : a(randomAccessFile, (int) Settings.DEFAULT_INITIAL_WINDOW_SIZE);
    }

    private static Pair<ByteBuffer, Long> a(RandomAccessFile randomAccessFile, int i) throws IOException {
        int i2;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, (-22) + length)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        a(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i3 = capacity2 - 22;
            int min = Math.min(i3, (int) Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            for (int i4 = 0; i4 < min; i4++) {
                int i5 = i3 - i4;
                if (allocate.getInt(i5) == 101010256 && ((char) allocate.getShort(i5 + 20)) == i4) {
                    i2 = i5;
                    break;
                }
            }
        }
        i2 = -1;
        if (i2 == -1) {
            return null;
        }
        allocate.position(i2);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(slice, Long.valueOf(capacity + i2));
    }

    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    public static String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str.length() + 2 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        sb.append(":");
        sb.append(str3);
        return sb.toString();
    }

    private static void a(int i, byte[] bArr) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }

    private static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static void a(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) throws SecurityException {
        if (!map.isEmpty()) {
            bg bgVar = new bg(fileChannel, 0L, j);
            bg bgVar2 = new bg(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            a(duplicate);
            int position = duplicate.position();
            if (j < 0 || j > 4294967295L) {
                StringBuilder sb = new StringBuilder(47);
                sb.append("uint32 value of out range: ");
                sb.append(j);
                throw new IllegalArgumentException(sb.toString());
            }
            duplicate.putInt(duplicate.position() + position + 16, (int) j);
            aa aaVar = new aa(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] a2 = a(iArr, new az[]{bgVar, bgVar2, aaVar});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), a2[i2])) {
                        throw new SecurityException(b(i3).concat(" digest of contents did not verify"));
                    }
                }
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        } else {
            throw new SecurityException("No digests provided");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b5 A[Catch: SignatureException -> 0x0491, InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0495, InvalidKeyException -> 0x0499, InvalidKeySpecException -> 0x049d, NoSuchAlgorithmException -> 0x04a1, TRY_ENTER, TryCatch #5 {InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0495, blocks: (B:82:0x0287, B:84:0x02b5, B:86:0x02bd), top: B:144:0x0287 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02cf  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v13, types: [byte[], java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.security.spec.KeySpec, java.security.spec.X509EncodedKeySpec, java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.security.PublicKey, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.security.Signature, java.security.PublicKey, java.security.spec.AlgorithmParameterSpec, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v17, types: [boolean, java.lang.Object, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.util.List, boolean, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.util.List, boolean, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.util.List, byte[], boolean] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.util.List, boolean] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.security.cert.X509Certificate, java.util.List, byte[]] */
    /* JADX WARN: Type inference failed for: r0v45, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v47, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v48, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v51, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v53, types: [int, java.util.List, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v69, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v70, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v73, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v75, types: [int, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r0v77, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v79, types: [int] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v81 */
    /* JADX WARN: Type inference failed for: r0v82 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.security.spec.AlgorithmParameterSpec] */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.util.Pair] */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v4, types: [byte[], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.Map, java.util.Map<java.lang.Integer, byte[]>] */
    /* JADX WARN: Unknown variable types count: 19 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] a(java.nio.ByteBuffer r8, java.util.Map<java.lang.Integer, byte[]> r9, java.security.cert.CertificateFactory r10) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.bl.a(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] a(int[] r7, com.google.android.play.core.internal.az[] r8) throws java.security.DigestException {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.bl.a(int[], com.google.android.play.core.internal.az[]):byte[][]");
    }

    public static X509Certificate[][] a(String str) throws f, SecurityException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> a2 = a(randomAccessFile);
            if (a2 != null) {
                ByteBuffer byteBuffer = (ByteBuffer) a2.first;
                long longValue = ((Long) a2.second).longValue();
                long j = (-20) + longValue;
                if (j >= 0) {
                    randomAccessFile.seek(j);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new f("ZIP64 APK not supported");
                    }
                }
                a(byteBuffer);
                long a3 = a(byteBuffer, byteBuffer.position() + 16);
                if (a3 < longValue) {
                    a(byteBuffer);
                    if (a(byteBuffer, byteBuffer.position() + 12) + a3 != longValue) {
                        throw new f("ZIP Central Directory is not immediately followed by End of Central Directory");
                    } else if (a3 >= 32) {
                        ByteBuffer allocate = ByteBuffer.allocate(24);
                        allocate.order(ByteOrder.LITTLE_ENDIAN);
                        randomAccessFile.seek(a3 - allocate.capacity());
                        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                        if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                            int i = 0;
                            long j2 = allocate.getLong(0);
                            if (j2 < allocate.capacity() || j2 > 2147483639) {
                                StringBuilder sb = new StringBuilder(57);
                                sb.append("APK Signing Block size out of range: ");
                                sb.append(j2);
                                throw new f(sb.toString());
                            }
                            int i2 = (int) (8 + j2);
                            long j3 = a3 - i2;
                            if (j3 >= 0) {
                                ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                                allocate2.order(ByteOrder.LITTLE_ENDIAN);
                                randomAccessFile.seek(j3);
                                randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                                long j4 = allocate2.getLong(0);
                                if (j4 == j2) {
                                    Pair create = Pair.create(allocate2, Long.valueOf(j3));
                                    ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                    long longValue2 = ((Long) create.second).longValue();
                                    if (byteBuffer2.order() == ByteOrder.LITTLE_ENDIAN) {
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
                                                            StringBuilder sb2 = new StringBuilder(76);
                                                            sb2.append("APK Signing Block entry #");
                                                            sb2.append(i);
                                                            sb2.append(" size out of range: ");
                                                            sb2.append(j5);
                                                            throw new f(sb2.toString());
                                                        }
                                                        int i3 = (int) j5;
                                                        int position2 = slice.position();
                                                        if (i3 > slice.remaining()) {
                                                            int remaining = slice.remaining();
                                                            StringBuilder sb3 = new StringBuilder(91);
                                                            sb3.append("APK Signing Block entry #");
                                                            sb3.append(i);
                                                            sb3.append(" size out of range: ");
                                                            sb3.append(i3);
                                                            sb3.append(", available: ");
                                                            sb3.append(remaining);
                                                            throw new f(sb3.toString());
                                                        } else if (slice.getInt() == 1896449818) {
                                                            X509Certificate[][] a4 = a(randomAccessFile.getChannel(), new bh(b(slice, i3 - 4), longValue2, a3, longValue, byteBuffer));
                                                            randomAccessFile.close();
                                                            return a4;
                                                        } else {
                                                            slice.position(position2 + i3);
                                                        }
                                                    } else {
                                                        StringBuilder sb4 = new StringBuilder(70);
                                                        sb4.append("Insufficient data to read size of APK Signing Block entry #");
                                                        sb4.append(i);
                                                        throw new f(sb4.toString());
                                                    }
                                                }
                                                throw new f("No APK Signature Scheme v2 block in APK Signing Block");
                                            }
                                            StringBuilder sb5 = new StringBuilder(41);
                                            sb5.append("end > capacity: ");
                                            sb5.append(capacity);
                                            sb5.append(" > ");
                                            sb5.append(capacity2);
                                            throw new IllegalArgumentException(sb5.toString());
                                        }
                                        StringBuilder sb6 = new StringBuilder(38);
                                        sb6.append("end < start: ");
                                        sb6.append(capacity);
                                        sb6.append(" < ");
                                        sb6.append(8);
                                        throw new IllegalArgumentException(sb6.toString());
                                    }
                                    throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                                }
                                StringBuilder sb7 = new StringBuilder(103);
                                sb7.append("APK Signing Block sizes in header and footer do not match: ");
                                sb7.append(j4);
                                sb7.append(" vs ");
                                sb7.append(j2);
                                throw new f(sb7.toString());
                            }
                            StringBuilder sb8 = new StringBuilder(59);
                            sb8.append("APK Signing Block offset out of range: ");
                            sb8.append(j3);
                            throw new f(sb8.toString());
                        }
                        throw new f("No APK Signing Block before ZIP Central Directory");
                    } else {
                        StringBuilder sb9 = new StringBuilder(87);
                        sb9.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                        sb9.append(a3);
                        throw new f(sb9.toString());
                    }
                } else {
                    StringBuilder sb10 = new StringBuilder(122);
                    sb10.append("ZIP Central Directory offset out of range: ");
                    sb10.append(a3);
                    sb10.append(". ZIP End of Central Directory offset: ");
                    sb10.append(longValue);
                    throw new f(sb10.toString());
                }
            } else {
                long length = randomAccessFile.length();
                StringBuilder sb11 = new StringBuilder(102);
                sb11.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb11.append(length);
                sb11.append(" bytes");
                throw new f(sb11.toString());
            }
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
            }
        }
    }

    private static X509Certificate[][] a(FileChannel fileChannel, bh bhVar) throws SecurityException {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer b2 = b(bhVar.f31365a);
                int i = 0;
                while (b2.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(a(b(b2), hashMap, instance));
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
                    a(hashMap, fileChannel, bhVar.f31366b, bhVar.f31367c, bhVar.f31368d, bhVar.e);
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

    private static String b(int i) {
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

    private static ByteBuffer b(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i < 0) {
                throw new IllegalArgumentException("Negative length");
            } else if (i <= byteBuffer.remaining()) {
                return b(byteBuffer, i);
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

    private static ByteBuffer b(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
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

    private static int c(int i) {
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

    private static byte[] c(ByteBuffer byteBuffer) throws IOException {
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
}
