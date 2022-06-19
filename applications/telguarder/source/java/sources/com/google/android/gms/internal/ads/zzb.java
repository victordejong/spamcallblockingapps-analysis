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

    private static ByteBuffer zza(ByteBuffer byteBuffer) throws IOException {
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

    private static ByteBuffer zza(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
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

    /* JADX WARN: Removed duplicated region for block: B:169:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x016c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0023 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] zza(java.nio.ByteBuffer r9, java.util.Map<java.lang.Integer, byte[]> r10, java.security.cert.CertificateFactory r11) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.zza(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x01fe, code lost:
        r11 = r11 + 1;
        r10 = r10 + 1;
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
    private static byte[][] zza(int[] r7, com.google.android.gms.internal.ads.zzc[] r8) throws java.security.DigestException {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.zza(int[], com.google.android.gms.internal.ads.zzc[]):byte[][]");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057 A[Catch: all -> 0x03e2, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x03e2, blocks: (B:3:0x000c, B:5:0x0015, B:8:0x0039, B:15:0x0057, B:18:0x0064, B:23:0x0079, B:25:0x00b0, B:27:0x00bd, B:34:0x00f0, B:37:0x0123, B:39:0x014d, B:41:0x0161, B:43:0x0168, B:44:0x016b, B:46:0x0174, B:52:0x0191, B:54:0x01a0, B:56:0x01aa, B:61:0x01d9, B:62:0x01e6, B:63:0x0230, B:64:0x0231, B:64:0x0231, B:65:0x0234, B:66:0x0266, B:67:0x0267, B:67:0x0267, B:68:0x026a, B:69:0x028d, B:70:0x028e, B:70:0x028e, B:71:0x0291, B:72:0x029a, B:73:0x029b, B:73:0x029b, B:74:0x029e, B:75:0x02a7, B:76:0x02a8, B:76:0x02a8, B:77:0x02ab, B:78:0x02dd, B:79:0x02de, B:79:0x02de, B:80:0x02e1, B:81:0x0304, B:82:0x0305, B:82:0x0305, B:83:0x0308, B:84:0x032b, B:85:0x032c, B:85:0x032c, B:86:0x032f, B:87:0x0338, B:88:0x0339, B:88:0x0339, B:89:0x033c, B:90:0x035f, B:91:0x0360, B:91:0x0360, B:92:0x0363, B:93:0x036c, B:94:0x036d, B:94:0x036d, B:95:0x0370, B:96:0x03a1, B:97:0x03a2, B:97:0x03a2, B:98:0x03a5, B:99:0x03ae, B:100:0x03af, B:100:0x03af, B:101:0x03b2, B:102:0x03e1), top: B:111:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03a2 A[Catch: all -> 0x03e2, all -> 0x03e2, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x03e2, blocks: (B:3:0x000c, B:5:0x0015, B:8:0x0039, B:15:0x0057, B:18:0x0064, B:23:0x0079, B:25:0x00b0, B:27:0x00bd, B:34:0x00f0, B:37:0x0123, B:39:0x014d, B:41:0x0161, B:43:0x0168, B:44:0x016b, B:46:0x0174, B:52:0x0191, B:54:0x01a0, B:56:0x01aa, B:61:0x01d9, B:62:0x01e6, B:63:0x0230, B:64:0x0231, B:64:0x0231, B:65:0x0234, B:66:0x0266, B:67:0x0267, B:67:0x0267, B:68:0x026a, B:69:0x028d, B:70:0x028e, B:70:0x028e, B:71:0x0291, B:72:0x029a, B:73:0x029b, B:73:0x029b, B:74:0x029e, B:75:0x02a7, B:76:0x02a8, B:76:0x02a8, B:77:0x02ab, B:78:0x02dd, B:79:0x02de, B:79:0x02de, B:80:0x02e1, B:81:0x0304, B:82:0x0305, B:82:0x0305, B:83:0x0308, B:84:0x032b, B:85:0x032c, B:85:0x032c, B:86:0x032f, B:87:0x0338, B:88:0x0339, B:88:0x0339, B:89:0x033c, B:90:0x035f, B:91:0x0360, B:91:0x0360, B:92:0x0363, B:93:0x036c, B:94:0x036d, B:94:0x036d, B:95:0x0370, B:96:0x03a1, B:97:0x03a2, B:97:0x03a2, B:98:0x03a5, B:99:0x03ae, B:100:0x03af, B:100:0x03af, B:101:0x03b2, B:102:0x03e1), top: B:111:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[][] zza(java.lang.String r11) throws com.google.android.gms.internal.ads.zzh, java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.zza(java.lang.String):java.security.cert.X509Certificate[][]");
    }

    private static X509Certificate[][] zza(FileChannel fileChannel, zze zzeVar) throws SecurityException {
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
                byteBuffer = zzeVar.zzb;
                ByteBuffer zza = zza(byteBuffer);
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
                j = zzeVar.zzc;
                j2 = zzeVar.zzd;
                j3 = zzeVar.zze;
                byteBuffer2 = zzeVar.zzf;
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No digests provided");
                }
                zzf zzfVar = new zzf(fileChannel, 0L, j);
                zzf zzfVar2 = new zzf(fileChannel, j2, j3 - j2);
                ByteBuffer duplicate = byteBuffer2.duplicate();
                duplicate.order(ByteOrder.LITTLE_ENDIAN);
                zzi.zza(duplicate, j);
                zzd zzdVar = new zzd(duplicate);
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

    private static byte[] zzb(ByteBuffer byteBuffer) throws IOException {
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
