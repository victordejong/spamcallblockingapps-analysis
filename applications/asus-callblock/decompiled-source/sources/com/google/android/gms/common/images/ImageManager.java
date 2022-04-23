package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.b.f;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.images.a;
import com.google.android.gms.internal.bh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f3968a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static HashSet<Uri> f3969b = new HashSet<>();
    private final Context c;
    private final Handler d;
    private final ExecutorService e;
    private final b f;
    private final bh g;
    private final Map<com.google.android.gms.common.images.a, ImageReceiver> h;
    private final Map<Uri, ImageReceiver> i;
    private final Map<Uri, Long> j;

    /* JADX INFO: Access modifiers changed from: private */
    @KeepName
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageManager f3970a;

        /* renamed from: b  reason: collision with root package name */
        private final Uri f3971b;
        private final ArrayList<com.google.android.gms.common.images.a> c;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            this.f3970a.e.execute(new c(this.f3971b, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$a.class */
    public interface a {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$b.class */
    private static final class b extends f<a.C0113a, Bitmap> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.b.f
        public final /* synthetic */ void entryRemoved(boolean z, a.C0113a aVar, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, aVar, bitmap, bitmap2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.b.f
        public final /* synthetic */ int sizeOf$2838e5a0(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            return bitmap2.getHeight() * bitmap2.getRowBytes();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$c.class */
    private final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f3973b;
        private final ParcelFileDescriptor c;

        public c(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f3973b = uri;
            this.c = parcelFileDescriptor;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00e8 -> B:11:0x0085). Please submit an issue!!! */
        @Override // java.lang.Runnable
        public final void run() {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                String valueOf = String.valueOf(Thread.currentThread());
                String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
                Log.e("Asserts", new StringBuilder(String.valueOf(valueOf).length() + 56 + String.valueOf(valueOf2).length()).append("checkNotMainThread: current thread ").append(valueOf).append(" IS the main thread ").append(valueOf2).append("!").toString());
                throw new IllegalStateException("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            }
            boolean z = false;
            z = false;
            Bitmap bitmap = null;
            bitmap = null;
            if (this.c != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.c.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf3 = String.valueOf(this.f3973b);
                    Log.e("ImageManager", new StringBuilder(String.valueOf(valueOf3).length() + 34).append("OOM while loading bitmap for uri: ").append(valueOf3).toString(), e);
                    z = true;
                }
                try {
                    this.c.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.d.post(new d(this.f3973b, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf4 = String.valueOf(this.f3973b);
                Log.w("ImageManager", new StringBuilder(String.valueOf(valueOf4).length() + 32).append("Latch interrupted while posting ").append(valueOf4).toString());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$d.class */
    private final class d implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f3975b;
        private final Bitmap c;
        private final CountDownLatch d;
        private boolean e;

        public d(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f3975b = uri;
            this.c = bitmap;
            this.e = z;
            this.d = countDownLatch;
        }

        private void a(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                com.google.android.gms.common.images.a aVar = (com.google.android.gms.common.images.a) arrayList.get(i);
                if (z) {
                    aVar.a(ImageManager.this.c, this.c);
                } else {
                    ImageManager.this.j.put(this.f3975b, Long.valueOf(SystemClock.elapsedRealtime()));
                    Context context = ImageManager.this.c;
                    bh unused = ImageManager.this.g;
                    aVar.a(context);
                }
                if (!(aVar instanceof a.b)) {
                    ImageManager.this.h.remove(aVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                String valueOf = String.valueOf(Thread.currentThread());
                String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
                Log.e("Asserts", new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length()).append("checkMainThread: current thread ").append(valueOf).append(" IS NOT the main thread ").append(valueOf2).append("!").toString());
                throw new IllegalStateException("OnBitmapLoadedRunnable must be executed in the main thread");
            }
            boolean z = this.c != null;
            if (ImageManager.this.f != null) {
                if (this.e) {
                    ImageManager.this.f.evictAll();
                    System.gc();
                    this.e = false;
                    ImageManager.this.d.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.f.put(new a.C0113a(this.f3975b), this.c);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.i.remove(this.f3975b);
            if (imageReceiver != null) {
                a(imageReceiver, z);
            }
            this.d.countDown();
            synchronized (ImageManager.f3968a) {
                ImageManager.f3969b.remove(this.f3975b);
            }
        }
    }
}
