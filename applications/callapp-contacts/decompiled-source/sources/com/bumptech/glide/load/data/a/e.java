package com.bumptech.glide.load.data.a;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.a.b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final a f7390a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final a f7391b;

    /* renamed from: c  reason: collision with root package name */
    private final d f7392c;

    /* renamed from: d  reason: collision with root package name */
    private final b f7393d;
    private final ContentResolver e;
    private final List<ImageHeaderParser> f;

    e(List<ImageHeaderParser> list, a aVar, d dVar, b bVar, ContentResolver contentResolver) {
        this.f7391b = aVar;
        this.f7392c = dVar;
        this.f7393d = bVar;
        this.e = contentResolver;
        this.f = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(List<ImageHeaderParser> list, d dVar, b bVar, ContentResolver contentResolver) {
        this(list, f7390a, dVar, bVar, contentResolver);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String c(android.net.Uri r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            com.bumptech.glide.load.data.a.d r0 = r0.f7392c     // Catch: all -> 0x0040, SecurityException -> 0x0044
            r1 = r4
            android.database.Cursor r0 = r0.a(r1)     // Catch: all -> 0x0040, SecurityException -> 0x0044
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0034
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0077, SecurityException -> 0x0084
            if (r0 == 0) goto L_0x0034
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: all -> 0x0077, SecurityException -> 0x0084
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0031
            r0 = r6
            r0.close()
        L_0x0031:
            r0 = r7
            return r0
        L_0x0034:
            r0 = r6
            if (r0 == 0) goto L_0x003e
            r0 = r6
            r0.close()
        L_0x003e:
            r0 = 0
            return r0
        L_0x0040:
            r4 = move-exception
            goto L_0x0078
        L_0x0044:
            r5 = move-exception
            r0 = 0
            r6 = r0
        L_0x0047:
            r0 = r6
            r5 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x0077
            if (r0 == 0) goto L_0x006b
            r0 = r6
            r5 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0077
            r7 = r0
            r0 = r6
            r5 = r0
            r0 = r7
            java.lang.String r1 = "Failed to query for thumbnail for Uri: "
            r0.<init>(r1)     // Catch: all -> 0x0077
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0077
        L_0x006b:
            r0 = r6
            if (r0 == 0) goto L_0x0075
            r0 = r6
            r0.close()
        L_0x0075:
            r0 = 0
            return r0
        L_0x0077:
            r4 = move-exception
        L_0x0078:
            r0 = r5
            if (r0 == 0) goto L_0x0082
            r0 = r5
            r0.close()
        L_0x0082:
            r0 = r4
            throw r0
        L_0x0084:
            r5 = move-exception
            goto L_0x0047
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.a.e.c(android.net.Uri):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(Uri uri) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                InputStream openInputStream = this.e.openInputStream(uri);
                inputStream2 = openInputStream;
                inputStream = openInputStream;
                int b2 = com.bumptech.glide.load.e.b(this.f, openInputStream, this.f7393d);
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (IOException e) {
                    }
                }
                return b2;
            } catch (IOException | NullPointerException e2) {
                if (Log.isLoggable("ThumbStreamOpener", 3)) {
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

    public final InputStream b(Uri uri) throws FileNotFoundException {
        String c2 = c(uri);
        if (TextUtils.isEmpty(c2)) {
            return null;
        }
        File file = new File(c2);
        if (!(file.exists() && 0 < file.length())) {
            return null;
        }
        Uri fromFile = Uri.fromFile(file);
        try {
            return this.e.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
        }
    }
}
