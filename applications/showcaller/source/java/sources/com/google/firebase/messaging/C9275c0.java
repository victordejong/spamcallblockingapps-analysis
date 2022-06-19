package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p078c.p084c.p085a.p086a.p088b.p092d.C1861g;
import p078c.p084c.p085a.p086a.p088b.p092d.C1862h;
import p078c.p084c.p085a.p086a.p088b.p092d.C1869o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.messaging.c0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/c0.class */
public class C9275c0 implements Closeable {

    /* renamed from: d */
    private final URL f39775d;

    /* renamed from: e */
    private AbstractC7966g<Bitmap> f39776e;

    /* renamed from: f */
    private volatile InputStream f39777f;

    private C9275c0(URL url) {
        this.f39775d = url;
    }

    /* renamed from: e */
    private byte[] m1296e() {
        URLConnection openConnection = this.f39775d.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                this.f39777f = inputStream;
                byte[] m28787a = C1861g.m28787a(C1861g.m28786b(inputStream, 1048577L));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    String valueOf = String.valueOf(this.f39775d);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 34);
                    sb.append("Downloaded ");
                    sb.append(m28787a.length);
                    sb.append(" bytes from ");
                    sb.append(valueOf);
                    Log.v("FirebaseMessaging", sb.toString());
                }
                if (m28787a.length > 1048576) {
                    throw new IOException("Image exceeds max size of 1048576");
                }
                return m28787a;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        C1869o.m28781a(th, th2);
                    }
                }
                throw th;
            }
        }
        throw new IOException("Content-Length exceeds max size of 1048576");
    }

    /* renamed from: f */
    public static C9275c0 m1295f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new C9275c0(new URL(str));
        } catch (MalformedURLException e) {
            String valueOf = String.valueOf(str);
            Log.w("FirebaseMessaging", valueOf.length() != 0 ? "Not downloading image, bad URL: ".concat(valueOf) : new String("Not downloading image, bad URL: "));
            return null;
        }
    }

    /* renamed from: a */
    public Bitmap m1297a() {
        String valueOf = String.valueOf(this.f39775d);
        StringBuilder sb = new StringBuilder(valueOf.length() + 22);
        sb.append("Starting download of: ");
        sb.append(valueOf);
        Log.i("FirebaseMessaging", sb.toString());
        byte[] m1296e = m1296e();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(m1296e, 0, m1296e.length);
        if (decodeByteArray == null) {
            String valueOf2 = String.valueOf(this.f39775d);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 24);
            sb2.append("Failed to decode image: ");
            sb2.append(valueOf2);
            throw new IOException(sb2.toString());
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf3 = String.valueOf(this.f39775d);
            StringBuilder sb3 = new StringBuilder(valueOf3.length() + 31);
            sb3.append("Successfully downloaded image: ");
            sb3.append(valueOf3);
            Log.d("FirebaseMessaging", sb3.toString());
        }
        return decodeByteArray;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            C1862h.m28784a(this.f39777f);
        } catch (NullPointerException e) {
            Log.e("FirebaseMessaging", "Failed to close the image download stream.", e);
        }
    }

    /* renamed from: g */
    public AbstractC7966g<Bitmap> m1294g() {
        return (AbstractC7966g) C6155o.m17018j(this.f39776e);
    }

    /* renamed from: k */
    public void m1293k(Executor executor) {
        this.f39776e = C7970j.m5800c(executor, new Callable(this) { // from class: com.google.firebase.messaging.b0

            /* renamed from: a */
            private final C9275c0 f39771a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39771a = this;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return this.f39771a.m1297a();
            }
        });
    }
}
