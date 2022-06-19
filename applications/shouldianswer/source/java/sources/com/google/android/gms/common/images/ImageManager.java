package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import androidx.p014c.C0380e;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.internal.base.zak;
import com.google.android.gms.internal.base.zap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {
    private static final Object zamh = new Object();
    private static HashSet<Uri> zami = new HashSet<>();
    private static ImageManager zamj;
    private final Context mContext;
    private final Handler mHandler = new zap(Looper.getMainLooper());
    private final ExecutorService zamk = Executors.newFixedThreadPool(4);
    private final zaa zaml = null;
    private final zak zamm = new zak();
    private final Map<com.google.android.gms.common.images.zaa, ImageReceiver> zamn = new HashMap();
    private final Map<Uri, ImageReceiver> zamo = new HashMap();
    private final Map<Uri, Long> zamp = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<com.google.android.gms.common.images.zaa> zamq = new ArrayList<>();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ImageReceiver(Uri uri) {
            super(new zap(Looper.getMainLooper()));
            ImageManager.this = r6;
            this.mUri = uri;
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.zamk.execute(new zab(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zab(com.google.android.gms.common.images.zaa zaaVar) {
            Asserts.checkMainThread("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zamq.add(zaaVar);
        }

        public final void zac(com.google.android.gms.common.images.zaa zaaVar) {
            Asserts.checkMainThread("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zamq.remove(zaaVar);
        }

        public final void zace() {
            Intent intent = new Intent(Constants.ACTION_LOAD_IMAGE);
            intent.putExtra(Constants.EXTRA_URI, this.mUri);
            intent.putExtra(Constants.EXTRA_RESULT_RECEIVER, this);
            intent.putExtra(Constants.EXTRA_PRIORITY, 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$OnImageLoadedListener.class */
    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zaa.class */
    public static final class zaa extends C0380e<com.google.android.gms.common.images.zab, Bitmap> {
        @Override // androidx.p014c.C0380e
        public final /* synthetic */ void entryRemoved(boolean z, com.google.android.gms.common.images.zab zabVar, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, zabVar, bitmap, bitmap2);
        }

        @Override // androidx.p014c.C0380e
        protected final /* synthetic */ int sizeOf(com.google.android.gms.common.images.zab zabVar, Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            return bitmap2.getHeight() * bitmap2.getRowBytes();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zab.class */
    private final class zab implements Runnable {
        private final Uri mUri;
        private final ParcelFileDescriptor zams;

        public zab(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            ImageManager.this = r4;
            this.mUri = uri;
            this.zams = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.zams;
            boolean z = false;
            Bitmap bitmap = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                    z = false;
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.mUri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                    bitmap = null;
                }
                try {
                    this.zams.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(new zad(this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.mUri);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zac.class */
    public final class zac implements Runnable {
        private final com.google.android.gms.common.images.zaa zamt;

        public zac(com.google.android.gms.common.images.zaa zaaVar) {
            ImageManager.this = r4;
            this.zamt = zaaVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zamn.get(this.zamt);
            if (imageReceiver != null) {
                ImageManager.this.zamn.remove(this.zamt);
                imageReceiver.zac(this.zamt);
            }
            com.google.android.gms.common.images.zab zabVar = this.zamt.zamv;
            if (zabVar.uri == null) {
                this.zamt.zaa(ImageManager.this.mContext, ImageManager.this.zamm, true);
                return;
            }
            Bitmap zaa = ImageManager.this.zaa(zabVar);
            if (zaa != null) {
                this.zamt.zaa(ImageManager.this.mContext, zaa, true);
                return;
            }
            Long l = (Long) ImageManager.this.zamp.get(zabVar.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.zamt.zaa(ImageManager.this.mContext, ImageManager.this.zamm, true);
                    return;
                }
                ImageManager.this.zamp.remove(zabVar.uri);
            }
            this.zamt.zaa(ImageManager.this.mContext, ImageManager.this.zamm);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.zamo.get(zabVar.uri);
            ImageReceiver imageReceiver3 = imageReceiver2;
            if (imageReceiver2 == null) {
                imageReceiver3 = new ImageReceiver(zabVar.uri);
                ImageManager.this.zamo.put(zabVar.uri, imageReceiver3);
            }
            imageReceiver3.zab(this.zamt);
            if (!(this.zamt instanceof com.google.android.gms.common.images.zad)) {
                ImageManager.this.zamn.put(this.zamt, imageReceiver3);
            }
            synchronized (ImageManager.zamh) {
                if (!ImageManager.zami.contains(zabVar.uri)) {
                    ImageManager.zami.add(zabVar.uri);
                    imageReceiver3.zace();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zad.class */
    private final class zad implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch zadr;
        private boolean zamu;

        public zad(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            ImageManager.this = r4;
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.zamu = z;
            this.zadr = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.zaml != null) {
                if (this.zamu) {
                    ImageManager.this.zaml.evictAll();
                    System.gc();
                    this.zamu = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.zaml.put(new com.google.android.gms.common.images.zab(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zamo.remove(this.mUri);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.zamq;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    com.google.android.gms.common.images.zaa zaaVar = (com.google.android.gms.common.images.zaa) arrayList.get(i);
                    if (z) {
                        zaaVar.zaa(ImageManager.this.mContext, this.mBitmap, false);
                    } else {
                        ImageManager.this.zamp.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                        zaaVar.zaa(ImageManager.this.mContext, ImageManager.this.zamm, false);
                    }
                    if (!(zaaVar instanceof com.google.android.gms.common.images.zad)) {
                        ImageManager.this.zamn.remove(zaaVar);
                    }
                }
            }
            this.zadr.countDown();
            synchronized (ImageManager.zamh) {
                ImageManager.zami.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
    }

    public static ImageManager create(Context context) {
        if (zamj == null) {
            zamj = new ImageManager(context, false);
        }
        return zamj;
    }

    public final Bitmap zaa(com.google.android.gms.common.images.zab zabVar) {
        zaa zaaVar = this.zaml;
        if (zaaVar == null) {
            return null;
        }
        return zaaVar.get(zabVar);
    }

    private final void zaa(com.google.android.gms.common.images.zaa zaaVar) {
        Asserts.checkMainThread("ImageManager.loadImage() must be called in the main thread");
        new zac(zaaVar).run();
    }

    public final void loadImage(ImageView imageView, int i) {
        zaa(new com.google.android.gms.common.images.zac(imageView, i));
    }

    public final void loadImage(ImageView imageView, Uri uri) {
        zaa(new com.google.android.gms.common.images.zac(imageView, uri));
    }

    public final void loadImage(ImageView imageView, Uri uri, int i) {
        com.google.android.gms.common.images.zac zacVar = new com.google.android.gms.common.images.zac(imageView, uri);
        zacVar.zamx = i;
        zaa(zacVar);
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zaa(new com.google.android.gms.common.images.zad(onImageLoadedListener, uri));
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        com.google.android.gms.common.images.zad zadVar = new com.google.android.gms.common.images.zad(onImageLoadedListener, uri);
        zadVar.zamx = i;
        zaa(zadVar);
    }
}
