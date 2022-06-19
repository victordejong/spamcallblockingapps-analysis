package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dv1.class */
public final class dv1 {

    /* renamed from: a */
    boolean f6377a;

    /* renamed from: b */
    ev1 f6378b;

    public dv1(Context context, String str, String str2) {
        ev1 ev1Var;
        try {
            try {
                try {
                    IBinder m8180d = DynamiteModule.m8179e(context, DynamiteModule.f5912b, ModuleDescriptor.MODULE_ID).m8180d("com.google.android.gms.ads.clearcut.GassDynamiteClearcutLogger");
                    if (m8180d == null) {
                        ev1Var = null;
                    } else {
                        IInterface queryLocalInterface = m8180d.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IClearcut");
                        ev1Var = queryLocalInterface instanceof ev1 ? (ev1) queryLocalInterface : new ev1(m8180d);
                    }
                    this.f6378b = ev1Var;
                    this.f6378b.T4(b.g3(context), str, (String) null);
                    this.f6377a = true;
                } catch (Exception e) {
                    throw new zzeac(e);
                }
            } catch (Exception e2) {
                throw new zzeac(e2);
            }
        } catch (RemoteException | zzeac | NullPointerException e3) {
            Log.d("GASS", "Cannot dynamite load clearcut");
        }
    }

    /* renamed from: a */
    public final bv1 m7681a(byte[] bArr) {
        return new bv1(this, bArr, null);
    }
}
