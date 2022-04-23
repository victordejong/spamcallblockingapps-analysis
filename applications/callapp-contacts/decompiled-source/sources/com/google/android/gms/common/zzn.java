package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new u();
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final Context zzd;
    private final boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(String str, boolean z, boolean z2, IBinder iBinder, boolean z3) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = (Context) d.a(b.a.a(iBinder));
        this.zze = z3;
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [com.google.android.gms.dynamic.b, android.os.IBinder] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza, false);
        a.a(parcel, 2, this.zzb);
        a.a(parcel, 3, this.zzc);
        a.a(parcel, 4, (IBinder) d.a(this.zzd));
        a.a(parcel, 5, this.zze);
        a.b(parcel, a2);
    }
}
