package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.internal.base.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/b.class */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ImageManager f22821a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f22822b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap f22823c;

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f22824d;

    public b(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.f22821a = imageManager;
        this.f22822b = uri;
        this.f22823c = bitmap;
        this.f22824d = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        Map map2;
        Map map3;
        e unused;
        c.a("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap bitmap = this.f22823c;
        map = this.f22821a.h;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.remove(this.f22822b);
        if (imageReceiver != null) {
            arrayList = imageReceiver.zac;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                e eVar = (e) arrayList.get(i);
                if (this.f22823c == null || bitmap == null) {
                    map3 = this.f22821a.i;
                    map3.put(this.f22822b, Long.valueOf(SystemClock.elapsedRealtime()));
                    Context context = this.f22821a.f22816c;
                    unused = this.f22821a.f;
                    eVar.a(context);
                } else {
                    eVar.a(this.f22821a.f22816c, this.f22823c);
                }
                if (!(eVar instanceof d)) {
                    map2 = this.f22821a.g;
                    map2.remove(eVar);
                }
            }
        }
        this.f22824d.countDown();
        obj = ImageManager.f22814a;
        synchronized (obj) {
            hashSet = ImageManager.f22815b;
            hashSet.remove(this.f22822b);
        }
    }
}
