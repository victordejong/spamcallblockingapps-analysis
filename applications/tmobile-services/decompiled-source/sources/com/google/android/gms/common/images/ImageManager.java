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
import androidx.collection.LruCache;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zaj;
import com.google.android.gms.internal.base.zar;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: i */
    private static final Object f7403i = new Object();

    /* renamed from: j */
    private static HashSet<Uri> f7404j = new HashSet<>();

    /* renamed from: a */
    private final Context f7405a;

    /* renamed from: b */
    private final Handler f7406b;

    /* renamed from: c */
    private final ExecutorService f7407c;

    /* renamed from: d */
    private final zaa f7408d;

    /* renamed from: e */
    private final zaj f7409e;

    /* renamed from: f */
    private final Map<com.google.android.gms.common.images.zab, ImageReceiver> f7410f;

    /* renamed from: g */
    private final Map<Uri, ImageReceiver> f7411g;

    /* renamed from: h */
    private final Map<Uri, Long> f7412h;

    @KeepName
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    private final class ImageReceiver extends ResultReceiver {

        /* renamed from: f */
        private final Uri f7413f;

        /* renamed from: g */
        private final ArrayList<com.google.android.gms.common.images.zab> f7414g = new ArrayList<>();

        ImageReceiver(Uri uri) {
            super(new zar(Looper.getMainLooper()));
            this.f7413f = uri;
        }

        /* renamed from: b */
        public final void m14610b(com.google.android.gms.common.images.zab zabVar) {
            Asserts.m14596a("ImageReceiver.addImageRequest() must be called in the main thread");
            this.f7414g.add(zabVar);
        }

        /* renamed from: c */
        public final void m14609c(com.google.android.gms.common.images.zab zabVar) {
            Asserts.m14596a("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.f7414g.remove(zabVar);
        }

        /* renamed from: d */
        public final void m14608d() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.f7413f);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.f7405a.sendBroadcast(intent);
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.f7407c.execute(new zac(this.f7413f, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$OnImageLoadedListener.class */
    public interface OnImageLoadedListener {
        /* renamed from: a */
        void m14607a(Uri uri, Drawable drawable, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zaa.class */
    public static final class zaa extends LruCache<com.google.android.gms.common.images.zaa, Bitmap> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.collection.LruCache
        public final /* synthetic */ void entryRemoved(boolean z, com.google.android.gms.common.images.zaa zaaVar, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, zaaVar, bitmap, bitmap2);
        }

        @Override // androidx.collection.LruCache
        protected final /* synthetic */ int sizeOf(com.google.android.gms.common.images.zaa zaaVar, Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            return bitmap2.getHeight() * bitmap2.getRowBytes();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zab.class */
    private final class zab implements Runnable {

        /* renamed from: f */
        private final com.google.android.gms.common.images.zab f7416f;

        /* renamed from: g */
        private final /* synthetic */ ImageManager f7417g;

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.m14596a("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) this.f7417g.f7410f.get(this.f7416f);
            if (imageReceiver != null) {
                this.f7417g.f7410f.remove(this.f7416f);
                imageReceiver.m14609c(this.f7416f);
            }
            com.google.android.gms.common.images.zab zabVar = this.f7416f;
            com.google.android.gms.common.images.zaa zaaVar = zabVar.f7433a;
            if (zaaVar.f7432a == null) {
                zabVar.m14601c(this.f7417g.f7405a, this.f7417g.f7409e, true);
                return;
            }
            Bitmap b = this.f7417g.m14622b(zaaVar);
            if (b != null) {
                this.f7416f.m14603a(this.f7417g.f7405a, b, true);
                return;
            }
            Long l = (Long) this.f7417g.f7412h.get(zaaVar.f7432a);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.f7416f.m14601c(this.f7417g.f7405a, this.f7417g.f7409e, true);
                    return;
                }
                this.f7417g.f7412h.remove(zaaVar.f7432a);
            }
            this.f7416f.m14602b(this.f7417g.f7405a, this.f7417g.f7409e);
            ImageReceiver imageReceiver2 = (ImageReceiver) this.f7417g.f7411g.get(zaaVar.f7432a);
            ImageReceiver imageReceiver3 = imageReceiver2;
            if (imageReceiver2 == null) {
                imageReceiver3 = new ImageReceiver(zaaVar.f7432a);
                this.f7417g.f7411g.put(zaaVar.f7432a, imageReceiver3);
            }
            imageReceiver3.m14610b(this.f7416f);
            if (!(this.f7416f instanceof com.google.android.gms.common.images.zac)) {
                this.f7417g.f7410f.put(this.f7416f, imageReceiver3);
            }
            synchronized (ImageManager.f7403i) {
                if (!ImageManager.f7404j.contains(zaaVar.f7432a)) {
                    ImageManager.f7404j.add(zaaVar.f7432a);
                    imageReceiver3.m14608d();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zac.class */
    private final class zac implements Runnable {

        /* renamed from: f */
        private final Uri f7418f;

        /* renamed from: g */
        private final ParcelFileDescriptor f7419g;

        public zac(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f7418f = uri;
            this.f7419g = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.m14595b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.f7419g;
            boolean z = false;
            Bitmap bitmap = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.f7418f);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                }
                try {
                    this.f7419g.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            } else {
                bitmap = null;
                z = false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.f7406b.post(new zad(this.f7418f, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.f7418f);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$zad.class */
    private final class zad implements Runnable {

        /* renamed from: f */
        private final Uri f7421f;

        /* renamed from: g */
        private final Bitmap f7422g;

        /* renamed from: h */
        private final CountDownLatch f7423h;

        /* renamed from: i */
        private boolean f7424i;

        public zad(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f7421f = uri;
            this.f7422g = bitmap;
            this.f7424i = z;
            this.f7423h = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.m14596a("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.f7422g != null;
            if (ImageManager.this.f7408d != null) {
                if (this.f7424i) {
                    ImageManager.this.f7408d.evictAll();
                    System.gc();
                    this.f7424i = false;
                    ImageManager.this.f7406b.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.f7408d.put(new com.google.android.gms.common.images.zaa(this.f7421f), this.f7422g);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f7411g.remove(this.f7421f);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.f7414g;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    com.google.android.gms.common.images.zab zabVar = (com.google.android.gms.common.images.zab) arrayList.get(i);
                    if (z) {
                        zabVar.m14603a(ImageManager.this.f7405a, this.f7422g, false);
                    } else {
                        ImageManager.this.f7412h.put(this.f7421f, Long.valueOf(SystemClock.elapsedRealtime()));
                        zabVar.m14601c(ImageManager.this.f7405a, ImageManager.this.f7409e, false);
                    }
                    if (!(zabVar instanceof com.google.android.gms.common.images.zac)) {
                        ImageManager.this.f7410f.remove(zabVar);
                    }
                }
            }
            this.f7423h.countDown();
            synchronized (ImageManager.f7403i) {
                ImageManager.f7404j.remove(this.f7421f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final Bitmap m14622b(com.google.android.gms.common.images.zaa zaaVar) {
        zaa zaaVar2 = this.f7408d;
        if (zaaVar2 == null) {
            return null;
        }
        return zaaVar2.get(zaaVar);
    }
}
