package com.bumptech.glide.load.p079a.p080a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bumptech.glide.load.a.a.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/a/e.class */
class C1472e {

    /* renamed from: a */
    private static final C1466a f4805a = new C1466a();

    /* renamed from: b */
    private final C1466a f4806b;

    /* renamed from: c */
    private final AbstractC1471d f4807c;

    /* renamed from: d */
    private final AbstractC1673b f4808d;

    /* renamed from: e */
    private final ContentResolver f4809e;

    /* renamed from: f */
    private final List<ImageHeaderParser> f4810f;

    C1472e(List<ImageHeaderParser> list, C1466a c1466a, AbstractC1471d abstractC1471d, AbstractC1673b abstractC1673b, ContentResolver contentResolver) {
        this.f4806b = c1466a;
        this.f4807c = abstractC1471d;
        this.f4808d = abstractC1673b;
        this.f4809e = contentResolver;
        this.f4810f = list;
    }

    public C1472e(List<ImageHeaderParser> list, AbstractC1471d abstractC1471d, AbstractC1673b abstractC1673b, ContentResolver contentResolver) {
        this(list, f4805a, abstractC1471d, abstractC1673b, contentResolver);
    }

    /* renamed from: a */
    private boolean m16929a(File file) {
        return this.f4806b.m16943a(file) && 0 < this.f4806b.m16941b(file);
    }

    /* renamed from: c */
    private String m16927c(Uri uri) {
        String str;
        Cursor mo16931a = this.f4807c.mo16931a(uri);
        if (mo16931a != null) {
            try {
                if (mo16931a.moveToFirst()) {
                    String string = mo16931a.getString(0);
                    str = string;
                    if (mo16931a != null) {
                        mo16931a.close();
                        str = string;
                    }
                    return str;
                }
            } catch (Throwable th) {
                if (mo16931a != null) {
                    mo16931a.close();
                }
                throw th;
            }
        }
        str = null;
        if (mo16931a != null) {
            mo16931a.close();
            str = null;
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m16930a(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r4
            android.content.ContentResolver r0 = r0.f4809e     // Catch: java.lang.NullPointerException -> L3f java.lang.Throwable -> L83 java.io.IOException -> L9e
            r1 = r5
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: java.lang.NullPointerException -> L3f java.lang.Throwable -> L83 java.io.IOException -> L9e
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            r7 = r0
            r0 = r4
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r0 = r0.f4810f     // Catch: java.lang.NullPointerException -> L3f java.lang.Throwable -> L83 java.io.IOException -> L9e
            r1 = r9
            r2 = r4
            com.bumptech.glide.load.engine.a.b r2 = r2.f4808d     // Catch: java.lang.NullPointerException -> L3f java.lang.Throwable -> L83 java.io.IOException -> L9e
            int r0 = com.bumptech.glide.load.C1665e.m16609b(r0, r1, r2)     // Catch: java.lang.NullPointerException -> L3f java.lang.Throwable -> L83 java.io.IOException -> L9e
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L3c
            r0 = r9
            r0.close()     // Catch: java.io.IOException -> L8e
            r0 = r10
            r11 = r0
        L3c:
            r0 = r11
            return r0
        L3f:
            r9 = move-exception
        L41:
            r0 = r8
            r6 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L83
            if (r0 == 0) goto L73
            r0 = r8
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L83
            r7 = r0
            r0 = r8
            r6 = r0
            r0 = r7
            r0.<init>()     // Catch: java.lang.Throwable -> L83
            r0 = r8
            r6 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = r7
            java.lang.String r2 = "Failed to open uri: "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L83
            r2 = r5
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L83
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L83
            r2 = r9
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: java.lang.Throwable -> L83
        L73:
            r0 = r8
            if (r0 == 0) goto L7d
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> L96
        L7d:
            r0 = -1
            r11 = r0
            goto L3c
        L83:
            r5 = move-exception
            r0 = r6
            if (r0 == 0) goto L8c
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L9a
        L8c:
            r0 = r5
            throw r0
        L8e:
            r5 = move-exception
            r0 = r10
            r11 = r0
            goto L3c
        L96:
            r5 = move-exception
            goto L7d
        L9a:
            r6 = move-exception
            goto L8c
        L9e:
            r9 = move-exception
            r0 = r7
            r8 = r0
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p079a.p080a.C1472e.m16930a(android.net.Uri):int");
    }

    /* renamed from: b */
    public InputStream m16928b(Uri uri) {
        InputStream inputStream = null;
        String m16927c = m16927c(uri);
        if (!TextUtils.isEmpty(m16927c)) {
            File m16942a = this.f4806b.m16942a(m16927c);
            if (m16929a(m16942a)) {
                Uri fromFile = Uri.fromFile(m16942a);
                try {
                    inputStream = this.f4809e.openInputStream(fromFile);
                } catch (NullPointerException e) {
                    throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
                }
            }
        }
        return inputStream;
    }
}
