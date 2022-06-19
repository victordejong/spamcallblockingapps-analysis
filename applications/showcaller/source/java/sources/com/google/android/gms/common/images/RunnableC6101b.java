package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.C6110c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
/* renamed from: com.google.android.gms.common.images.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/b.class */
final class RunnableC6101b implements Runnable {

    /* renamed from: d */
    private final Uri f19440d;

    /* renamed from: e */
    private final Bitmap f19441e;

    /* renamed from: f */
    private final CountDownLatch f19442f;

    /* renamed from: g */
    final /* synthetic */ ImageManager f19443g;

    public RunnableC6101b(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.f19440d = uri;
        this.f19441e = bitmap;
        this.f19442f = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        C6110c.m17139a("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap bitmap = this.f19441e;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) ImageManager.m17173e(this.f19443g).remove(this.f19440d);
        if (imageReceiver != null) {
            arrayList = imageReceiver.f19431e;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC6102c abstractC6102c = (AbstractC6102c) arrayList.get(i);
                if (this.f19441e == null || bitmap == null) {
                    ImageManager.m17174d(this.f19443g).put(this.f19440d, Long.valueOf(SystemClock.elapsedRealtime()));
                    abstractC6102c.m17162c(ImageManager.m17176b(this.f19443g), ImageManager.m17175c(this.f19443g), false);
                } else {
                    abstractC6102c.m17163b(ImageManager.m17176b(this.f19443g), this.f19441e, false);
                }
                ImageManager.m17177a(this.f19443g).remove(abstractC6102c);
            }
        }
        this.f19442f.countDown();
        obj = ImageManager.f19428a;
        synchronized (obj) {
            hashSet = ImageManager.f19429b;
            hashSet.remove(this.f19440d);
        }
    }
}
