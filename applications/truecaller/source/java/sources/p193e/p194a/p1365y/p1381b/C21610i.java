package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.f0.w;
import s1.z.c.l;
/* renamed from: e.a.y.b.i */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/i.class */
public final class C21610i implements AbstractC21607h {

    /* renamed from: a */
    public final Context f60265a;

    public C21610i(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f60265a = context;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21607h
    /* renamed from: a */
    public File mo9369a(String str) {
        l.e(str, "extension");
        String valueOf = String.valueOf(System.currentTimeMillis());
        l.e(valueOf, "time");
        String str2 = "IMG" + AnalyticsConstants.DELIMITER_MAIN + valueOf;
        l.d(str2, "StringBuilder(DEFAULT_IM…\n            }.toString()");
        File createTempFile = File.createTempFile(str2, str, this.f60265a.getExternalFilesDir("temporary"));
        l.d(createTempFile, "File.createTempFile(uniq…nalFilesDir(TEMP_FOLDER))");
        return createTempFile;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:5|(1:7)|8|9|10|(2:39|11)|12|35|13|28|29) */
    @Override // p193e.p194a.p1365y.p1381b.AbstractC21607h
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.net.Uri mo9368b(android.graphics.Bitmap r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "bitmap"
            s1.z.c.l.e(r0, r1)
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r5
            android.content.Context r0 = r0.f60265a     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
            java.lang.String r1 = "temporary"
            java.io.File r0 = r0.getExternalFilesDir(r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L76
            r0 = r10
            java.lang.String r1 = "context.getExternalFiles…MP_FOLDER) ?: return null"
            s1.z.c.l.d(r0, r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
            r0 = r10
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
            if (r0 != 0) goto L32
            r0 = r10
            boolean r0 = r0.mkdir()     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
        L32:
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L78 java.lang.Throwable -> L78 java.io.IOException -> L8a java.io.IOException -> L8a
            r11 = r0
            r0 = r11
            r1 = r10
            java.lang.String r2 = "flash_share.jpg"
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
            r10 = r0
            r0 = r10
            r1 = r11
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L8a
            r0 = r6
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L9d
            r2 = 70
            r3 = r10
            boolean r0 = r0.compress(r1, r2, r3)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L9d
            r0 = r5
            android.content.Context r0 = r0.f60265a     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L9d
            r6 = r0
            r0 = r6
            r1 = r6
            java.lang.String r1 = p193e.p194a.p372b0.p430q.C8582g0.m28332I(r1)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L9d
            r2 = r11
            android.net.Uri r0 = androidx.core.content.FileProvider.m42989b(r0, r1, r2)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L9d
            r6 = r0
        L68:
            r0 = r10
            r0.close()     // Catch: java.io.IOException -> La1
            goto L9b
        L72:
            r6 = move-exception
            goto L7c
        L76:
            r0 = 0
            return r0
        L78:
            r6 = move-exception
            r0 = r7
            r10 = r0
        L7c:
            r0 = r10
            if (r0 == 0) goto L88
            r0 = r10
            r0.close()     // Catch: java.io.IOException -> La6
        L88:
            r0 = r6
            throw r0
        L8a:
            r6 = move-exception
            r0 = 0
            r10 = r0
        L8e:
            r0 = r8
            r6 = r0
            r0 = r10
            if (r0 == 0) goto L9b
            r0 = r9
            r6 = r0
            goto L68
        L9b:
            r0 = r6
            return r0
        L9d:
            r6 = move-exception
            goto L8e
        La1:
            r10 = move-exception
            goto L9b
        La6:
            r10 = move-exception
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1381b.C21610i.mo9368b(android.graphics.Bitmap):android.net.Uri");
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21607h
    /* renamed from: c */
    public Uri mo9367c(File file) {
        l.e(file, "file");
        Context context = this.f60265a;
        Uri m42989b = FileProvider.m42989b(context, C8582g0.m28332I(context), file);
        l.d(m42989b, "FileProvider.getUriForFi…Authority(context), file)");
        return m42989b;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21607h
    /* renamed from: d */
    public String mo9366d(String str, String str2) {
        l.e(str, "prefix");
        l.e(str2, "extension");
        return C22128a.m8543z2(C22128a.m8725C2(str, AnalyticsConstants.DELIMITER_MAIN, w.o0(String.valueOf(System.currentTimeMillis()), 5)), str2);
    }
}
