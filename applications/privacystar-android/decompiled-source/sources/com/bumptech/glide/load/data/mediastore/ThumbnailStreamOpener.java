package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener.class */
class ThumbnailStreamOpener {
    private static final FileService DEFAULT_SERVICE = new FileService();
    private static final String TAG = "ThumbStreamOpener";
    private final ArrayPool byteArrayPool;
    private final ContentResolver contentResolver;
    private final List<ImageHeaderParser> parsers;
    private final ThumbnailQuery query;
    private final FileService service;

    ThumbnailStreamOpener(List<ImageHeaderParser> list, FileService fileService, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this.service = fileService;
        this.query = thumbnailQuery;
        this.byteArrayPool = arrayPool;
        this.contentResolver = contentResolver;
        this.parsers = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThumbnailStreamOpener(List<ImageHeaderParser> list, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this(list, DEFAULT_SERVICE, thumbnailQuery, arrayPool, contentResolver);
    }

    @Nullable
    private String getPath(@NonNull Uri uri) {
        Cursor query = this.query.query(uri);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(0);
                    if (query != null) {
                        query.close();
                    }
                    return string;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        if (query == null) {
            return null;
        }
        query.close();
        return null;
    }

    private boolean isValid(File file) {
        return this.service.exists(file) && 0 < this.service.length(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getOrientation(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = r4
            android.content.ContentResolver r0 = r0.contentResolver     // Catch: all -> 0x0029, IOException | NullPointerException -> 0x002f
            r1 = r5
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: all -> 0x0029, IOException | NullPointerException -> 0x002f
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            java.util.List<com.bumptech.glide.load.ImageHeaderParser> r0 = r0.parsers     // Catch: IOException | NullPointerException -> 0x0024, all -> 0x0078
            r1 = r6
            r2 = r4
            com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool r2 = r2.byteArrayPool     // Catch: IOException | NullPointerException -> 0x0024, all -> 0x0078
            int r0 = com.bumptech.glide.load.ImageHeaderParserUtils.getOrientation(r0, r1, r2)     // Catch: IOException | NullPointerException -> 0x0024, all -> 0x0078
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0021
            r0 = r6
            r0.close()     // Catch: IOException -> 0x0083
        L_0x0021:
            r0 = r8
            return r0
        L_0x0024:
            r9 = move-exception
            goto L_0x0033
        L_0x0029:
            r5 = move-exception
            r0 = 0
            r7 = r0
            goto L_0x0079
        L_0x002f:
            r9 = move-exception
            r0 = 0
            r6 = r0
        L_0x0033:
            r0 = r6
            r7 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x0078
            if (r0 == 0) goto L_0x006e
            r0 = r6
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0078
            r10 = r0
            r0 = r6
            r7 = r0
            r0 = r10
            r0.<init>()     // Catch: all -> 0x0078
            r0 = r6
            r7 = r0
            r0 = r10
            java.lang.String r1 = "Failed to open uri: "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0078
            r0 = r6
            r7 = r0
            r0 = r10
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0078
            r0 = r6
            r7 = r0
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = r10
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0078
            r2 = r9
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: all -> 0x0078
        L_0x006e:
            r0 = r6
            if (r0 == 0) goto L_0x0076
            r0 = r6
            r0.close()     // Catch: IOException -> 0x0087
        L_0x0076:
            r0 = -1
            return r0
        L_0x0078:
            r5 = move-exception
        L_0x0079:
            r0 = r7
            if (r0 == 0) goto L_0x0081
            r0 = r7
            r0.close()     // Catch: IOException -> 0x008b
        L_0x0081:
            r0 = r5
            throw r0
        L_0x0083:
            r5 = move-exception
            goto L_0x0021
        L_0x0087:
            r5 = move-exception
            goto L_0x0076
        L_0x008b:
            r7 = move-exception
            goto L_0x0081
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.mediastore.ThumbnailStreamOpener.getOrientation(android.net.Uri):int");
    }

    public InputStream open(Uri uri) throws FileNotFoundException {
        String path = getPath(uri);
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        File file = this.service.get(path);
        if (!isValid(file)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(file);
        try {
            return this.contentResolver.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e));
        }
    }
}
