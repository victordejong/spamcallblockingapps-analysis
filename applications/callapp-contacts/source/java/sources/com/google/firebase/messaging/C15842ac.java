package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.p358d.C13273g;
import com.google.android.gms.internal.p358d.C13274h;
import com.google.android.gms.internal.p358d.C13281o;
import com.google.android.gms.tasks.AbstractC14185h;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
/* renamed from: com.google.firebase.messaging.ac */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ac.class */
final class C15842ac implements Closeable {

    /* renamed from: a */
    final URL f56321a;

    /* renamed from: b */
    AbstractC14185h<Bitmap> f56322b;

    /* renamed from: c */
    private volatile InputStream f56323c;

    private C15842ac(URL url) {
        this.f56321a = url;
    }

    /* renamed from: a */
    public static C15842ac m8233a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new C15842ac(new URL(str));
        } catch (MalformedURLException e) {
            String valueOf = String.valueOf(str);
            Log.w("FirebaseMessaging", valueOf.length() != 0 ? "Not downloading image, bad URL: ".concat(valueOf) : new String("Not downloading image, bad URL: "));
            return null;
        }
    }

    /* renamed from: a */
    public final byte[] m8234a() throws IOException {
        URLConnection openConnection = this.f56321a.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                this.f56323c = inputStream;
                byte[] m13509a = C13273g.m13509a(C13273g.m13507b(inputStream));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    String valueOf = String.valueOf(this.f56321a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("Downloaded ");
                    sb.append(m13509a.length);
                    sb.append(" bytes from ");
                    sb.append(valueOf);
                }
                if (m13509a.length > 1048576) {
                    throw new IOException("Image exceeds max size of 1048576");
                }
                return m13509a;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        C13281o.m13503a(th, th2);
                    }
                }
                throw th;
            }
        }
        throw new IOException("Content-Length exceeds max size of 1048576");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            C13274h.m13506a(this.f56323c);
        } catch (NullPointerException e) {
            Log.e("FirebaseMessaging", "Failed to close the image download stream.", e);
        }
    }
}
