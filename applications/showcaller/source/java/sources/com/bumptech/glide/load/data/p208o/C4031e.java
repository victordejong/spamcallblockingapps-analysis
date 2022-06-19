package com.bumptech.glide.load.data.p208o;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bumptech.glide.load.data.o.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/o/e.class */
class C4031e {

    /* renamed from: a */
    private static final C4025a f12676a = new C4025a();

    /* renamed from: b */
    private final C4025a f12677b;

    /* renamed from: c */
    private final AbstractC4030d f12678c;

    /* renamed from: d */
    private final AbstractC4091b f12679d;

    /* renamed from: e */
    private final ContentResolver f12680e;

    /* renamed from: f */
    private final List<ImageHeaderParser> f12681f;

    C4031e(List<ImageHeaderParser> list, C4025a c4025a, AbstractC4030d abstractC4030d, AbstractC4091b abstractC4091b, ContentResolver contentResolver) {
        this.f12677b = c4025a;
        this.f12678c = abstractC4030d;
        this.f12679d = abstractC4091b;
        this.f12680e = contentResolver;
        this.f12681f = list;
    }

    public C4031e(List<ImageHeaderParser> list, AbstractC4030d abstractC4030d, AbstractC4091b abstractC4091b, ContentResolver contentResolver) {
        this(list, f12676a, abstractC4030d, abstractC4091b, contentResolver);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0095  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m23460b(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r4
            com.bumptech.glide.load.data.o.d r0 = r0.f12678c     // Catch: java.lang.Throwable -> L41 java.lang.SecurityException -> L45
            r1 = r5
            android.database.Cursor r0 = r0.mo23462a(r1)     // Catch: java.lang.Throwable -> L41 java.lang.SecurityException -> L45
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L35
            r0 = r7
            r6 = r0
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.SecurityException -> L30 java.lang.Throwable -> L90
            if (r0 == 0) goto L35
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.SecurityException -> L30 java.lang.Throwable -> L90
            r8 = r0
            r0 = r7
            r0.close()
            r0 = r8
            return r0
        L30:
            r8 = move-exception
            goto L49
        L35:
            r0 = r7
            if (r0 == 0) goto L3f
            r0 = r7
            r0.close()
        L3f:
            r0 = 0
            return r0
        L41:
            r5 = move-exception
            goto L91
        L45:
            r8 = move-exception
            r0 = 0
            r7 = r0
        L49:
            r0 = r7
            r6 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L90
            if (r0 == 0) goto L84
            r0 = r7
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L90
            r9 = r0
            r0 = r7
            r6 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> L90
            r0 = r7
            r6 = r0
            r0 = r9
            java.lang.String r1 = "Failed to query for thumbnail for Uri: "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L90
            r0 = r7
            r6 = r0
            r0 = r9
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L90
            r0 = r7
            r6 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = r9
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L90
            r2 = r8
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: java.lang.Throwable -> L90
        L84:
            r0 = r7
            if (r0 == 0) goto L8e
            r0 = r7
            r0.close()
        L8e:
            r0 = 0
            return r0
        L90:
            r5 = move-exception
        L91:
            r0 = r6
            if (r0 == 0) goto L9b
            r0 = r6
            r0.close()
        L9b:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.p208o.C4031e.m23460b(android.net.Uri):java.lang.String");
    }

    /* renamed from: c */
    private boolean m23459c(File file) {
        return this.f12677b.m23474a(file) && 0 < this.f12677b.m23472c(file);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m23461a(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r4
            android.content.ContentResolver r0 = r0.f12680e     // Catch: java.lang.Throwable -> L37 java.lang.NullPointerException -> L3b java.io.IOException -> L40
            r1 = r5
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: java.lang.Throwable -> L37 java.lang.NullPointerException -> L3b java.io.IOException -> L40
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            r7 = r0
            r0 = r4
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r0 = r0.f12681f     // Catch: java.lang.Throwable -> L37 java.lang.NullPointerException -> L3b java.io.IOException -> L40
            r1 = r9
            r2 = r4
            com.bumptech.glide.load.engine.x.b r2 = r2.f12679d     // Catch: java.lang.Throwable -> L37 java.lang.NullPointerException -> L3b java.io.IOException -> L40
            int r0 = com.bumptech.glide.load.C3991b.m23523b(r0, r1, r2)     // Catch: java.lang.Throwable -> L37 java.lang.NullPointerException -> L3b java.io.IOException -> L40
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L34
            r0 = r9
            r0.close()     // Catch: java.io.IOException -> L96
        L34:
            r0 = r10
            return r0
        L37:
            r5 = move-exception
            goto L8a
        L3b:
            r9 = move-exception
            goto L44
        L40:
            r9 = move-exception
            r0 = r7
            r6 = r0
        L44:
            r0 = r6
            r8 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L37
            if (r0 == 0) goto L80
            r0 = r6
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L37
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            r0.<init>()     // Catch: java.lang.Throwable -> L37
            r0 = r6
            r8 = r0
            r0 = r7
            java.lang.String r1 = "Failed to open uri: "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L37
            r0 = r6
            r8 = r0
            r0 = r7
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L37
            r0 = r6
            r8 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = r7
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L37
            r2 = r9
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: java.lang.Throwable -> L37
        L80:
            r0 = r6
            if (r0 == 0) goto L88
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L9a
        L88:
            r0 = -1
            return r0
        L8a:
            r0 = r8
            if (r0 == 0) goto L94
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> L9e
        L94:
            r0 = r5
            throw r0
        L96:
            r5 = move-exception
            goto L34
        L9a:
            r5 = move-exception
            goto L88
        L9e:
            r8 = move-exception
            goto L94
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.p208o.C4031e.m23461a(android.net.Uri):int");
    }

    /* renamed from: d */
    public InputStream m23458d(Uri uri) {
        String m23460b = m23460b(uri);
        if (TextUtils.isEmpty(m23460b)) {
            return null;
        }
        File m23473b = this.f12677b.m23473b(m23460b);
        if (!m23459c(m23473b)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(m23473b);
        try {
            return this.f12680e.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
        }
    }
}
