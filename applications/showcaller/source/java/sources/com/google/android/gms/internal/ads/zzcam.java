package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcam.class */
public final class zzcam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcam> CREATOR = new ec0();

    /* renamed from: d */
    public final View f33761d;

    /* renamed from: e */
    public final Map<String, WeakReference<View>> f33762e;

    public zzcam(IBinder iBinder, IBinder iBinder2) {
        this.f33761d = (View) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder));
        this.f33762e = (Map) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16938j(parcel, 1, BinderC6255b.m16744m2(this.f33761d).asBinder(), false);
        C6170a.m16938j(parcel, 2, BinderC6255b.m16744m2(this.f33762e).asBinder(), false);
        C6170a.m16946b(parcel, m16947a);
    }
}
