package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC6181u1;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new C6085b0();

    /* renamed from: d */
    private final String f19751d;

    /* renamed from: e */
    private final AbstractBinderC6221t f19752e;

    /* renamed from: f */
    private final boolean f19753f;

    /* renamed from: g */
    private final boolean f19754g;

    public zzs(String str, IBinder iBinder, boolean z, boolean z2) {
        BinderC6222u binderC6222u;
        this.f19751d = str;
        if (iBinder == null) {
            binderC6222u = null;
        } else {
            try {
                AbstractC6253a mo16835e = AbstractBinderC6181u1.m16915D0(iBinder).mo16835e();
                byte[] bArr = mo16835e == null ? null : (byte[]) BinderC6255b.m16745J0(mo16835e);
                if (bArr != null) {
                    binderC6222u = new BinderC6222u(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                    binderC6222u = null;
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
                binderC6222u = null;
            }
        }
        this.f19752e = binderC6222u;
        this.f19753f = z;
        this.f19754g = z2;
    }

    public zzs(String str, AbstractBinderC6221t abstractBinderC6221t, boolean z, boolean z2) {
        this.f19751d = str;
        this.f19752e = abstractBinderC6221t;
        this.f19753f = z;
        this.f19754g = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f19751d, false);
        AbstractBinderC6221t abstractBinderC6221t = this.f19752e;
        AbstractBinderC6221t abstractBinderC6221t2 = abstractBinderC6221t;
        if (abstractBinderC6221t == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            abstractBinderC6221t2 = null;
        }
        C6170a.m16938j(parcel, 2, abstractBinderC6221t2, false);
        C6170a.m16945c(parcel, 3, this.f19753f);
        C6170a.m16945c(parcel, 4, this.f19754g);
        C6170a.m16946b(parcel, m16947a);
    }
}
