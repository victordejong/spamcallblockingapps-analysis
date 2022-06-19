package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new C12093u();
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final Context zzd;
    private final boolean zze;

    public zzn(String str, boolean z, boolean z2, IBinder iBinder, boolean z3) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = (Context) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder));
        this.zze = z3;
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [com.google.android.gms.dynamic.b, android.os.IBinder] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zza, false);
        C12050a.m19101a(parcel, 2, this.zzb);
        C12050a.m19101a(parcel, 3, this.zzc);
        C12050a.m19109a(parcel, 4, (IBinder) BinderC12129d.m18979a(this.zzd));
        C12050a.m19101a(parcel, 5, this.zze);
        C12050a.m19095b(parcel, m19116a);
    }
}
