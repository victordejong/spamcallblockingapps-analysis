package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzatj.class */
public final class zzatj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatj> CREATOR = new rz();
    public final View zzaay;
    public final Map<String, WeakReference<View>> zzdva;

    public zzatj(IBinder iBinder, IBinder iBinder2) {
        this.zzaay = (View) d.a(b.a.a(iBinder));
        this.zzdva = (Map) d.a(b.a.a(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, d.a(this.zzaay).asBinder());
        a.a(parcel, 2, d.a(this.zzdva).asBinder());
        a.b(parcel, a2);
    }
}
