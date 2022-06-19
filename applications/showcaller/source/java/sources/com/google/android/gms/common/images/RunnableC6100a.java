package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.common.internal.C6110c;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
/* renamed from: com.google.android.gms.common.images.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/a.class */
final class RunnableC6100a implements Runnable {

    /* renamed from: d */
    private final Uri f19437d;

    /* renamed from: e */
    private final ParcelFileDescriptor f19438e;

    /* renamed from: f */
    final /* synthetic */ ImageManager f19439f;

    public RunnableC6100a(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f19437d = uri;
        this.f19438e = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C6110c.m17138b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.f19438e;
        Bitmap bitmap = null;
        boolean z = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e) {
                String valueOf = String.valueOf(this.f19437d);
                StringBuilder sb = new StringBuilder(valueOf.length() + 34);
                sb.append("OOM while loading bitmap for uri: ");
                sb.append(valueOf);
                Log.e("ImageManager", sb.toString(), e);
                z = true;
            }
            try {
                this.f19438e.close();
            } catch (IOException e2) {
                Log.e("ImageManager", "closed failed", e2);
            }
        } else {
            bitmap = null;
            z = false;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager.m17169i(this.f19439f).post(new RunnableC6101b(this.f19439f, this.f19437d, bitmap, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e3) {
            String valueOf2 = String.valueOf(this.f19437d);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 32);
            sb2.append("Latch interrupted while posting ");
            sb2.append(valueOf2);
            Log.w("ImageManager", sb2.toString());
        }
    }
}
