package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.C12024c;
import com.google.android.gms.internal.base.C13155e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
/* renamed from: com.google.android.gms.common.images.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/b.class */
final class RunnableC11964b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ImageManager f39466a;

    /* renamed from: b */
    private final Uri f39467b;

    /* renamed from: c */
    private final Bitmap f39468c;

    /* renamed from: d */
    private final CountDownLatch f39469d;

    public RunnableC11964b(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.f39466a = imageManager;
        this.f39467b = uri;
        this.f39468c = bitmap;
        this.f39469d = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        Map map2;
        Map map3;
        C13155e unused;
        C12024c.m19189a("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap bitmap = this.f39468c;
        map = this.f39466a.f39461h;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.remove(this.f39467b);
        if (imageReceiver != null) {
            arrayList = imageReceiver.zac;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC11967e abstractC11967e = (AbstractC11967e) arrayList.get(i);
                if (this.f39468c == null || bitmap == null) {
                    map3 = this.f39466a.f39462i;
                    map3.put(this.f39467b, Long.valueOf(SystemClock.elapsedRealtime()));
                    Context context = this.f39466a.f39456c;
                    unused = this.f39466a.f39459f;
                    abstractC11967e.m19231a(context);
                } else {
                    abstractC11967e.m19230a(this.f39466a.f39456c, this.f39468c);
                }
                if (!(abstractC11967e instanceof C11966d)) {
                    map2 = this.f39466a.f39460g;
                    map2.remove(abstractC11967e);
                }
            }
        }
        this.f39469d.countDown();
        obj = ImageManager.f39454a;
        synchronized (obj) {
            hashSet = ImageManager.f39455b;
            hashSet.remove(this.f39467b);
        }
    }
}
