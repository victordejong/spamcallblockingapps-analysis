package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.d.g;
import com.google.android.gms.internal.d.o;
import com.google.android.gms.tasks.h;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ac.class */
final class ac implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final URL f32462a;

    /* renamed from: b  reason: collision with root package name */
    h<Bitmap> f32463b;

    /* renamed from: c  reason: collision with root package name */
    private volatile InputStream f32464c;

    private ac(URL url) {
        this.f32462a = url;
    }

    public static ac a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new ac(new URL(str));
        } catch (MalformedURLException e) {
            String valueOf = String.valueOf(str);
            Log.w("FirebaseMessaging", valueOf.length() != 0 ? "Not downloading image, bad URL: ".concat(valueOf) : new String("Not downloading image, bad URL: "));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] a() throws IOException {
        URLConnection openConnection = this.f32462a.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                this.f32464c = inputStream;
                byte[] a2 = g.a(g.b(inputStream));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    String valueOf = String.valueOf(this.f32462a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("Downloaded ");
                    sb.append(a2.length);
                    sb.append(" bytes from ");
                    sb.append(valueOf);
                }
                if (a2.length <= 1048576) {
                    return a2;
                }
                throw new IOException("Image exceeds max size of 1048576");
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        o.a(th, th2);
                    }
                }
                throw th;
            }
        } else {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            com.google.android.gms.internal.d.h.a(this.f32464c);
        } catch (NullPointerException e) {
            Log.e("FirebaseMessaging", "Failed to close the image download stream.", e);
        }
    }
}
