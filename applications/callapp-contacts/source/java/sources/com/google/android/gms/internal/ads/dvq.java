package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvq.class */
public final class dvq extends Handler {

    /* renamed from: a */
    private final /* synthetic */ dvo f47725a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dvq(dvo dvoVar, Looper looper) {
        super(looper);
        this.f47725a = dvoVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        dvo dvoVar = this.f47725a;
        boolean z = true;
        switch (message.what) {
            case 0:
                dvoVar.f47670f--;
                return;
            case 1:
                dvoVar.f47668d = message.arg1;
                Iterator<dvk> it2 = dvoVar.f47666b.iterator();
                while (it2.hasNext()) {
                    it2.next().mo15654b(dvoVar.f47668d);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                dvoVar.f47671g = z;
                Iterator<dvk> it3 = dvoVar.f47666b.iterator();
                while (it3.hasNext()) {
                    it3.next();
                }
                return;
            case 3:
                if (dvoVar.f47670f != 0) {
                    return;
                }
                ebx ebxVar = (ebx) message.obj;
                dvoVar.f47667c = true;
                dvoVar.f47674j = ebxVar.f48644a;
                dvoVar.f47675k = ebxVar.f48645b;
                dvoVar.f47665a.mo15298a(ebxVar.f48646c);
                Iterator<dvk> it4 = dvoVar.f47666b.iterator();
                while (it4.hasNext()) {
                    it4.next();
                }
                return;
            case 4:
                int i = dvoVar.f47669e - 1;
                dvoVar.f47669e = i;
                if (i != 0) {
                    return;
                }
                dvoVar.f47677m = (dvr) message.obj;
                if (message.arg1 == 0) {
                    return;
                }
                Iterator<dvk> it5 = dvoVar.f47666b.iterator();
                while (it5.hasNext()) {
                    it5.next();
                }
                return;
            case 5:
                if (dvoVar.f47669e != 0) {
                    return;
                }
                dvoVar.f47677m = (dvr) message.obj;
                Iterator<dvk> it6 = dvoVar.f47666b.iterator();
                while (it6.hasNext()) {
                    it6.next();
                }
                return;
            case 6:
                dvt dvtVar = (dvt) message.obj;
                dvoVar.f47669e -= dvtVar.f47752d;
                if (dvoVar.f47670f != 0) {
                    return;
                }
                dvoVar.f47672h = dvtVar.f47749a;
                dvoVar.f47673i = dvtVar.f47750b;
                dvoVar.f47677m = dvtVar.f47751c;
                Iterator<dvk> it7 = dvoVar.f47666b.iterator();
                while (it7.hasNext()) {
                    it7.next();
                }
                return;
            case 7:
                dvz dvzVar = (dvz) message.obj;
                if (dvoVar.f47676l.equals(dvzVar)) {
                    return;
                }
                dvoVar.f47676l = dvzVar;
                Iterator<dvk> it8 = dvoVar.f47666b.iterator();
                while (it8.hasNext()) {
                    it8.next();
                }
                return;
            case 8:
                zzhe zzheVar = (zzhe) message.obj;
                Iterator<dvk> it9 = dvoVar.f47666b.iterator();
                while (it9.hasNext()) {
                    it9.next().mo15655a(zzheVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
