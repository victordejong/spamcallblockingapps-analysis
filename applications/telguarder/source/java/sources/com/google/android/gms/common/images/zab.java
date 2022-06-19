package com.google.android.gms.common.images;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zab.class */
public final class zab implements Runnable {
    final /* synthetic */ ImageManager zaa;
    private final zag zab;

    public zab(ImageManager imageManager, zag zagVar) {
        this.zaa = imageManager;
        this.zab = zagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        zak zakVar;
        Map map2;
        Map map3;
        Object obj;
        HashSet hashSet;
        HashSet hashSet2;
        Map map4;
        Map map5;
        Map map6;
        zak zakVar2;
        Map map7;
        Asserts.checkMainThread("LoadImageRunnable must be executed on the main thread");
        map = this.zaa.zah;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) map.get(this.zab);
        if (imageReceiver != null) {
            map7 = this.zaa.zah;
            map7.remove(this.zab);
            imageReceiver.zab(this.zab);
        }
        zag zagVar = this.zab;
        zad zadVar = zagVar.zaa;
        if (zadVar.zaa == null) {
            Context context = this.zaa.zad;
            zakVar = this.zaa.zag;
            zagVar.zac(context, zakVar, true);
            return;
        }
        map2 = this.zaa.zaj;
        Long l = (Long) map2.get(zadVar.zaa);
        if (l != null) {
            if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                zag zagVar2 = this.zab;
                Context context2 = this.zaa.zad;
                zakVar2 = this.zaa.zag;
                zagVar2.zac(context2, zakVar2, true);
                return;
            }
            map6 = this.zaa.zaj;
            map6.remove(zadVar.zaa);
        }
        this.zab.zaa(null, false, true, false);
        map3 = this.zaa.zai;
        ImageManager.ImageReceiver imageReceiver2 = (ImageManager.ImageReceiver) map3.get(zadVar.zaa);
        ImageManager.ImageReceiver imageReceiver3 = imageReceiver2;
        if (imageReceiver2 == null) {
            imageReceiver3 = new ImageManager.ImageReceiver(zadVar.zaa);
            map5 = this.zaa.zai;
            map5.put(zadVar.zaa, imageReceiver3);
        }
        imageReceiver3.zaa(this.zab);
        if (!(this.zab instanceof zaf)) {
            map4 = this.zaa.zah;
            map4.put(this.zab, imageReceiver3);
        }
        obj = ImageManager.zaa;
        synchronized (obj) {
            hashSet = ImageManager.zab;
            if (!hashSet.contains(zadVar.zaa)) {
                hashSet2 = ImageManager.zab;
                hashSet2.add(zadVar.zaa);
                imageReceiver3.zac();
            }
        }
    }
}
