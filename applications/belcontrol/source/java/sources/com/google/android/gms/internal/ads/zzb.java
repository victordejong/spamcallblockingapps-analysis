package com.google.android.gms.internal.ads;

import java.io.IOException;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzb.class */
public final class zzb {
    private static int zza(int i) {
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

    private static ByteBuffer zza(ByteBuffer byteBuffer) {
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
            return zza(byteBuffer, i);
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb2 = new StringBuilder(101);
        sb2.append("Length-prefixed field longer than remaining buffer. Field length: ");
        sb2.append(i);
        sb2.append(", remaining: ");
        sb2.append(remaining2);
        throw new IOException(sb2.toString());
    }

    private static ByteBuffer zza(ByteBuffer byteBuffer, int i) {
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

    private static ByteBuffer zza(ByteBuffer byteBuffer, int i, int i2) {
        if (i2 < 8) {
            StringBuilder sb = new StringBuilder(38);
            sb.append("end < start: ");
            sb.append(i2);
            sb.append(" < 8");
            throw new IllegalArgumentException(sb.toString());
        }
        int capacity = byteBuffer.capacity();
        if (i2 > byteBuffer.capacity()) {
            StringBuilder sb2 = new StringBuilder(41);
            sb2.append("end > capacity: ");
            sb2.append(i2);
            sb2.append(" > ");
            sb2.append(capacity);
            throw new IllegalArgumentException(sb2.toString());
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i2);
            byteBuffer.position(8);
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            return slice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(limit);
            byteBuffer.position(position);
        }
    }

    private static void zza(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) i;
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 16);
        bArr[4] = (byte) (i >>> 24);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0351 A[Catch: InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x052d, InvalidAlgorithmParameterException -> 0x0531, InvalidKeyException -> 0x0535, InvalidKeySpecException -> 0x0539, NoSuchAlgorithmException -> 0x053d, TRY_ENTER, TryCatch #5 {InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x052d, blocks: (B:106:0x0323, B:108:0x0351, B:110:0x0359), top: B:167:0x0323 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x016c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v116, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v117, types: [java.lang.StringBuilder, int] */
    /* JADX WARN: Type inference failed for: r0v120, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v122, types: [java.util.List, int] */
    /* JADX WARN: Type inference failed for: r0v123 */
    /* JADX WARN: Type inference failed for: r0v124 */
    /* JADX WARN: Type inference failed for: r0v125, types: [int] */
    /* JADX WARN: Type inference failed for: r0v126, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v127, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v132 */
    /* JADX WARN: Type inference failed for: r0v134, types: [java.lang.StringBuilder, int] */
    /* JADX WARN: Type inference failed for: r0v138, types: [java.lang.StringBuilder, int] */
    /* JADX WARN: Type inference failed for: r0v140, types: [java.lang.StringBuilder, int] */
    /* JADX WARN: Type inference failed for: r0v142 */
    /* JADX WARN: Type inference failed for: r0v143 */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.security.spec.AlgorithmParameterSpec] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v24, types: [byte[], java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.security.spec.KeySpec, java.security.spec.X509EncodedKeySpec, java.security.KeyFactory] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.security.PublicKey, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.security.Signature, java.security.PublicKey, java.security.spec.AlgorithmParameterSpec, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.Object, java.nio.ByteBuffer, boolean] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.util.List, java.lang.Object, boolean] */
    /* JADX WARN: Type inference failed for: r0v41, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v46, types: [java.util.List, java.nio.ByteBuffer, boolean] */
    /* JADX WARN: Type inference failed for: r0v47, types: [java.util.List, byte[], boolean] */
    /* JADX WARN: Type inference failed for: r0v49, types: [java.util.List, boolean] */
    /* JADX WARN: Type inference failed for: r0v58, types: [java.security.cert.X509Certificate, java.util.List, byte[]] */
    /* JADX WARN: Type inference failed for: r0v59, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v62, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v63, types: [java.lang.StringBuilder, int] */
    /* JADX WARN: Type inference failed for: r0v66, types: [int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v68, types: [java.util.List, int, java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r0v70, types: [byte[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] zza(java.nio.ByteBuffer r8, java.util.Map<java.lang.Integer, byte[]> r9, java.security.cert.CertificateFactory r10) {
        /*
            Method dump skipped, instructions count: 1397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.zza(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x01ff, code lost:
        r11 = r11 + 1;
        r20 = r20 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v110, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v127 */
    /* JADX WARN: Type inference failed for: r0v19, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.security.MessageDigest[]] */
    /* JADX WARN: Type inference failed for: r0v39, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v46, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v51, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v54, types: [com.google.android.gms.internal.ads.zzc] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v58 */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v93, types: [java.security.MessageDigest] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] zza(int[] r7, com.google.android.gms.internal.ads.zzc[] r8) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.zza(int[], com.google.android.gms.internal.ads.zzc[]):byte[][]");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057 A[Catch: all -> 0x03f4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x03f4, blocks: (B:3:0x000c, B:5:0x0015, B:8:0x0039, B:15:0x0057, B:18:0x0064, B:23:0x0079, B:25:0x00b9, B:27:0x00c7, B:34:0x00fc, B:37:0x0133, B:39:0x015f, B:41:0x0173, B:43:0x017a, B:44:0x017d, B:46:0x0186, B:52:0x01a3, B:54:0x01b2, B:56:0x01bc, B:61:0x01eb, B:62:0x01f8, B:63:0x0242, B:64:0x0243, B:64:0x0243, B:65:0x0246, B:66:0x0278, B:67:0x0279, B:67:0x0279, B:68:0x027c, B:69:0x029f, B:70:0x02a0, B:70:0x02a0, B:71:0x02a3, B:72:0x02ac, B:73:0x02ad, B:73:0x02ad, B:74:0x02b0, B:75:0x02b9, B:76:0x02ba, B:76:0x02ba, B:77:0x02bd, B:78:0x02ef, B:79:0x02f0, B:79:0x02f0, B:80:0x02f3, B:81:0x0316, B:82:0x0317, B:82:0x0317, B:83:0x031a, B:84:0x033d, B:85:0x033e, B:85:0x033e, B:86:0x0341, B:87:0x034a, B:88:0x034b, B:88:0x034b, B:89:0x034e, B:90:0x0371, B:91:0x0372, B:91:0x0372, B:92:0x0375, B:93:0x037e, B:94:0x037f, B:94:0x037f, B:95:0x0382, B:96:0x03b3, B:97:0x03b4, B:97:0x03b4, B:98:0x03b7, B:99:0x03c0, B:100:0x03c1, B:100:0x03c1, B:101:0x03c4, B:102:0x03f3), top: B:109:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03b4 A[Catch: all -> 0x03f4, all -> 0x03f4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x03f4, blocks: (B:3:0x000c, B:5:0x0015, B:8:0x0039, B:15:0x0057, B:18:0x0064, B:23:0x0079, B:25:0x00b9, B:27:0x00c7, B:34:0x00fc, B:37:0x0133, B:39:0x015f, B:41:0x0173, B:43:0x017a, B:44:0x017d, B:46:0x0186, B:52:0x01a3, B:54:0x01b2, B:56:0x01bc, B:61:0x01eb, B:62:0x01f8, B:63:0x0242, B:64:0x0243, B:64:0x0243, B:65:0x0246, B:66:0x0278, B:67:0x0279, B:67:0x0279, B:68:0x027c, B:69:0x029f, B:70:0x02a0, B:70:0x02a0, B:71:0x02a3, B:72:0x02ac, B:73:0x02ad, B:73:0x02ad, B:74:0x02b0, B:75:0x02b9, B:76:0x02ba, B:76:0x02ba, B:77:0x02bd, B:78:0x02ef, B:79:0x02f0, B:79:0x02f0, B:80:0x02f3, B:81:0x0316, B:82:0x0317, B:82:0x0317, B:83:0x031a, B:84:0x033d, B:85:0x033e, B:85:0x033e, B:86:0x0341, B:87:0x034a, B:88:0x034b, B:88:0x034b, B:89:0x034e, B:90:0x0371, B:91:0x0372, B:91:0x0372, B:92:0x0375, B:93:0x037e, B:94:0x037f, B:94:0x037f, B:95:0x0382, B:96:0x03b3, B:97:0x03b4, B:97:0x03b4, B:98:0x03b7, B:99:0x03c0, B:100:0x03c1, B:100:0x03c1, B:101:0x03c4, B:102:0x03f3), top: B:109:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[][] zza(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 1027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.zza(java.lang.String):java.security.cert.X509Certificate[][]");
    }

    private static X509Certificate[][] zza(FileChannel fileChannel, zze zzeVar) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer zza = zza(zze.zza(zzeVar));
                int i = 0;
                while (zza.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(zza(zza(zza), hashMap, certificateFactory));
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
                long zzb = zze.zzb(zzeVar);
                long zzc = zze.zzc(zzeVar);
                long zzd = zze.zzd(zzeVar);
                ByteBuffer zze = zze.zze(zzeVar);
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No digests provided");
                }
                zzc zzfVar = new zzf(fileChannel, 0L, zzb);
                zzc zzfVar2 = new zzf(fileChannel, zzc, zzd - zzc);
                ByteBuffer duplicate = zze.duplicate();
                duplicate.order(ByteOrder.LITTLE_ENDIAN);
                zzi.zza(duplicate, zzb);
                zzc zzdVar = new zzd(duplicate);
                int size = hashMap.size();
                int[] iArr = new int[size];
                int i2 = 0;
                for (Integer num : hashMap.keySet()) {
                    iArr[i2] = num.intValue();
                    i2++;
                }
                try {
                    byte[][] zza2 = zza(iArr, new zzc[]{zzfVar, zzfVar2, zzdVar});
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = iArr[i3];
                        if (!MessageDigest.isEqual((byte[]) hashMap.get(Integer.valueOf(i4)), zza2[i3])) {
                            throw new SecurityException(String.valueOf(zzb(i4)).concat(" digest of contents did not verify"));
                        }
                    }
                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                } catch (DigestException e2) {
                    throw new SecurityException("Failed to compute digest(s) of contents", e2);
                }
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
        }
    }

    private static String zzb(int i) {
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

    private static byte[] zzb(ByteBuffer byteBuffer) {
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

    private static int zzc(int i) {
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
}
