package p193e.p194a.p195a.p244k.p255y;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.transport.mms.PduEntity;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import p193e.p1432d.p1436b.p1437a.p1438b.C22108c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
/* renamed from: e.a.a.k.y.e */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/e.class */
public class C6729e implements AbstractC6727d {

    /* renamed from: a */
    public final ContentResolver f22144a;

    /* renamed from: b */
    public final AbstractC8621z f22145b;

    /* renamed from: c */
    public final File f22146c;

    /* renamed from: d */
    public final AbstractC6392i0 f22147d;

    public C6729e(ContentResolver contentResolver, AbstractC8621z abstractC8621z, File file, AbstractC6392i0 abstractC6392i0, C20592g c20592g) {
        this.f22144a = contentResolver;
        this.f22145b = abstractC8621z;
        this.f22146c = new File(file, "pdu_parts");
        this.f22147d = abstractC6392i0;
    }

    /* JADX WARN: Removed duplicated region for block: B:164:0x0570  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0561 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6727d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.messaging.data.types.Message mo30526a(p193e.p1432d.p1436b.p1437a.p1438b.C22111f r8, boolean r9, java.lang.String r10, long r11) {
        /*
            Method dump skipped, instructions count: 1426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6729e.mo30526a(e.d.b.a.b.f, boolean, java.lang.String, long):com.truecaller.messaging.data.types.Message");
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0373 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0106 A[SYNTHETIC] */
    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6727d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1432d.p1436b.p1437a.p1438b.C22111f mo30525b(java.lang.String r9, long r10, int r12, int r13, int r14, java.util.List<java.lang.String> r15, p193e.p194a.p195a.p244k.p255y.AbstractC6727d.AbstractC6728a r16, java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6729e.mo30525b(java.lang.String, long, int, int, int, java.util.List, e.a.a.k.y.d$a, java.lang.String):e.d.b.a.b.f");
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6727d
    /* renamed from: c */
    public void mo30524c(PduEntity pduEntity, ContentValues contentValues) {
        String str;
        String str2;
        contentValues.put("chset", Integer.valueOf(pduEntity.f13845v));
        contentValues.put("ct", pduEntity.f13307b);
        if ("text/plain".equals(pduEntity.f13307b)) {
            byte[] m30521f = m30521f(pduEntity);
            if (m30521f != null) {
                int i = pduEntity.f13845v;
                byte[] bArr = new byte[m30521f.length];
                System.arraycopy(m30521f, 0, bArr, 0, m30521f.length);
                if (i == 0) {
                    str2 = new String(bArr);
                } else {
                    try {
                        str2 = new String(bArr, C22108c.m8797a(i));
                    } catch (UnsupportedEncodingException e) {
                        try {
                            str2 = new String(bArr, "iso-8859-1");
                        } catch (UnsupportedEncodingException e2) {
                            str2 = new String(bArr);
                        }
                    }
                }
            } else {
                str2 = "";
            }
            if (str2.startsWith("BEGIN:VCARD")) {
                contentValues.put("ct", pduEntity.f13307b);
            } else {
                contentValues.put("text", str2);
            }
        }
        if ("application/smil".equals(pduEntity.f13307b)) {
            contentValues.put("chset", (Integer) (-1));
            byte[] m30521f2 = m30521f(pduEntity);
            if (m30521f2 != null) {
                int i2 = pduEntity.f13845v;
                byte[] bArr2 = new byte[m30521f2.length];
                System.arraycopy(m30521f2, 0, bArr2, 0, m30521f2.length);
                if (i2 == 0) {
                    str = new String(bArr2);
                } else {
                    try {
                        str = new String(bArr2, C22108c.m8797a(i2));
                    } catch (UnsupportedEncodingException e3) {
                        try {
                            str = new String(bArr2, "iso-8859-1");
                        } catch (UnsupportedEncodingException e4) {
                            str = new String(bArr2);
                        }
                    }
                }
                contentValues.put("text", str);
            } else {
                contentValues.put("text", "");
            }
        }
        if (Entity.m35044v(pduEntity.f13307b)) {
            contentValues.put("ct", "text/x-vcard");
        }
        String str3 = pduEntity.f13846w;
        if (str3 != null) {
            contentValues.put("fn", str3);
        }
        String str4 = pduEntity.f13847x;
        if (str4 != null) {
            contentValues.put(AnalyticsConstants.NAME, str4);
        }
        String str5 = pduEntity.f13848y;
        if (str5 != null) {
            contentValues.put("cd", str5);
        }
        String str6 = pduEntity.f13849z;
        if (str6 != null) {
            contentValues.put("cid", str6);
        }
        String str7 = pduEntity.f13844A;
        if (str7 != null) {
            contentValues.put("cl", str7);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x0578, code lost:
        if (r16 != null) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x057b, code lost:
        r16.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0583, code lost:
        r20 = r22;
        r17 = r23;
        r26 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x05c4, code lost:
        if (r16 == null) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0705, code lost:
        r20 = r22;
        r17 = r23;
        r26 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0675  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x055b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x067d A[SYNTHETIC] */
    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6727d
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.truecaller.messaging.transport.mms.PduEntity> mo30523d(com.truecaller.messaging.data.types.Entity[] r14, p193e.p194a.p712e4.AbstractC13490i r15) {
        /*
            Method dump skipped, instructions count: 1847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6729e.mo30523d(com.truecaller.messaging.data.types.Entity[], e.a.e4.i):java.util.List");
    }

    /* renamed from: e */
    public final void m30522e(Uri uri) {
        if (!"file".equals(uri.getScheme())) {
            return;
        }
        File file = new File(uri.getPath());
        if (!file.exists() || !file.getParentFile().getAbsolutePath().equals(this.f22146c.getAbsolutePath())) {
            return;
        }
        file.delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m30521f(com.truecaller.messaging.transport.mms.PduEntity r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            android.content.ContentResolver r0 = r0.f22144a     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L40
            r1 = r4
            android.net.Uri r1 = r1.f13173i     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L40
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L40
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L1e
            r0 = r6
            if (r0 == 0) goto L1c
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L6a
        L1c:
            r0 = 0
            return r0
        L1e:
            r0 = r6
            r4 = r0
            r0 = r6
            java.lang.String r1 = "$this$readFully"
            s1.z.c.l.e(r0, r1)     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L59
            r0 = r6
            r4 = r0
            r0 = r6
            byte[] r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3838t2(r0)     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L59
            r5 = r0
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L6e
        L34:
            r0 = r5
            return r0
        L36:
            r5 = move-exception
            goto L43
        L3a:
            r4 = move-exception
            r0 = r5
            r6 = r0
            goto L5e
        L40:
            r5 = move-exception
            r0 = 0
            r6 = r0
        L43:
            r0 = r6
            r4 = r0
            r0 = r5
            r1 = 0
            java.lang.String[] r1 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> L59
            com.truecaller.log.AssertionUtil.OnlyInDebug.shouldNeverHappen(r0, r1)     // Catch: java.lang.Throwable -> L59
            r0 = r6
            if (r0 == 0) goto L57
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L72
        L57:
            r0 = 0
            return r0
        L59:
            r5 = move-exception
            r0 = r4
            r6 = r0
            r0 = r5
            r4 = r0
        L5e:
            r0 = r6
            if (r0 == 0) goto L68
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L76
        L68:
            r0 = r4
            throw r0
        L6a:
            r4 = move-exception
            goto L1c
        L6e:
            r4 = move-exception
            goto L34
        L72:
            r4 = move-exception
            goto L57
        L76:
            r6 = move-exception
            goto L68
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6729e.m30521f(com.truecaller.messaging.transport.mms.PduEntity):byte[]");
    }

    /* renamed from: g */
    public final int m30520g(Uri uri) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        try {
            inputStream = this.f22144a.openInputStream(uri);
        } catch (IOException | SecurityException e) {
            if (inputStream2 == null) {
                return -1;
            }
            inputStream = inputStream2;
        } catch (Throwable th) {
            if (inputStream3 != null) {
                try {
                    inputStream3.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
        if (inputStream != null) {
            inputStream3 = inputStream;
            inputStream2 = inputStream;
            int available = inputStream.available();
            try {
                inputStream.close();
            } catch (IOException e3) {
            }
            return available;
        }
        if (inputStream == null) {
            return -1;
        }
        try {
            inputStream.close();
            return -1;
        } catch (IOException e4) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File m30519h(byte[] r6) {
        /*
            r5 = this;
            r0 = r5
            java.io.File r0 = r0.f22146c
            boolean r0 = r0.exists()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L1a
            r0 = r5
            java.io.File r0 = r0.f22146c
            boolean r0 = r0.mkdirs()
            if (r0 != 0) goto L1a
            r0 = 0
            return r0
        L1a:
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r5
            java.io.File r2 = r2.f22146c
            r3 = 45
            java.lang.String r3 = w3.c.a.a.a.f.b(r3)
            r1.<init>(r2, r3)
            r9 = r0
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L57
            r10 = r0
            r0 = r10
            r1 = r9
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L57
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = r6
            r0.write(r1)     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L7c
            r0 = r10
            r0.close()     // Catch: java.io.IOException -> L97
        L46:
            r0 = r9
            return r0
        L49:
            r8 = move-exception
            r0 = r10
            r6 = r0
            r0 = r8
            r10 = r0
            goto L5b
        L53:
            r6 = move-exception
            goto L7d
        L57:
            r10 = move-exception
            r0 = 0
            r6 = r0
        L5b:
            r0 = r6
            r8 = r0
            r0 = r10
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)     // Catch: java.lang.Throwable -> L7c
            r0 = r6
            if (r0 == 0) goto L6c
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L9b
        L6c:
            r0 = r9
            boolean r0 = r0.exists()
            if (r0 == 0) goto L7a
            r0 = r9
            boolean r0 = r0.delete()
        L7a:
            r0 = 0
            return r0
        L7c:
            r6 = move-exception
        L7d:
            r0 = r8
            if (r0 == 0) goto L87
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> L9f
        L87:
            r0 = r9
            boolean r0 = r0.exists()
            if (r0 == 0) goto L95
            r0 = r9
            boolean r0 = r0.delete()
        L95:
            r0 = r6
            throw r0
        L97:
            r6 = move-exception
            goto L46
        L9b:
            r6 = move-exception
            goto L6c
        L9f:
            r8 = move-exception
            goto L87
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6729e.m30519h(byte[]):java.io.File");
    }
}
