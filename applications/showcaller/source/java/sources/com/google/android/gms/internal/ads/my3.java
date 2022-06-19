package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/my3.class */
public final class my3 {
    /* renamed from: a */
    public static X509Certificate[][] m13057a(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> m12785a = ny3.m12785a(randomAccessFile);
            if (m12785a == null) {
                long length = randomAccessFile.length();
                StringBuilder sb = new StringBuilder(102);
                sb.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb.append(length);
                sb.append(" bytes");
                throw new zzvf(sb.toString());
            }
            ByteBuffer byteBuffer = (ByteBuffer) m12785a.first;
            long longValue = ((Long) m12785a.second).longValue();
            long j = (-20) + longValue;
            if (j >= 0) {
                randomAccessFile.seek(j);
                if (randomAccessFile.readInt() == 1347094023) {
                    throw new zzvf("ZIP64 APK not supported");
                }
            }
            long m12784b = ny3.m12784b(byteBuffer);
            if (m12784b >= longValue) {
                StringBuilder sb2 = new StringBuilder(122);
                sb2.append("ZIP Central Directory offset out of range: ");
                sb2.append(m12784b);
                sb2.append(". ZIP End of Central Directory offset: ");
                sb2.append(longValue);
                throw new zzvf(sb2.toString());
            } else if (ny3.m12782d(byteBuffer) + m12784b != longValue) {
                throw new zzvf("ZIP Central Directory is not immediately followed by End of Central Directory");
            } else {
                if (m12784b < 32) {
                    StringBuilder sb3 = new StringBuilder(87);
                    sb3.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                    sb3.append(m12784b);
                    throw new zzvf(sb3.toString());
                }
                ByteBuffer allocate = ByteBuffer.allocate(24);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                allocate.order(byteOrder);
                randomAccessFile.seek(m12784b - allocate.capacity());
                randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                if (allocate.getLong(8) != 2334950737559900225L || allocate.getLong(16) != 3617552046287187010L) {
                    throw new zzvf("No APK Signing Block before ZIP Central Directory");
                }
                int i = 0;
                long j2 = allocate.getLong(0);
                if (j2 < allocate.capacity() || j2 > 2147483639) {
                    StringBuilder sb4 = new StringBuilder(57);
                    sb4.append("APK Signing Block size out of range: ");
                    sb4.append(j2);
                    throw new zzvf(sb4.toString());
                }
                int i2 = (int) (8 + j2);
                long j3 = m12784b - i2;
                if (j3 < 0) {
                    StringBuilder sb5 = new StringBuilder(59);
                    sb5.append("APK Signing Block offset out of range: ");
                    sb5.append(j3);
                    throw new zzvf(sb5.toString());
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
                    throw new zzvf(sb6.toString());
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
                        throw new zzvf(sb9.toString());
                    }
                    long j5 = slice.getLong();
                    if (j5 < 4 || j5 > 2147483647L) {
                        StringBuilder sb10 = new StringBuilder(76);
                        sb10.append("APK Signing Block entry #");
                        sb10.append(i);
                        sb10.append(" size out of range: ");
                        sb10.append(j5);
                        throw new zzvf(sb10.toString());
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
                        throw new zzvf(sb11.toString());
                    } else if (slice.getInt() == 1896449818) {
                        X509Certificate[][] m13056b = m13056b(randomAccessFile.getChannel(), new ly3(m13049i(slice, i3 - 4), longValue2, m12784b, longValue, byteBuffer, null));
                        randomAccessFile.close();
                        return m13056b;
                    } else {
                        slice.position(position2 + i3);
                    }
                }
                throw new zzvf("No APK Signature Scheme v2 block in APK Signing Block");
            }
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: b */
    private static X509Certificate[][] m13056b(FileChannel fileChannel, ly3 ly3Var) {
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
                byteBuffer = ly3Var.f26347a;
                ByteBuffer m13048j = m13048j(byteBuffer);
                int i = 0;
                while (m13048j.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m13055c(m13048j(m13048j), hashMap, certificateFactory));
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
                j = ly3Var.f26348b;
                j2 = ly3Var.f26349c;
                j3 = ly3Var.f26350d;
                byteBuffer2 = ly3Var.f26351e;
                m13054d(hashMap, fileChannel, j, j2, j3, byteBuffer2);
                return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }

    /* renamed from: c */
    private static X509Certificate[] m13055c(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) {
        String str;
        Pair pair;
        ByteBuffer m13048j = m13048j(byteBuffer);
        ByteBuffer m13048j2 = m13048j(byteBuffer);
        byte[] m13047k = m13047k(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = null;
        int i = -1;
        int i2 = 0;
        while (m13048j2.hasRemaining()) {
            int i3 = i2 + 1;
            try {
                ByteBuffer m13048j3 = m13048j(m13048j2);
                if (m13048j3.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i4 = m13048j3.getInt();
                arrayList.add(Integer.valueOf(i4));
                if (i4 != 513 && i4 != 514 && i4 != 769) {
                    switch (i4) {
                        case 257:
                        case 258:
                        case 259:
                        case 260:
                            break;
                        default:
                            i2 = i3;
                            continue;
                    }
                }
                if (i != -1) {
                    int m13052f = m13052f(i4);
                    int m13052f2 = m13052f(i);
                    i2 = i3;
                    if (m13052f != 1) {
                        if (m13052f2 != 1) {
                            i2 = i3;
                        }
                    }
                }
                bArr = m13047k(m13048j3);
                i = i4;
                i2 = i3;
            } catch (IOException | BufferUnderflowException e) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Failed to parse signature record #");
                sb.append(i3);
                throw new SecurityException(sb.toString(), e);
            }
        }
        if (i == -1) {
            if (i2 != 0) {
                throw new SecurityException("No supported signatures found");
            }
            throw new SecurityException("No signatures found");
        }
        if (i == 513 || i == 514) {
            str = "EC";
        } else if (i != 769) {
            switch (i) {
                case 257:
                case 258:
                case 259:
                case 260:
                    str = "RSA";
                    break;
                default:
                    String valueOf = String.valueOf(Long.toHexString(i));
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
            }
        } else {
            str = "DSA";
        }
        if (i == 513) {
            pair = Pair.create("SHA256withECDSA", null);
        } else if (i == 514) {
            pair = Pair.create("SHA512withECDSA", null);
        } else if (i != 769) {
            switch (i) {
                case 257:
                    pair = Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                    break;
                case 258:
                    pair = Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                    break;
                case 259:
                    pair = Pair.create("SHA256withRSA", null);
                    break;
                case 260:
                    pair = Pair.create("SHA512withRSA", null);
                    break;
                default:
                    String valueOf2 = String.valueOf(Long.toHexString(i));
                    throw new IllegalArgumentException(valueOf2.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf2) : new String("Unknown signature algorithm: 0x"));
            }
        } else {
            pair = Pair.create("SHA256withDSA", null);
        }
        String str2 = (String) pair.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) pair.second;
        try {
            PublicKey generatePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(m13047k));
            Signature signature = Signature.getInstance(str2);
            signature.initVerify(generatePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(m13048j);
            if (!signature.verify(bArr)) {
                throw new SecurityException(String.valueOf(str2).concat(" signature did not verify"));
            }
            m13048j.clear();
            ByteBuffer m13048j4 = m13048j(m13048j);
            ArrayList arrayList2 = new ArrayList();
            int i5 = 0;
            byte[] bArr2 = null;
            while (m13048j4.hasRemaining()) {
                int i6 = i5 + 1;
                try {
                    ByteBuffer m13048j5 = m13048j(m13048j4);
                    if (m13048j5.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i7 = m13048j5.getInt();
                    arrayList2.add(Integer.valueOf(i7));
                    i5 = i6;
                    if (i7 == i) {
                        bArr2 = m13047k(m13048j5);
                        i5 = i6;
                    }
                } catch (IOException | BufferUnderflowException e2) {
                    StringBuilder sb2 = new StringBuilder(42);
                    sb2.append("Failed to parse digest record #");
                    sb2.append(i6);
                    throw new IOException(sb2.toString(), e2);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int m13052f3 = m13052f(i);
            byte[] put = map.put(Integer.valueOf(m13052f3), bArr2);
            if (put != null && !MessageDigest.isEqual(put, bArr2)) {
                throw new SecurityException(m13051g(m13052f3).concat(" contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer m13048j6 = m13048j(m13048j);
            ArrayList arrayList3 = new ArrayList();
            int i8 = 0;
            while (m13048j6.hasRemaining()) {
                i8++;
                byte[] m13047k2 = m13047k(m13048j6);
                try {
                    arrayList3.add(new zzvg((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(m13047k2)), m13047k2));
                } catch (CertificateException e3) {
                    StringBuilder sb3 = new StringBuilder(41);
                    sb3.append("Failed to decode certificate #");
                    sb3.append(i8);
                    throw new SecurityException(sb3.toString(), e3);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (!Arrays.equals(m13047k, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                throw new SecurityException("Public key mismatch between certificate and signature record");
            }
            return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e4) {
            StringBuilder sb4 = new StringBuilder(String.valueOf(str2).length() + 27);
            sb4.append("Failed to verify ");
            sb4.append(str2);
            sb4.append(" signature");
            throw new SecurityException(sb4.toString(), e4);
        }
    }

    /* renamed from: d */
    private static void m13054d(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) {
        if (!map.isEmpty()) {
            ky3 ky3Var = new ky3(fileChannel, 0L, j);
            ky3 ky3Var2 = new ky3(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            ny3.m12783c(duplicate, j);
            iy3 iy3Var = new iy3(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] m13053e = m13053e(iArr, new jy3[]{ky3Var, ky3Var2, iy3Var});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), m13053e[i2])) {
                        throw new SecurityException(m13051g(i3).concat(" digest of contents did not verify"));
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
        r9 = r9 + 1;
        r12 = r12 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v104, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v16, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.security.MessageDigest[]] */
    /* JADX WARN: Type inference failed for: r0v33, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v40, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v48, types: [com.google.android.gms.internal.ads.jy3] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v87, types: [java.security.MessageDigest] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] m13053e(int[] r7, com.google.android.gms.internal.ads.jy3[] r8) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.my3.m13053e(int[], com.google.android.gms.internal.ads.jy3[]):byte[][]");
    }

    /* renamed from: f */
    private static int m13052f(int i) {
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

    /* renamed from: g */
    private static String m13051g(int i) {
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

    /* renamed from: h */
    private static int m13050h(int i) {
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

    /* renamed from: i */
    private static ByteBuffer m13049i(ByteBuffer byteBuffer, int i) {
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

    /* renamed from: j */
    private static ByteBuffer m13048j(ByteBuffer byteBuffer) {
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
            return m13049i(byteBuffer, i);
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb2 = new StringBuilder(101);
        sb2.append("Length-prefixed field longer than remaining buffer. Field length: ");
        sb2.append(i);
        sb2.append(", remaining: ");
        sb2.append(remaining2);
        throw new IOException(sb2.toString());
    }

    /* renamed from: k */
    private static byte[] m13047k(ByteBuffer byteBuffer) {
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

    /* renamed from: l */
    private static void m13046l(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }
}
