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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yl.class */
public final class yl {
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

    private static ByteBuffer a(ByteBuffer byteBuffer) throws IOException {
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

    private static ByteBuffer a(ByteBuffer byteBuffer, int i) {
        if (i >= 8) {
            int capacity = byteBuffer.capacity();
            if (i <= byteBuffer.capacity()) {
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
            } else {
                StringBuilder sb = new StringBuilder(41);
                sb.append("end > capacity: ");
                sb.append(i);
                sb.append(" > ");
                sb.append(capacity);
                throw new IllegalArgumentException(sb.toString());
            }
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("end < start: ");
            sb2.append(i);
            sb2.append(" < 8");
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    private static void a(int i, byte[] bArr) {
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
    private static java.security.cert.X509Certificate[] a(java.nio.ByteBuffer r9, java.util.Map<java.lang.Integer, byte[]> r10, java.security.cert.CertificateFactory r11) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.yl.a(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[][] a(int[] r7, com.google.android.gms.internal.ads.ayx[] r8) throws java.security.DigestException {
        /*
            Method dump skipped, instructions count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.yl.a(int[], com.google.android.gms.internal.ads.ayx[]):byte[][]");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0400 A[Catch: all -> 0x0446, all -> 0x0446, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0446, blocks: (B:3:0x000c, B:7:0x0021, B:9:0x002e, B:12:0x003a, B:15:0x005c, B:22:0x007a, B:25:0x0095, B:30:0x00b8, B:32:0x00ef, B:34:0x00fc, B:41:0x012f, B:44:0x0162, B:46:0x018c, B:48:0x019e, B:50:0x01a5, B:51:0x01a8, B:53:0x01b1, B:59:0x01ce, B:61:0x01dd, B:63:0x01e7, B:68:0x0217, B:69:0x0224, B:70:0x0271, B:71:0x0272, B:71:0x0272, B:72:0x0275, B:73:0x02aa, B:74:0x02ab, B:74:0x02ab, B:75:0x02ae, B:76:0x02d6, B:77:0x02d7, B:77:0x02d7, B:78:0x02da, B:79:0x02e3, B:80:0x02e4, B:80:0x02e4, B:81:0x02e7, B:82:0x02f0, B:83:0x02f1, B:83:0x02f1, B:84:0x02f4, B:85:0x032d, B:86:0x032e, B:86:0x032e, B:87:0x0331, B:88:0x0357, B:89:0x0358, B:89:0x0358, B:90:0x035b, B:91:0x0381, B:92:0x0382, B:92:0x0382, B:93:0x0385, B:94:0x038e, B:95:0x038f, B:95:0x038f, B:96:0x0392, B:97:0x03ba, B:98:0x03bb, B:98:0x03bb, B:99:0x03be, B:100:0x03c7, B:101:0x03c8, B:101:0x03c8, B:102:0x03cb, B:103:0x03ff, B:104:0x0400, B:104:0x0400, B:105:0x0403, B:106:0x040c, B:107:0x040d, B:107:0x040d, B:108:0x0410, B:109:0x0445), top: B:116:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a A[Catch: all -> 0x0446, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0446, blocks: (B:3:0x000c, B:7:0x0021, B:9:0x002e, B:12:0x003a, B:15:0x005c, B:22:0x007a, B:25:0x0095, B:30:0x00b8, B:32:0x00ef, B:34:0x00fc, B:41:0x012f, B:44:0x0162, B:46:0x018c, B:48:0x019e, B:50:0x01a5, B:51:0x01a8, B:53:0x01b1, B:59:0x01ce, B:61:0x01dd, B:63:0x01e7, B:68:0x0217, B:69:0x0224, B:70:0x0271, B:71:0x0272, B:71:0x0272, B:72:0x0275, B:73:0x02aa, B:74:0x02ab, B:74:0x02ab, B:75:0x02ae, B:76:0x02d6, B:77:0x02d7, B:77:0x02d7, B:78:0x02da, B:79:0x02e3, B:80:0x02e4, B:80:0x02e4, B:81:0x02e7, B:82:0x02f0, B:83:0x02f1, B:83:0x02f1, B:84:0x02f4, B:85:0x032d, B:86:0x032e, B:86:0x032e, B:87:0x0331, B:88:0x0357, B:89:0x0358, B:89:0x0358, B:90:0x035b, B:91:0x0381, B:92:0x0382, B:92:0x0382, B:93:0x0385, B:94:0x038e, B:95:0x038f, B:95:0x038f, B:96:0x0392, B:97:0x03ba, B:98:0x03bb, B:98:0x03bb, B:99:0x03be, B:100:0x03c7, B:101:0x03c8, B:101:0x03c8, B:102:0x03cb, B:103:0x03ff, B:104:0x0400, B:104:0x0400, B:105:0x0403, B:106:0x040c, B:107:0x040d, B:107:0x040d, B:108:0x0410, B:109:0x0445), top: B:116:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[][] a(java.lang.String r11) throws com.google.android.gms.internal.ads.zzh, java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.yl.a(java.lang.String):java.security.cert.X509Certificate[][]");
    }

    private static X509Certificate[][] a(FileChannel fileChannel, czx czxVar) throws SecurityException {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer a2 = a(czxVar.f26626a);
                int i = 0;
                while (a2.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(a(a(a2), hashMap, instance));
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
                    long j = czxVar.f26627b;
                    long j2 = czxVar.f26628c;
                    long j3 = czxVar.f26629d;
                    ByteBuffer byteBuffer = czxVar.e;
                    if (!hashMap.isEmpty()) {
                        dte dteVar = new dte(fileChannel, 0L, j);
                        dte dteVar2 = new dte(fileChannel, j2, j3 - j2);
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.order(ByteOrder.LITTLE_ENDIAN);
                        dwa.a(duplicate);
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
                            byte[][] a3 = a(iArr, new ayx[]{dteVar, dteVar2, bzoVar});
                            for (int i3 = 0; i3 < size; i3++) {
                                int i4 = iArr[i3];
                                if (!MessageDigest.isEqual((byte[]) hashMap.get(Integer.valueOf(i4)), a3[i3])) {
                                    throw new SecurityException(String.valueOf(b(i4)).concat(" digest of contents did not verify"));
                                }
                            }
                            return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                        } catch (DigestException e2) {
                            throw new SecurityException("Failed to compute digest(s) of contents", e2);
                        }
                    } else {
                        throw new SecurityException("No digests provided");
                    }
                } else {
                    throw new SecurityException("No content digests found");
                }
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
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

    private static byte[] b(ByteBuffer byteBuffer) throws IOException {
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
}
