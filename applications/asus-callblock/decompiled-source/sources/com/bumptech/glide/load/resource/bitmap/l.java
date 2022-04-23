package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.c.g;
import com.bumptech.glide.load.e;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l.class */
public final class l implements e<g, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final e<InputStream, Bitmap> f3615a;

    /* renamed from: b  reason: collision with root package name */
    private final e<ParcelFileDescriptor, Bitmap> f3616b;

    public l(e<InputStream, Bitmap> eVar, e<ParcelFileDescriptor, Bitmap> eVar2) {
        this.f3615a = eVar;
        this.f3616b = eVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bumptech.glide.load.b.k<android.graphics.Bitmap> a(com.bumptech.glide.load.c.g r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r6
            java.io.InputStream r0 = r0.f3571a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0056
            r0 = r5
            com.bumptech.glide.load.e<java.io.InputStream, android.graphics.Bitmap> r0 = r0.f3615a     // Catch: IOException -> 0x0041
            r1 = r9
            r2 = r7
            r3 = r8
            com.bumptech.glide.load.b.k r0 = r0.a(r1, r2, r3)     // Catch: IOException -> 0x0041
            r9 = r0
        L_0x001a:
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003e
            r0 = r6
            android.os.ParcelFileDescriptor r0 = r0.f3572b
            r6 = r0
            r0 = r9
            r10 = r0
            r0 = r6
            if (r0 == 0) goto L_0x003e
            r0 = r5
            com.bumptech.glide.load.e<android.os.ParcelFileDescriptor, android.graphics.Bitmap> r0 = r0.f3616b
            r1 = r6
            r2 = r7
            r3 = r8
            com.bumptech.glide.load.b.k r0 = r0.a(r1, r2, r3)
            r10 = r0
        L_0x003e:
            r0 = r10
            return r0
        L_0x0041:
            r9 = move-exception
            java.lang.String r0 = "ImageVideoDecoder"
            r1 = 2
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            if (r0 == 0) goto L_0x0056
            java.lang.String r0 = "ImageVideoDecoder"
            java.lang.String r1 = "Failed to load image from stream, trying FileDescriptor"
            r2 = r9
            int r0 = android.util.Log.v(r0, r1, r2)
        L_0x0056:
            r0 = 0
            r9 = r0
            goto L_0x001a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.l.a(com.bumptech.glide.load.c.g, int, int):com.bumptech.glide.load.b.k");
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }
}
