package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zaa.class */
final class zaa implements Runnable {
    final /* synthetic */ ImageManager zaa;
    private final Uri zab;
    private final ParcelFileDescriptor zac;

    public zaa(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.zaa = imageManager;
        this.zab = uri;
        this.zac = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.zac;
        Bitmap bitmap = null;
        boolean z = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e) {
                String valueOf = String.valueOf(this.zab);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                sb.append("OOM while loading bitmap for uri: ");
                sb.append(valueOf);
                Log.e("ImageManager", sb.toString(), e);
                z = true;
            }
            try {
                this.zac.close();
            } catch (IOException e2) {
                Log.e("ImageManager", "closed failed", e2);
            }
        } else {
            bitmap = null;
            z = false;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        handler = this.zaa.zae;
        handler.post(new zac(this.zaa, this.zab, bitmap, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e3) {
            String valueOf2 = String.valueOf(this.zab);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
            sb2.append("Latch interrupted while posting ");
            sb2.append(valueOf2);
            Log.w("ImageManager", sb2.toString());
        }
    }
}
