package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.internal.zzgw;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbk.class */
public final class zzbk extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ zzgw f8267j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8268k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbk(zzag zzagVar, zzgw zzgwVar) {
        super(zzagVar);
        this.f8268k = zzagVar;
        this.f8267j = zzgwVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        List list;
        Pair pair;
        zzv zzvVar;
        List list2;
        String str;
        List list3;
        List list4;
        int i = 0;
        while (true) {
            list = this.f8268k.f8184e;
            if (i >= list.size()) {
                pair = null;
                break;
            }
            zzgw zzgwVar = this.f8267j;
            list3 = this.f8268k.f8184e;
            if (zzgwVar.equals(((Pair) list3.get(i)).first)) {
                list4 = this.f8268k.f8184e;
                pair = (Pair) list4.get(i);
                break;
            }
            i++;
        }
        if (pair == null) {
            str = this.f8268k.f8180a;
            Log.w(str, "OnEventListener had not been registered.");
            return;
        }
        zzvVar = this.f8268k.f8187h;
        zzvVar.unregisterOnMeasurementEventListener((zzab) pair.second);
        list2 = this.f8268k.f8184e;
        list2.remove(pair);
    }
}
