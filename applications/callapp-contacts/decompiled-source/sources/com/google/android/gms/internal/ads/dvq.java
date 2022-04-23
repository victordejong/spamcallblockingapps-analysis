package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvq.class */
final class dvq extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dvo f27265a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dvq(dvo dvoVar, Looper looper) {
        super(looper);
        this.f27265a = dvoVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        dvo dvoVar = this.f27265a;
        boolean z = true;
        switch (message.what) {
            case 0:
                dvoVar.f--;
                return;
            case 1:
                dvoVar.f27260d = message.arg1;
                Iterator<dvk> it2 = dvoVar.f27258b.iterator();
                while (it2.hasNext()) {
                    it2.next().b(dvoVar.f27260d);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                dvoVar.g = z;
                Iterator<dvk> it3 = dvoVar.f27258b.iterator();
                while (it3.hasNext()) {
                    it3.next();
                }
                return;
            case 3:
                if (dvoVar.f == 0) {
                    ebx ebxVar = (ebx) message.obj;
                    dvoVar.f27259c = true;
                    dvoVar.j = ebxVar.f27602a;
                    dvoVar.k = ebxVar.f27603b;
                    dvoVar.f27257a.a(ebxVar.f27604c);
                    Iterator<dvk> it4 = dvoVar.f27258b.iterator();
                    while (it4.hasNext()) {
                        it4.next();
                    }
                    return;
                }
                return;
            case 4:
                int i = dvoVar.e - 1;
                dvoVar.e = i;
                if (i == 0) {
                    dvoVar.m = (dvr) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<dvk> it5 = dvoVar.f27258b.iterator();
                        while (it5.hasNext()) {
                            it5.next();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (dvoVar.e == 0) {
                    dvoVar.m = (dvr) message.obj;
                    Iterator<dvk> it6 = dvoVar.f27258b.iterator();
                    while (it6.hasNext()) {
                        it6.next();
                    }
                    return;
                }
                return;
            case 6:
                dvt dvtVar = (dvt) message.obj;
                dvoVar.e -= dvtVar.f27277d;
                if (dvoVar.f == 0) {
                    dvoVar.h = dvtVar.f27274a;
                    dvoVar.i = dvtVar.f27275b;
                    dvoVar.m = dvtVar.f27276c;
                    Iterator<dvk> it7 = dvoVar.f27258b.iterator();
                    while (it7.hasNext()) {
                        it7.next();
                    }
                    return;
                }
                return;
            case 7:
                dvz dvzVar = (dvz) message.obj;
                if (!dvoVar.l.equals(dvzVar)) {
                    dvoVar.l = dvzVar;
                    Iterator<dvk> it8 = dvoVar.f27258b.iterator();
                    while (it8.hasNext()) {
                        it8.next();
                    }
                    return;
                }
                return;
            case 8:
                zzhe zzheVar = (zzhe) message.obj;
                Iterator<dvk> it9 = dvoVar.f27258b.iterator();
                while (it9.hasNext()) {
                    it9.next().a(zzheVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
