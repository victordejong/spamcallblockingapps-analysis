package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import android.util.Pair;
import androidx.recyclerview.widget.C0608b;
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
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafy.class */
public final class zzafy {
    public static X509Certificate[][] zza(String str) throws zzafv, SecurityException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> zzc = zzafz.zzc(randomAccessFile);
            if (zzc == null) {
                long length = randomAccessFile.length();
                StringBuilder sb = new StringBuilder(102);
                sb.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb.append(length);
                sb.append(" bytes");
                throw new zzafv(sb.toString());
            }
            ByteBuffer byteBuffer = (ByteBuffer) zzc.first;
            long longValue = ((Long) zzc.second).longValue();
            long j = (-20) + longValue;
            if (j >= 0) {
                randomAccessFile.seek(j);
                if (randomAccessFile.readInt() == 1347094023) {
                    throw new zzafv("ZIP64 APK not supported");
                }
            }
            long zza = zzafz.zza(byteBuffer);
            if (zza >= longValue) {
                StringBuilder sb2 = new StringBuilder((int) C3681R.styleable.AppCompatTheme_windowFixedWidthMajor);
                sb2.append("ZIP Central Directory offset out of range: ");
                sb2.append(zza);
                sb2.append(". ZIP End of Central Directory offset: ");
                sb2.append(longValue);
                throw new zzafv(sb2.toString());
            } else if (zzafz.zzb(byteBuffer) + zza != longValue) {
                throw new zzafv("ZIP Central Directory is not immediately followed by End of Central Directory");
            } else {
                if (zza < 32) {
                    StringBuilder sb3 = new StringBuilder(87);
                    sb3.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                    sb3.append(zza);
                    throw new zzafv(sb3.toString());
                }
                ByteBuffer allocate = ByteBuffer.allocate(24);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                allocate.order(byteOrder);
                randomAccessFile.seek(zza - allocate.capacity());
                randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                if (allocate.getLong(8) != 2334950737559900225L || allocate.getLong(16) != 3617552046287187010L) {
                    throw new zzafv("No APK Signing Block before ZIP Central Directory");
                }
                int i = 0;
                long j2 = allocate.getLong(0);
                if (j2 < allocate.capacity() || j2 > 2147483639) {
                    StringBuilder sb4 = new StringBuilder(57);
                    sb4.append("APK Signing Block size out of range: ");
                    sb4.append(j2);
                    throw new zzafv(sb4.toString());
                }
                int i2 = (int) (8 + j2);
                long j3 = zza - i2;
                if (j3 < 0) {
                    StringBuilder sb5 = new StringBuilder(59);
                    sb5.append("APK Signing Block offset out of range: ");
                    sb5.append(j3);
                    throw new zzafv(sb5.toString());
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
                    throw new zzafv(sb6.toString());
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
                        throw new zzafv(sb9.toString());
                    }
                    long j5 = slice.getLong();
                    if (j5 < 4 || j5 > 2147483647L) {
                        StringBuilder sb10 = new StringBuilder(76);
                        sb10.append("APK Signing Block entry #");
                        sb10.append(i);
                        sb10.append(" size out of range: ");
                        sb10.append(j5);
                        throw new zzafv(sb10.toString());
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
                        throw new zzafv(sb11.toString());
                    } else if (slice.getInt() == 1896449818) {
                        X509Certificate[][] zzl = zzl(randomAccessFile.getChannel(), new zzafu(zze(slice, i3 - 4), longValue2, zza, longValue, byteBuffer, null));
                        randomAccessFile.close();
                        return zzl;
                    } else {
                        slice.position(position2 + i3);
                    }
                }
                throw new zzafv("No APK Signature Scheme v2 block in APK Signing Block");
            }
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
            }
        }
    }

    private static int zzb(int i) {
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException(C0082b.m8758d(44, "Unknown content digest algorthm: ", i));
            }
            return 64;
        }
        return 32;
    }

    private static int zzc(int i) {
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

    private static String zzd(int i) {
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException(C0082b.m8758d(44, "Unknown content digest algorthm: ", i));
            }
            return "SHA-512";
        }
        return "SHA-256";
    }

    private static ByteBuffer zze(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
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
        }
        throw new IllegalArgumentException(C0082b.m8758d(17, "size: ", i));
    }

    private static ByteBuffer zzf(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i < 0) {
                throw new IllegalArgumentException("Negative length");
            }
            if (i > byteBuffer.remaining()) {
                throw new IOException(C0082b.m8757e(101, "Length-prefixed field longer than remaining buffer. Field length: ", i, ", remaining: ", byteBuffer.remaining()));
            }
            return zze(byteBuffer, i);
        }
        throw new IOException(C0082b.m8758d(93, "Remaining buffer too short to contain length of length-prefixed field. Remaining: ", byteBuffer.remaining()));
    }

    private static void zzg(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }

    private static void zzh(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) throws SecurityException {
        if (!map.isEmpty()) {
            zzaft zzaftVar = new zzaft(fileChannel, 0L, j);
            zzaft zzaftVar2 = new zzaft(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            zzafz.zzd(duplicate, j);
            zzafr zzafrVar = new zzafr(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] zzk = zzk(iArr, new zzafs[]{zzaftVar, zzaftVar2, zzafrVar});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), zzk[i2])) {
                        throw new SecurityException(zzd(i3).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        }
        throw new SecurityException("No digests provided");
    }

    private static byte[] zzi(ByteBuffer byteBuffer) throws IOException {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i > byteBuffer.remaining()) {
                throw new IOException(C0082b.m8757e(90, "Underflow while reading length-prefixed value. Length: ", i, ", available: ", byteBuffer.remaining()));
            }
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr);
            return bArr;
        }
        throw new IOException("Negative length");
    }

    private static X509Certificate[] zzj(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) throws SecurityException, IOException {
        String str;
        Pair pair;
        ByteBuffer zzf = zzf(byteBuffer);
        ByteBuffer zzf2 = zzf(byteBuffer);
        byte[] zzi = zzi(byteBuffer);
        ArrayList arrayList = new ArrayList();
        int i = -1;
        int i2 = 0;
        byte[] bArr = null;
        while (zzf2.hasRemaining()) {
            int i3 = i2 + 1;
            try {
                ByteBuffer zzf3 = zzf(zzf2);
                if (zzf3.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i4 = zzf3.getInt();
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
                    int zzc = zzc(i4);
                    int zzc2 = zzc(i);
                    i2 = i3;
                    if (zzc != 1) {
                        if (zzc2 != 1) {
                            i2 = i3;
                        }
                    }
                }
                bArr = zzi(zzf3);
                i = i4;
                i2 = i3;
            } catch (IOException | BufferUnderflowException e) {
                throw new SecurityException(C0082b.m8758d(45, "Failed to parse signature record #", i3), e);
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
            PublicKey generatePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(zzi));
            Signature signature = Signature.getInstance(str2);
            signature.initVerify(generatePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(zzf);
            if (!signature.verify(bArr)) {
                throw new SecurityException(String.valueOf(str2).concat(" signature did not verify"));
            }
            zzf.clear();
            ByteBuffer zzf4 = zzf(zzf);
            ArrayList arrayList2 = new ArrayList();
            int i5 = 0;
            byte[] bArr2 = null;
            while (zzf4.hasRemaining()) {
                int i6 = i5 + 1;
                try {
                    ByteBuffer zzf5 = zzf(zzf4);
                    if (zzf5.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i7 = zzf5.getInt();
                    arrayList2.add(Integer.valueOf(i7));
                    i5 = i6;
                    if (i7 == i) {
                        bArr2 = zzi(zzf5);
                        i5 = i6;
                    }
                } catch (IOException | BufferUnderflowException e2) {
                    throw new IOException(C0082b.m8758d(42, "Failed to parse digest record #", i6), e2);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int zzc3 = zzc(i);
            byte[] put = map.put(Integer.valueOf(zzc3), bArr2);
            if (put != null && !MessageDigest.isEqual(put, bArr2)) {
                throw new SecurityException(zzd(zzc3).concat(" contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer zzf6 = zzf(zzf);
            ArrayList arrayList3 = new ArrayList();
            int i8 = 0;
            while (zzf6.hasRemaining()) {
                i8++;
                byte[] zzi2 = zzi(zzf6);
                try {
                    arrayList3.add(new zzafw((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(zzi2)), zzi2));
                } catch (CertificateException e3) {
                    throw new SecurityException(C0082b.m8758d(41, "Failed to decode certificate #", i8), e3);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (!Arrays.equals(zzi, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                throw new SecurityException("Public key mismatch between certificate and signature record");
            }
            return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e4) {
            throw new SecurityException(C0608b.m7625j(new StringBuilder(String.valueOf(str2).length() + 27), "Failed to verify ", str2, " signature"), e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.security.MessageDigest[]] */
    /* JADX WARN: Type inference failed for: r0v33, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v48, types: [com.google.android.gms.internal.ads.zzafs] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v79, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v96, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v4, types: [long] */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r2v12, types: [long] */
    private static byte[][] zzk(int[] iArr, zzafs[] zzafsVarArr) throws DigestException {
        int length;
        int i = 0;
        ?? r12 = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            r12 += (zzafsVarArr[i2].zza() + 1048575) / 1048576;
        }
        if (r12 >= 2097151) {
            ?? sb = new StringBuilder(37);
            sb.append("Too many chunks: ");
            sb.append(r12);
            throw new DigestException(sb.toString());
        }
        int i3 = (int) r12;
        ?? r0 = new byte[iArr.length];
        int i4 = 0;
        while (true) {
            length = iArr.length;
            if (i4 >= length) {
                break;
            }
            byte[] bArr = new byte[(zzb(iArr[i4]) * i3) + 5];
            bArr[0] = (byte) 90;
            zzg(i3, bArr, 1);
            r0[i4] = bArr;
            i4++;
        }
        byte[] bArr2 = new byte[5];
        bArr2[0] = (byte) (-91);
        ?? r02 = new MessageDigest[length];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            String zzd = zzd(iArr[i5]);
            try {
                r02[i5] = MessageDigest.getInstance(zzd);
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(zzd.concat(" digest not supported"), e);
            }
        }
        int i6 = 0;
        for (int i7 = 0; i7 < 3; i7++) {
            ?? r03 = zzafsVarArr[i7];
            ?? zza = r03.zza();
            ?? r20 = true;
            ?? r22 = 0;
            while (zza > 0) {
                int min = (int) Math.min((long) zza, r20 == true ? 1L : 0L);
                zzg(min, bArr2, 1);
                for (int i8 = 0; i8 < length; i8++) {
                    r02[i8].update(bArr2);
                }
                try {
                    r03.zzb(r02, r22, min);
                    for (int i9 = 0; i9 < iArr.length; i9++) {
                        int i10 = iArr[i9];
                        ?? r04 = r0[i9];
                        int zzb = zzb(i10);
                        ?? r05 = r02[i9];
                        int digest = r05.digest(r04, (i6 * zzb) + 5, zzb);
                        if (digest != zzb) {
                            String algorithm = r05.getAlgorithm();
                            StringBuilder sb2 = new StringBuilder(String.valueOf(algorithm).length() + 46);
                            sb2.append("Unexpected output size of ");
                            sb2.append(algorithm);
                            sb2.append(" digest: ");
                            sb2.append(digest);
                            throw new RuntimeException(sb2.toString());
                        }
                    }
                    long j = min;
                    r22 += j;
                    zza -= j;
                    i6++;
                    r20 = true;
                } catch (IOException e2) {
                    throw new DigestException(C0082b.m8757e(59, "Failed to digest chunk #", i6, " of section #", i), e2);
                }
            }
            i++;
        }
        ?? r06 = new byte[iArr.length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            ?? r07 = r0[i11];
            String zzd2 = zzd(i12);
            try {
                r06[i11] = MessageDigest.getInstance(zzd2).digest(r07);
            } catch (NoSuchAlgorithmException e3) {
                throw new RuntimeException(zzd2.concat(" digest not supported"), e3);
            }
        }
        return r06;
    }

    private static X509Certificate[][] zzl(FileChannel fileChannel, zzafu zzafuVar) throws SecurityException {
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
                byteBuffer = zzafuVar.zza;
                ByteBuffer zzf = zzf(byteBuffer);
                int i = 0;
                while (zzf.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(zzj(zzf(zzf), hashMap, certificateFactory));
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
                j = zzafuVar.zzb;
                j2 = zzafuVar.zzc;
                j3 = zzafuVar.zzd;
                byteBuffer2 = zzafuVar.zze;
                zzh(hashMap, fileChannel, j, j2, j3, byteBuffer2);
                return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }
}
