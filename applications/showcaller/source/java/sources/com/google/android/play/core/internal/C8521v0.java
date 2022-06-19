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
/* renamed from: com.google.android.play.core.internal.v0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/v0.class */
public final class C8521v0 {
    /* renamed from: a */
    static Pair<ByteBuffer, Long> m3460a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> m3453h = m3453h(randomAccessFile, 0);
        return m3453h != null ? m3453h : m3453h(randomAccessFile, 65535);
    }

    /* renamed from: b */
    public static long m3459b(ByteBuffer byteBuffer) {
        m3452i(byteBuffer);
        return m3451j(byteBuffer, byteBuffer.position() + 16);
    }

    /* renamed from: c */
    public static void m3458c(ByteBuffer byteBuffer, long j) {
        m3452i(byteBuffer);
        int position = byteBuffer.position();
        if (j >= 0 && j <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + position + 16, (int) j);
            return;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("uint32 value of out range: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: d */
    public static long m3457d(ByteBuffer byteBuffer) {
        m3452i(byteBuffer);
        return m3451j(byteBuffer, byteBuffer.position() + 12);
    }

    /* renamed from: e */
    public static String m3456e(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: f */
    public static String m3455f(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str.length() + 2 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        sb.append(":");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: g */
    public static X509Certificate[][] m3454g(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> m3460a = m3460a(randomAccessFile);
            if (m3460a == null) {
                long length = randomAccessFile.length();
                StringBuilder sb = new StringBuilder(102);
                sb.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb.append(length);
                sb.append(" bytes");
                throw new C8485f(sb.toString());
            }
            ByteBuffer byteBuffer = (ByteBuffer) m3460a.first;
            long longValue = ((Long) m3460a.second).longValue();
            long j = (-20) + longValue;
            if (j >= 0) {
                randomAccessFile.seek(j);
                if (randomAccessFile.readInt() == 1347094023) {
                    throw new C8485f("ZIP64 APK not supported");
                }
            }
            long m3459b = m3459b(byteBuffer);
            if (m3459b >= longValue) {
                StringBuilder sb2 = new StringBuilder(122);
                sb2.append("ZIP Central Directory offset out of range: ");
                sb2.append(m3459b);
                sb2.append(". ZIP End of Central Directory offset: ");
                sb2.append(longValue);
                throw new C8485f(sb2.toString());
            } else if (m3457d(byteBuffer) + m3459b != longValue) {
                throw new C8485f("ZIP Central Directory is not immediately followed by End of Central Directory");
            } else {
                if (m3459b < 32) {
                    StringBuilder sb3 = new StringBuilder(87);
                    sb3.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                    sb3.append(m3459b);
                    throw new C8485f(sb3.toString());
                }
                ByteBuffer allocate = ByteBuffer.allocate(24);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                allocate.order(byteOrder);
                randomAccessFile.seek(m3459b - allocate.capacity());
                randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                if (allocate.getLong(8) != 2334950737559900225L || allocate.getLong(16) != 3617552046287187010L) {
                    throw new C8485f("No APK Signing Block before ZIP Central Directory");
                }
                int i = 0;
                long j2 = allocate.getLong(0);
                if (j2 < allocate.capacity() || j2 > 2147483639) {
                    StringBuilder sb4 = new StringBuilder(57);
                    sb4.append("APK Signing Block size out of range: ");
                    sb4.append(j2);
                    throw new C8485f(sb4.toString());
                }
                int i2 = (int) (8 + j2);
                long j3 = m3459b - i2;
                if (j3 < 0) {
                    StringBuilder sb5 = new StringBuilder(59);
                    sb5.append("APK Signing Block offset out of range: ");
                    sb5.append(j3);
                    throw new C8485f(sb5.toString());
                }
                ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                allocate2.order(byteOrder);
                randomAccessFile.seek(j3);
                randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                long j4 = allocate2.getLong(0);
                if (j4 != j2) {
                    StringBuilder sb6 = new StringBuilder(103);
                    sb6.append("APK Signing Block sizes in header and footer do not match: ");
                    sb6.append(j4);
                    sb6.append(" vs ");
                    sb6.append(j2);
                    throw new C8485f(sb6.toString());
                }
                Pair create = Pair.create(allocate2, Long.valueOf(j3));
                ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                long longValue2 = ((Long) create.second).longValue();
                if (byteBuffer2.order() != byteOrder) {
                    throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                }
                int capacity = byteBuffer2.capacity() - 24;
                if (capacity < 8) {
                    StringBuilder sb7 = new StringBuilder(38);
                    sb7.append("end < start: ");
                    sb7.append(capacity);
                    sb7.append(" < ");
                    sb7.append(8);
                    throw new IllegalArgumentException(sb7.toString());
                }
                int capacity2 = byteBuffer2.capacity();
                if (capacity > byteBuffer2.capacity()) {
                    StringBuilder sb8 = new StringBuilder(41);
                    sb8.append("end > capacity: ");
                    sb8.append(capacity);
                    sb8.append(" > ");
                    sb8.append(capacity2);
                    throw new IllegalArgumentException(sb8.toString());
                }
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
                    if (slice.remaining() < 8) {
                        StringBuilder sb9 = new StringBuilder(70);
                        sb9.append("Insufficient data to read size of APK Signing Block entry #");
                        sb9.append(i);
                        throw new C8485f(sb9.toString());
                    }
                    long j5 = slice.getLong();
                    if (j5 < 4 || j5 > 2147483647L) {
                        StringBuilder sb10 = new StringBuilder(76);
                        sb10.append("APK Signing Block entry #");
                        sb10.append(i);
                        sb10.append(" size out of range: ");
                        sb10.append(j5);
                        throw new C8485f(sb10.toString());
                    }
                    int i3 = (int) j5;
                    int position2 = slice.position();
                    if (i3 > slice.remaining()) {
                        int remaining = slice.remaining();
                        StringBuilder sb11 = new StringBuilder(91);
                        sb11.append("APK Signing Block entry #");
                        sb11.append(i);
                        sb11.append(" size out of range: ");
                        sb11.append(i3);
                        sb11.append(", available: ");
                        sb11.append(remaining);
                        throw new C8485f(sb11.toString());
                    } else if (slice.getInt() == 1896449818) {
                        X509Certificate[][] m3450k = m3450k(randomAccessFile.getChannel(), new C8519u0(m3443r(slice, i3 - 4), longValue2, m3459b, longValue, byteBuffer));
                        randomAccessFile.close();
                        return m3450k;
                    } else {
                        slice.position(position2 + i3);
                    }
                }
                throw new C8485f("No APK Signature Scheme v2 block in APK Signing Block");
            }
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: h */
    private static Pair<ByteBuffer, Long> m3453h(RandomAccessFile randomAccessFile, int i) {
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
        m3452i(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i3 = capacity2 - 22;
            int min = Math.min(i3, 65535);
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

    /* renamed from: i */
    private static void m3452i(ByteBuffer byteBuffer) {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            return;
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }

    /* renamed from: j */
    private static long m3451j(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    /* renamed from: k */
    private static X509Certificate[][] m3450k(FileChannel fileChannel, C8519u0 c8519u0) {
        ByteBuffer byteBuffer;
        long j;
        long j2;
        long j3;
        ByteBuffer byteBuffer2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                byteBuffer = c8519u0.f38083a;
                ByteBuffer m3442s = m3442s(byteBuffer);
                int i = 0;
                while (m3442s.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m3449l(m3442s(m3442s), hashMap, certificateFactory));
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
                }
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                j = c8519u0.f38084b;
                j2 = c8519u0.f38085c;
                j3 = c8519u0.f38086d;
                byteBuffer2 = c8519u0.f38087e;
                m3448m(hashMap, fileChannel, j, j2, j3, byteBuffer2);
                return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b7 A[Catch: SignatureException -> 0x0490, InvalidAlgorithmParameterException -> 0x0494, InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0498, InvalidKeySpecException -> 0x049c, NoSuchAlgorithmException -> 0x04a0, TRY_ENTER, TryCatch #5 {InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0498, blocks: (B:82:0x0289, B:84:0x02b7, B:86:0x02bf), top: B:144:0x0289 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02d1  */
    /* JADX WARN: Type inference failed for: r0v115, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v116, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v119, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v121, types: [java.util.List, int] */
    /* JADX WARN: Type inference failed for: r0v122 */
    /* JADX WARN: Type inference failed for: r0v123, types: [int] */
    /* JADX WARN: Type inference failed for: r0v124, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v125, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v128, types: [int] */
    /* JADX WARN: Type inference failed for: r0v129 */
    /* JADX WARN: Type inference failed for: r0v130 */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.security.spec.AlgorithmParameterSpec] */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v23, types: [byte[], java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.security.spec.KeySpec, java.security.spec.X509EncodedKeySpec, java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.security.PublicKey, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.security.Signature, java.security.PublicKey, java.security.spec.AlgorithmParameterSpec, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v27, types: [boolean, java.lang.Object, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.util.List, boolean, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.util.List, boolean, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v46, types: [byte[], java.util.List, boolean] */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.util.List, boolean] */
    /* JADX WARN: Type inference failed for: r0v57, types: [java.security.cert.X509Certificate, byte[], java.util.List] */
    /* JADX WARN: Type inference failed for: r0v58, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v61, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v62, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v65, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v67, types: [java.util.List, int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v69, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.nio.ByteBuffer] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] m3449l(java.nio.ByteBuffer r8, java.util.Map<java.lang.Integer, byte[]> r9, java.security.cert.CertificateFactory r10) {
        /*
            Method dump skipped, instructions count: 1240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C8521v0.m3449l(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* renamed from: m */
    private static void m3448m(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) {
        if (!map.isEmpty()) {
            C8517t0 c8517t0 = new C8517t0(fileChannel, 0L, j);
            C8517t0 c8517t02 = new C8517t0(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            m3458c(duplicate, j);
            C8522w c8522w = new C8522w(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] m3447n = m3447n(iArr, new AbstractC8507o0[]{c8517t0, c8517t02, c8522w});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), m3447n[i2])) {
                        throw new SecurityException(m3445p(i3).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        }
        throw new SecurityException("No digests provided");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x01ea, code lost:
        r11 = r11 + 1;
        r12 = r12 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v104, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v15, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.security.MessageDigest[]] */
    /* JADX WARN: Type inference failed for: r0v33, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v40, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v48, types: [com.google.android.play.core.internal.o0] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v87, types: [java.security.MessageDigest] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] m3447n(int[] r7, com.google.android.play.core.internal.AbstractC8507o0[] r8) {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C8521v0.m3447n(int[], com.google.android.play.core.internal.o0[]):byte[][]");
    }

    /* renamed from: o */
    private static int m3446o(int i) {
        if (i != 513) {
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
        return 1;
    }

    /* renamed from: p */
    private static String m3445p(int i) {
        if (i != 1) {
            if (i == 2) {
                return "SHA-512";
            }
            StringBuilder sb = new StringBuilder(44);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return "SHA-256";
    }

    /* renamed from: q */
    private static int m3444q(int i) {
        if (i != 1) {
            if (i == 2) {
                return 64;
            }
            StringBuilder sb = new StringBuilder(44);
            sb.append("Unknown content digest algorthm: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return 32;
    }

    /* renamed from: r */
    private static ByteBuffer m3443r(ByteBuffer byteBuffer, int i) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(17);
            sb.append("size: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
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
    }

    /* renamed from: s */
    private static ByteBuffer m3442s(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder(93);
            sb.append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        }
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            return m3443r(byteBuffer, i);
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb2 = new StringBuilder(101);
        sb2.append("Length-prefixed field longer than remaining buffer. Field length: ");
        sb2.append(i);
        sb2.append(", remaining: ");
        sb2.append(remaining2);
        throw new IOException(sb2.toString());
    }

    /* renamed from: t */
    private static byte[] m3441t(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr);
                return bArr;
            }
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder(90);
            sb.append("Underflow while reading length-prefixed value. Length: ");
            sb.append(i);
            sb.append(", available: ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        }
        throw new IOException("Negative length");
    }

    /* renamed from: u */
    private static void m3440u(int i, byte[] bArr) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }
}
