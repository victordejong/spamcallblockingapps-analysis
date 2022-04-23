package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import androidx.collection.LruCache;
import com.google.android.gms.common.annotation.KeepName;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import p081h.p203i.p204a.p224e.p235d.p239m.AbstractC6960a;
import p081h.p203i.p204a.p224e.p235d.p239m.C6961b;
import p081h.p203i.p204a.p224e.p235d.p240n.C6967c;
import p081h.p203i.p204a.p224e.p259j.p265f.C7532d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: i */
    public static final Object f6552i = new Object();

    /* renamed from: j */
    public static HashSet<Uri> f6553j = new HashSet<>();

    /* renamed from: a */
    public final Context f6554a;

    /* renamed from: b */
    public final Handler f6555b;

    /* renamed from: c */
    public final ExecutorService f6556c;

    /* renamed from: d */
    public final C3563a f6557d;

    /* renamed from: e */
    public final C7532d f6558e;

    /* renamed from: f */
    public final Map<AbstractC6960a, ImageReceiver> f6559f;

    /* renamed from: g */
    public final Map<Uri, ImageReceiver> f6560g;

    /* renamed from: h */
    public final Map<Uri, Long> f6561h;

    @KeepName
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {

        /* renamed from: a */
        public final Uri f6562a;

        /* renamed from: b */
        public final ArrayList<AbstractC6960a> f6563b;

        /* renamed from: c */
        public final /* synthetic */ ImageManager f6564c;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            this.f6564c.f6556c.execute(new RunnableC3564b(this.f6562a, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/ImageManager$a.class */
    public static final class C3563a extends LruCache<C6961b, Bitmap> {
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/ImageManager$b.class */
    public final class RunnableC3564b implements Runnable {

        /* renamed from: a */
        public final Uri f6565a;

        /* renamed from: b */
        public final ParcelFileDescriptor f6566b;

        public RunnableC3564b(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f6565a = uri;
            this.f6566b = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6967c.m21460b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.f6566b;
            boolean z = false;
            Bitmap bitmap = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.f6565a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                }
                try {
                    this.f6566b.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            } else {
                bitmap = null;
                z = false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.f6555b.post(new RunnableC3565c(this.f6565a, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.f6565a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                sb2.toString();
            }
        }
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/images/ImageManager$c.class */
    public final class RunnableC3565c implements Runnable {

        /* renamed from: a */
        public final Uri f6568a;

        /* renamed from: b */
        public final Bitmap f6569b;

        /* renamed from: c */
        public final CountDownLatch f6570c;

        /* renamed from: d */
        public boolean f6571d;

        public RunnableC3565c(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f6568a = uri;
            this.f6569b = bitmap;
            this.f6571d = z;
            this.f6570c = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6967c.m21461a("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.f6569b != null;
            if (ImageManager.this.f6557d != null) {
                if (this.f6571d) {
                    ImageManager.this.f6557d.evictAll();
                    System.gc();
                    this.f6571d = false;
                    ImageManager.this.f6555b.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.f6557d.put(new C6961b(this.f6568a), this.f6569b);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f6560g.remove(this.f6568a);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.f6563b;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    AbstractC6960a aVar = (AbstractC6960a) arrayList.get(i);
                    if (z) {
                        aVar.m21467a(ImageManager.this.f6554a, this.f6569b, false);
                    } else {
                        ImageManager.this.f6561h.put(this.f6568a, Long.valueOf(SystemClock.elapsedRealtime()));
                        aVar.m21466a(ImageManager.this.f6554a, ImageManager.this.f6558e, false);
                    }
                    ImageManager.this.f6559f.remove(aVar);
                }
            }
            this.f6570c.countDown();
            synchronized (ImageManager.f6552i) {
                ImageManager.f6553j.remove(this.f6568a);
            }
        }
    }
}
