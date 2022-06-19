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
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.internal.base.zak;
import com.google.android.gms.internal.base.zal;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.internal.base.zaq;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {
    private static final Object zaa = new Object();
    private static HashSet<Uri> zab = new HashSet<>();
    private static ImageManager zac;
    private final Context zad;
    private final Handler zae = new zap(Looper.getMainLooper());
    private final ExecutorService zaf = zal.zaa().zaa(4, zaq.zab);
    private final zaa zag = null;
    private final zak zah = new zak();
    private final Map<zaa, ImageReceiver> zai = new HashMap();
    private final Map<Uri, ImageReceiver> zaj = new HashMap();
    private final Map<Uri, Long> zak = new HashMap();

    @KeepName
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri zaa;
        private final ArrayList<zaa> zab = new ArrayList<>();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ImageReceiver(Uri uri) {
            super(new zap(Looper.getMainLooper()));
            ImageManager.this = r6;
            this.zaa = uri;
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.zaf.execute(new zab(this.zaa, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zaa() {
            Intent intent = new Intent(Constants.ACTION_LOAD_IMAGE);
            intent.setPackage("com.google.android.gms");
            intent.putExtra(Constants.EXTRA_URI, this.zaa);
            intent.putExtra(Constants.EXTRA_RESULT_RECEIVER, this);
            intent.putExtra(Constants.EXTRA_PRIORITY, 3);
            ImageManager.this.zad.sendBroadcast(intent);
        }

        public final void zaa(zaa zaaVar) {
            Asserts.checkMainThread("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zab.add(zaaVar);
        }

        public final void zab(zaa zaaVar) {
            Asserts.checkMainThread("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zab.remove(zaaVar);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$OnImageLoadedListener.class */
    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zab.class */
    public final class zab implements Runnable {
        private final Uri zaa;
        private final ParcelFileDescriptor zab;

        public zab(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            ImageManager.this = r4;
            this.zaa = uri;
            this.zab = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.zab;
            boolean z = false;
            Bitmap bitmap = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.zaa);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                }
                try {
                    this.zab.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            } else {
                bitmap = null;
                z = false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.zae.post(new zac(this.zaa, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.zaa);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zac.class */
    public final class zac implements Runnable {
        private final Uri zaa;
        private final Bitmap zab;
        private final CountDownLatch zac;
        private boolean zad;

        public zac(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            ImageManager.this = r4;
            this.zaa = uri;
            this.zab = bitmap;
            this.zad = z;
            this.zac = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.zab != null;
            if (ImageManager.this.zag != null) {
                if (this.zad) {
                    ImageManager.this.zag.evictAll();
                    System.gc();
                    this.zad = false;
                    ImageManager.this.zae.post(this);
                    return;
                } else if (this.zab != null) {
                    ImageManager.this.zag.put(new com.google.android.gms.common.images.zac(this.zaa), this.zab);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zaj.remove(this.zaa);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.zab;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    zaa zaaVar = (zaa) arrayList.get(i);
                    if (this.zab == null || !z) {
                        ImageManager.this.zak.put(this.zaa, Long.valueOf(SystemClock.elapsedRealtime()));
                        zaaVar.zaa(ImageManager.this.zad, ImageManager.this.zah, false);
                    } else {
                        zaaVar.zaa(ImageManager.this.zad, this.zab, false);
                    }
                    if (!(zaaVar instanceof com.google.android.gms.common.images.zad)) {
                        ImageManager.this.zai.remove(zaaVar);
                    }
                }
            }
            this.zac.countDown();
            synchronized (ImageManager.zaa) {
                ImageManager.zab.remove(this.zaa);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zad.class */
    public final class zad implements Runnable {
        private final zaa zaa;

        public zad(zaa zaaVar) {
            ImageManager.this = r4;
            this.zaa = zaaVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zai.get(this.zaa);
            if (imageReceiver != null) {
                ImageManager.this.zai.remove(this.zaa);
                imageReceiver.zab(this.zaa);
            }
            zaa zaaVar = this.zaa;
            com.google.android.gms.common.images.zac zacVar = zaaVar.zaa;
            if (zacVar.zaa == null) {
                zaaVar.zaa(ImageManager.this.zad, ImageManager.this.zah, true);
                return;
            }
            Bitmap zaa = ImageManager.this.zaa(zacVar);
            if (zaa != null) {
                this.zaa.zaa(ImageManager.this.zad, zaa, true);
                return;
            }
            Long l = (Long) ImageManager.this.zak.get(zacVar.zaa);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.zaa.zaa(ImageManager.this.zad, ImageManager.this.zah, true);
                    return;
                }
                ImageManager.this.zak.remove(zacVar.zaa);
            }
            this.zaa.zaa(ImageManager.this.zad, ImageManager.this.zah);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.zaj.get(zacVar.zaa);
            ImageReceiver imageReceiver3 = imageReceiver2;
            if (imageReceiver2 == null) {
                imageReceiver3 = new ImageReceiver(zacVar.zaa);
                ImageManager.this.zaj.put(zacVar.zaa, imageReceiver3);
            }
            imageReceiver3.zaa(this.zaa);
            if (!(this.zaa instanceof com.google.android.gms.common.images.zad)) {
                ImageManager.this.zai.put(this.zaa, imageReceiver3);
            }
            synchronized (ImageManager.zaa) {
                if (!ImageManager.zab.contains(zacVar.zaa)) {
                    ImageManager.zab.add(zacVar.zaa);
                    imageReceiver3.zaa();
                }
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.zad = context.getApplicationContext();
    }

    public static ImageManager create(Context context) {
        if (zac == null) {
            zac = new ImageManager(context, false);
        }
        return zac;
    }

    public final Bitmap zaa(com.google.android.gms.common.images.zac zacVar) {
        zaa zaaVar = this.zag;
        if (zaaVar == null) {
            return null;
        }
        return (Bitmap) zaaVar.get(zacVar);
    }

    private final void zaa(zaa zaaVar) {
        Asserts.checkMainThread("ImageManager.loadImage() must be called in the main thread");
        new zad(zaaVar).run();
    }

    public final void loadImage(ImageView imageView, int i) {
        zaa((zaa) new com.google.android.gms.common.images.zab(imageView, i));
    }

    public final void loadImage(ImageView imageView, Uri uri) {
        zaa((zaa) new com.google.android.gms.common.images.zab(imageView, uri));
    }

    public final void loadImage(ImageView imageView, Uri uri, int i) {
        com.google.android.gms.common.images.zab zabVar = new com.google.android.gms.common.images.zab(imageView, uri);
        zabVar.zab = i;
        zaa((zaa) zabVar);
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zaa((zaa) new com.google.android.gms.common.images.zad(onImageLoadedListener, uri));
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        com.google.android.gms.common.images.zad zadVar = new com.google.android.gms.common.images.zad(onImageLoadedListener, uri);
        zadVar.zab = i;
        zaa((zaa) zadVar);
    }
}
