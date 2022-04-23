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
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3693jg;
import p131c.p161d.p170b.p224d.p252g.p253a.C3815mr;
import p131c.p161d.p170b.p224d.p252g.p253a.fb0;
import p131c.p161d.p170b.p224d.p252g.p253a.r20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzb.class */
public final class zzb {
    /* renamed from: a */
    public static int m15989a(int i) {
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

    /* renamed from: a */
    public static ByteBuffer m15986a(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i < 0) {
                throw new IllegalArgumentException("Negative length");
            } else if (i <= byteBuffer.remaining()) {
                return m15985a(byteBuffer, i);
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

    /* renamed from: a */
    public static ByteBuffer m15985a(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
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

    /* renamed from: a */
    public static ByteBuffer m15984a(ByteBuffer byteBuffer, int i, int i2) {
        if (i2 >= 8) {
            int capacity = byteBuffer.capacity();
            if (i2 <= byteBuffer.capacity()) {
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
            } else {
                StringBuilder sb = new StringBuilder(41);
                sb.append("end > capacity: ");
                sb.append(i2);
                sb.append(" > ");
                sb.append(capacity);
                throw new IllegalArgumentException(sb.toString());
            }
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("end < start: ");
            sb2.append(i2);
            sb2.append(" < 8");
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* renamed from: a */
    public static void m15988a(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) i;
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 16);
        bArr[4] = (byte) (i >>> 24);
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x016c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0023 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[] m15983a(java.nio.ByteBuffer r9, java.util.Map<java.lang.Integer, byte[]> r10, java.security.cert.CertificateFactory r11) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.m15983a(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[][] m15981a(int[] r7, p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3693jg[] r8) throws java.security.DigestException {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.m15981a(int[], c.d.b.d.g.a.jg[]):byte[][]");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057 A[Catch: all -> 0x03e1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x03e1, blocks: (B:3:0x000c, B:5:0x0015, B:8:0x0039, B:15:0x0057, B:18:0x0064, B:23:0x0079, B:25:0x00b0, B:27:0x00bd, B:34:0x00f0, B:37:0x0123, B:39:0x014e, B:41:0x0160, B:43:0x0167, B:44:0x016a, B:46:0x0173, B:52:0x0190, B:54:0x019f, B:56:0x01a9, B:61:0x01d8, B:62:0x01e5, B:63:0x022f, B:64:0x0230, B:64:0x0230, B:65:0x0233, B:66:0x0265, B:67:0x0266, B:67:0x0266, B:68:0x0269, B:69:0x028c, B:70:0x028d, B:70:0x028d, B:71:0x0290, B:72:0x0299, B:73:0x029a, B:73:0x029a, B:74:0x029d, B:75:0x02a6, B:76:0x02a7, B:76:0x02a7, B:77:0x02aa, B:78:0x02dc, B:79:0x02dd, B:79:0x02dd, B:80:0x02e0, B:81:0x0303, B:82:0x0304, B:82:0x0304, B:83:0x0307, B:84:0x032a, B:85:0x032b, B:85:0x032b, B:86:0x032e, B:87:0x0337, B:88:0x0338, B:88:0x0338, B:89:0x033b, B:90:0x035e, B:91:0x035f, B:91:0x035f, B:92:0x0362, B:93:0x036b, B:94:0x036c, B:94:0x036c, B:95:0x036f, B:96:0x03a0, B:97:0x03a1, B:97:0x03a1, B:98:0x03a4, B:99:0x03ad, B:100:0x03ae, B:100:0x03ae, B:101:0x03b1, B:102:0x03e0), top: B:110:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03a1 A[Catch: all -> 0x03e1, all -> 0x03e1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x03e1, blocks: (B:3:0x000c, B:5:0x0015, B:8:0x0039, B:15:0x0057, B:18:0x0064, B:23:0x0079, B:25:0x00b0, B:27:0x00bd, B:34:0x00f0, B:37:0x0123, B:39:0x014e, B:41:0x0160, B:43:0x0167, B:44:0x016a, B:46:0x0173, B:52:0x0190, B:54:0x019f, B:56:0x01a9, B:61:0x01d8, B:62:0x01e5, B:63:0x022f, B:64:0x0230, B:64:0x0230, B:65:0x0233, B:66:0x0265, B:67:0x0266, B:67:0x0266, B:68:0x0269, B:69:0x028c, B:70:0x028d, B:70:0x028d, B:71:0x0290, B:72:0x0299, B:73:0x029a, B:73:0x029a, B:74:0x029d, B:75:0x02a6, B:76:0x02a7, B:76:0x02a7, B:77:0x02aa, B:78:0x02dc, B:79:0x02dd, B:79:0x02dd, B:80:0x02e0, B:81:0x0303, B:82:0x0304, B:82:0x0304, B:83:0x0307, B:84:0x032a, B:85:0x032b, B:85:0x032b, B:86:0x032e, B:87:0x0337, B:88:0x0338, B:88:0x0338, B:89:0x033b, B:90:0x035e, B:91:0x035f, B:91:0x035f, B:92:0x0362, B:93:0x036b, B:94:0x036c, B:94:0x036c, B:95:0x036f, B:96:0x03a0, B:97:0x03a1, B:97:0x03a1, B:98:0x03a4, B:99:0x03ad, B:100:0x03ae, B:100:0x03ae, B:101:0x03b1, B:102:0x03e0), top: B:110:0x000c }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate[][] m15987a(java.lang.String r11) throws com.google.android.gms.internal.ads.zzh, java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzb.m15987a(java.lang.String):java.security.cert.X509Certificate[][]");
    }

    /* renamed from: a */
    public static X509Certificate[][] m15982a(FileChannel fileChannel, r20 r20Var) throws SecurityException {
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
                byteBuffer = r20Var.f14860a;
                ByteBuffer a = m15986a(byteBuffer);
                int i = 0;
                while (a.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m15983a(m15986a(a), hashMap, instance));
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
                    j = r20Var.f14861b;
                    j2 = r20Var.f14862c;
                    j3 = r20Var.f14863d;
                    byteBuffer2 = r20Var.f14864e;
                    if (!hashMap.isEmpty()) {
                        fb0 fb0Var = new fb0(fileChannel, 0L, j);
                        fb0 fb0Var2 = new fb0(fileChannel, j2, j3 - j2);
                        ByteBuffer duplicate = byteBuffer2.duplicate();
                        duplicate.order(ByteOrder.LITTLE_ENDIAN);
                        zzi.m11995a(duplicate, j);
                        C3815mr mrVar = new C3815mr(duplicate);
                        int size = hashMap.size();
                        int[] iArr = new int[size];
                        int i2 = 0;
                        for (Integer num : hashMap.keySet()) {
                            iArr[i2] = num.intValue();
                            i2++;
                        }
                        try {
                            byte[][] a2 = m15981a(iArr, new AbstractC3693jg[]{fb0Var, fb0Var2, mrVar});
                            for (int i3 = 0; i3 < size; i3++) {
                                int i4 = iArr[i3];
                                if (!MessageDigest.isEqual((byte[]) hashMap.get(Integer.valueOf(i4)), a2[i3])) {
                                    throw new SecurityException(String.valueOf(m15980b(i4)).concat(" digest of contents did not verify"));
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

    /* renamed from: b */
    public static String m15980b(int i) {
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

    /* renamed from: b */
    public static byte[] m15979b(ByteBuffer byteBuffer) throws IOException {
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

    /* renamed from: c */
    public static int m15978c(int i) {
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
