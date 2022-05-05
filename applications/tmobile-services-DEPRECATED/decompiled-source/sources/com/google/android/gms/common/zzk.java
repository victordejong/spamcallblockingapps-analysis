package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.Nullable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzk.class */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();
    @SafeParcelable.Field

    /* renamed from: f */
    private final String f7680f;
    @Nullable
    @SafeParcelable.Field

    /* renamed from: g */
    private final zze f7681g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final boolean f7682h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final boolean f7683i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzk(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) @Nullable IBinder iBinder, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) boolean z2) {
        this.f7680f = str;
        this.f7681g = m14269B(iBinder);
        this.f7682h = z;
        this.f7683i = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(String str, @Nullable zze zzeVar, boolean z, boolean z2) {
        this.f7680f = str;
        this.f7681g = zzeVar;
        this.f7682h = z;
        this.f7683i = z2;
    }

    @Nullable
    /* renamed from: B */
    private static zze m14269B(@Nullable IBinder iBinder) {
        zzf zzfVar = null;
        if (iBinder == null) {
            return null;
        }
        try {
            IObjectWrapper zzb = zzj.m14407b(iBinder).zzb();
            byte[] bArr = zzb == null ? null : (byte[]) ObjectWrapper.m14258c(zzb);
            if (bArr != null) {
                zzfVar = new zzf(bArr);
            } else {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
            }
            return zzfVar;
        } catch (RemoteException e) {
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder iBinder;
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 1, this.f7680f, false);
        zze zzeVar = this.f7681g;
        if (zzeVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            iBinder = null;
        } else {
            iBinder = zzeVar.asBinder();
        }
        SafeParcelWriter.m14454j(parcel, 2, iBinder, false);
        SafeParcelWriter.m14461c(parcel, 3, this.f7682h);
        SafeParcelWriter.m14461c(parcel, 4, this.f7683i);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
