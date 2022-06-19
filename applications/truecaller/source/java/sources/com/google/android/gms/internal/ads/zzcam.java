package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcam.class */
public final class zzcam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcam> CREATOR = new zzcan();
    @SafeParcelable.Field
    public final View zza;
    @SafeParcelable.Field
    public final Map<String, WeakReference<View>> zzb;

    @SafeParcelable.Constructor
    public zzcam(@SafeParcelable.Param(id = 1) IBinder iBinder, @SafeParcelable.Param(id = 2) IBinder iBinder2) {
        this.zza = (View) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder));
        this.zzb = (Map) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38854i(parcel, 1, new ObjectWrapper(this.zza).asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 2, new ObjectWrapper(this.zzb).asBinder(), false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
