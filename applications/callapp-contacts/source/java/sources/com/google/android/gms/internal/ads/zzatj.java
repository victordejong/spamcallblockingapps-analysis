package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzatj.class */
public final class zzatj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatj> CREATOR = new C12895rz();
    public final View zzaay;
    public final Map<String, WeakReference<View>> zzdva;

    public zzatj(IBinder iBinder, IBinder iBinder2) {
        this.zzaay = (View) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder));
        this.zzdva = (Map) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19109a(parcel, 1, BinderC12129d.m18979a(this.zzaay).asBinder());
        C12050a.m19109a(parcel, 2, BinderC12129d.m18979a(this.zzdva).asBinder());
        C12050a.m19095b(parcel, m19116a);
    }
}
