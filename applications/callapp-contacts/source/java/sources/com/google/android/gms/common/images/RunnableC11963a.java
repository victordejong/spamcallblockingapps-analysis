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
/* renamed from: com.google.android.gms.common.images.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/a.class */
final class RunnableC11963a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ImageManager f39463a;

    /* renamed from: b */
    private final Uri f39464b;

    /* renamed from: c */
    private final ParcelFileDescriptor f39465c;

    public RunnableC11963a(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f39463a = imageManager;
        this.f39464b = uri;
        this.f39465c = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            String valueOf = String.valueOf(Thread.currentThread());
            String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 56 + String.valueOf(valueOf2).length());
            sb.append("checkNotMainThread: current thread ");
            sb.append(valueOf);
            sb.append(" IS the main thread ");
            sb.append(valueOf2);
            sb.append("!");
            Log.e("Asserts", sb.toString());
            throw new IllegalStateException("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        }
        ParcelFileDescriptor parcelFileDescriptor = this.f39465c;
        Bitmap bitmap = null;
        boolean z = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e) {
                String valueOf3 = String.valueOf(this.f39464b);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 34);
                sb2.append("OOM while loading bitmap for uri: ");
                sb2.append(valueOf3);
                Log.e("ImageManager", sb2.toString(), e);
                z = true;
            }
            try {
                this.f39465c.close();
            } catch (IOException e2) {
                Log.e("ImageManager", "closed failed", e2);
            }
        } else {
            bitmap = null;
            z = false;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        handler = this.f39463a.f39457d;
        handler.post(new RunnableC11964b(this.f39463a, this.f39464b, bitmap, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e3) {
            String valueOf4 = String.valueOf(this.f39464b);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf4).length() + 32);
            sb3.append("Latch interrupted while posting ");
            sb3.append(valueOf4);
            Log.w("ImageManager", sb3.toString());
        }
    }
}
