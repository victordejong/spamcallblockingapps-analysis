package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zac.class */
final class zac implements Runnable {
    final /* synthetic */ ImageManager zaa;
    private final Uri zab;
    private final Bitmap zac;
    private final CountDownLatch zad;

    public zac(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.zaa = imageManager;
        this.zab = uri;
        this.zac = bitmap;
        this.zad = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Object obj;
        HashSet hashSet;
        ArrayList arrayList;
        Map map2;
        Map map3;
        zak zakVar;
        Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap bitmap = this.zac;
        map = this.zaa.zai;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.remove(this.zab);
        if (imageReceiver != null) {
            arrayList = imageReceiver.zac;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zag zagVar = (zag) arrayList.get(i);
                if (this.zac == null || bitmap == null) {
                    map3 = this.zaa.zaj;
                    map3.put(this.zab, Long.valueOf(SystemClock.elapsedRealtime()));
                    Context context = this.zaa.zad;
                    zakVar = this.zaa.zag;
                    zagVar.zac(context, zakVar, false);
                } else {
                    zagVar.zab(this.zaa.zad, this.zac, false);
                }
                if (!(zagVar instanceof zaf)) {
                    map2 = this.zaa.zah;
                    map2.remove(zagVar);
                }
            }
        }
        this.zad.countDown();
        obj = ImageManager.zaa;
        synchronized (obj) {
            hashSet = ImageManager.zab;
            hashSet.remove(this.zab);
        }
    }
}
