package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import p012b.p035f.C0786e;
import p131c.p161d.p170b.p224d.p238d.p242c.C3292a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: i */
    public static final Object f23335i = new Object();

    /* renamed from: j */
    public static HashSet<Uri> f23336j = new HashSet<>();

    /* renamed from: a */
    public final Context f23337a;

    /* renamed from: b */
    public final Handler f23338b;

    /* renamed from: c */
    public final ExecutorService f23339c;

    /* renamed from: d */
    public final C7234a f23340d;

    /* renamed from: e */
    public final zak f23341e;

    /* renamed from: f */
    public final Map<zaa, ImageReceiver> f23342f;

    /* renamed from: g */
    public final Map<Uri, ImageReceiver> f23343g;

    /* renamed from: h */
    public final Map<Uri, Long> f23344h;

    @KeepName
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {

        /* renamed from: a */
        public final Uri f23345a;

        /* renamed from: b */
        public final ArrayList<zaa> f23346b;

        /* renamed from: c */
        public final /* synthetic */ ImageManager f23347c;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            this.f23347c.f23339c.execute(new RunnableC7235b(this.f23345a, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$OnImageLoadedListener.class */
    public interface OnImageLoadedListener {
        /* renamed from: a */
        void m17407a(Uri uri, Drawable drawable, boolean z);
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$a.class */
    public static final class C7234a extends C0786e<C3292a, Bitmap> {
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$b.class */
    public final class RunnableC7235b implements Runnable {

        /* renamed from: a */
        public final Uri f23348a;

        /* renamed from: b */
        public final ParcelFileDescriptor f23349b;

        public RunnableC7235b(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f23348a = uri;
            this.f23349b = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.m17395b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.f23349b;
            boolean z = false;
            Bitmap bitmap = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.f23348a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                }
                try {
                    this.f23349b.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            } else {
                bitmap = null;
                z = false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.f23338b.post(new RunnableC7236c(this.f23348a, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.f23348a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        }
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$c.class */
    public final class RunnableC7236c implements Runnable {

        /* renamed from: a */
        public final Uri f23351a;

        /* renamed from: b */
        public final Bitmap f23352b;

        /* renamed from: c */
        public final CountDownLatch f23353c;

        /* renamed from: d */
        public boolean f23354d;

        public RunnableC7236c(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f23351a = uri;
            this.f23352b = bitmap;
            this.f23354d = z;
            this.f23353c = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.m17396a("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.f23352b != null;
            if (ImageManager.this.f23340d != null) {
                if (this.f23354d) {
                    ImageManager.this.f23340d.evictAll();
                    System.gc();
                    this.f23354d = false;
                    ImageManager.this.f23338b.post(this);
                    return;
                } else if (this.f23352b != null) {
                    ImageManager.this.f23340d.put(new C3292a(this.f23351a), this.f23352b);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f23343g.remove(this.f23351a);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.f23346b;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    zaa zaaVar = (zaa) arrayList.get(i);
                    if (this.f23352b == null || !z) {
                        ImageManager.this.f23344h.put(this.f23351a, Long.valueOf(SystemClock.elapsedRealtime()));
                        zaaVar.m17402a(ImageManager.this.f23337a, ImageManager.this.f23341e, false);
                    } else {
                        zaaVar.m17403a(ImageManager.this.f23337a, this.f23352b, false);
                    }
                    if (!(zaaVar instanceof zad)) {
                        ImageManager.this.f23342f.remove(zaaVar);
                    }
                }
            }
            this.f23353c.countDown();
            synchronized (ImageManager.f23335i) {
                try {
                    ImageManager.f23336j.remove(this.f23351a);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
