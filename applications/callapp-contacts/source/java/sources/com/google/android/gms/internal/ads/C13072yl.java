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
/* renamed from: com.google.android.gms.internal.ads.yl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yl.class */
public final class C13072yl {
    /* renamed from: a */
    private static int m13970a(int i) {
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
    private static ByteBuffer m13967a(ByteBuffer byteBuffer) throws IOException {
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
            return m13960b(byteBuffer, i);
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb2 = new StringBuilder(101);
        sb2.append("Length-prefixed field longer than remaining buffer. Field length: ");
        sb2.append(i);
        sb2.append(", remaining: ");
        sb2.append(remaining2);
        throw new IOException(sb2.toString());
    }

    /* renamed from: a */
    private static ByteBuffer m13966a(ByteBuffer byteBuffer, int i) {
        if (i < 8) {
            StringBuilder sb = new StringBuilder(38);
            sb.append("end < start: ");
            sb.append(i);
            sb.append(" < 8");
            throw new IllegalArgumentException(sb.toString());
        }
        int capacity = byteBuffer.capacity();
        if (i > byteBuffer.capacity()) {
            StringBuilder sb2 = new StringBuilder(41);
            sb2.append("end > capacity: ");
            sb2.append(i);
            sb2.append(" > ");
            sb2.append(capacity);
            throw new IllegalArgumentException(sb2.toString());
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i);
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

    /* renamed from: a */
    private static void m13969a(int i, byte[] bArr) {
        bArr[1] = (byte) i;
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 16);
        bArr[4] = (byte) (i >>> 24);
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x016c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0023 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] m13965a(java.nio.ByteBuffer r9, java.util.Map<java.lang.Integer, byte[]> r10, java.security.cert.CertificateFactory r11) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C13072yl.m13965a(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x01ef, code lost:
        r12 = r12 + 1;
        r11 = r11 + 1;
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
    /* JADX WARN: Type inference failed for: r0v48, types: [com.google.android.gms.internal.ads.ayx] */
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
    private static byte[][] m13963a(int[] r7, com.google.android.gms.internal.ads.ayx[] r8) throws java.security.DigestException {
        /*
            Method dump skipped, instructions count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C13072yl.m13963a(int[], com.google.android.gms.internal.ads.ayx[]):byte[][]");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0400 A[Catch: all -> 0x0446, all -> 0x0446, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0446, blocks: (B:3:0x000c, B:7:0x0021, B:9:0x002e, B:12:0x003a, B:15:0x005c, B:22:0x007a, B:25:0x0095, B:30:0x00b8, B:32:0x00ef, B:34:0x00fc, B:41:0x012f, B:44:0x0162, B:46:0x018c, B:48:0x019e, B:50:0x01a5, B:51:0x01a8, B:53:0x01b1, B:59:0x01ce, B:61:0x01dd, B:63:0x01e7, B:68:0x0217, B:69:0x0224, B:70:0x0271, B:71:0x0272, B:71:0x0272, B:72:0x0275, B:73:0x02aa, B:74:0x02ab, B:74:0x02ab, B:75:0x02ae, B:76:0x02d6, B:77:0x02d7, B:77:0x02d7, B:78:0x02da, B:79:0x02e3, B:80:0x02e4, B:80:0x02e4, B:81:0x02e7, B:82:0x02f0, B:83:0x02f1, B:83:0x02f1, B:84:0x02f4, B:85:0x032d, B:86:0x032e, B:86:0x032e, B:87:0x0331, B:88:0x0357, B:89:0x0358, B:89:0x0358, B:90:0x035b, B:91:0x0381, B:92:0x0382, B:92:0x0382, B:93:0x0385, B:94:0x038e, B:95:0x038f, B:95:0x038f, B:96:0x0392, B:97:0x03ba, B:98:0x03bb, B:98:0x03bb, B:99:0x03be, B:100:0x03c7, B:101:0x03c8, B:101:0x03c8, B:102:0x03cb, B:103:0x03ff, B:104:0x0400, B:104:0x0400, B:105:0x0403, B:106:0x040c, B:107:0x040d, B:107:0x040d, B:108:0x0410, B:109:0x0445), top: B:116:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a A[Catch: all -> 0x0446, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0446, blocks: (B:3:0x000c, B:7:0x0021, B:9:0x002e, B:12:0x003a, B:15:0x005c, B:22:0x007a, B:25:0x0095, B:30:0x00b8, B:32:0x00ef, B:34:0x00fc, B:41:0x012f, B:44:0x0162, B:46:0x018c, B:48:0x019e, B:50:0x01a5, B:51:0x01a8, B:53:0x01b1, B:59:0x01ce, B:61:0x01dd, B:63:0x01e7, B:68:0x0217, B:69:0x0224, B:70:0x0271, B:71:0x0272, B:71:0x0272, B:72:0x0275, B:73:0x02aa, B:74:0x02ab, B:74:0x02ab, B:75:0x02ae, B:76:0x02d6, B:77:0x02d7, B:77:0x02d7, B:78:0x02da, B:79:0x02e3, B:80:0x02e4, B:80:0x02e4, B:81:0x02e7, B:82:0x02f0, B:83:0x02f1, B:83:0x02f1, B:84:0x02f4, B:85:0x032d, B:86:0x032e, B:86:0x032e, B:87:0x0331, B:88:0x0357, B:89:0x0358, B:89:0x0358, B:90:0x035b, B:91:0x0381, B:92:0x0382, B:92:0x0382, B:93:0x0385, B:94:0x038e, B:95:0x038f, B:95:0x038f, B:96:0x0392, B:97:0x03ba, B:98:0x03bb, B:98:0x03bb, B:99:0x03be, B:100:0x03c7, B:101:0x03c8, B:101:0x03c8, B:102:0x03cb, B:103:0x03ff, B:104:0x0400, B:104:0x0400, B:105:0x0403, B:106:0x040c, B:107:0x040d, B:107:0x040d, B:108:0x0410, B:109:0x0445), top: B:116:0x000c }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[][] m13968a(java.lang.String r11) throws com.google.android.gms.internal.ads.zzh, java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C13072yl.m13968a(java.lang.String):java.security.cert.X509Certificate[][]");
    }

    /* renamed from: a */
    private static X509Certificate[][] m13964a(FileChannel fileChannel, czx czxVar) throws SecurityException {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer m13967a = m13967a(czxVar.f46824a);
                int i = 0;
                while (m13967a.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m13965a(m13967a(m13967a), hashMap, certificateFactory));
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
                long j = czxVar.f46825b;
                long j2 = czxVar.f46826c;
                long j3 = czxVar.f46827d;
                ByteBuffer byteBuffer = czxVar.f46828e;
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No digests provided");
                }
                dte dteVar = new dte(fileChannel, 0L, j);
                dte dteVar2 = new dte(fileChannel, j2, j3 - j2);
                ByteBuffer duplicate = byteBuffer.duplicate();
                duplicate.order(ByteOrder.LITTLE_ENDIAN);
                dwa.m15578a(duplicate);
                int position = duplicate.position();
                if (j < 0 || j > 4294967295L) {
                    StringBuilder sb2 = new StringBuilder(47);
                    sb2.append("uint32 value of out range: ");
                    sb2.append(j);
                    throw new IllegalArgumentException(sb2.toString());
                }
                duplicate.putInt(duplicate.position() + position + 16, (int) j);
                bzo bzoVar = new bzo(duplicate);
                int size = hashMap.size();
                int[] iArr = new int[size];
                int i2 = 0;
                for (Integer num : hashMap.keySet()) {
                    iArr[i2] = num.intValue();
                    i2++;
                }
                try {
                    byte[][] m13963a = m13963a(iArr, new ayx[]{dteVar, dteVar2, bzoVar});
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = iArr[i3];
                        if (!MessageDigest.isEqual((byte[]) hashMap.get(Integer.valueOf(i4)), m13963a[i3])) {
                            throw new SecurityException(String.valueOf(m13962b(i4)).concat(" digest of contents did not verify"));
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

    /* renamed from: b */
    private static String m13962b(int i) {
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
    private static ByteBuffer m13960b(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
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

    /* renamed from: b */
    private static byte[] m13961b(ByteBuffer byteBuffer) throws IOException {
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

    /* renamed from: c */
    private static int m13959c(int i) {
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
