package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/a.class */
final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ImageManager f22818a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f22819b;

    /* renamed from: c  reason: collision with root package name */
    private final ParcelFileDescriptor f22820c;

    public a(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f22818a = imageManager;
        this.f22819b = uri;
        this.f22820c = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            ParcelFileDescriptor parcelFileDescriptor = this.f22820c;
            Bitmap bitmap = null;
            boolean z = false;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.f22819b);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                }
                try {
                    this.f22820c.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            } else {
                bitmap = null;
                z = false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            handler = this.f22818a.f22817d;
            handler.post(new b(this.f22818a, this.f22819b, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.f22819b);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        } else {
            String valueOf3 = String.valueOf(Thread.currentThread());
            String valueOf4 = String.valueOf(Looper.getMainLooper().getThread());
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 56 + String.valueOf(valueOf4).length());
            sb3.append("checkNotMainThread: current thread ");
            sb3.append(valueOf3);
            sb3.append(" IS the main thread ");
            sb3.append(valueOf4);
            sb3.append("!");
            Log.e("Asserts", sb3.toString());
            throw new IllegalStateException("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        }
    }
}
