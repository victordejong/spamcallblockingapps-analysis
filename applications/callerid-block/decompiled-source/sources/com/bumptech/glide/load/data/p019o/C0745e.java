package com.bumptech.glide.load.data.p019o;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bumptech.glide.load.data.o.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/o/e.class */
class C0745e {

    /* renamed from: f */
    private static final C0742a f3523f = new C0742a();

    /* renamed from: a */
    private final C0742a f3524a;

    /* renamed from: b */
    private final AbstractC0744d f3525b;

    /* renamed from: c */
    private final AbstractC0768b f3526c;

    /* renamed from: d */
    private final ContentResolver f3527d;

    /* renamed from: e */
    private final List<ImageHeaderParser> f3528e;

    C0745e(List<ImageHeaderParser> list, C0742a aVar, AbstractC0744d dVar, AbstractC0768b bVar, ContentResolver contentResolver) {
        this.f3524a = aVar;
        this.f3525b = dVar;
        this.f3526c = bVar;
        this.f3527d = contentResolver;
        this.f3528e = list;
    }

    C0745e(List<ImageHeaderParser> list, AbstractC0744d dVar, AbstractC0768b bVar, ContentResolver contentResolver) {
        this(list, f3523f, dVar, bVar, contentResolver);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0099  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m11166b(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r4
            com.bumptech.glide.load.data.o.d r0 = r0.f3525b     // Catch: all -> 0x0045, SecurityException -> 0x0049
            r1 = r5
            android.database.Cursor r0 = r0.m11168a(r1)     // Catch: all -> 0x0045, SecurityException -> 0x0049
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0039
            r0 = r7
            r6 = r0
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: SecurityException -> 0x0034, all -> 0x0094
            if (r0 == 0) goto L_0x0039
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SecurityException -> 0x0034, all -> 0x0094
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0031
            r0 = r7
            r0.close()
        L_0x0031:
            r0 = r8
            return r0
        L_0x0034:
            r8 = move-exception
            goto L_0x004d
        L_0x0039:
            r0 = r7
            if (r0 == 0) goto L_0x0043
            r0 = r7
            r0.close()
        L_0x0043:
            r0 = 0
            return r0
        L_0x0045:
            r5 = move-exception
            goto L_0x0095
        L_0x0049:
            r8 = move-exception
            r0 = 0
            r7 = r0
        L_0x004d:
            r0 = r7
            r6 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x0094
            if (r0 == 0) goto L_0x0088
            r0 = r7
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0094
            r9 = r0
            r0 = r7
            r6 = r0
            r0 = r9
            r0.<init>()     // Catch: all -> 0x0094
            r0 = r7
            r6 = r0
            r0 = r9
            java.lang.String r1 = "Failed to query for thumbnail for Uri: "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0094
            r0 = r7
            r6 = r0
            r0 = r9
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0094
            r0 = r7
            r6 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = r9
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0094
            r2 = r8
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: all -> 0x0094
        L_0x0088:
            r0 = r7
            if (r0 == 0) goto L_0x0092
            r0 = r7
            r0.close()
        L_0x0092:
            r0 = 0
            return r0
        L_0x0094:
            r5 = move-exception
        L_0x0095:
            r0 = r6
            if (r0 == 0) goto L_0x009f
            r0 = r6
            r0.close()
        L_0x009f:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.p019o.C0745e.m11166b(android.net.Uri):java.lang.String");
    }

    /* renamed from: c */
    private boolean m11165c(File file) {
        return this.f3524a.m11176a(file) && 0 < this.f3524a.m11174c(file);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int m11167a(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r4
            android.content.ContentResolver r0 = r0.f3527d     // Catch: all -> 0x0037, NullPointerException -> 0x003b, IOException -> 0x0040
            r1 = r5
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: all -> 0x0037, NullPointerException -> 0x003b, IOException -> 0x0040
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            r7 = r0
            r0 = r4
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r0 = r0.f3528e     // Catch: all -> 0x0037, NullPointerException -> 0x003b, IOException -> 0x0040
            r1 = r9
            r2 = r4
            com.bumptech.glide.load.engine.x.b r2 = r2.f3526c     // Catch: all -> 0x0037, NullPointerException -> 0x003b, IOException -> 0x0040
            int r0 = com.bumptech.glide.load.C0729b.m11209b(r0, r1, r2)     // Catch: all -> 0x0037, NullPointerException -> 0x003b, IOException -> 0x0040
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r0.close()     // Catch: IOException -> 0x0096
        L_0x0034:
            r0 = r10
            return r0
        L_0x0037:
            r5 = move-exception
            goto L_0x008a
        L_0x003b:
            r9 = move-exception
            goto L_0x0044
        L_0x0040:
            r9 = move-exception
            r0 = r7
            r6 = r0
        L_0x0044:
            r0 = r6
            r8 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x0037
            if (r0 == 0) goto L_0x0080
            r0 = r6
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0037
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            r0.<init>()     // Catch: all -> 0x0037
            r0 = r6
            r8 = r0
            r0 = r7
            java.lang.String r1 = "Failed to open uri: "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0037
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0037
            r0 = r6
            r8 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = r7
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0037
            r2 = r9
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: all -> 0x0037
        L_0x0080:
            r0 = r6
            if (r0 == 0) goto L_0x0088
            r0 = r6
            r0.close()     // Catch: IOException -> 0x009a
        L_0x0088:
            r0 = -1
            return r0
        L_0x008a:
            r0 = r8
            if (r0 == 0) goto L_0x0094
            r0 = r8
            r0.close()     // Catch: IOException -> 0x009e
        L_0x0094:
            r0 = r5
            throw r0
        L_0x0096:
            r5 = move-exception
            goto L_0x0034
        L_0x009a:
            r5 = move-exception
            goto L_0x0088
        L_0x009e:
            r8 = move-exception
            goto L_0x0094
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.p019o.C0745e.m11167a(android.net.Uri):int");
    }

    /* renamed from: d */
    public InputStream m11164d(Uri uri) {
        String b = m11166b(uri);
        if (TextUtils.isEmpty(b)) {
            return null;
        }
        File b2 = this.f3524a.m11175b(b);
        if (!m11165c(b2)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(b2);
        try {
            return this.f3527d.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
        }
    }
}
