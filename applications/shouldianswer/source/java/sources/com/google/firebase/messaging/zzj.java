package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_messaging.zzk;
import com.google.android.gms.internal.firebase_messaging.zzm;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/zzj.class */
public final class zzj implements Closeable {
    private final URL zza;
    private Task<Bitmap> zzb;
    private volatile InputStream zzc;

    private zzj(URL url) {
        this.zza = url;
    }

    public static zzj zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new zzj(new URL(str));
        } catch (MalformedURLException e) {
            String valueOf = String.valueOf(str);
            Log.w("FirebaseMessaging", valueOf.length() != 0 ? "Not downloading image, bad URL: ".concat(valueOf) : new String("Not downloading image, bad URL: "));
            return null;
        }
    }

    private final byte[] zzc() {
        URLConnection openConnection = this.zza.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                this.zzc = inputStream;
                byte[] zza = com.google.android.gms.internal.firebase_messaging.zzj.zza(com.google.android.gms.internal.firebase_messaging.zzj.zza(inputStream, 1048577L));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    int length = zza.length;
                    String valueOf = String.valueOf(this.zza);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("Downloaded ");
                    sb.append(length);
                    sb.append(" bytes from ");
                    sb.append(valueOf);
                    Log.v("FirebaseMessaging", sb.toString());
                }
                if (zza.length > 1048576) {
                    throw new IOException("Image exceeds max size of 1048576");
                }
                return zza;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        zzm.zza(th, th2);
                    }
                }
                throw th;
            }
        }
        throw new IOException("Content-Length exceeds max size of 1048576");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzk.zza(this.zzc);
    }

    public final Task<Bitmap> zza() {
        return (Task) Preconditions.checkNotNull(this.zzb);
    }

    public final void zza(Executor executor) {
        this.zzb = Tasks.call(executor, new Callable(this) { // from class: com.google.firebase.messaging.zzi
            private final zzj zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final Bitmap zzb() {
        String valueOf = String.valueOf(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("Starting download of: ");
        sb.append(valueOf);
        Log.i("FirebaseMessaging", sb.toString());
        byte[] zzc = zzc();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(zzc, 0, zzc.length);
        if (decodeByteArray == null) {
            String valueOf2 = String.valueOf(this.zza);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
            sb2.append("Failed to decode image: ");
            sb2.append(valueOf2);
            throw new IOException(sb2.toString());
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf3 = String.valueOf(this.zza);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 31);
            sb3.append("Successfully downloaded image: ");
            sb3.append(valueOf3);
            Log.d("FirebaseMessaging", sb3.toString());
        }
        return decodeByteArray;
    }
}
