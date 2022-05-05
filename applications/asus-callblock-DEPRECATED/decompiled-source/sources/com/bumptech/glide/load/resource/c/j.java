package com.bumptech.glide.load.resource.c;

import android.graphics.Bitmap;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.b.a;
import com.bumptech.glide.i.d;
import com.bumptech.glide.load.b.a.c;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.g;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/j.class */
public final class j implements f<b> {

    /* renamed from: a  reason: collision with root package name */
    private static final a f3649a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final a.AbstractC0091a f3650b;
    private final c c;
    private final a d;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/c/j$a.class */
    static final class a {
        a() {
        }
    }

    public j(c cVar) {
        this(cVar, f3649a);
    }

    private j(c cVar, a aVar) {
        this.c = cVar;
        this.f3650b = new com.bumptech.glide.load.resource.c.a(cVar);
        this.d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Finally extract failed */
    public boolean a(k<b> kVar, OutputStream outputStream) {
        boolean z;
        long a2 = d.a();
        b a3 = kVar.a();
        g<Bitmap> gVar = a3.f3629a.d;
        if (gVar instanceof com.bumptech.glide.load.resource.d) {
            z = a(a3.f3629a.f3632b, outputStream);
        } else {
            byte[] bArr = a3.f3629a.f3632b;
            com.bumptech.glide.b.d dVar = new com.bumptech.glide.b.d();
            dVar.a(bArr);
            com.bumptech.glide.b.c a4 = dVar.a();
            com.bumptech.glide.b.a aVar = new com.bumptech.glide.b.a(this.f3650b);
            aVar.a(a4, bArr);
            aVar.a();
            com.bumptech.glide.c.a aVar2 = new com.bumptech.glide.c.a();
            z = false;
            if (aVar2.a(outputStream)) {
                int i = 0;
                while (true) {
                    if (i < aVar.e.c) {
                        com.bumptech.glide.load.resource.bitmap.c cVar = new com.bumptech.glide.load.resource.bitmap.c(aVar.b(), this.c);
                        k<Bitmap> a5 = gVar.a(cVar, a3.getIntrinsicWidth(), a3.getIntrinsicHeight());
                        if (!cVar.equals(a5)) {
                            cVar.c();
                        }
                        try {
                            if (!aVar2.a(a5.a())) {
                                a5.c();
                                z = false;
                                break;
                            }
                            aVar2.f3383a = Math.round(aVar.a(aVar.c) / 10.0f);
                            aVar.a();
                            a5.c();
                            i++;
                        } catch (Throwable th) {
                            a5.c();
                            throw th;
                        }
                    } else {
                        boolean a6 = aVar2.a();
                        z = a6;
                        if (Log.isLoggable("GifEncoder", 2)) {
                            Log.v("GifEncoder", "Encoded gif with " + aVar.e.c + " frames and " + a3.f3629a.f3632b.length + " bytes in " + d.a(a2) + " ms");
                            z = a6;
                        }
                    }
                }
            }
        }
        return z;
    }

    private static boolean a(byte[] bArr, OutputStream outputStream) {
        boolean z = true;
        try {
            outputStream.write(bArr);
        } catch (IOException e) {
            if (Log.isLoggable("GifEncoder", 3)) {
                Log.d("GifEncoder", "Failed to write data to output stream in GifResourceEncoder", e);
            }
            z = false;
        }
        return z;
    }

    @Override // com.bumptech.glide.load.b
    public final String a() {
        return BuildConfig.FLAVOR;
    }
}
