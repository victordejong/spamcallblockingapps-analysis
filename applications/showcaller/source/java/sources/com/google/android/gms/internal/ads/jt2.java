package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jt2.class */
public final class jt2 {

    /* renamed from: a */
    boolean f24977a;

    /* renamed from: b */
    kt2 f24978b;

    public jt2(Context context, String str, String str2) {
        kt2 kt2Var;
        try {
            try {
                try {
                    IBinder m16740d = DynamiteModule.m16739e(context, DynamiteModule.f19758a, ModuleDescriptor.MODULE_ID).m16740d("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (m16740d == null) {
                        kt2Var = null;
                    } else {
                        IInterface queryLocalInterface = m16740d.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        kt2Var = queryLocalInterface instanceof kt2 ? (kt2) queryLocalInterface : new kt2(m16740d);
                    }
                    this.f24978b = kt2Var;
                    this.f24978b.m13809A4(BinderC6255b.m16744m2(context), str, null);
                    this.f24977a = true;
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                } catch (RemoteException | zzfjm | NullPointerException | SecurityException e) {
                    Log.d("GASS", "Cannot dynamite load clearcut");
                }
            } catch (Exception e2) {
                throw new zzfjm(e2);
            }
        } catch (Exception e3) {
            throw new zzfjm(e3);
        }
    }

    /* renamed from: a */
    public final ht2 m14041a(byte[] bArr) {
        return new ht2(this, bArr, null);
    }
}
