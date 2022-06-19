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
/* renamed from: com.google.android.play.core.internal.bl */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bl.class */
public final class C15048bl {
    /* renamed from: a */
    private static int m9570a(int i) {
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

    /* renamed from: a */
    private static long m9562a(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    /* renamed from: a */
    private static Pair<ByteBuffer, Long> m9568a(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> m9567a = m9567a(randomAccessFile, 0);
        return m9567a != null ? m9567a : m9567a(randomAccessFile, (int) Settings.DEFAULT_INITIAL_WINDOW_SIZE);
    }

    /* renamed from: a */
    private static Pair<ByteBuffer, Long> m9567a(RandomAccessFile randomAccessFile, int i) throws IOException {
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
        m9563a(allocate);
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

    /* renamed from: a */
    public static String m9565a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    public static String m9564a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str.length() + 2 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        sb.append(":");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: a */
    private static void m9569a(int i, byte[] bArr) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }

    /* renamed from: a */
    private static void m9563a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            return;
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }

    /* renamed from: a */
    private static void m9559a(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) throws SecurityException {
        if (!map.isEmpty()) {
            C15043bg c15043bg = new C15043bg(fileChannel, 0L, j);
            C15043bg c15043bg2 = new C15043bg(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            m9563a(duplicate);
            int position = duplicate.position();
            if (j < 0 || j > 4294967295L) {
                StringBuilder sb = new StringBuilder(47);
                sb.append("uint32 value of out range: ");
                sb.append(j);
                throw new IllegalArgumentException(sb.toString());
            }
            duplicate.putInt(duplicate.position() + position + 16, (int) j);
            C15010aa c15010aa = new C15010aa(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] m9558a = m9558a(iArr, new AbstractC15035az[]{c15043bg, c15043bg2, c15010aa});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), m9558a[i2])) {
                        throw new SecurityException(m9557b(i3).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        }
        throw new SecurityException("No digests provided");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b5 A[Catch: SignatureException -> 0x0491, InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0495, InvalidKeyException -> 0x0499, InvalidKeySpecException -> 0x049d, NoSuchAlgorithmException -> 0x04a1, TRY_ENTER, TryCatch #5 {InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0495, blocks: (B:82:0x0287, B:84:0x02b5, B:86:0x02bd), top: B:144:0x0287 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02cf  */
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
    /* JADX WARN: Type inference failed for: r0v33, types: [boolean, java.util.List, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v45, types: [boolean, java.util.List, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v46, types: [boolean, byte[], java.util.List] */
    /* JADX WARN: Type inference failed for: r0v48, types: [boolean, java.util.List] */
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] m9561a(java.nio.ByteBuffer r8, java.util.Map<java.lang.Integer, byte[]> r9, java.security.cert.CertificateFactory r10) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C15048bl.m9561a(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
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
    /* JADX WARN: Type inference failed for: r0v48, types: [com.google.android.play.core.internal.az] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v87, types: [java.security.MessageDigest] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] m9558a(int[] r7, com.google.android.play.core.internal.AbstractC15035az[] r8) throws java.security.DigestException {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C15048bl.m9558a(int[], com.google.android.play.core.internal.az[]):byte[][]");
    }

    /* renamed from: a */
    public static X509Certificate[][] m9566a(String str) throws C15070f, SecurityException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> m9568a = m9568a(randomAccessFile);
            if (m9568a == null) {
                long length = randomAccessFile.length();
                StringBuilder sb = new StringBuilder(102);
                sb.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb.append(length);
                sb.append(" bytes");
                throw new C15070f(sb.toString());
            }
            ByteBuffer byteBuffer = (ByteBuffer) m9568a.first;
            long longValue = ((Long) m9568a.second).longValue();
            long j = (-20) + longValue;
            if (j >= 0) {
                randomAccessFile.seek(j);
                if (randomAccessFile.readInt() == 1347094023) {
                    throw new C15070f("ZIP64 APK not supported");
                }
            }
            m9563a(byteBuffer);
            long m9562a = m9562a(byteBuffer, byteBuffer.position() + 16);
            if (m9562a >= longValue) {
                StringBuilder sb2 = new StringBuilder(122);
                sb2.append("ZIP Central Directory offset out of range: ");
                sb2.append(m9562a);
                sb2.append(". ZIP End of Central Directory offset: ");
                sb2.append(longValue);
                throw new C15070f(sb2.toString());
            }
            m9563a(byteBuffer);
            if (m9562a(byteBuffer, byteBuffer.position() + 12) + m9562a != longValue) {
                throw new C15070f("ZIP Central Directory is not immediately followed by End of Central Directory");
            }
            if (m9562a < 32) {
                StringBuilder sb3 = new StringBuilder(87);
                sb3.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                sb3.append(m9562a);
                throw new C15070f(sb3.toString());
            }
            ByteBuffer allocate = ByteBuffer.allocate(24);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            randomAccessFile.seek(m9562a - allocate.capacity());
            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
            if (allocate.getLong(8) != 2334950737559900225L || allocate.getLong(16) != 3617552046287187010L) {
                throw new C15070f("No APK Signing Block before ZIP Central Directory");
            }
            int i = 0;
            long j2 = allocate.getLong(0);
            if (j2 < allocate.capacity() || j2 > 2147483639) {
                StringBuilder sb4 = new StringBuilder(57);
                sb4.append("APK Signing Block size out of range: ");
                sb4.append(j2);
                throw new C15070f(sb4.toString());
            }
            int i2 = (int) (8 + j2);
            long j3 = m9562a - i2;
            if (j3 < 0) {
                StringBuilder sb5 = new StringBuilder(59);
                sb5.append("APK Signing Block offset out of range: ");
                sb5.append(j3);
                throw new C15070f(sb5.toString());
            }
            ByteBuffer allocate2 = ByteBuffer.allocate(i2);
            allocate2.order(ByteOrder.LITTLE_ENDIAN);
            randomAccessFile.seek(j3);
            randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
            long j4 = allocate2.getLong(0);
            if (j4 != j2) {
                StringBuilder sb6 = new StringBuilder(103);
                sb6.append("APK Signing Block sizes in header and footer do not match: ");
                sb6.append(j4);
                sb6.append(" vs ");
                sb6.append(j2);
                throw new C15070f(sb6.toString());
            }
            Pair create = Pair.create(allocate2, Long.valueOf(j3));
            ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
            long longValue2 = ((Long) create.second).longValue();
            if (byteBuffer2.order() != ByteOrder.LITTLE_ENDIAN) {
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
                    throw new C15070f(sb9.toString());
                }
                long j5 = slice.getLong();
                if (j5 < 4 || j5 > 2147483647L) {
                    StringBuilder sb10 = new StringBuilder(76);
                    sb10.append("APK Signing Block entry #");
                    sb10.append(i);
                    sb10.append(" size out of range: ");
                    sb10.append(j5);
                    throw new C15070f(sb10.toString());
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
                    throw new C15070f(sb11.toString());
                } else if (slice.getInt() == 1896449818) {
                    X509Certificate[][] m9560a = m9560a(randomAccessFile.getChannel(), new C15044bh(m9555b(slice, i3 - 4), longValue2, m9562a, longValue, byteBuffer));
                    randomAccessFile.close();
                    return m9560a;
                } else {
                    slice.position(position2 + i3);
                }
            }
            throw new C15070f("No APK Signature Scheme v2 block in APK Signing Block");
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    private static X509Certificate[][] m9560a(FileChannel fileChannel, C15044bh c15044bh) throws SecurityException {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer m9556b = m9556b(c15044bh.f54767a);
                int i = 0;
                while (m9556b.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m9561a(m9556b(m9556b), hashMap, certificateFactory));
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
                m9559a(hashMap, fileChannel, c15044bh.f54768b, c15044bh.f54769c, c15044bh.f54770d, c15044bh.f54771e);
                return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }

    /* renamed from: b */
    private static String m9557b(int i) {
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

    /* renamed from: b */
    private static ByteBuffer m9556b(ByteBuffer byteBuffer) throws IOException {
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
            return m9555b(byteBuffer, i);
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb2 = new StringBuilder(101);
        sb2.append("Length-prefixed field longer than remaining buffer. Field length: ");
        sb2.append(i);
        sb2.append(", remaining: ");
        sb2.append(remaining2);
        throw new IOException(sb2.toString());
    }

    /* renamed from: b */
    private static ByteBuffer m9555b(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
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

    /* renamed from: c */
    private static int m9554c(int i) {
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

    /* renamed from: c */
    private static byte[] m9553c(ByteBuffer byteBuffer) throws IOException {
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
}
