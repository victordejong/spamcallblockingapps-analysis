package com.bumptech.glide.load.data.p118a;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.C3691e;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bumptech.glide.load.data.a.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/e.class */
final class C3670e {

    /* renamed from: a */
    private static final C3664a f13810a = new C3664a();

    /* renamed from: b */
    private final C3664a f13811b;

    /* renamed from: c */
    private final AbstractC3669d f13812c;

    /* renamed from: d */
    private final AbstractC3707b f13813d;

    /* renamed from: e */
    private final ContentResolver f13814e;

    /* renamed from: f */
    private final List<ImageHeaderParser> f13815f;

    C3670e(List<ImageHeaderParser> list, C3664a c3664a, AbstractC3669d abstractC3669d, AbstractC3707b abstractC3707b, ContentResolver contentResolver) {
        this.f13811b = c3664a;
        this.f13812c = abstractC3669d;
        this.f13813d = abstractC3707b;
        this.f13814e = contentResolver;
        this.f13815f = list;
    }

    public C3670e(List<ImageHeaderParser> list, AbstractC3669d abstractC3669d, AbstractC3707b abstractC3707b, ContentResolver contentResolver) {
        this(list, f13810a, abstractC3669d, abstractC3707b, contentResolver);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m37529c(android.net.Uri r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            com.bumptech.glide.load.data.a.d r0 = r0.f13812c     // Catch: java.lang.Throwable -> L40 java.lang.SecurityException -> L44
            r1 = r4
            android.database.Cursor r0 = r0.mo37532a(r1)     // Catch: java.lang.Throwable -> L40 java.lang.SecurityException -> L44
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L34
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L77 java.lang.SecurityException -> L84
            if (r0 == 0) goto L34
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> L77 java.lang.SecurityException -> L84
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L31
            r0 = r6
            r0.close()
        L31:
            r0 = r7
            return r0
        L34:
            r0 = r6
            if (r0 == 0) goto L3e
            r0 = r6
            r0.close()
        L3e:
            r0 = 0
            return r0
        L40:
            r4 = move-exception
            goto L78
        L44:
            r5 = move-exception
            r0 = 0
            r6 = r0
        L47:
            r0 = r6
            r5 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L77
            if (r0 == 0) goto L6b
            r0 = r6
            r5 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            r7 = r0
            r0 = r6
            r5 = r0
            r0 = r7
            java.lang.String r1 = "Failed to query for thumbnail for Uri: "
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L77
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L77
        L6b:
            r0 = r6
            if (r0 == 0) goto L75
            r0 = r6
            r0.close()
        L75:
            r0 = 0
            return r0
        L77:
            r4 = move-exception
        L78:
            r0 = r5
            if (r0 == 0) goto L82
            r0 = r5
            r0.close()
        L82:
            r0 = r4
            throw r0
        L84:
            r5 = move-exception
            goto L47
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.p118a.C3670e.m37529c(android.net.Uri):java.lang.String");
    }

    /* renamed from: a */
    public final int m37531a(Uri uri) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                InputStream openInputStream = this.f13814e.openInputStream(uri);
                inputStream2 = openInputStream;
                inputStream = openInputStream;
                int m37511b = C3691e.m37511b(this.f13815f, openInputStream, this.f13813d);
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (IOException e) {
                    }
                }
                return m37511b;
            } catch (IOException | NullPointerException e2) {
                if (Log.isLoggable("ThumbStreamOpener", 3)) {
                    InputStream inputStream3 = inputStream;
                    InputStream inputStream4 = inputStream;
                    InputStream inputStream5 = inputStream;
                    new StringBuilder("Failed to open uri: ").append(uri);
                }
                if (inputStream == null) {
                    return -1;
                }
                try {
                    inputStream.close();
                    return -1;
                } catch (IOException e3) {
                    return -1;
                }
            }
        } catch (Throwable th) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final InputStream m37530b(Uri uri) throws FileNotFoundException {
        String m37529c = m37529c(uri);
        if (TextUtils.isEmpty(m37529c)) {
            return null;
        }
        File file = new File(m37529c);
        if (!(file.exists() && 0 < file.length())) {
            return null;
        }
        Uri fromFile = Uri.fromFile(file);
        try {
            return this.f13814e.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
        }
    }
}
